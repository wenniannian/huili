<?php
//data/users/islogin.php
require_once("../init.php");
session_start();
@$lid=$_SESSION["lid"];
if($lid!=null){
	$sql="select uname from mall_user where lid=$lid";
	$result=mysqli_query($conn,$sql);
	if(mysqli_error($conn)){
		echo mysqli_error($conn);
	}
	$row=mysqli_fetch_row($result);
	echo json_encode(["ok"=>1, "uname"=>$row[0]]);
}else{
	echo json_encode(["ok"=>0]);
}