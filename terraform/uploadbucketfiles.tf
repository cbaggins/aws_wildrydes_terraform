resource "aws_s3_bucket_object" "file_1" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "apply.html"
	source = "../upload/website/apply.html"
	content_type = "text/html"
}

resource "aws_s3_bucket_object" "file_2" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "faq.html"
	source = "../upload/website/faq.html"
	content_type = "text/html"
}

resource "aws_s3_bucket_object" "file_3" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "favicon.ico"
	source = "../upload/website/favicon.ico"
	content_type = "image/x-icon"
}

resource "aws_s3_bucket_object" "file_4" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "index.html"
	source = "../upload/website/index.html"
	content_type = "text/html"
}

resource "aws_s3_bucket_object" "file_5" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "investors.html"
	source = "../upload/website/investors.html"
	content_type = "text/html"
}

resource "aws_s3_bucket_object" "file_6" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "register.html"
	source = "../upload/website/register.html"
	content_type = "text/html"
}

resource "aws_s3_bucket_object" "file_7" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "ride.html"
	source = "../upload/website/ride.html"
	content_type = "text/html"
}

resource "aws_s3_bucket_object" "file_8" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "robots.txt"
	source = "../upload/website/robots.txt"
	content_type = "text/plain"
}

resource "aws_s3_bucket_object" "file_9" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "signin.html"
	source = "../upload/website/signin.html"
	content_type = "text/html"
}

resource "aws_s3_bucket_object" "file_10" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "unicorns.html"
	source = "../upload/website/unicorns.html"
	content_type = "text/html"
}

resource "aws_s3_bucket_object" "file_11" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "verify.html"
	source = "../upload/website/verify.html"
	content_type = "text/html"
}

resource "aws_s3_bucket_object" "file_12" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "css/bootstrap.min.css"
	source = "../upload/website/css/bootstrap.min.css"
	content_type = "text/css"
}

resource "aws_s3_bucket_object" "file_13" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "css/bootstrap.min.css.map"
	source = "../upload/website/css/bootstrap.min.css.map"
	content_type = "application/json"
}

resource "aws_s3_bucket_object" "file_14" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "css/font.css"
	source = "../upload/website/css/font.css"
	content_type = "text/css"
}

resource "aws_s3_bucket_object" "file_15" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "css/index.css"
	source = "../upload/website/css/index.css"
	content_type = "text/css"
}

resource "aws_s3_bucket_object" "file_16" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "css/main.css"
	source = "../upload/website/css/main.css"
	content_type = "text/css"
}

resource "aws_s3_bucket_object" "file_17" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "css/mapbox-gl.css"
	source = "../upload/website/css/mapbox-gl.css"
	content_type = "text/css"
}

resource "aws_s3_bucket_object" "file_18" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "css/message.css"
	source = "../upload/website/css/message.css"
	content_type = "text/css"
}

resource "aws_s3_bucket_object" "file_19" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "css/normalize.css"
	source = "../upload/website/css/normalize.css"
	content_type = "text/css"
}

resource "aws_s3_bucket_object" "file_20" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "css/ride.css"
	source = "../upload/website/css/ride.css"
	content_type = "text/css"
}

resource "aws_s3_bucket_object" "file_21" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "fonts/fairplex-wide-n4.woff"
	source = "../upload/website/fonts/fairplex-wide-n4.woff"
	content_type = "font/woff"
}

resource "aws_s3_bucket_object" "file_22" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "fonts/fairplex-wide-n7.woff"
	source = "../upload/website/fonts/fairplex-wide-n7.woff"
	content_type = "font/woff"
}

resource "aws_s3_bucket_object" "file_23" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "fonts/glyphicons-halflings-regular.eot"
	source = "../upload/website/fonts/glyphicons-halflings-regular.eot"
	content_type = "application/vnd.ms-fontobject"
}

resource "aws_s3_bucket_object" "file_24" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "fonts/glyphicons-halflings-regular.svg"
	source = "../upload/website/fonts/glyphicons-halflings-regular.svg"
	content_type = "image/svg+xml"
}

resource "aws_s3_bucket_object" "file_25" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "fonts/glyphicons-halflings-regular.ttf"
	source = "../upload/website/fonts/glyphicons-halflings-regular.ttf"
	content_type = "font/ttf"
}

resource "aws_s3_bucket_object" "file_26" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "fonts/glyphicons-halflings-regular.woff"
	source = "../upload/website/fonts/glyphicons-halflings-regular.woff"
	content_type = "font/woff"
}

resource "aws_s3_bucket_object" "file_27" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "fonts/glyphicons-halflings-regular.woff2"
	source = "../upload/website/fonts/glyphicons-halflings-regular.woff2"
	content_type = "font/woff2"
}

resource "aws_s3_bucket_object" "file_28" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/background.png"
	source = "../upload/website/images/background.png"
	content_type = "image/png"
}

resource "aws_s3_bucket_object" "file_29" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/bbd3207c.png"
	source = "../upload/website/images/bbd3207c.png"
	content_type = "image/png"
}

resource "aws_s3_bucket_object" "file_30" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/bucephalus.png"
	source = "../upload/website/images/bucephalus.png"
	content_type = "image/png"
}

resource "aws_s3_bucket_object" "file_31" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/loading.gif"
	source = "../upload/website/images/loading.gif"
	content_type = "image/gif"
}

resource "aws_s3_bucket_object" "file_32" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/logo.png"
	source = "../upload/website/images/logo.png"
	content_type = "image/png"
}

resource "aws_s3_bucket_object" "file_33" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/rocinante.png"
	source = "../upload/website/images/rocinante.png"
	content_type = "image/png"
}

resource "aws_s3_bucket_object" "file_34" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/shadowfox.png"
	source = "../upload/website/images/shadowfox.png"
	content_type = "image/png"
}

resource "aws_s3_bucket_object" "file_35" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/spinning-gears.gif"
	source = "../upload/website/images/spinning-gears.gif"
	content_type = "image/gif"
}

resource "aws_s3_bucket_object" "file_36" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/star-pattern.png"
	source = "../upload/website/images/star-pattern.png"
	content_type = "image/png"
}

resource "aws_s3_bucket_object" "file_37" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/unicorn-icon.png"
	source = "../upload/website/images/unicorn-icon.png"
	content_type = "image/png"
}

resource "aws_s3_bucket_object" "file_38" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/unicorn-logo.png"
	source = "../upload/website/images/unicorn-logo.png"
	content_type = "image/png"
}

resource "aws_s3_bucket_object" "file_39" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/unicorn-map-bg.png"
	source = "../upload/website/images/unicorn-map-bg.png"
	content_type = "image/png"
}

resource "aws_s3_bucket_object" "file_40" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/unicorn-silhouette.png"
	source = "../upload/website/images/unicorn-silhouette.png"
	content_type = "image/png"
}

resource "aws_s3_bucket_object" "file_41" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/wr-apply-header.png"
	source = "../upload/website/images/wr-apply-header.png"
	content_type = "image/png"
}

resource "aws_s3_bucket_object" "file_42" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/wr-faq-header.jpg"
	source = "../upload/website/images/wr-faq-header.jpg"
	content_type = "image/jpg"
}

resource "aws_s3_bucket_object" "file_43" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/wr-home-about.jpg"
	source = "../upload/website/images/wr-home-about.jpg"
	content_type = "image/jpg"
}

resource "aws_s3_bucket_object" "file_44" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/wr-home-apple.png"
	source = "../upload/website/images/wr-home-apple.png"
	content_type = "image/png"
}

resource "aws_s3_bucket_object" "file_45" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/wr-home-blackberry.png"
	source = "../upload/website/images/wr-home-blackberry.png"
	content_type = "image/png"
}

resource "aws_s3_bucket_object" "file_46" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/wr-home-block-1.png"
	source = "../upload/website/images/wr-home-block-1.png"
	content_type = "image/png"
}

resource "aws_s3_bucket_object" "file_47" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/wr-home-block-2.png"
	source = "../upload/website/images/wr-home-block-2.png"
	content_type = "image/png"
}

resource "aws_s3_bucket_object" "file_48" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/wr-home-block-3.png"
	source = "../upload/website/images/wr-home-block-3.png"
	content_type = "image/png"
}

resource "aws_s3_bucket_object" "file_49" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/wr-home-block-4.png"
	source = "../upload/website/images/wr-home-block-4.png"
	content_type = "image/png"
}

resource "aws_s3_bucket_object" "file_50" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/wr-home-facebook.png"
	source = "../upload/website/images/wr-home-facebook.png"
	content_type = "image/png"
}

resource "aws_s3_bucket_object" "file_51" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/wr-home-google.png"
	source = "../upload/website/images/wr-home-google.png"
	content_type = "image/png"
}

resource "aws_s3_bucket_object" "file_52" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/wr-home-instagram.png"
	source = "../upload/website/images/wr-home-instagram.png"
	content_type = "image/png"
}

resource "aws_s3_bucket_object" "file_53" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/wr-home-kraken.png"
	source = "../upload/website/images/wr-home-kraken.png"
	content_type = "image/png"
}

resource "aws_s3_bucket_object" "file_54" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/wr-home-quote.jpg"
	source = "../upload/website/images/wr-home-quote.jpg"
	content_type = "image/jpg"
}

resource "aws_s3_bucket_object" "file_55" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/wr-home-quote.png"
	source = "../upload/website/images/wr-home-quote.png"
	content_type = "image/png"
}

resource "aws_s3_bucket_object" "file_56" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/wr-home-top.jpg"
	source = "../upload/website/images/wr-home-top.jpg"
	content_type = "image/jpg"
}

resource "aws_s3_bucket_object" "file_57" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/wr-home-twitter.png"
	source = "../upload/website/images/wr-home-twitter.png"
	content_type = "image/png"
}

resource "aws_s3_bucket_object" "file_58" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/wr-home-W.png"
	source = "../upload/website/images/wr-home-W.png"
	content_type = "image/png"
}

resource "aws_s3_bucket_object" "file_59" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/wr-home-wechat.png"
	source = "../upload/website/images/wr-home-wechat.png"
	content_type = "image/png"
}

resource "aws_s3_bucket_object" "file_60" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/wr-home-weibo.png"
	source = "../upload/website/images/wr-home-weibo.png"
	content_type = "image/png"
}

resource "aws_s3_bucket_object" "file_61" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/wr-home-Xiaomi.png"
	source = "../upload/website/images/wr-home-Xiaomi.png"
	content_type = "image/png"
}

resource "aws_s3_bucket_object" "file_62" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/wr-investors-1.png"
	source = "../upload/website/images/wr-investors-1.png"
	content_type = "image/png"
}

resource "aws_s3_bucket_object" "file_63" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/wr-investors-2.png"
	source = "../upload/website/images/wr-investors-2.png"
	content_type = "image/png"
}

resource "aws_s3_bucket_object" "file_64" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/wr-investors-3.png"
	source = "../upload/website/images/wr-investors-3.png"
	content_type = "image/png"
}

resource "aws_s3_bucket_object" "file_65" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/wr-investors-4.png"
	source = "../upload/website/images/wr-investors-4.png"
	content_type = "image/png"
}

resource "aws_s3_bucket_object" "file_66" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/wr-investors-5.png"
	source = "../upload/website/images/wr-investors-5.png"
	content_type = "image/png"
}

resource "aws_s3_bucket_object" "file_67" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/wr-investors-awesome.png"
	source = "../upload/website/images/wr-investors-awesome.png"
	content_type = "image/png"
}

resource "aws_s3_bucket_object" "file_68" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/wr-investors-header.png"
	source = "../upload/website/images/wr-investors-header.png"
	content_type = "image/png"
}

resource "aws_s3_bucket_object" "file_69" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/wr-investors-pcp.png"
	source = "../upload/website/images/wr-investors-pcp.png"
	content_type = "image/png"
}

resource "aws_s3_bucket_object" "file_70" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/wr-investors-thebarn.png"
	source = "../upload/website/images/wr-investors-thebarn.png"
	content_type = "image/png"
}

resource "aws_s3_bucket_object" "file_71" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/wr-logo-black.png"
	source = "../upload/website/images/wr-logo-black.png"
	content_type = "image/png"
}

resource "aws_s3_bucket_object" "file_72" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/wr-logo-white.png"
	source = "../upload/website/images/wr-logo-white.png"
	content_type = "image/png"
}

resource "aws_s3_bucket_object" "file_73" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/wr-unicorn-header.png"
	source = "../upload/website/images/wr-unicorn-header.png"
	content_type = "image/png"
}

resource "aws_s3_bucket_object" "file_74" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/wr-unicorn-one.png"
	source = "../upload/website/images/wr-unicorn-one.png"
	content_type = "image/png"
}

resource "aws_s3_bucket_object" "file_75" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/wr-unicorn-three.png"
	source = "../upload/website/images/wr-unicorn-three.png"
	content_type = "image/png"
}

resource "aws_s3_bucket_object" "file_76" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "images/wr-unicorn-two.png"
	source = "../upload/website/images/wr-unicorn-two.png"
	content_type = "image/png"
}

resource "aws_s3_bucket_object" "file_77" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "js/cognito-auth.js"
	source = "../upload/website/js/cognito-auth.js"
	content_type = "application/javascript"
}

resource "aws_s3_bucket_object" "file_78" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "js/esri-map.js"
	source = "../upload/website/js/esri-map.js"
	content_type = "application/javascript"
}

resource "aws_s3_bucket_object" "file_79" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "js/main.js"
	source = "../upload/website/js/main.js"
	content_type = "application/javascript"
}

resource "aws_s3_bucket_object" "file_80" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "js/ride.js"
	source = "../upload/website/js/ride.js"
	content_type = "application/javascript"
}

resource "aws_s3_bucket_object" "file_81" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "js/vendor.js"
	source = "../upload/website/js/vendor.js"
	content_type = "application/javascript"
}

resource "aws_s3_bucket_object" "file_82" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "js/vendor/amazon-cognito-identity.min.js"
	source = "../upload/website/js/vendor/amazon-cognito-identity.min.js"
	content_type = "application/javascript"
}

resource "aws_s3_bucket_object" "file_83" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "js/vendor/aws-cognito-sdk.min.js"
	source = "../upload/website/js/vendor/aws-cognito-sdk.min.js"
	content_type = "application/javascript"
}

resource "aws_s3_bucket_object" "file_84" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "js/vendor/bootstrap.min.js"
	source = "../upload/website/js/vendor/bootstrap.min.js"
	content_type = "application/javascript"
}

resource "aws_s3_bucket_object" "file_85" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "js/vendor/html5shiv.min.js"
	source = "../upload/website/js/vendor/html5shiv.min.js"
	content_type = "application/javascript"
}

resource "aws_s3_bucket_object" "file_86" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "js/vendor/jquery-3.1.0.js"
	source = "../upload/website/js/vendor/jquery-3.1.0.js"
	content_type = "application/javascript"
}

resource "aws_s3_bucket_object" "file_87" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "js/vendor/modernizr.js"
	source = "../upload/website/js/vendor/modernizr.js"
	content_type = "application/javascript"
}

resource "aws_s3_bucket_object" "file_88" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "js/vendor/moment.min.js"
	source = "../upload/website/js/vendor/moment.min.js"
	content_type = "application/javascript"
}

resource "aws_s3_bucket_object" "file_89" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "js/vendor/respond.min.js"
	source = "../upload/website/js/vendor/respond.min.js"
	content_type = "application/javascript"
}

resource "aws_s3_bucket_object" "file_90" {
	bucket = "${aws_s3_bucket.bucket.id}"
	key = "js/vendor/unicorn-icon"
	source = "../upload/website/js/vendor/unicorn-icon"
	content_type = ""
}