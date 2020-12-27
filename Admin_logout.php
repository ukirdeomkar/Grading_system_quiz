<?php
session_start();

session_destroy();
echo("<script>window.location = 'Admin_login.php'</script>");
?>