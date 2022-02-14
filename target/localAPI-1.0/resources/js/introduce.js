function scrollifyPage() {
    const $body = $("body");
    const options = {
        section: ".panel",
        scrollSpeed: 2000,
        scrollbars: false,
        overflowScroll: false,
        afterRender() {
            $body.attr("data-pre-index", 0);
        },
        before(i, panels) {
            $(panels[i]).addClass("active").siblings().removeClass("active");
            let preIndex = parseInt($body.attr("data-pre-index"));
            let direction = i > preIndex ? "down" : "up";
            $body.attr("data-pre-index", i).removeClass("up down").addClass(direction);
            $(document).trigger("onScrollify");
        }
    };
    $.scrollify(options);
}

function drawSvg() {
    const $panel = $(".panel");

    function drawSVGPaths(_parentElement, _time) {
        const paths = $(_parentElement).find("path");
        paths.toArray().forEach(el => {
            const $el = $(el);
            const isUp = $("body").hasClass("up");
            const totalLength = isUp ? -el.getTotalLength() : el.getTotalLength();
            $el.css({
                strokeDashoffset: totalLength,
                strokeDasharray: `${Math.abs(totalLength)} ${Math.abs(totalLength)}`
            });
            $el.animate({strokeDashoffset: 0}, {duration: _time});
        });
    }

    function startSVGAnimation(parentElement) {
        drawSVGPaths(parentElement, 2000);
    }

    function drawSvgInActivePanel() {
        $panel.toArray().forEach(
            el => $(el).hasClass("active") && startSVGAnimation($(el).find("svg")));
    }

    drawSvgInActivePanel();
    $(document).on("onScrollify", drawSvgInActivePanel);
}

scrollifyPage();
drawSvg();