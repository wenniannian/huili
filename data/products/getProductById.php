<?php
//data/products/getProductById.php
require_once("../init.php");
@$lid=$_REQUEST["lid"];
$output=[
	"product"=>[],
	"pics"=>[],
	"specs"=>[]
];
if($lid!=null){
	$sql="SELECT * FROM `mall_laptop` where lid=$lid";
	$result=mysqli_query($conn,$sql);
	$output["product"]=mysqli_fetch_all($result,1)[0];
	// var_dump($output);
	$sql="SELECT * FROM mall_laptop_pic where laptop_id=$lid";
	$result=mysqli_query($conn,$sql);
	$output["pics"]=mysqli_fetch_all($result,1);
	$fid=$output["product"]["family_id"];
	$sql="SELECT lid,spec FROM `mall_laptop` where family_id=$fid";
	$result=mysqli_query($conn,$sql);
	$output["specs"]=mysqli_fetch_all($result,1);
}
echo json_encode($output);