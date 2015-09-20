var page = QueryString.page;
var base = 'templates/';

if (!page) {
    page = "welcome";
}

$.get(base + page + '.html', function(template) {
    var rendered = Mustache.render(template, {name: "Luke"});
    $('#content').html(rendered);
}).fail(function() {
    window.location = "404.html";
});