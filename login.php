<?php

session_start();

define('BASEPATH', true);
require 'db.php';

if (isset($_POST['submit'])) {

    $dsn = new PDO("mysql:host=$host;dbname=$dbname", $user, $password);
    $dsn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $username = !empty($_POST['username']) ? trim($_POST['username']) : null;
    $passwordAttempt = !empty($_POST['password']) ? trim($_POST['password']) : null;

    $sql = "SELECT id, username, password FROM admin WHERE username = :username";
    $stmt = $pdo->prepare($sql);

    $stmt->bindValue(':username', $username);

    $stmt->execute();

    $user = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($user === false) {
        echo '<script>alert("invalid username or password")</script>';
    } else {

        $validPassword = password_verify($passwordAttempt, $user['password']);

        if ($validPassword) {

            $_SESSION['admin'] = (string) $username;
            var_dump($_SESSION['admin']);
            echo '<script>window.location.replace("dashboard.php");</script>';
            //  exit;

        } else {

            echo '<script>alert("invalid username or password")</script>';
        }
    }
}

    require "layout.php";

?>

<div class="container">
  <div class="row d-flex justify-content-center mt-5">
    <!--Grid column-->
    <div class="col-md-6">
      <form action="login.php" method="post">
        <div class="p-5 bg-light">
          <div class="form-group">
            <label for="exampleInputEmail1">User Name</label>
            <input type="text" name="username" class="form-control" placeholder="Username">
            <div>
              <div class="form-group pt-3">
                <label for="exampleInputEmail1">Password</label>
                <input type="password" name="password" class="form-control" placeholder="Password">
              </div>
            </div>
            <div class="d-flex justify-content-center">
              <button name="submit" class="btn btn-primary mt-3" type="submit">sign in</button>

            </div>
          </div>
      </form>
    </div>
    <!--Grid column-->
  </div>
  <!--container-->
</div>


</body>
</html>