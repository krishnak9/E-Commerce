$(document).ready(function (){
  saledata = sales;
  console.log(saledata);
  var data =[];
  var labels = [];
  var colors = [];
  for (var i=0; i<saledata.length; i++){
     data[i] = saledata[i][3];
     labels[i] = saledata[i][5];
     if (i%2==0) 
      colors[i] = "rgb(244,67,54)";
     else 
       colors[i]= "rgb(33,150,243)";
  }
  console.log(data);
  console.log(labels);
    
  var ctx = document.getElementById("sale_trend");
  var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: labels,
        
        datasets: [{
            label: '# of Votes',
            data: data,
            backgroundColor: "rgb(33,150,243)",    
            borderWidth: 1
        }]
    },
    options: {
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero:true
                },
               gridLines: {
                    display:false
                }
              
            }],
           xAxes: [{
                gridLines: {
                    display:false
                }
                
            }],
        }
      
        
    }
});
});