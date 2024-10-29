<?php 
  require_once 'pmalogin.php';

  try
  {
    $pdo = new PDO($attr, $user, $pass, $opts);
  }
  catch (PDOException $e)
  {
    throw new PDOException($e->getMessage(), (int)$e->getCode());
  }
  $connect = mysqli_connect('localhost', 'publications', 'kristie123', 'member') or die("connect failed");

  $id = $_POST['id'];
  $pw = $_POST['password'];

  //id 중복 확인
$query1 = "SELECT * FROM member_tb WHERE id='$id'";
$result1 = $connect->query($query1);
$count = mysqli_num_rows($result1);

if ($count) {      //만약 중복된 id가 있다면
?><script>
        alert('이미 존재하는 ID입니다.');
        history.back();
    </script>
    <?php } elseif 
    (isset($_POST['id'])   &&
      isset($_POST['password'])    &&
      isset($_POST['bday']) ) {  //없다면
    //입력받은 데이터를 DB에 저장
    $id   = get_post($pdo, 'id');
    $pw    = get_post($pdo, 'password');
    $bday = get_post($pdo, 'bday');
    
    $query    = "INSERT INTO member_tb VALUES" .
      "($id, $pw, $bday)";
    $result = $pdo->query($query);

    //저장이 되었다면 (result = true) 가입 완료
    if ($result) {
    ?> <script>
            alert('회원가입에 성공하였습니다.');
            location.replace("./login.php");
        </script>

    <?php } else {
    ?> <script>
            alert("회원가입에 실패하였습니다.");
        </script>
<?php }
}

  echo <<<_END
  <div align="center">
  <span>
    <p style="font-size: 25px;"><b>회원가입</b></p>
  </span>
  <form action="register_action2.php" method="post"><pre>
ID <input type="text" name="id"><br>
PW <input type="password" name="password"><br>
B-day <input type="date" name="bday"><br>
<input type="submit" value="가입하기">
  </pre></form>
  </div>
_END;

function get_post($pdo, $var)
  {
    return $pdo->quote($_POST[$var]);
  }
?>
