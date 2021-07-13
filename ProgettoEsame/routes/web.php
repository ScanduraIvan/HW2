<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', "HomeController@index");

Route::get('/homepage', "HomeController@index")->name('homepage');

Route::get('/ristoranti', "RistorantiController@index")->name('ristoranti');
Route::get('/ristoranti/caricaContenuti',"RistorantiController@caricaContenuti");
Route::get('/ristoranti/caricaPreferiti',"RistorantiController@caricaPreferiti");
Route::get('/ristoranti/aggiungiPreferiti/{id}', "RistorantiController@aggiungiPreferiti");
Route::get('/ristoranti/rimuoviPreferiti/{id}',"RistorantiController@rimuoviPreferiti");

Route::get('/prenotazioni_utente', "PrenotazioniUtenteController@index")->name('prenotazioni_utente');
Route::get('/prenotazioni_utente/caricaPrenotazioni',"PrenotazioniUtenteController@caricaPrenotazioni");

Route::get('/prenotazione', "PrenotazioneController@index")->name('prenotazione');
Route::post('/prenotazione',"PrenotazioneController@prenotazioneTavolo");

Route::get('/accesso', "AccessoController@index")->name('accesso');
Route::post('/accesso', "AccessoController@checkLogin");

Route::get('/uscita', "AccessoController@logout")->name('uscita');

Route::get('/iscrizione', "IscrizioneController@index")->name('iscrizione');
Route::post('/iscrizione',"IscrizioneController@registrazione");
Route::get('/iscrizione/controlloEmail/{q}',"IscrizioneController@controlloEmail");
Route::get('/iscrizione/controlloUsername/{q}',"IscrizioneController@controlloUsername");

Route::get('/taormina', "TaorminaController@index")->name('taormina');
Route::get('/taormina/immagini',"TaorminaController@immagini");
Route::get('/taormina/news',"TaorminaController@news");
Route::get('/taormina/aggiungiLink/{titolo}',"TaorminaController@aggiungiLink");

Route::get('/menu', "MenuController@index")->name('menu');
Route::get('/menu/caricaMenu/{nomeRistorante}', "MenuController@caricaMenu");



?>
