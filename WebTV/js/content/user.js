function CreateUser()
{
    $.ajax({
        type: "Post",
        url: "WebService/Page/User.ashx",
        async: false,
        data: "action=loadroomlist&userid=" + userid + "&curpage=" + curpage + "&type=<%=pageType %>",
        success: function (data) {
            if (data.Code == 0) {
                $("#loadingTxt").css('display', 'none');
                $('.comment-box').empty();
                $.each(data.Value, function (n, value) {

                    var hotHtml = "";
                    if (value.IsHot == 1) {
                        hotHtml = '<div class="hot"></div>';
                    }

                    $('#listContainer').append('<li >' +
                       '<div class="bannerBg">' +
                        hotHtml + GeLiveName(value.isLive) +
                         '<a href="Room.aspx?roomId=' + value.RoomId + '&pageType=<%=pageType %>">' +

                '<img src="' + value.RoomBG + '" height="190" width="190" alt="">' +
                '</a>' +
                '<div class="gameName">' + GetRoomTypeName(value.RoomType) + '</div>' +
                 '<div class="like">' + '<i class="xin"></i>' + value.CollectNum + '</div>' +
                '<div class="mb"></div>' +
                '</div>' +
                '<div class="tvChange">' +
                    '<span class="name">' + value.OwnerName + '</span>' +
                    '<span class="douyu"><img src="https://img.5211game.com/5211/TVlive/images/' + GetPlatName(value.PlatType) + '.png" height="17" width="18" alt=""></span>' +
                '</div>' +
                '<div class="infor">' +
                        value.RoomName +
                '</div></li>');
                }
                );
            }
        }
    });
}