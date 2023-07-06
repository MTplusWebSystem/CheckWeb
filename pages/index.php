<?php
if (isset($_POST['submit'])) {
  $user = $_POST['User'];
  $url = 'http://138.118.175.42:5550/check/' . urlencode($user);
  $response = file_get_contents($url);

  if ($response === false) {
    echo 'Erro ao fazer a requisição';
  } else {
    $data = json_decode($response);
    if ($data === null) {
      echo 'Erro ao decodificar o JSON';
    } 
  }
}
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="./css/login.css"> 
</head>
<body>
  <div class="blur">
    <div class="fundo">
      <div class="logo">
      </div> 
    </div> 
    <div class="LogoName"></div> 
    <form method="POST">
    <div class="FundoChecker">
      
        <input id="User" type="text" name="User" placeholder="Usuário">
        <button type="submit" name="submit">Ver informações</button>
    </div> 
    </form>
    <div class="result">
    <?php if (isset($data)): ?>
      <table>
        <tr>
          <td id="t1">Usuário:</td>
          <td id="t2"><?php echo $data->username; ?></td>
        </tr>
        <tr>
          <td id="t1">Número de Conexões:</td>
          <td id="t2"><?php echo $data->count_connection; ?></td>
        </tr>
        <tr>
          <td id="t1">Limite de Conexões:</td>
          <td id="t2"><?php echo $data->limit_connection; ?></td>
        </tr>
        <tr>
          <td id="t1">Data de Expiração:</td>
          <td id="t2"><?php echo $data->expiration_date; ?></td>
        </tr>
        <tr>
          <td id="t1">Dias até a Expiração:</td>
          <td id="t2"><?php echo $data->expiration_days; ?></td>
        </tr>
        <tr>
          <td id="t1">Tempo Online:</td>
          <td id="t2"><?php echo $data->time_online; ?></td>
        </tr>
      </table>
    <?php endif; ?>
    </div> 
  </div> 
</body>
<script type="module" src="./js/viewLogin.js"></script>
</html>
