<?php
$fecha_actual = date('Y-m-d H:i:s');
$timestamp = strtotime($fecha_actual);
?>
<!DOCTYPE html>
<html lang="en" data-bs-theme="light" data-scheme="navy">

<head>
   <meta http-equiv="content-type" content="text/html; charset=UTF-8">
   <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1">
   <title>Inicio de sesión | DigitalHub</title>

   <link rel="preconnect" href="https://fonts.googleapis.com">
   <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
   <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;700&family=Ubuntu:wght@400;500;700&display=swap" rel="stylesheet">

   <link rel="stylesheet" href="assets/css/bootstrap.min.css">

   <link rel="stylesheet" href=" assets/css/nifty.min.css">

   <link rel="stylesheet" href=" assets/css/demo-purpose/demo-icons.min.css">

   <link rel="stylesheet" href=" assets/css/demo-purpose/demo-settings.min.css">

</head>

<body class="">

   <div id="root" class="root front-container">
      <section id="content" class="content">
         <div class="content__boxed w-100 min-vh-100 d-flex flex-column align-items-center justify-content-center">
            <div class="content__wrap">
               <div class="card shadow-lg">
                  <div class="card-body p-4" style="width: 350px;">
                     <!-- Mostrar mensajes de error -->
                     <?php if (!empty($error)) : ?>
                        <div class="alert alert-danger" role="alert">
                           <?php echo $error; ?>
                        </div>
                     <?php endif; ?>
                     <div class="text-center">
                        <img src=" assets/img/logo-digitalhub.png " class="rounded img-fluid mx-auto d-block m-b-10px" height=auto width="150" alt="logoDH">
                        <!-- <p style="margin-top: 10px;">Ingresa tu cuenta</p> -->
                     </div>
                     <form class="mt-4" action="login.php" method="POST">
                        <div class="mb-3">
                           <input type="text" name="username" class="form-control" placeholder="Username" autofocus>
                        </div>
                        <div class="mb-3">
                           <input type="password" name="userpass" class="form-control" placeholder="Password">
                        </div>
                        <div class="d-grid mt-5">
                           <button class="btn btn-primary btn-lg" type="submit">Sign In</button>
                        </div>
                     </form>
                  </div>
               </div>
            </div>
         </div>
      </section>
   </div>
   <script src=" assets/vendors/popperjs/popper.min.js"></script>
   <script src=" assets/vendors/bootstrap/bootstrap.min.js"></script>
   <script src=" assets/js/nifty.js"></script>
   <script src=" assets/js/demo-purpose-only.js"></script>
</body>

</html>