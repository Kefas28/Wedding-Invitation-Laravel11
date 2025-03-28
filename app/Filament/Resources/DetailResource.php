<?php

namespace App\Filament\Resources;

use App\Filament\Resources\DetailResource\Pages;
use App\Models\Detail;
use Filament\Forms;
use Filament\Forms\Components\BelongsToSelect;
use Filament\Forms\Components\Card;
use Filament\Forms\Components\DateTimePicker;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\ImageColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;

class DetailResource extends Resource
{
protected static ?string $model = Detail::class;

protected static ?string $navigationIcon = 'heroicon-o-flag';
protected static ?string $navigationGroup = 'Data Brides';

public static function form(Form $form): Form
{
return $form
->schema([
Card::make()->schema([
BelongsToSelect::make('wedding_id')->label('Wedding')->relationship('wedding', 'name'),
Select::make('type')->required()
->options([
'Akad' => 'Akad',
'Acara Pernihakan' => 'Acara Pernihakan',
'Resepsi' => 'Resepsi',
'Ngunduh Mantu' => 'Ngunduh Mantu',
]),
DateTimePicker::make('date'),
TextInput::make('address')->required(),
TextInput::make('maps')->required(),
TextInput::make('calendar')->required(),
FileUpload::make('photo')
->required()
->image()
->disk('public') // Pastikan menggunakan disk 'public'
->directory('details/photos'), // Folder penyimpanan di dalam 'public'
])
]);
}

public static function table(Table $table): Table
{
return $table
->columns([
TextColumn::make('type'),
TextColumn::make('date'),
TextColumn::make('address'),
TextColumn::make('maps'),
ImageColumn::make('photo')
->label('Foto Lokasi')
->disk('public') // Pastikan menggunakan disk 'public'
->width(100) // Lebar gambar
->height(100), // Tinggi gambar
])
->filters([
//
])
->actions([
Tables\Actions\EditAction::make(),
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
'index' => Pages\ListDetails::route('/'),
'create' => Pages\CreateDetail::route('/create'),
'edit' => Pages\EditDetail::route('/{record}/edit'),
];
}
}
