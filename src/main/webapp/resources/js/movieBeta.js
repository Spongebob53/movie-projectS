const container = document.querySelector(".collage_container");
const containerWidth = container.offsetWidth;
const containerHeight = container.offsetHeight;
const piecesNum = 30;
let floatPiece;
const maxsizeX = Math.round(containerWidth / 2);
const maxsizeY = Math.round(containerHeight / 2);
const mie = (navigator === "Microsoft Internet Explorer") ? true : false;

TweenMax.set(container, {
    css: {
        transformPerspective: 600,
        transformStyle: "preserve-3d",
        rotationX: 10,
        rotationY: -10
    }
});

function getRandomInt(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
}

for (let i = 0; i < piecesNum; i++) {
    const piece = document.createElement('div');
    piece.className = "collage_piece";
    floatPiece = getRandomInt(-200, 0);
    TweenMax.set(piece, {css: {z: floatPiece}});

    if (floatPiece < -100) {
        piece.style.width = getRandomInt(maxsizeX / 2, maxsizeX) + "px";
        piece.style.height = getRandomInt(maxsizeY / 2, maxsizeY) + "px";
    } else {
        piece.style.width = getRandomInt(40, maxsizeX / 2) + "px";
        piece.style.height = getRandomInt(40, maxsizeY / 2) + "px";
    }

    piece.style.backgroundImage = "url(/resources/img/movieBeta/DuneMain.jpg)";
    container.appendChild(piece);

    piece.style.backgroundSize = "" + containerWidth + "px " + containerHeight + "px";
    piece.style.left = getRandomInt(0, containerWidth - piece.offsetWidth) + "px";
    piece.style.top = getRandomInt(0, containerHeight - piece.offsetHeight) + "px";
    piece.style.backgroundPosition = -(piece.offsetLeft) + "px " + (-piece.offsetTop) + "px";
}

window.addEventListener("mousemove", function (e) {
    let mouseX, mouseY;

    if (!mie) {
        mouseX = e.pageX;
        mouseY = e.pageY;
    } else {
        mouseX = event.clientX + document.body.scrollLeft;
        mouseY = event.clientY + document.body.scrollTop;
    }
    const xp = -60 + (mouseX * 100 / window.innerWidth);
    const yp = 60 - (mouseY * 100 / window.innerHeight);

    TweenMax.to(container, 1, {css: {rotationX: yp, rotationY: xp}, ease: Power2.easeOut});
});
