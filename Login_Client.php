<?php

include_once 'connection.php';
	
	class User {
		
		private $db;
		private $connection;
		
		function __construct() {
			$this -> db = new DB_Connection();
			$this -> connection = $this->db->getConnection();
		}
		
		public function does_user_exist($email,$password)
		{
			$query = "Select * from Client where email='$email' and password = '$password' ";
			$result = mysqli_query($this->connection, $query);
			return $result; 
		}
		
		public function get_user_byEmail($email)
		{
			$query = "Select id_client,name,first_name from Client where email='$email'";
			$result = mysqli_query($this->connection, $query);
			return mysqli_fetch_assoc($result); 
		}
		
	}
	
	
	$user = new User();
	if(isset($_POST['email'],$_POST['password'])) {
		$email = $_POST['email'];
		$password = $_POST['password'];
		
		if(!empty($email) && !empty($password)){
			
			$encrypted_password = md5($password);
			if(mysqli_num_rows($user-> does_user_exist($email,$password))>0){
				$user-> get_user_byEmail($email);
					$json['success'] = ' Welcome '.$email;
					$json['id_client'] = $user['id_client'];
					$json['name'] = $user['name'];
					$json['first_name'] = $user['first_name'];
					echo json_encode($json);
					mysqli_close($this -> connection);
			
		}else{
			echo json_encode("you must type both inputs");
		}
		
	}
    }
?>
