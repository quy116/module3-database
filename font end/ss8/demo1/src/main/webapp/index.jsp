<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link rel="stylesheet" href="home.css">
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css"
    />
</head>
<body>
<%--<h1><%= "Hello World!" %>--%>
    <div class="hearder col-12 position-fixed w-100">
        <div class="content-left">
            <div class="img">  <img src="image/BLACK MAN.png" alt="" /></div>
            <div class="item"><a href="bully">Home</a></div>
            <div class="item"><a href="#">About</a></div>
            <div class="item"><a href="#bully">Beers</a></div>
            <div class="item"><a href="#">Events</a></div>
            <div class="item" ><a href="#">Contact</a></div>
        </div>
        <div class="content-right">
            <div class="item">
                <a href="#">Log in <i class="fa-solid fa-right-to-bracket"></i> </a>
            </div>
        </div>
    </div>

    <div class="kodfun-galeri" style="padding-top: 10rem">
        <div
                style="
          background-image: url(image/chunky-PhotoRoom-PhotoRoom.png-PhotoRoom.png);
        "
                class=""
        ></div>

        <div
                style="
          background-image: url(image/bully_product-PhotoRoom.png-PhotoRoom.png);
        "
                class=""
        ></div>
        <div
                style="background-image: url(image/danny-PhotoRoom.png-PhotoRoom.png)"
                class=""
        ></div>
        <div
                style="
          background-image: url(image/louis-PhotoRoom-PhotoRoom.png-PhotoRoom.png);
        "
                class=""
        ></div>
        <div
                style="
          background-image: url(image/jackie_product-PhotoRoom.png-PhotoRoom.png);
        "
                class=""
        ></div>
    </div>
    <div class="content-body">
        <div class="CONNECTING col-12" id="bully">
            <div class="img-beer">
                <img src="image/bully_product.png" alt="" />
            </div>
            <div class="item-right">
                <div class="title">
                    <h1>Bully Beer</h1>
                </div>
                <div class="body">
                    Nhà máy bia thủ công trong nhà đầu tiên của Đà nẵng nằm ngay trung
                    tâm của Quận Hải Châu.<br />
                    Mang đến hương vị đậm đà và đích thực bằng cách sử dụng nguyên liệu
                    tươi ngon và chất lượng nhất từ ​​phương Đông <br />
                    sang phương Tây.
                </div>
                <div class="footer"></div>
                <div class="mo-ta"></div>
            </div>
        </div>
        <div class="Bully col-12">
            <div class="item-left">
                <div class="title">
                    <h1>Chunky Beer</h1>
                </div>
                <div class="body">
                    một loại bia thủ công đầu tiên tại Việt Nam <br />
                    mang đậm chất hương vị của vùng đất đỏ bazan.
                </div>
            </div>
            <div class="img-beer" id="div2">
                <img
                        src="image/chunky-PhotoRoom-PhotoRoom.png-PhotoRoom.png"
                        alt=""
                />
            </div>
        </div>
        <div class="CONNECTING col-12">
            <div class="img-beer">
                <img src="image/danny-PhotoRoom.png-PhotoRoom.png" alt="" />
            </div>
            <div class="item-right">
                <div class="title">
                    <h1>Danny Beer</h1>
                </div>
                <div class="body">
                    một loại bia cho phát nữ, một sự kêý hợp giữa bia và hương hoa
                    thoang thoảng
                </div>
                <div class="footer"></div>
                <div class="mo-ta"></div>
            </div>
        </div>
        <div class="Bully col-12">
            <div class="item-left">
                <div class="title">
                    <h1>Jackie Beer</h1>
                </div>
                <div class="body">
                    một loại bia thủ công đầu tiên tại Việt Nam <br />
                    là một sự kết hợp giữa bia và trái cây
                </div>
            </div>
            <div class="img-beer">
                <img src="image/jackie_product-PhotoRoom.png-PhotoRoom.png" alt="" />
            </div>
        </div>
        <div class="CONNECTING col-12">
            <div class="img-beer">
                <img src="image/louis-PhotoRoom-PhotoRoom.png-PhotoRoom.png" alt="" />
            </div>
            <div class="item-right">
                <div class="title">
                    <h1>Danny Beer</h1>
                </div>
                <div class="body">
                    mang đậm chất phương kết hợp từ rượu Whisky với bia
                </div>
            </div>
        </div>
    </div>
</body>
</html>