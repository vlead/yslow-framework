<?php 
if($_POST['url'])
{
$URL=$_POST['url'];
echo $URL;
chdir('.');
$output=shell_exec("./in.sh $URL");
echo "<pre>$output</pre>";
}
?>


