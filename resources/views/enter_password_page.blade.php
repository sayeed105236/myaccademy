<!DOCTYPE html>
<html lang="en" class="no-js" >
<head>

    <!--- basic page needs
    ================================================== -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Myattacademy</title>

    <script>
        document.documentElement.classList.remove('no-js');
        document.documentElement.classList.add('js');
    </script>

    <!-- CSS
    ================================================== -->
    <link rel="stylesheet" href="{{asset('custom/css/vendor.css')}}">
    <link rel="stylesheet" href="{{asset('custom/css/styles.css')}}">

    <!-- favicons
    ================================================== -->
    <link rel="apple-touch-icon" sizes="180x180" href="apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="favicon-16x16.png">
    <link rel="manifest" href="site.webmanifest">

</head>

<body id="top">


    <!-- preloader
    ================================================== -->
    <div id="preloader">
        <div id="loader" class="dots-fade">
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>


    <!-- page wrap
    ================================================== -->
    <div id="page" class="s-pagewrap">


        <!-- # site header
        ================================================== -->
        <header class="s-header">

            <div class="row s-header__inner">
                <div class="column lg-12 s-header__block">

                    <div class="s-header__logo">
                        <a class="logo" href="index.html">
                            <img src="images/logo.svg" alt="Homepage">
                        </a>
                    </div>



                </div> <!-- end s-header__block -->
            </div> <!-- end s-header__inner -->

        </header> <!-- end s-header -->


        <!-- # intro
        ================================================== -->
        <section id="intro" class="s-intro">

            <div class="s-intro__bg"></div>

            <div class="row s-intro__content">
                <div class="column lg-12">

                    <div class="s-intro__content-top">
                        <h1>
                        We are currently working on something awesome. Stay tuned!
                        </h1>

                    </div> <!-- end s-intro__content-top -->

                    <div class="s-intro__content-sep">
                        <span></span>
                        <span>Time left until launching</span>
                        <span></span>
                    </div> <!-- end s-intro__content-sep -->

                    <div class="s-intro__content-counter counter">
                        <div class="counter__time">
                            <span class="ss-days">120</span>
                            <span>Days</span>
                        </div>
                        <div class="counter__time">
                            <span class="ss-hours">03</span>
                            <span>Hours</span>
                        </div>
                        <div class="counter__time minutes">
                            <span class="ss-minutes">01</span>
                            <span>Mins</span>
                        </div>
                        <div class="counter__time">
                            <span class="ss-seconds">55</span>
                            <span>Secs</span>
                        </div>
                    </div> <!-- end counter -->

                    <div class="s-intro__content-subscribe">
                        <form class="mc-form" method="post" action="/">
                          @csrf
                            <input type="password" name="password_field" i class="u-fullwidth text-center" placeholder="Enter Password to Access The Website" required>
                            <input type="submit"  value="Enter Password" class="btn--small btn--primary u-fullwidth">
                            <!-- <div style="position: absolute; left: -5000px;" aria-hidden="true"><input type="text" name="b_cdb7b577e41181934ed6a6a44_9a91cfe7b3" tabindex="-1" value=""></div> -->
                            <div class="mc-status"></div>
                        </form>
                    </div> <!-- end s-intro__content-subscribe -->

                </div>
            </div> <!-- intro__content -->


        </section> <!-- end s-intro -->


        <!-- # about
        ================================================== -->


        <!-- #video block
        ================================================== -->


        <!-- # footer
        ================================================== -->


    </div> <!-- end s-pagewrap -->


    <!-- Java Script
    ================================================== -->
    <script src="{{asset('custom/js/plugins.js')}}"></script>
    <script src="{{asset('custom/js/main.js')}}"></script>

</body>
</html>
