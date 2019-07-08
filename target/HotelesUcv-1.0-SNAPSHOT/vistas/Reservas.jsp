<%@page import="Hotel.utilities.GeneralMethods"%>
<!DOCTYPE html>
<html lang="en">

	<head>
             <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="../css/EstiloResponsive.css" rel="stylesheet">
		<%@include file="templates/header.jsp" %>
<link href="../css/EstiloMenu.css" rel="stylesheet">

<style>
	.popover.top {
    margin-top: 270px;
}
	.content-spinner {
    position: fixed;
    top: 0px;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.73);
    z-index: 99999;
}

   .modal-dialog {
     position: relative; 
    width: auto; 
    margin: 10px;

	 }
.textos{
font-size:100%;

}

@media screen and (max-width: 700px){
.textos{
font-size:12px;
}
}
@media screen and (max-width: 400px){
.textos{
font-size:10px;
}
}
@media screen and (max-width: 361px){
.textos{
font-size:10px;
}
}


</style>
		<!--links-->
	</head>
	<body>
            <%@include file="templates/header-body.jsp" %>
            <section id="content_outer_wrapper">
<div id="content_wrapper" class="card-overlay">
<div id="header_wrapper" class="header-lg overlay header-img">
<div class="container-fluid">
<div class="row">
<div class="col-xs-12">
    <header id="header">
            <!-- Optional Page Title-->

    </header>
</div>
</div>
</div>
</div>
<div id="content" Style="width:90%;justify-content: center; margin-left: 4%">
<div class="row">
<div class="col-xs-12">
<div style=" text-align: center;"><H1 
style="color: white ;font-family:'ola';font-size: 35px">Las Mejores Habitaciones a su disposicion</h1><div>
</br>
<div>
<div class="tab-content">
<div class="tab-pane fadeIn" id="profile-timeline">
<div class="row">
<div class="col-xs-17 col-sm-11 col-sm-offset-1">
<article>
<div class="card card-comment" data-timeline="text">
<header class="card-heading mw-lightGray">
        <img src="assets/img/profiles/05.jpg" alt="" class="img-circle img-sm pull-left m-r-10">
        <h2 class="card-title m-t-5">Sarah Lee</h2>
        <ul class="card-actions icons right-top">
                <li class="hidden-sm hidden-md hidden-lg">
                        <a href="javascript:void(0)">
                                <i class="zmdi zmdi-comment-text"></i>
                        </a>
                </li>
                <li>
                        <a href="javascript:void(0)">
                                <i class="zmdi zmdi-favorite"></i>
                        </a>
                </li>
                <li>
                        <a href="javascript:void(0)">
                                <i class="zmdi zmdi-share"></i>
                        </a>
                </li>
                <li class="dropdown">
                        <a href="javascript:void(0)" data-toggle="dropdown">
                                <i class="zmdi zmdi-more-vert"></i>
                        </a>
                        <ul class="dropdown-menu btn-primary dropdown-menu-right">
                                <li>
                                        <a href="javascript:void(0)">Edit</a>
                                </li>
                                <li>
                                        <a href="javascript:void(0)">Delete</a>
                                </li>
                        </ul>
                </li>
        </ul>
</header>
<div class="card-body">
        <p>Copper mug drinking vinegar hexagon pitchfork. Raw denim banjo trust fund unicorn, bushwick marfa kinfolk small batch poke. Freegan man bun kogi fingerstache, mumblecore trust fund selvage live-edge celiac. Pug succulents roof party,
                flannel selfies raclette iceland ugh artisan plaid. Chambray cray deep v, kale chips typewriter cardigan food truck craft beer bespoke migas pickled. Celiac trust fund vinyl squid disrupt. Single-origin coffee readymade wayfarers
                copper mug, kinfolk pitchfork pinterest salvia iceland Vice deep v bushwick man bun pok pok shoreditch hoodie, neutra everyday carry marfa austin.</p>
        </div>
        <div class="card-footer mw-lightGray p-10">
                <ul class="card-actions icons left-bottom">
                        <li class="hidden-xs">
                                <a href="javascript:void(0)">
                                        <span class="badge status danger">3</span>
                                        <i class="zmdi zmdi-comment-text"></i>
                                </a>
                        </li>
                </ul>
                <div class="form-group m-5 p-0 p-l-75 is-empty">
                        <div class="input-group">
                                <label class="sr-only">Leave a comment...</label>
                                <input type="text" class="form-control form-rounded input-white" placeholder="Leave a comment..">
                                <span class="input-group-btn">
                                        <button type="button" class="btn btn-blue btn-fab animate-fab btn-fab-sm">
                                                <i class="zmdi zmdi-mail-send"></i>
                                        </button>
                                </span>
                        </div>
                </div>
        </div>
</div>
</article>
<article>
<div class="card card-comment" data-timeline="image">
        <header class="card-heading mw-lightGray">
                <img src="assets/img/profiles/05.jpg" alt="" class="img-circle img-sm pull-left m-r-10">
                <h2 class="card-title m-t-5">Sarah Lee</h2>
                <ul class="card-actions icons right-top">
                        <li class="hidden-sm hidden-md hidden-lg">
                                <a href="javascript:void(0)">
                                        <i class="zmdi zmdi-comment-text"></i>
                                </a>
                        </li>
                        <li>
                                <a href="javascript:void(0)">
                                        <i class="zmdi zmdi-favorite"></i>
                                </a>
                        </li>
                        <li>
                                <a href="javascript:void(0)">
                                        <i class="zmdi zmdi-share"></i>
                                </a>
                        </li>
                        <li class="dropdown">
                                <a href="javascript:void(0)" data-toggle="dropdown">
                                        <i class="zmdi zmdi-more-vert"></i>
                                </a>
                                <ul class="dropdown-menu btn-primary dropdown-menu-right">
                                        <li>
                                                <a href="javascript:void(0)">Edit</a>
                                        </li>
                                        <li>
                                                <a href="javascript:void(0)">Delete</a>
                                        </li>
                                </ul>
                        </li>
                </ul>
        </header>
        <div class="card-body">
                <div id="photo-gallery" class="gallery row" itemscope="" itemtype="http://schema.org/ImageGallery">
                        <figure class="col-md-3 col-sm-4 col-xs-12" itemprop="associatedMedia" itemscope="" itemtype="http://schema.org/ImageObject">
                                <a href="assets/img/timeline/timeline_large_1.jpg" data-caption="<div class='text-center'>Place your caption here.<br><em class='text-muted'><i class='zmdi zmdi-favorite'></i> MaterialLab</em></div>" data-width="1600" data-height="1068" itemprop="contentUrl">
                                        <img src="assets/img/timeline/timeline_small_1.jpg" itemprop="thumbnail" alt="Image description">
                                </a>
                        </figure>
                        <figure class="col-md-3 col-sm-4 col-xs-12" itemprop="associatedMedia" itemscope="" itemtype="http://schema.org/ImageObject">
                                <a href="assets/img/timeline/timeline_large_2.jpg" data-caption="<div class='text-center'>Place your caption here.<br><em class='text-muted'><i class='zmdi zmdi-favorite'></i> MaterialLab</em></div>" data-width="1600" data-height="1068" itemprop="contentUrl">
                                        <img src="assets/img/timeline/timeline_small_2.jpg" itemprop="thumbnail" alt="Image description">
                                </a>
                        </figure>
                        <figure class="col-md-3 col-sm-4 col-xs-12" itemprop="associatedMedia" itemscope="" itemtype="http://schema.org/ImageObject">
                                <a href="assets/img/timeline/timeline_large_3.jpg" data-caption="<div class='text-center'>Place your caption here.<br><em class='text-muted'><i class='zmdi zmdi-favorite'></i> MaterialLab</em></div>" data-width="1600" data-height="1068" itemprop="contentUrl">
                                        <img src="assets/img/timeline/timeline_small_3.jpg" itemprop="thumbnail" alt="Image description">
                                </a>
                        </figure>
                        <figure class="col-md-3 col-sm-4 col-xs-12" itemprop="associatedMedia" itemscope="" itemtype="http://schema.org/ImageObject">
                                <a href="assets/img/timeline/timeline_large_4.jpg" data-caption="<div class='text-center'>Place your caption here.<br><em class='text-muted'><i class='zmdi zmdi-favorite'></i> MaterialLab</em></div>" data-width="1600" data-height="1068" itemprop="contentUrl">
                                        <img src="assets/img/timeline/timeline_small_4.jpg" itemprop="thumbnail" alt="Image description">
                                </a>
                        </figure>
                </div>
                <p>Fashion axe kitsch marfa, art party gluten-free beard meditation lumbersexual pinterest sapiente. Aute portland nostrud four dollar toast, organic typewriter cold-pressed wolf do chartreuse godard. Before they sold out consequat voluptate
                        man bun, craft beer ullamco mlkshk quis health goth cold-pressed yuccie pork belly. Biodiesel tilde ethical, delectus fap marfa four dollar toast thundercats.</p>
                </div>
                <div class="card-footer mw-lightGray p-10">
                        <ul class="card-actions icons left-bottom">
                                <li class="hidden-xs">
                                        <a href="javascript:void(0)">
                                                <span class="badge status danger">0</span>
                                                <i class="zmdi zmdi-comment-text"></i>
                                        </a>
                                </li>
                        </ul>
                        <div class="form-group m-5 p-0 p-l-75 is-empty">
                                <div class="input-group">
                                        <label class="sr-only">Leave a comment...</label>
                                        <input type="text" class="form-control form-rounded input-white" placeholder="Leave a comment..">
                                        <span class="input-group-btn">
                                                <button type="button" class="btn btn-blue btn-fab animate-fab btn-fab-sm">
                                                        <i class="zmdi zmdi-mail-send"></i>
                                                </button>
                                        </span>
                                </div>
                        </div>
                </div>
        </div>
</article>
<article>
        <div class="card card-comment" data-timeline="video">
                <header class="card-heading mw-lightGray">
                        <img src="assets/img/profiles/05.jpg" alt="" class="img-circle img-sm pull-left m-r-10">
                        <h2 class="card-title m-t-5">Sarah Lee</h2>
                        <ul class="card-actions icons right-top">
                                <li class="hidden-sm hidden-md hidden-lg">
                                        <a href="javascript:void(0)">
                                                <i class="zmdi zmdi-comment-text"></i>
                                        </a>
                                </li>
                                <li>
                                        <a href="javascript:void(0)">
                                                <i class="zmdi zmdi-favorite"></i>
                                        </a>
                                </li>
                                <li>
                                        <a href="javascript:void(0)">
                                                <i class="zmdi zmdi-share"></i>
                                        </a>
                                </li>
                                <li class="dropdown">
                                        <a href="javascript:void(0)" data-toggle="dropdown">
                                                <i class="zmdi zmdi-more-vert"></i>
                                        </a>
                                        <ul class="dropdown-menu btn-primary dropdown-menu-right">
                                                <li>
                                                        <a href="javascript:void(0)">Edit</a>
                                                </li>
                                                <li>
                                                        <a href="javascript:void(0)">Delete</a>
                                                </li>
                                        </ul>
                                </li>
                        </ul>
                </header>
                <div class="card-body">
                        <div class="embed-container m-t-20">
                                <iframe src="//player.vimeo.com/video/93219862?title=0&amp;byline=0&amp;portrait=0" frameborder="0" webkitallowfullscreen="" mozallowfullscreen="" allowfullscreen=""></iframe>
                        </div>
                </div>
                <div class="card-footer mw-lightGray p-10">
                        <ul class="card-actions icons left-bottom">
                                <li class="hidden-xs">
                                        <a href="javascript:void(0)">
                                                <span class="badge status danger">7</span>
                                                <i class="zmdi zmdi-comment-text"></i>
                                        </a>
                                </li>
                        </ul>
                        <div class="form-group m-5 p-0 p-l-75 is-empty">
                                <div class="input-group">
                                        <label class="sr-only">Leave a comment...</label>
                                        <input type="text" class="form-control form-rounded input-white" placeholder="Leave a comment..">
                                        <span class="input-group-btn">
                                                <button type="button" class="btn btn-blue btn-fab animate-fab btn-fab-sm">
                                                        <i class="zmdi zmdi-mail-send"></i>
                                                </button>
                                        </span>
                                </div>
                        </div>
                </div>
        </div>
</article>
</div>
</div>
</div>
<div class="tab-pane fadeIn" id="profile-about">
<div class="card card-transparent m-b-0">
<header class="card-heading">
<h2 class="card-title m-t-0">About</h2>
</header>
<div class="card-body p-t-0">
<p>
        Cray distillery tumeric taxidermy 90's meggings. Street art you probably haven't heard of them shabby chic, selvage woke mlkshk stumptown single-origin coffee irony master cleanse wayfarers truffaut seitan plaid disrupt. Asymmetrical slow-carb 3 wolf
        moon pabst, pork belly tacos actually subway tile chartreuse etsy truffaut butcher kinfolk. Listicle waistcoat migas 90's, biodiesel 8-bit you probably haven't heard of them. Literally godard green juice, forage cronut tilde crucifix
        jean shorts occupy put a bird on it. Heirloom hoodie XOXO poke, synth authentic vinyl kogi mumblecore affogato artisan readymade enamel pin. Seitan four loko helvetica hammock.
</p>
</div>
</div>
<div class="card card-transparent">
<header class="card-heading">
<h2 class="card-title">Contact</h2>
</header>
<div class="card-body p-t-0">
<div class="p-l-30">
        <dl class="dl-horizontal">
                <dt>Location</dt>
                <dd>Little Rock, AR</dd>
        </dl>
        <dl class="dl-horizontal">
                <dt>Phone</dt>
                <dd>+1 888-555-0000</dd>
        </dl>
        <dl class="dl-horizontal">
                <dt>Email Address</dt>
                <dd><a href="mailto:support@authenticgoods.co">support@authenticgoods.co</a></dd>
        </dl>
        <dl class="dl-horizontal">
                <dt>Website</dt>
                <dd><a href="http://www.authenticgoods.co" target="_blank">http://www.authenticgoods.co</a></dd>
        </dl>
        <dl class="dl-horizontal">
                <dt>Twitter</dt>
                <dd><a href="//twitter.com/_authenticgoods" target="_blank">@_authenticgoods</a></dd>
        </dl>
</div>
</div>
</div>
</div>
<div class="tab-pane fadeIn active" id="profile-contacts">
<div class="row">

<div id="cuartos">




</div>
                                </div>
                        </div>
                </div>
        </div>
</div>
</div>
</div>
<section id="chat_compose_wrapper">
<div class="tippy-top">
<div class="recipient">Allison Grayce</div>
<ul class="card-actions icons  right-top">
<li>
<a href="javascript:void(0)">
<i class="zmdi zmdi-videocam"></i>
</a>
</li>
<li class="dropdown">
<a href="javascript:void(0)" data-toggle="dropdown" aria-expanded="false">
<i class="zmdi zmdi-more-vert"></i>
</a>
<ul class="dropdown-menu btn-primary dropdown-menu-right">
<li>
<a href="javascript:void(0)">Option One</a>
</li>
<li>
<a href="javascript:void(0)">Option Two</a>
</li>
<li>
<a href="javascript:void(0)">Option Three</a>
</li>
</ul>
</li>
<li>
<a href="javascript:void(0)" data-chat="close">
<i class="zmdi zmdi-close"></i>
</a>
</li>
</ul>
</div>
<div class="chat-wrapper scrollbar mCustomScrollbar _mCS_2 mCS-autoHide mCS_no_scrollbar" style="position: relative; overflow: visible;"><div id="mCSB_2" class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside" tabindex="0" style="max-height: none;"><div id="mCSB_2_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
<div class="chat-message scrollbar mCustomScrollbar _mCS_3 mCS-autoHide mCS_no_scrollbar" style="position: relative; overflow: visible;"><div id="mCSB_3" class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside" style="max-height: none;" tabindex="0"><div id="mCSB_3_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
<div class="chat-message chat-message-recipient">
<img class="chat-image chat-image-default mCS_img_loaded" src="assets/img/profiles/05.jpg">
<div class="chat-message-wrapper">
<div class="chat-message-content">
<p>Hey Mike, we have funding for our new project!</p>
</div>
<div class="chat-details">
<span class="today small">07/04/2019</span>
</div>
</div>
</div>
<div class="chat-message chat-message-sender">
<img class="chat-image chat-image-default mCS_img_loaded" src="assets/img/profiles/02.jpg">
<div class="chat-message-wrapper ">
<div class="chat-message-content">
<p>Awesome! Photo booth banh mi pitchfork kickstarter whatever, prism godard ethical 90's cray selvage.</p>
</div>
<div class="chat-details">
<span class="today small">07/04/2019</span>
</div>
</div>
</div>
<div class="chat-message chat-message-recipient">
<img class="chat-image chat-image-default mCS_img_loaded" src="assets/img/profiles/05.jpg">
<div class="chat-message-wrapper">
<div class="chat-message-content">
<p> Artisan glossier vaporware meditation paleo humblebrag forage small batch.</p>
</div>
<div class="chat-details">
<span class="today small">07/04/2019</span>
</div>
</div>
</div>
<div class="chat-message chat-message-sender">
<img class="chat-image chat-image-default mCS_img_loaded" src="assets/img/profiles/02.jpg">
<div class="chat-message-wrapper">
<div class="chat-message-content">
<p>Bushwick letterpress vegan craft beer dreamcatcher kickstarter.</p>
</div>
<div class="chat-details">
<span class="today small">07/04/2019</span>
</div>
</div>
</div>
</div></div><div id="mCSB_3_scrollbar_vertical" class="mCSB_scrollTools mCSB_3_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_3_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 50px; height: 0px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 50px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div>
</div></div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 50px; display: block; height: 0px; max-height: 567px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 50px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div>
<footer id="compose-footer">
<form class="form-horizontal compose-form">
<ul class="card-actions icons left-bottom">
<li>
<a href="javascript:void(0)">
<i class="zmdi zmdi-attachment-alt"></i>
</a>
</li>
<li>
<a href="javascript:void(0)">
<i class="zmdi zmdi-mood"></i>
</a>
</li>
</ul>
<div class="form-group m-10 p-l-75 is-empty">
<div class="input-group">
<label class="sr-only">Leave a comment...</label>
<input type="text" class="form-control form-rounded input-lightGray" placeholder="Leave a comment..">
<span class="input-group-btn">
<button type="button" class="btn btn-blue btn-fab  btn-fab-sm">
<i class="zmdi zmdi-mail-send"></i>
</button>
</span>
</div>
</div>
</form>
</footer>
</section>
</div>
<%@include file="templates/footer-body.jsp" %>
</body>

<script src="templates/js/main.js" type="text/javascript"></script>
<script src="../js/bootbox/bootbox.min.js" type="text/javascript"></script>
<script src="../js/General.js" charset="utf-8"></script>


</html>