<!DOCTYPE html>
<html>
<head>
    <link rel='stylesheet' href='{{url("./css/prenotazione.css")}}'>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">

    <title>Ristoranti Scandura - Prenota un tavolo</title>
</head>
<body>
<section class="iscrizione">
    <div id="logo">
        Ristoranti
        <img id="rs-logo" src='{{url("./img/Logo.png")}}' />
        Scandura
    </div>
    <form name='prenotazione' method='post' enctype="multipart/form-data" autocomplete="off">
    <input type='hidden' name = '_token' value='{{ $csrf_token }}'>
        <div class="ristorante">
            <select name='ristorante' placeholder='Ristorante'>
                <option value='selezione' disabled> Seleziona il ristorante </option>
                <option value='Ristorante Baronessa'> Ristorante Baronessa </option>
                <option value='Ristorante Granduca'> Ristorante Granduca </option>
                <option value='Ristorante Villa Antonio'> Ristorante Villa Antonio </option>
                <option value='Ristorante Mazzarò'> Ristorante Mazzaro' </option>
                <option value='Ristorante Taormina'> Ristorante Taormina</option>
                <option value='Ristorante Al Duomo'> Ristorante Al Duomo </option>
                <option value='Ristorante Al Saraceno'> Ristorante Al Saraceno </option>
                <option value='Ristorante Le Terrazze'> Ristorante Le Terrazze </option>
                <option value='Ristorante Baia Taormina'> Ristorante Baia Taormina </option>
            </select>
            <span></span>
        </div>
        <div class="cognome">
            <input type='text' name='cognome' placeholder='Cognome'>
        </div>
        <div class="persone">
            <input type='number' name='numero_persone' min='1' placeholder='Numero di Persone'>
        </div>
        <div class="telefono">
            <input type='text' name='telefono' placeholder='Numero di telefono'>
        </div>
        <div class="data-ora">
            <input type='text' name='data' placeholder='Data: (aaaa/mm/gg)' id = "data">
            <input type='time' name='ora'>
        </div>
        <div class="bottone">
            <input type='submit' value="Prenota il tavolo" id="submit">
        </div>
    </form>
    <div class="link2"><a href='{{route("homepage")}}'>Homepage</a></div>
</section>
</body>
</html>
