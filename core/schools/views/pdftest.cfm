<cfheader name="Content-Disposition" value="attachment;filename=file.pdf">
<cfdocument format="PDF" overwrite="Yes">
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>Hello World</title>
</head>
<body>
    Hello World
</body>
</html>
</cfdocument>

<cfcontent type="application/pdf" file="#expandPath('.')#\file.pdf" deletefile="Yes">