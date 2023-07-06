<?php
session_start();
if(isset($_POST['login'])) {
    include('connection.php');
    $query = "select * from users where email = '$_POST[login_txt]' AND password = '$_POST[password_txt]'";
    $query_run = mysqli_query($connection,$query);
    if(mysqli_num_rows($query_run)) {
        $_SESSION['email'] = $_POST['email'];
        while($row = mysqli_fetch_assoc($query_run)) {
            $_SESSION['fname'] = $row['fname'];
            $_SESSION['lname'] = $row['lname'];
            $_SESSION['uid'] = $row['sno'];
        }
        echo "<script type='text/javascript'>
        alert('Login Successfull');
        window.location.href = '../html/index.html';
    </script>";
    }
    else {
        echo "<script type='text/javascript'>
                alert('Please enter Correct email and password');
                window.location.href = 'login.html';
            </script>";
    }
}

?>