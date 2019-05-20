<?php

include_once 'Connection.php';
	
	class User {
		
		private $db;
		private $connection;
		
		function __construct() {
			$this -> db = new DB_Connection();
			$this -> connection = $this->db->getConnection();
		}
		
		public function does_user_exist($email,$password,$name,$first_name,$phone,$street,$city,$zip)
		{
			$query = "Select * from Client where email='$email'";
			$result = mysqli_query($this->connection, $query);
			if(mysqli_num_rows($result)>0){
				$json['exist'] = ' Welcome ';
				echo json_encode($json);
				mysqli_close($this -> connection);
			}else{
				$query = "insert into Client (email, password,name,first_name,phone,street,zip,city) values ( '$email','$password','$name','$first_name','$phone','$street','$zip','$city')";
				$inserted = mysqli_query($this -> connection, $query);
				if($inserted == 1 ){
					$json['success'] = 'Acount created';
				}else{
					$json['error'] = 'Wrong password';
				}
				echo json_encode($json);
				mysqli_close($this->connection);
			}
			
		}
		
	}
	
	
	$user = new User();
	if(isset($_POST['email'],$_POST['password'])) {
		$email = $_POST['email'];
		$password = $_POST['password'];
		$password_encrypt = sha1($password);
		$name = $_POST['name']; 
		$first_name = $_POST['first_name']; 	
		$phone = $_POST['phone'];
		$street = $_POST['street'];
		$city = $_POST['city']; 
		$zip = $_POST['zip'];
		
		if(!empty($email) && !empty($password)){
			
			$encrypted_password = md5($password);
			$user-> does_user_exist($email,$password,$name,$first_name,$phone,$street,$city,$zip);
			
		}else{
			echo json_encode("you must type both inputs");
		}
		
	}














?>
