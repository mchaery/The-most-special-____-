<?php
$connect = mysqli_connect('localhost', 'publications', 'kristie123', 'member') or die("fail");

$id = $_POST['name'];                   //Writer
$pw = $_POST['pw'];                     //Password
$title = $_POST['title'];               //Title
$content = $_POST['content'];           //Content
$date = date('Y-m-d H:i:s');            //Date

$URL = './bday.html';                   //return URL


$query = "INSERT INTO board (number, title, content, date, hit, id) 
        values(null,'$title', '$content', '$date', 0, '$id')";


$result = $connect -> query($query);
if ($result) {
?> <script>
        alert("<?php echo "게시글이 등록되었습니다." ?>");
        location.replace("<?php echo $URL ?>");
    </script>
<?php
} else {
    echo "게시글 등록에 실패하였습니다.";
}

mysqli_close($connect);
?>