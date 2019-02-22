<?php
//data/users/signin.php
require_once("../init.php");
@$uname=$_REQUEST["uname"];
@$upwd=$_REQUEST["upwd"];
if($uname!=null&&$upwd!=null){
	$sql="select lid,uname,upwd from mall_user where uname='$uname' and binary upwd='$upwd'";
	$result=mysqli_query($conn,$sql);
	$row=mysqli_fetch_row($result);
	if($row!=null){
		session_start();
		$_SESSION["lid"]=$row[0];
		echo "登录成功!";
	}else
		echo "用户名或密码错误!";
}