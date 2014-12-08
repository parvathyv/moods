   google.load("visualization", "1.1", {packages:["wordtree"]});
      google.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable(
          comments_array
        );

        var options = {
          wordtree: {
            format: 'implicit',
            word: name
          }
        };

        var chart = new google.visualization.WordTree(document.getElementById('wordtree_basic'));
        chart.draw(data, options);
      }