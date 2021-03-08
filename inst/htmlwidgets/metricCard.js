HTMLWidgets.widget({

  name: 'metricCard',

  type: 'output',

  factory: function(el, width, height) {

    // TODO: define shared variables for this instance

    return {

      renderValue: function(x) {

      //var x = x.message

        // TODO: code to render the widget, e.g.
              el.innerHTML = " <div class=\"metric\">    <div class=\"metric-inner\">      <header class=\"metric-header\">        <h1 class=\"metric-title\">"+x.title+"</h1>      </header>      <div class=\"metric-body viz-basic\">        <div class=\"value\">          <h1 class=\"primary-value\">"+x.number+"</h1>          <h2>"+ x.subtitle +"</h2>        </div>      </div>    </div>  </div></div>";
              console.log(x);
      },

      resize: function(width, height) {

        // TODO: code to re-render the widget with a new size

      }

    };
  }
});
