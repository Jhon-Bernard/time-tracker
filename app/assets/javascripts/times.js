$('#bell-notices').click(function() {
    var $bell;
    $bell = $(this);
    $.ajax({
        url: '/activities/mark_activity_viewed',
        type: 'put'
    });
});