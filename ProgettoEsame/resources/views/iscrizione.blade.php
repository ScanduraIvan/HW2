<!DOCTYPE html>
<html>
<head>
    <link rel='stylesheet' href='{{url("./css/iscrizione.css")}}'>
    <script src='{{url("./js/iscrizione.js")}}' defer></script>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">

    <title>Ristoranti Scandura - Iscriviti</title>
</head>
<body>
<section class="iscrizione">
    <div id="logo">
        Ristoranti
        <img id="rs-logo" src='{{url("./img/Logo.png")}}'/>
        Scandura
    </div>
    @if($errore === 1)
    <div class = 'error'>
        <span>Riempi tutti i campi correttamente</span>
    <div>
    @endif
    <form name='iscrizione' method='post' enctype="multipart/form-data" autocomplete="off">
        <input type='hidden' name = '_token' value='{{ $csrf_token }}'>
        <div class="nome">
            <input type='text' name='nome' placeholder='Nome'>
        </div>
        <div class="cognome">
            <input type='text' name='cognome' placeholder='Cognome'>
        </div>
        <div class="username">
            <input type='text' name='username' placeholder='Username'>
            <span></span>
        </div>
        <div class="email">
            <input type='text' name='email' placeholder='Email'>
            <span></span>
        </div>
        <div class="password">
            <input type='password' name='password' placeholder='Password'>
            <span></span>
        </div>
        <div class="conferma_password">
            <input type='password' name='conferma_password' placeholder='Conferma Password'>
            <span></span>
        </div>
        <div class="bottone">
            <input type='submit' value="Registrati" id="submit">
        </div>
    </form>
    <div class="link1">Hai un account? <a href='{{route("accesso")}}'>Accedi</a></div>
    <div class="link2"><a href='{{route("homepage")}}'>Homepage</a></div>
</section>
</body>
</html>
