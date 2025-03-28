<?php

namespace App\Filament\Resources;

use App\Filament\Resources\RsvpResource\Pages;
use App\Filament\Resources\RsvpResource\Pages\CreateRsvp;
use App\Filament\Resources\RsvpResource\Pages\EditRsvp;
use App\Models\Rsvp;
use App\Models\Wedding;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\BadgeColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Model;

class RsvpResource extends Resource
{
    protected static ?string $model = Rsvp::class;

    protected static ?string $navigationIcon = 'heroicon-o-book-open';

    protected static ?string $navigationGroup = 'Guest';

    protected static ?string $recordTitleAttribute = 'name';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('name')
                    ->required()
                    ->label('Nama'),
                Forms\Components\TextInput::make('amount')
                    ->numeric()
                    ->required()
                    ->label('Jumlah'),
                Forms\Components\Select::make('status')
                    ->options([
                        'Saya akan datang' => 'Saya akan datang',
                        'Maaf, saya tidak bisa datang' => 'Maaf, saya tidak bisa datang',
                    ])
                    ->required()
                    ->label('Status'),
                Forms\Components\TextInput::make('wedding_name')
                    ->label('Wedding')
                    ->default(function () {
                        return Wedding::where('status', 'Active')->value('name');
                    })
                    ->disabled(),
                Forms\Components\Hidden::make('wedding_id')
                    ->default(function () {
                        return Wedding::where('status', 'Active')->value('id');
                    }),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('name')->searchable(),
                TextColumn::make('amount'),
                BadgeColumn::make('status')
                    ->colors([
                        'primary',
                        'success' => 'Saya akan datang',
                        'danger' => 'Maaf, saya tidak bisa datang',
                    ]),
            ])
            ->filters([
                Tables\Filters\SelectFilter::make('wedding_id')
                    ->label('Wedding')
                    ->options(Wedding::where('status', 'Active')->pluck('name', 'id'))
                    ->searchable(),
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),
                Tables\Actions\Action::make('openInvitation') // Perhatikan perubahan di sini
                    ->label('Open Invitation')
                    ->url(function ($record) {
                        return 'http://127.0.0.1:8000/?to=' . urlencode($record->name);
                    })
                    ->openUrlInNewTab(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListRsvps::route('/'),
            'create' => Pages\CreateRsvp::route('/create'),
            'edit' => Pages\EditRsvp::route('/{record}/edit'),
        ];
    }

    public static function canCreate(): bool
    {
        return true;
    }

    public static function canEdit(Model $record): bool
    {
        return true;
    }
}
