var pageLoader = {

    page: null,
    baseRecipe: 'data/',
    baseTemplate: 'templates/',

    loadPage: function(page, dataFilename) {
        var _self = this;

        this.page = page;
        if (!page) {
            this.page = "welcome";
        }

        $.get(this.baseTemplate + this.page + '.html', function( template ) {
            console.log(dataFilename, template);
            if (typeof dataFilename !== 'undefined') {
                $.getJSON(_self.baseRecipe + dataFilename + ".json", function (data) {
                    console.log(data);
                    _self.render(template, data);
                });
            } else{
                _self.render(template);
            }
        }).fail(function() {
            window.location = "404.html";
        });
    },
    render: function(template, data) {
        var rendered = Mustache.render(template, data);
        $('#content').html(rendered);
    },
};