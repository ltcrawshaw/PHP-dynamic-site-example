<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Portland Historical Tour Reservations</title>
        <meta name="description" content="Reserve your spot for a historical Portland Tour. Prices range from $50 to $80 per person.">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href=../project.css>
        <link href='https://fonts.googleapis.com/css?family=Cinzel' rel='stylesheet' type='text/css'>
        <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>
        <div id="wrapper">
            <?php include '../includes/header.inc.html.php'; ?>
            <?php include '../includes/navigation.inc.html.php'; ?>
            <main>
                <h1>Thank you!</h1>
                <p>Our records show you submitted the following:<br>
                  Tour: <?php echo htmlspecialchars($tour, ENT_QUOTES, 'UTF-8'); ?><br>
                  First Name: <?php echo htmlspecialchars($fname, ENT_QUOTES, 'UTF-8'); ?><br>
                  Last Name: <?php echo htmlspecialchars($lname, ENT_QUOTES, 'UTF-8'); ?><br>
                  Email: <?php echo htmlspecialchars($email, ENT_QUOTES, 'UTF-8'); ?><br>
                  Phone: <?php echo htmlspecialchars($phone, ENT_QUOTES, 'UTF-8'); ?><br>
                  Tour Date: <?php echo htmlspecialchars($date, ENT_QUOTES, 'UTF-8'); ?><br>
                  Number of participants: <?php echo htmlspecialchars($group, ENT_QUOTES, 'UTF-8'); ?><br>
                  Sensitivities: <?php echo htmlspecialchars($comments, ENT_QUOTES, 'UTF-8'); ?><br>
                </p>
            </main>
            <?php include '../includes/footer.inc.html.php'; ?>
        </div>
    </body>
</html>