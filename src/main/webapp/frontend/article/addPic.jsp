<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">
    </link>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/croppie/2.6.5/croppie.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/croppie/2.6.5/croppie.css" rel="stylesheet">
    </link>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <style>
        .none {
            height: 80px;
        }

        .flex-container {
            width: 100%;
            display: inline-flex;
            flex-direction: row;
            padding: 10px;
        }

        #oldImg {
            width: 45%;
        }

        #flow {
            width: 10%;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 50px;
            font-weight: 900;
            color: orange;
        }

        #newImg,
        .but {
            width: 45%;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .form1 {
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 10px;
        }
        
        #logo {
			width: 100px;
			height: 40px;
		}
    </style>
</head>

<body>
    <nav class="navbar navbar-expand-lg bg-light fixed-top">
		<div class="container-fluid">
			<a class="navbar-brand" href="select_page.jsp"><img id="logo" src="img/logo.png"></a>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				</ul>
				<form class="d-flex" role="search">
					<input class="form-control me-2" type="search"
						placeholder="?????????????????????">
					<button class="btn btn-outline-info text-nowrap" type="submit">??????</button>
				</form>
			</div>
		</div>
	</nav>
    <div class="none"></div>
    <div class="flex-container">
        <div class="but"><label class="btn btn-info"><input id="upload_img" style="display:none;" type="file"
                    accept="image/*"><i class="fa fa-photo"></i> ????????????</label></div>
        <div id="flow"></div>
        <div class="but"><button id="crop_img" class="btn btn-info"><i class="fa fa-scissors"></i> ??????????????????</button></div>
    </div>
    <div></div>

    <div class="flex-container">
        <div id="oldImg"></div>
        <div id="flow">???</div>
        <div id="newImg"></div>
    </div>
    <div id="newImgInfo"></div>
    <form method="post" class="form1" action="/CGA104G1/Article_identityServlet">
        <input type="hidden" name="action" value="insert">
        <input type="hidden" name="mem_id" value=1>
        <textarea class="picHtml" name="article_pic" style="display: none;"></textarea>
        <button type="submit" class="btn btn-success">????????????</button>
    </form>

    <script>
        (function ($) {
            var width_crop = 100, // ?????????????????? px ???
                height_crop = 100, // ?????????????????? px ???
                type_crop = "circle", // ????????????: square ?????????, circle ?????????
                width_preview = 200, // ?????????????????? px ???
                height_preview = 200, // ?????????????????? px ???
                compress_ratio = 0.85, // ?????????????????? 0~1
                type_img = "png", // ???????????? jpeg png webp
                oldImg = new Image(),
                myCrop, file, oldImgDataUrl;

            // ????????????????????????
            myCrop = $("#oldImg").croppie({
                viewport: { // ????????????
                    width: width_crop,
                    height: height_crop,
                    type: type_crop
                },
                boundary: { // ????????????
                    width: width_preview,
                    height: height_preview
                }
            });

            function readFile(input) {
                if (input.files && input.files[0]) {
                    file = input.files[0];
                } else {
                    alert("?????????????????????????????????????????????????????? Chrome");
                    return;
                }

                if (file.type.indexOf("image") == 0) {
                    var reader = new FileReader();

                    reader.onload = function (e) {
                        oldImgDataUrl = e.target.result;
                        oldImg.src = oldImgDataUrl; // ?????? oldImg ??????????????????
                        myCrop.croppie("bind", {
                            url: oldImgDataUrl
                        });
                    };

                    reader.readAsDataURL(file);
                } else {
                    alert("???????????????????????????");
                }
            }

            function displayCropImg(src) {
                var html = "<img class='upPic' src='" + src + "' />";
                $("#newImg").html(html);
                $(".picHtml").html(html);
            }

            $("#upload_img").on("change", function () {
                $("#oldImg").show();
                readFile(this);
            });

            oldImg.onload = function () {
                var width = this.width,
                    height = this.height,
                    fileSize = Math.round(file.size / 1000),
                    html = "";
                $("#oldImg").before(html);
            };

            function displayNewImgInfo(src) {
                var html = "",
                    filesize = src.length * 0.75;

                // html += "<p>?????????????????? " + width_crop + "x" + height_crop + "</p>";
                // html += "<p>??????????????? " + Math.round(filesize / 1000) + "k</p>";
                $("#newImgInfo").html(html);
            }

            $("#crop_img").on("click", function () {
                myCrop.croppie("result", {
                    type: "canvas",
                    format: type_img,
                    quality: compress_ratio
                }).then(function (src) {
                    displayCropImg(src);
                    displayNewImgInfo(src);
                });
            });
        })(jQuery);
    </script>
</body>

</html>