<!DOCTYPE html>
<html lang="en">
<head>
  <title>Portland Historical Tour Options</title>
  <meta name="description" content="Portland Historical Tours have offered three family run tours for decades:  the Downtown Tour, the Growth Tour, and the Landmarks Tour.">
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
    <header>
    <?php include '../includes/header.inc.html.php'?>
    </header>
    <nav>
    <?php include '../includes/navigation.inc.html.php'?>
    </nav>
    <main>
      <table>
        <span id="caption">Compare Tour Options</span>
        <tr>
          <th id="tourname">Tour</th>
          <th id="tourduration">Duration</th>
          <th id="transportation">Transportation</th>
          <th id="food">Food</th>
          <th id="price">Price</th>
          <th class="reserve">Reserve</th>
        </tr>
        <?php foreach ($tours as $tour): ?>
          <tr>
           <td><?php echo htmlspecialchars($tour['title']); ?></td>
           <td><?php echo htmlspecialchars($tour['duration']); ?></td>
           <td><?php echo htmlspecialchars($tour['transportation']); ?></td>
           <td><?php echo htmlspecialchars($tour['food']); ?></td>
           <td><?php echo htmlspecialchars($tour['price']); ?></td>
           <td class="reserve"><a href="../reservations.php">Reserve</a></td>
          </tr>
      <?php endforeach; ?>
      </table>
      <?php foreach ($tours as $tour): ?>
      <h1>
      <?php echo htmlspecialchars($tour['title']);?>
      </h1>
        <img class="image" src="<?php echo site_root,htmlspecialchars($tour['image']); ?>" width="200" height="200">
        <?php echo $tour['description'];?>
        <a href="../reservations.php" class="reserve"><div>Reserve</div></a>
        <br class="clearright">
        <?php endforeach; ?>
    </main>
    <span>
    <?php include '../includes/footer.inc.html.php';?>
    </span>
  </div>
</body>
</html>