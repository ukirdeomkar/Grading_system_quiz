<?php
session_start();

session_destroy();
echo("<script>window.location = 'Student_login.php'</script>");
?>