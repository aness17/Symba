// Call the dataTables jQuery plugin
$(document).ready(function () {
	$("#dataTable").DataTable({
		dom: "Bfrtip",
		// buttons: ["copy", "excel", "pdf", "print"],
		buttons: [
			{
				extend: "copyHtml5",
				exportOptions: {
					columns: [0, ":visible"],
				},
			},
			{
				extend: "excelHtml5",
				exportOptions: {
					columns: ":visible",
				},
			},
			{
				extend: "pdfHtml5",
				exportOptions: {
					columns: [0, 1, 2, 3],
				},
			},
			"colvis",
		],
	});
	$("#dataTable2").DataTable({
		dom: "Bfrtip",
		// buttons: ["copy", "excel", "pdf", "print"],
		buttons: [
			{
				extend: "copyHtml5",
				exportOptions: {
					columns: [0, ":visible"],
				},
			},
			{
				extend: "excelHtml5",
				exportOptions: {
					columns: ":visible",
				},
			},
			{
				extend: "pdfHtml5",
				exportOptions: {
					columns: [0, 1, 2, 3, 4, 5, 6],
				},
			},
			"colvis",
		],
	});
	$("#dataTable3").DataTable({
		dom: "Bfrtip",
		buttons: ["copy", "excel", "pdf", "print"],
	});
	$("#dataTable4").DataTable({
		dom: "Bfrtip",
		buttons: ["copy", "excel", "pdf", "print"],
	});
	$("#dataTable5").DataTable({
		dom: "Bfrtip",
		buttons: ["copy", "excel", "pdf", "print"],
	});
});
