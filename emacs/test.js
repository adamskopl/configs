function fdsfdsfs(fdsfsdfds, callback) {
    var x2x = function() {
        console.log('dfdffd');
        console.log('test');
    }
    x2x();
    x2x();
};

var name = {

    tagName: 'li',

    // Cache the template function for a single item.
    todoTpl: _.template($('#item-template').html()),

    events: {
        'dblclick label': 'edit',
        'keypress .edit': 'updateOnEnter',
        'blur .edit': 'close'
    },

    // Called when the view is first created
    initialize: function() {
        this.$el = $('#todo');
        // Later we'll look at:
        // this.listenTo(someCollection, 'all', this.render);
        // but you can actually run this example right now by
        // calling todoView.render();
    },

    // Re-render the titles of the todo item.
    render: function() {
        this.$el.html(this.todoTpl(this.model.attributes));
        // $el here is a reference to the jQuery element
        // associated with the view, todoTpl is a reference
        // to an Underscore template and model.attributes
        // contains the attributes of the model.
        // Altogether, the statement is replacing the HTML of
        // a DOM element with the result of instantiating a
        // template with the model's attributes.
        this.input = this.$('.edit');
        return this;
    },

    edit: function() {
        // executed when todo label is double clicked
    },

    close: function() {
        // executed when todo loses focus
    },

    updateOnEnter: function(e) {
        // executed on each keypress when in todo edit mode,
        // but we'll wait for enter to get in action
    }
};
var TTodoView = Backbone.View.extend({

    tagName: 'li',

    // Cache the template function for a single item.
    todoTpl: _.template($('#item-template').html()),

    // Called when the view is first created
    initialize: function() {
        this.$el = $('#todo');
        // Later we'll look at:
        // this.listenTo(someCollection, 'all', this.render);
        // but you can actually run this example right now by
        // calling todoView.render();
    },

    // Re-render the titles of the todo item.
    render: function() {
        this.$el.html(this.todoTpl(this.model.attributes));
        // $el here is a reference to the jQuery element
        // associated with the view, todoTpl is a reference
        // to an Underscore template and model.attributes
        // contains the attributes of the model.
        // Altogether, the statement is replacing the HTML of
        // a DOM element with the result of instantiating a
        // template with the model's attributes.
        this.input = this.$('.edit');
        return this;
    },

    edit: function() {
        // executed when todo label is double clicked
    },

    close: function() {
        // executed when todo loses focus
    },

    updateOnEnter: function(e) {
        // executed on each keypress when in todo edit mode,
        // but we'll wait for enter to get in action
    }
});

// create a view for a todo
var myTodo = new TTodoView({
    model: myTodo,
});

var todoView2 = new TTodoView({
    model: myTodo
});

function d(test, test2) {
    var u = x;
}

var d = 10;

if (true) {

}
var x = 10;