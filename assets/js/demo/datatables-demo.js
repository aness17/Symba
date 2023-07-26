// Call the dataTables jQuery plugin
$(document).ready(function () {
	$("#dataTable").DataTable({
		dom: "Bfrtip",
		// buttons: ["copy", "excel", "pdf", "print"],
		buttons: [
			{
				extend: "copyHtml5",
				download: "open",
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
				download: "open",
				exportOptions: {
					columns: [0, 1, 2, 3, 4],
				},
			},
			// "colvis",
		],
	});
	$("#remopex").DataTable({
		dom: "Bfrtip",
		// buttons: ["copy", "excel", "pdf", "print"],
		buttons: [
			{
				extend: "copyHtml5",
				download: "open",
				title: "SYMBA - REMAINING DATA OPEX",
				exportOptions: {
					columns: [0, ":visible"],
				},
			},
			{
				extend: "excelHtml5",
				title: "SYMBA - REMAINING DATA OPEX",
				exportOptions: {
					columns: ":visible",
				},
			},
			{
				extend: "pdfHtml5",
				download: "open",
				title: "SYMBA - REMAINING DATA OPEX",
				exportOptions: {
					columns: [0, 1, 2, 3, 4],
				},
			},
			// "colvis",
		],
	});
	$("#actopex").DataTable({
		dom: "Bfrtip",
		// buttons: ["copy", "excel", "pdf", "print"],
		buttons: [
			{
				extend: "copyHtml5",
				download: "open",
				title: "SYMBA - ACTUAL DATA OPEX",
				exportOptions: {
					columns: [0, ":visible"],
				},
			},
			{
				extend: "excelHtml5",
				title: "SYMBA - ACTUAL DATA OPEX",
				exportOptions: {
					columns: ":visible",
				},
			},
			{
				extend: "pdfHtml5",
				download: "open",
				title: "SYMBA - ACTUAL DATA OPEX",
				exportOptions: {
					columns: [0, 1, 2, 3, 4],
				},
			},
			// "colvis",
		],
	});
	$("#budopex").DataTable({
		dom: "Bfrtip",
		// buttons: ["copy", "excel", "pdf", "print"],
		buttons: [
			{
				extend: "copyHtml5",
				download: "open",
				title: "SYMBA - BUDGET DATA OPEX",
				exportOptions: {
					columns: [0, ":visible"],
				},
			},
			{
				extend: "excelHtml5",
				title: "SYMBA - BUDGET DATA OPEX",
				exportOptions: {
					columns: ":visible",
				},
			},
			{
				extend: "pdfHtml5",
				download: "open",
				title: "SYMBA - BUDGET DATA OPEX",
				exportOptions: {
					columns: [0, 1, 2, 3],
				},
			},
			"colvis",
		],
	});
	$("#remcapex").DataTable({
		dom: "Bfrtip",
		// buttons: ["copy", "excel", "pdf", "print"],
		buttons: [
			{
				extend: "copyHtml5",
				download: "open",
				title: "SYMBA - REMAINING DATA CAPEX",
				exportOptions: {
					columns: [0, ":visible"],
				},
			},
			{
				extend: "excelHtml5",
				title: "SYMBA - REMAINING DATA CAPEX",
				exportOptions: {
					columns: ":visible",
				},
			},
			{
				extend: "pdfHtml5",
				download: "open",
				title: "SYMBA - REMAINING DATA CAPEX",
				exportOptions: {
					columns: [0, 1, 2, 3, 4, 5, 6],
				},
			},
			// "colvis",
		],
	});
	$("#budcapex").DataTable({
		dom: "Bfrtip",
		// buttons: ["copy", "excel", "pdf", "print"],
		buttons: [
			{
				extend: "copyHtml5",
				download: "open",
				title: "SYMBA - BUDGET DATA CAPEX",
				exportOptions: {
					columns: [0, ":visible"],
				},
			},
			{
				extend: "excelHtml5",
				title: "SYMBA - BUDGET DATA CAPEX",
				exportOptions: {
					columns: ":visible",
				},
			},
			{
				extend: "pdfHtml5",
				title: "SYMBA - BUDGET DATA CAPEX",
				download: "open",
				exportOptions: {
					columns: [0, 1, 2, 3],
				},
			},
			"colvis",
		],
	});
	$("#actcapex").DataTable({
		dom: "Bfrtip",
		// buttons: ["copy", "excel", "pdf", "print"],
		buttons: [
			{
				extend: "copyHtml5",
				download: "open",
				title: "SYMBA - ACTUAL DATA CAPEX",
				exportOptions: {
					columns: [0, ":visible"],
				},
			},
			{
				extend: "excelHtml5",
				title: "SYMBA - ACTUAL DATA CAPEX",
				exportOptions: {
					columns: ":visible",
				},
			},
			{
				extend: "pdfHtml5",
				download: "open",
				title: "SYMBA - ACTUAL DATA CAPEX",
				exportOptions: {
					columns: [0, 1, 2, 3, 4],
				},
			},
			// "colvis",
		],
	});
	$("#dataTable2").DataTable({
		dom: "Bfrtip",
		// buttons: ["copy", "excel", "pdf", "print"],
		buttons: [
			{
				extend: "copyHtml5",
				download: "open",
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
				download: "open",
				exportOptions: {
					columns: [0, 1, 2, 3, 4, 5, 6],
				},
			},
			"colvis",
		],
	});
	$("#dataTable7").DataTable({
		dom: "Bfrtip",
		// buttons: ["copy", "excel", "pdf", "print"],
		buttons: [
			{
				extend: "copyHtml5",
				download: "open",
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
				download: "open",
				exportOptions: {
					columns: [0, 1, 2, 3, 4, 5, 6, 7],
				},
			},
			"colvis",
		],
	});
	$("#dataTable6").DataTable({
		dom: "Bfrtip",
		// buttons: ["copy", "excel", "pdf", "print"],
		buttons: [
			{
				extend: "copyHtml5",
				download: "open",
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
				download: "open",
				exportOptions: {
					columns: [0, 1, 2, 3, 4],
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
	$("#dataTable9").DataTable();
});
