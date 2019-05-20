<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script language="javascript"></script>
</head>
<body>
    
<?php
// actif pro
include 'Connexion.php';

$proQuery= $con->query("SELECT `id`,`NomP`,`Email`,`Telephone`,`image_path`,`Adresse`,`Postale`, `Distance`,`NomEntreprise`,`Registre`,`Description`,`Traite`,`Actif` FROM `professionels`");

$pro=mysqli_fetch_assoc($proQuery);


if(isset($_GET['actif_p'])){
    $actif_id=$_GET['actif_p'];
    $actif =$pro['Actif'];
    $Traite =$pro['Traite'];
    
    if($actif==0){
        $actif=1;
        $Traite==1;
    }else{
        $actif=0;  
    }
    $actif_p="update professionels SET Actif ='$actif' WHERE id='$actif_id'";
    $run_actif=mysqli_query($con,$actif_p);
  
        if($run_actif && $actif==0 ){
            $actif==1;

        echo"<script>alert('Le compte a été desactivé')</script>";
        echo"<script>window.open('Professionnels.php','_self')</script>";
   
        }else {
            $actif=0;
            echo"<script>alert('Le compte a été activé')</script>";
            echo"<script>window.open('Professionnels.php','_self')</script>";
        }
   
   
}



if(isset($_GET['traite_p'])){
    $traite_id=$_GET['traite_p'];
    $Traite =$pro['Traite'];
    $traite_p="update professionels SET Traite='1' WHERE id='$traite_id'";
    $run_traite=mysqli_query($con,$traite_p);
    while($run_traite):
        echo"<script>alert('Le compte a été traité')</script>";
        echo"<script>window.open('Professionnels.php','_self')</script>";
     if($run_traite AND $Traite==1){
        echo"<script>window.open('Professionnels.php','_self')</script>";
    }endwhile;
   
}
?>
</body>
</html>
