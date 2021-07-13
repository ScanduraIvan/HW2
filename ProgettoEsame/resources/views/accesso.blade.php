<!DOCTYPE html>
<html>
<head>
    <link rel='stylesheet' href='{{url("./css/accesso.css")}}'>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="preconnect" href='{{url("https://fonts.gstatic.com")}}'>
    <link href='{{url("https://fonts.googleapis.com/css2?family=Cormorant+Unicase:wght@500&family=PT+Serif&family=Cormorant+Garamond:wght@600&family=Cormorant:wght@700&family=Spectral:ital,wght@1,300&family=Varela+Round&display=swap")}}'rel="stylesheet">
    <title>Ristoranti Scandura - Accedi</title>
</head>
<body>
<section class="accesso">
    <div id="logo">
        Ristoranti
        <img id="rs-logo" src='{{url("./img/Logo.png")}}'/>
        Scandura
    </div>
    @if($errore === 1)
        <div id='errore'><span class='error'>Credenziali non valide</span></div>
        @endif
    <form name='login' method='post'>
        <input type='hidden' name = '_token' value='{{ $csrf_token }}'>
        <div class="username">
            <div><input type='text' name='username' placeholder='Username o Email'></div>
        </div>
        <div class="password">
            <div><input type='password' name='password' placeholder = 'Password'></div>
        </div>
        <div class="bottone">
            <input type='submit' value="Accedi">
        </div>
    </form>
    <div class="link1">Non hai un account? <a href='{{route("iscrizione")}}'>Iscriviti</a></div>
    <div class="link2"><a href='{{route("homepage")}}'>Homepage</a></div>
</section>
</body>
</html>
