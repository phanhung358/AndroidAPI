<?php 

$con = mysqli_connect("localhost","root","","sameskincare");
$con->set_charset("utf8");
if($con) {
//    echo "Kết nối thành công";
}
else {
    echo "Kết nối thất bại";
}


if(isset($_GET["maloai"])){
    $query = "select * from loai where maloai='".$_GET["maloai"]."'";
    $resouter = mysqli_query($con, $query);
    
    $temparray = array();
    $total_records = mysqli_num_rows($resouter);
    
    if ($total_records >= 1) {
        while ($row = mysqli_fetch_assoc($resouter)) {
            $temparray[] = $row;
        } 
    }   
    echo json_encode($temparray);
}

if(isset($_GET["masp"])){
    $query = "SELECT * FROM sanpham INNER JOIN anh ON sanpham.masp=anh.masp WHERE sanpham.masp='".$_GET["masp"]."'";
    $resouter = mysqli_query($con, $query);
    
    $temparray = array();
    $total_records = mysqli_num_rows($resouter);
    
    if ($total_records >= 1) {
        while ($row = mysqli_fetch_assoc($resouter)) {
            $temparray[] = $row;
        } 
    }   
    echo json_encode($temparray);
}

if(isset($_GET["mauser"])){
    $query = "select * from sanpham where mauser='".$_GET["mauser"]."'";
    $resouter = mysqli_query($con, $query);
    
    $temparray = array();
    $total_records = mysqli_num_rows($resouter);
    
    if ($total_records >= 1) {
        while ($row = mysqli_fetch_assoc($resouter)) {
            $temparray[] = $row;
        } 
    }   
    echo json_encode($temparray);
}

if(isset($_GET["magh"])){
    $query = "select * from chitietgiohang where magh='".$_GET["magh"]."'";
    $resouter = mysqli_query($con, $query);
    
    $temparray = array();
    $total_records = mysqli_num_rows($resouter);
    
    if ($total_records >= 1) {
        while ($row = mysqli_fetch_assoc($resouter)) {
            $temparray[] = $row;
        } 
    }   
    echo json_encode($temparray);
}
?>