<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Server Variables</title>
<?PHP

foreach($_SERVER as $key_name => $key_value) {
print $key_name . " = " . $key_value . "<br>";
}

?>


</head>

<body>
<p>Server Variables</p>
<p>This is a php script which will list the server variables.</p>
<p>Pat Paulson, May 23, 2007 </p>
</body>
</html>
