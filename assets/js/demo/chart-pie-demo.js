// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#858796';

// var ctx = document.getElementById("myPieChart").getContext('2d');
// var ttlBudget = document.getElementById("totalbudget").value;
// var ttlActual = document.getElementById("totalactual").value;
// var ttlActual_percentage = (ttlActual/ttlBudget) * 100 ;
// var ttlBudget_percentage = 100 - ttlActual_percentage ;
// console.log(ttlBudget_percentage);
// console.log(ttlActual_percentage);

// var data = [{
//   data: [ttlBudget_percentage, ttlActual_percentage],
//   backgroundColor: ['#4e73df', '#1cc88a'],
//   hoverBackgroundColor: ['#2e59d9', '#17a673'],
//   hoverBorderColor: "rgba(234, 236, 244, 1)",
// }]; 

// var options = {
//   tooltips: {
//     enabled: false
//   },
//   plugins: {
//     datalabels: {
//       formatter: (value, categories) => {

//         let sum = 0;
//         let dataArr = categories.chart.data.datasets[0].data;
//         dataArr.map(data => {
//           sum += data;
//         });
//         let percentage = (value*100 / sum).toFixed(2)+"%";
//         return percentage;


//       },
//       color: '#fff',
//     }
//   }
// };
// // var ctx = document.getElementById("pie-chart").getContext('2d');
// var myPieChart = new Chart(ctx, {
//   type: 'pie',
//   data: {
//     labels: ["Budget", "Actual"],
//     datasets: data
//   },
//   options: options
// });


//Pie Chart Example

// var myPieChart = new Chart(ctx, {
//   type: 'doughnut',
//   data: {
//     labels: ["Budget", "Actual"],
//     datasets: [{
//       data: [ttlBudget_percentage, ttlActual_percentage],
//       backgroundColor: ['#4e73df', '#1cc88a'],
//       hoverBackgroundColor: ['#2e59d9', '#17a673'],
//       hoverBorderColor: "rgba(234, 236, 244, 1)",
//     }],
//   },
//   options: {
//     maintainAspectRatio: false,
//     tooltips: {
//       backgroundColor: "rgb(255,255,255)",
//       bodyFontColor: "#858796",
//       borderColor: '#dddfeb',
//       borderWidth: 1,
//       xPadding: 15,
//       yPadding: 15,
//       displayColors: false,
//       caretPadding: 10,
//     },
//     legend: {
//       display: true
//     },
//     cutoutPercentage: 80,
//   },
// });



// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#858796';

// Pie Chart Example
var ctx = document.getElementById("myPieChart");
var ttlBudget = document.getElementById("totalbudget").value;
var ttlActual = document.getElementById("totalactual").value;
var ttlActual_percentage = Math.round((ttlActual/ttlBudget) * 100);
var ttlBudget_percentage = 100 - ttlActual_percentage ;
// var a = ttlBudget_percentage + '%';
// var s = ttlActual_percentage + '%'
// console.log(ttlBudget_percentage);
// console.log(ttlActual_percentage);
var myPieChart = new Chart(ctx, {
  type: 'pie',
  data: {
    labels: ["Budget", "Actual"],
    datasets: [{
      data: [ttlBudget_percentage, ttlActual_percentage],
      backgroundColor: ['#4e73df', '#1cc88a'],
      hoverBackgroundColor: ['#2e59d9', '#17a673'],
      hoverBorderColor: "rgba(234, 236, 244, 1)",
    }],
  },
  options: {
    maintainAspectRatio: false,
    tooltips: {
      enabled:true,
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: false,
      caretPadding: 10,
    },
    legend: {
      display: true
    },
    cutoutPercentage: 80,
  },
});
