<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>Carousel Template · Bootstrap</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="/bootstrap.css" rel="stylesheet">
     
    <link href="/bootstrap-responsive.css" rel="stylesheet">
    <style>

    /* GLOBAL STYLES
    -------------------------------------------------- */
    /* Padding below the footer and lighter body text */

    body {
      padding-bottom: 40px;
      color: #5a5a5a;
    }



    /* CUSTOMIZE THE NAVBAR
    -------------------------------------------------- */

    /* Special class on .container surrounding .navbar, used for positioning it into place. */
    .navbar-wrapper {
      position: absolute;
      top: 0;
      left: 0;
      right: 0;
      z-index: 10;
      margin-top: 20px;
      margin-bottom: -90px; /* Negative margin to pull up carousel. 90px is roughly margins and height of navbar. */
    }
    .navbar-wrapper .navbar {

    }

    /* Remove border and change up box shadow for more contrast */
    .navbar .navbar-inner {
      border: 0;
      -webkit-box-shadow: 0 2px 10px rgba(0,0,0,.25);
         -moz-box-shadow: 0 2px 10px rgba(0,0,0,.25);
              box-shadow: 0 2px 10px rgba(0,0,0,.25);
    }

    /* Downsize the brand/project name a bit */
    .navbar .brand {
      padding: 14px 20px 16px; /* Increase vertical padding to match navbar links */
      font-size: 16px;
      font-weight: bold;
      text-shadow: 0 -1px 0 rgba(0,0,0,.5);
    }

    /* Navbar links: increase padding for taller navbar */
    .navbar .nav > li > a {
      padding: 15px 20px;
    }

    /* Offset the responsive button for proper vertical alignment */
    .navbar .btn-navbar {
      margin-top: 10px;
    }



    /* CUSTOMIZE THE CAROUSEL
    -------------------------------------------------- */

    /* Carousel base class */
    .carousel {
      margin-bottom: 60px;
    }

    .carousel .container {
      position: relative;
      z-index: 9;
    }

    .carousel-control {
      height: 80px;
      margin-top: 0;
      font-size: 120px;
      text-shadow: 0 1px 1px rgba(0,0,0,.4);
      background-color: transparent;
      border: 0;
      z-index: 10;
    }

    .carousel .item {
      height: 500px;
    }
    .carousel img {
      position: absolute;
      top: 0;
      left: 0;
      min-width: 100%;
      height: 500px;
    }

    .carousel-caption {
      background-color: transparent;
      position: static;
      max-width: 550px;
      padding: 0 20px;
      margin-top: 200px;
    }
    .carousel-caption h1,
    .carousel-caption .lead {
      margin: 0;
      line-height: 1.25;
      color: #fff;
      text-shadow: 0 1px 1px rgba(0,0,0,.4);
    }
    .carousel-caption .btn {
      margin-top: 10px;
    }



    /* MARKETING CONTENT
    -------------------------------------------------- */

    /* Center align the text within the three columns below the carousel */
    .marketing .span4 {
      text-align: center;
    }
    .marketing h2 {
      font-weight: normal;
    }
    .marketing .span4 p {
      margin-left: 10px;
      margin-right: 10px;
    }


    /* Featurettes
    ------------------------- */

    .featurette-divider {
      margin: 80px 0; /* Space out the Bootstrap <hr> more */
    }
    .featurette {
      padding-top: 120px; /* Vertically center images part 1: add padding above and below text. */
      overflow: hidden; /* Vertically center images part 2: clear their floats. */
    }
    .featurette-image {
      margin-top: -120px; /* Vertically center images part 3: negative margin up the image the same amount of the padding to center it. */
    }

    /* Give some space on the sides of the floated elements so text doesn't run right into it. */
    .featurette-image.pull-left {
      margin-right: 40px;
    }
    .featurette-image.pull-right {
      margin-left: 40px;
    }

    /* Thin out the marketing headings */
    .featurette-heading {
      font-size: 50px;
      font-weight: 300;
      line-height: 1;
      letter-spacing: -1px;
    }



    /* RESPONSIVE CSS
    -------------------------------------------------- */

    @media (max-width: 979px) {

      .container.navbar-wrapper {
        margin-bottom: 0;
        width: auto;
      }
      .navbar-inner {
        border-radius: 0;
        margin: -20px 0;
      }

      .carousel .item {
        height: 500px;
      }
      .carousel img {
        width: auto;
        height: 500px;
      }

      .featurette {
        height: auto;
        padding: 0;
      }
      .featurette-image.pull-left,
      .featurette-image.pull-right {
        display: block;
        float: none;
        max-width: 40%;
        margin: 0 auto 20px;
      }
    }


    @media (max-width: 767px) {

      .navbar-inner {
        margin: -20px;
      }

      .carousel {
        margin-left: -20px;
        margin-right: -20px;
      }
      .carousel .container {

      }
      .carousel .item {
        height: 300px;
      }
      .carousel img {
        height: 300px;
      }
      .carousel-caption {
        width: 65%;
        padding: 0 70px;
        margin-top: 100px;
      }
      .carousel-caption h1 {
        font-size: 30px;
      }
      .carousel-caption .lead,
      .carousel-caption .btn {
        font-size: 18px;
      }

      .marketing .span4 + .span4 {
        margin-top: 40px;
      }

      .featurette-heading {
        font-size: 30px;
      }
      .featurette .lead {
        font-size: 18px;
        line-height: 1.5;
      }

    }
    </style>

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="../assets/js/html5shiv.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="http://getbootstrap.com/2.3.2/assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="http://getbootstrap.com/2.3.2/assets/ico/apple-touch-icon-114-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="72x72" href="http://getbootstrap.com/2.3.2/assets/ico/apple-touch-icon-72-precomposed.png">
                    <link rel="apple-touch-icon-precomposed" href="http://getbootstrap.com/2.3.2/assets/ico/apple-touch-icon-57-precomposed.png">
                                   <link rel="shortcut icon" href="http://getbootstrap.com/2.3.2/assets/ico/favicon.png">
  <style type="text/css" id="holderjs-style">.holderjs-fluid {font-size:16px;font-weight:bold;text-align:center;font-family:sans-serif;margin:0}</style></head>

  <body>



    <!-- NAVBAR
    ================================================== -->
    <div class="navbar-wrapper">
      <!-- Wrap the .navbar in .container to center it within the absolutely positioned parent. -->
      <div class="container">

        <div class="navbar navbar-inverse">
          <div class="navbar-inner">
            <!-- Responsive Navbar Part 1: Button for triggering responsive navbar (not covered in tutorial). Include responsive CSS to utilize. -->
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="brand" href="#">Project name</a>
            <!-- Responsive Navbar Part 2: Place all navbar contents you want collapsed withing .navbar-collapse.collapse. -->
            <div class="nav-collapse collapse">
              <ul class="nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#contact">Contact</a></li>
                <!-- Read about Bootstrap dropdowns at http://twbs.github.com/bootstrap/javascript.html#dropdowns -->
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li class="nav-header">Nav header</li>
                    <li><a href="#">Separated link</a></li>
                    <li><a href="#">One more separated link</a></li>
                  </ul>
                </li>
              </ul>
            </div><!--/.nav-collapse -->
          </div><!-- /.navbar-inner -->
        </div><!-- /.navbar -->

      </div> <!-- /.container -->
    </div><!-- /.navbar-wrapper -->



    <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide">
      <div class="carousel-inner">
        <div class="item">
          <img src="Carousel%20Template%20%C2%B7%20Bootstrap%20Archivos/slide-01.jpg" alt="">
          <div class="container">
            <div class="carousel-caption">
              <h1>Example headline.</h1>
              <p class="lead">Cras justo odio, dapibus ac facilisis in, 
egestas eget quam. Donec id elit non mi porta gravida at eget metus. 
Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <a class="btn btn-large btn-primary" href="#">Sign up today</a>
            </div>
          </div>
        </div>
        <div class="item active">
          <img src="Carousel%20Template%20%C2%B7%20Bootstrap%20Archivos/slide-02.jpg" alt="">
          <div class="container">
            <div class="carousel-caption">
              <h1>Another example headline.</h1>
              <p class="lead">Cras justo odio, dapibus ac facilisis in, 
egestas eget quam. Donec id elit non mi porta gravida at eget metus. 
Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <a class="btn btn-large btn-primary" href="#">Learn more</a>
            </div>
          </div>
        </div>
        <div class="item">
          <img src="Carousel%20Template%20%C2%B7%20Bootstrap%20Archivos/slide-03.jpg" alt="">
          <div class="container">
            <div class="carousel-caption">
              <h1>One more for good measure.</h1>
              <p class="lead">Cras justo odio, dapibus ac facilisis in, 
egestas eget quam. Donec id elit non mi porta gravida at eget metus. 
Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <a class="btn btn-large btn-primary" href="#">Browse gallery</a>
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" data-slide="prev">‹</a>
      <a class="right carousel-control" href="#myCarousel" data-slide="next">›</a>
    </div><!-- /.carousel -->



    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->

    <div class="container marketing">

      <!-- Three columns of text below the carousel -->
      <div class="row">
        <div class="span4">
          <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIwAAACMCAYAAACuwEE+AAAEaklEQVR4nO3Y24rqSACF4f3+j1IQAiEgEhBBggjSiEhGHHEkSAgh1CusuUhsD90we20Y+vRffNBtRSvob1XirxijgN/166NPAF8LwcBCMLAQDCwEAwvBwEIwsBAMLAQDC8HAQjCwEAwsBAMLwcBCMLAQDCwEAwvBwEIwsBAMLAQDC8HAQjCwEAwsBAMLwcBCMLAQDCwEAwvBwEIwsBAMLAQDC8HAQjCwEAwsBAMLwcBCMLAQDCwEAwvBwEIwsBAMLAQDC8HAQjCwEAwsBAMLwcBCMLAQDCwEAwvBwEIwsBAMLAQDC8HAQjCwEAwsBAMLwcBCMLAQDCzfIph2v1QSUq2P7Zux82auLMuUF2u142OX/Up5kihJEmWTUqfu9+faLSYK6VSH9nms0arIlWX53Xl02pVTJUmiJElVLCv1n+D9+rHBtPVRu81SeQgKIWixbx6PaSpl41hISzUxKtYbJSEohERZlg5j2fI1pvf1Oh8qvZTT4fiQqXoKpt4U49jtPI6ryfBYkilLhrHp+vTh79uPDWY/T14/pLfB9HqZ3o1npdoYdVzmCiGoeKkVY6tFNsSz+edvzfJceT7Vto6KzU5FnivPZzp2jRZ384SQaX8fTHd4jfZ2Hhct0qAQUm2bqHgZQ/3POD+3Lx1M33fq+k7VInsTTLsvFUJQud1oehfMocwfjr3/fz++TjKZazEdVp+s3A9zdZ36vh4DewxmN0sUQqGqWt5eu90Pq1s6zBu78f9Q6NR//Hv3I4O5eo4g9mfNQlCYbhTjafj2Z0t1sVWZjd/6S//Oc2vNkruVJF3o8jBXq+VTMN1xpRCC5lWreB7+Lg+dYrcf5x2Dic0499vt7Cv5lsFcV5dsvtb2ZTFsBclE6+qsaj6sIuV+uDA9LJ+eW81fgykPzxfRz8G0WuXjNvSy1XoxXLPk85WO//w1rCjXYF63rYkOxkX2Z/NNg1k8XNvczLUrs3FFGI5dT4ax1bFTjI3K/O74/Pl6420wZfrePEGz6qAiBIWQ69BHxa563KK+qG8ZTOw7NU2jpmnVnLfDB5UUOnW31Sekhdar62pS6ByjTuvxLiibapK+d1dzC+a6rXRtM8zVdjrvhtebb0/q4/XaJiibLbUshlDTefXh7xfBjMGUz7fVMd62gnylLkbF2Gm7yO9Wg1SrQ6N42Skdb7fXdVR/XI7j+d0F7jWYiY7vbCvdoXzY7mJ71Ox+Bcrm1m8+n9G3COZPtJdadV2r+d8/wE6XulZdX778j3Yx/uBg8GcIBhaCgYVgYCEYWAgGFoKBhWBgIRhYCAYWgoGFYGAhGFgIBhaCgYVgYCEYWAgGFoKBhWBgIRhYCAYWgoGFYGAhGFgIBhaCgYVgYCEYWAgGFoKBhWBgIRhYCAYWgoGFYGAhGFgIBhaCgYVgYCEYWAgGFoKBhWBgIRhYCAYWgoGFYGAhGFgIBhaCgYVgYCEYWAgGFoKBhWBgIRhYCAYWgoGFYGAhGFgIBhaCgYVgYCEYWP4FLa47Lg/4bUIAAAAASUVORK5CYII=" style="width: 140px; height: 140px;" alt="140x140" class="img-circle" data-src="holder.js/140x140">
          <h2>Heading</h2>
          <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis 
euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi 
leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo
 cursus magna, vel scelerisque nisl consectetur et.</p>
          <p><a class="btn" href="#">View details »</a></p>
        </div><!-- /.span4 -->
        <div class="span4">
          <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIwAAACMCAYAAACuwEE+AAAEaklEQVR4nO3Y24rqSACF4f3+j1IQAiEgEhBBggjSiEhGHHEkSAgh1CusuUhsD90we20Y+vRffNBtRSvob1XirxijgN/166NPAF8LwcBCMLAQDCwEAwvBwEIwsBAMLAQDC8HAQjCwEAwsBAMLwcBCMLAQDCwEAwvBwEIwsBAMLAQDC8HAQjCwEAwsBAMLwcBCMLAQDCwEAwvBwEIwsBAMLAQDC8HAQjCwEAwsBAMLwcBCMLAQDCwEAwvBwEIwsBAMLAQDC8HAQjCwEAwsBAMLwcBCMLAQDCwEAwvBwEIwsBAMLAQDC8HAQjCwEAwsBAMLwcBCMLAQDCzfIph2v1QSUq2P7Zux82auLMuUF2u142OX/Up5kihJEmWTUqfu9+faLSYK6VSH9nms0arIlWX53Xl02pVTJUmiJElVLCv1n+D9+rHBtPVRu81SeQgKIWixbx6PaSpl41hISzUxKtYbJSEohERZlg5j2fI1pvf1Oh8qvZTT4fiQqXoKpt4U49jtPI6ryfBYkilLhrHp+vTh79uPDWY/T14/pLfB9HqZ3o1npdoYdVzmCiGoeKkVY6tFNsSz+edvzfJceT7Vto6KzU5FnivPZzp2jRZ384SQaX8fTHd4jfZ2Hhct0qAQUm2bqHgZQ/3POD+3Lx1M33fq+k7VInsTTLsvFUJQud1oehfMocwfjr3/fz++TjKZazEdVp+s3A9zdZ36vh4DewxmN0sUQqGqWt5eu90Pq1s6zBu78f9Q6NR//Hv3I4O5eo4g9mfNQlCYbhTjafj2Z0t1sVWZjd/6S//Oc2vNkruVJF3o8jBXq+VTMN1xpRCC5lWreB7+Lg+dYrcf5x2Dic0499vt7Cv5lsFcV5dsvtb2ZTFsBclE6+qsaj6sIuV+uDA9LJ+eW81fgykPzxfRz8G0WuXjNvSy1XoxXLPk85WO//w1rCjXYF63rYkOxkX2Z/NNg1k8XNvczLUrs3FFGI5dT4ax1bFTjI3K/O74/Pl6420wZfrePEGz6qAiBIWQ69BHxa563KK+qG8ZTOw7NU2jpmnVnLfDB5UUOnW31Sekhdar62pS6ByjTuvxLiibapK+d1dzC+a6rXRtM8zVdjrvhtebb0/q4/XaJiibLbUshlDTefXh7xfBjMGUz7fVMd62gnylLkbF2Gm7yO9Wg1SrQ6N42Skdb7fXdVR/XI7j+d0F7jWYiY7vbCvdoXzY7mJ71Ox+Bcrm1m8+n9G3COZPtJdadV2r+d8/wE6XulZdX778j3Yx/uBg8GcIBhaCgYVgYCEYWAgGFoKBhWBgIRhYCAYWgoGFYGAhGFgIBhaCgYVgYCEYWAgGFoKBhWBgIRhYCAYWgoGFYGAhGFgIBhaCgYVgYCEYWAgGFoKBhWBgIRhYCAYWgoGFYGAhGFgIBhaCgYVgYCEYWAgGFoKBhWBgIRhYCAYWgoGFYGAhGFgIBhaCgYVgYCEYWAgGFoKBhWBgIRhYCAYWgoGFYGAhGFgIBhaCgYVgYCEYWP4FLa47Lg/4bUIAAAAASUVORK5CYII=" style="width: 140px; height: 140px;" alt="140x140" class="img-circle" data-src="holder.js/140x140">
          <h2>Heading</h2>
          <p>Duis mollis, est non commodo luctus, nisi erat porttitor 
ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus 
sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor 
mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
          <p><a class="btn" href="#">View details »</a></p>
        </div><!-- /.span4 -->
        <div class="span4">
          <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIwAAACMCAYAAACuwEE+AAAEaklEQVR4nO3Y24rqSACF4f3+j1IQAiEgEhBBggjSiEhGHHEkSAgh1CusuUhsD90we20Y+vRffNBtRSvob1XirxijgN/166NPAF8LwcBCMLAQDCwEAwvBwEIwsBAMLAQDC8HAQjCwEAwsBAMLwcBCMLAQDCwEAwvBwEIwsBAMLAQDC8HAQjCwEAwsBAMLwcBCMLAQDCwEAwvBwEIwsBAMLAQDC8HAQjCwEAwsBAMLwcBCMLAQDCwEAwvBwEIwsBAMLAQDC8HAQjCwEAwsBAMLwcBCMLAQDCwEAwvBwEIwsBAMLAQDC8HAQjCwEAwsBAMLwcBCMLAQDCzfIph2v1QSUq2P7Zux82auLMuUF2u142OX/Up5kihJEmWTUqfu9+faLSYK6VSH9nms0arIlWX53Xl02pVTJUmiJElVLCv1n+D9+rHBtPVRu81SeQgKIWixbx6PaSpl41hISzUxKtYbJSEohERZlg5j2fI1pvf1Oh8qvZTT4fiQqXoKpt4U49jtPI6ryfBYkilLhrHp+vTh79uPDWY/T14/pLfB9HqZ3o1npdoYdVzmCiGoeKkVY6tFNsSz+edvzfJceT7Vto6KzU5FnivPZzp2jRZ384SQaX8fTHd4jfZ2Hhct0qAQUm2bqHgZQ/3POD+3Lx1M33fq+k7VInsTTLsvFUJQud1oehfMocwfjr3/fz++TjKZazEdVp+s3A9zdZ36vh4DewxmN0sUQqGqWt5eu90Pq1s6zBu78f9Q6NR//Hv3I4O5eo4g9mfNQlCYbhTjafj2Z0t1sVWZjd/6S//Oc2vNkruVJF3o8jBXq+VTMN1xpRCC5lWreB7+Lg+dYrcf5x2Dic0499vt7Cv5lsFcV5dsvtb2ZTFsBclE6+qsaj6sIuV+uDA9LJ+eW81fgykPzxfRz8G0WuXjNvSy1XoxXLPk85WO//w1rCjXYF63rYkOxkX2Z/NNg1k8XNvczLUrs3FFGI5dT4ax1bFTjI3K/O74/Pl6420wZfrePEGz6qAiBIWQ69BHxa563KK+qG8ZTOw7NU2jpmnVnLfDB5UUOnW31Sekhdar62pS6ByjTuvxLiibapK+d1dzC+a6rXRtM8zVdjrvhtebb0/q4/XaJiibLbUshlDTefXh7xfBjMGUz7fVMd62gnylLkbF2Gm7yO9Wg1SrQ6N42Skdb7fXdVR/XI7j+d0F7jWYiY7vbCvdoXzY7mJ71Ox+Bcrm1m8+n9G3COZPtJdadV2r+d8/wE6XulZdX778j3Yx/uBg8GcIBhaCgYVgYCEYWAgGFoKBhWBgIRhYCAYWgoGFYGAhGFgIBhaCgYVgYCEYWAgGFoKBhWBgIRhYCAYWgoGFYGAhGFgIBhaCgYVgYCEYWAgGFoKBhWBgIRhYCAYWgoGFYGAhGFgIBhaCgYVgYCEYWAgGFoKBhWBgIRhYCAYWgoGFYGAhGFgIBhaCgYVgYCEYWAgGFoKBhWBgIRhYCAYWgoGFYGAhGFgIBhaCgYVgYCEYWP4FLa47Lg/4bUIAAAAASUVORK5CYII=" style="width: 140px; height: 140px;" alt="140x140" class="img-circle" data-src="holder.js/140x140">
          <h2>Heading</h2>
          <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis 
in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. 
Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh,
 ut fermentum massa justo sit amet risus.</p>
          <p><a class="btn" href="#">View details »</a></p>
        </div><!-- /.span4 -->
      </div><!-- /.row -->


      <!-- START THE FEATURETTES -->

      <hr class="featurette-divider">

      <div class="featurette">
        <img class="featurette-image pull-right" src="Carousel%20Template%20%C2%B7%20Bootstrap%20Archivos/browser-icon-chrome.png">
        <h2 class="featurette-heading">First featurette headling. <span class="muted">It'll blow your mind.</span></h2>
        <p class="lead">Donec ullamcorper nulla non metus auctor 
fringilla. Vestibulum id ligula porta felis euismod semper. Praesent 
commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, 
tellus ac cursus commodo.</p>
      </div>

      <hr class="featurette-divider">

      <div class="featurette">
        <img class="featurette-image pull-left" src="Carousel%20Template%20%C2%B7%20Bootstrap%20Archivos/browser-icon-firefox.png">
        <h2 class="featurette-heading">Oh yeah, it's that good. <span class="muted">See for yourself.</span></h2>
        <p class="lead">Donec ullamcorper nulla non metus auctor 
fringilla. Vestibulum id ligula porta felis euismod semper. Praesent 
commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, 
tellus ac cursus commodo.</p>
      </div>

      <hr class="featurette-divider">

      <div class="featurette">
        <img class="featurette-image pull-right" src="Carousel%20Template%20%C2%B7%20Bootstrap%20Archivos/browser-icon-safari.png">
        <h2 class="featurette-heading">And lastly, this one. <span class="muted">Checkmate.</span></h2>
        <p class="lead">Donec ullamcorper nulla non metus auctor 
fringilla. Vestibulum id ligula porta felis euismod semper. Praesent 
commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, 
tellus ac cursus commodo.</p>
      </div>

      <hr class="featurette-divider">

      <!-- /END THE FEATURETTES -->


      <!-- FOOTER -->
      <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>© 2013 Company, Inc. · <a href="#">Privacy</a> · <a href="#">Terms</a></p>
      </footer>

    </div><!-- /.container -->



    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="Carousel%20Template%20%C2%B7%20Bootstrap%20Archivos/jquery.js"></script>
    <script src="Carousel%20Template%20%C2%B7%20Bootstrap%20Archivos/bootstrap-transition.js"></script>
    <script src="Carousel%20Template%20%C2%B7%20Bootstrap%20Archivos/bootstrap-alert.js"></script>
    <script src="Carousel%20Template%20%C2%B7%20Bootstrap%20Archivos/bootstrap-modal.js"></script>
    <script src="Carousel%20Template%20%C2%B7%20Bootstrap%20Archivos/bootstrap-dropdown.js"></script>
    <script src="Carousel%20Template%20%C2%B7%20Bootstrap%20Archivos/bootstrap-scrollspy.js"></script>
    <script src="Carousel%20Template%20%C2%B7%20Bootstrap%20Archivos/bootstrap-tab.js"></script>
    <script src="Carousel%20Template%20%C2%B7%20Bootstrap%20Archivos/bootstrap-tooltip.js"></script>
    <script src="Carousel%20Template%20%C2%B7%20Bootstrap%20Archivos/bootstrap-popover.js"></script>
    <script src="Carousel%20Template%20%C2%B7%20Bootstrap%20Archivos/bootstrap-button.js"></script>
    <script src="Carousel%20Template%20%C2%B7%20Bootstrap%20Archivos/bootstrap-collapse.js"></script>
    <script src="Carousel%20Template%20%C2%B7%20Bootstrap%20Archivos/bootstrap-carousel.js"></script>
    <script src="Carousel%20Template%20%C2%B7%20Bootstrap%20Archivos/bootstrap-typeahead.js"></script>
    <script>
      !function ($) {
        $(function(){
          // carousel demo
          $('#myCarousel').carousel()
        })
      }(window.jQuery)
    </script>
    <script src="Carousel%20Template%20%C2%B7%20Bootstrap%20Archivos/holder.js"></script>
  

</body></html>