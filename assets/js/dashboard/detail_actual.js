let base_url = "http://192.168.111.14/symba/";

function dtl_actual(id, tahun, user) {
	let id_budget = id;
	let id_user = user;
	let thn = tahun;

	$.ajax({
		url: base_url + "user/json_detail_actual",
		type: "POST",
		data: {
			id_budget: id_budget,
			thn: thn,
			id_user: id_user,
		},
		success: function (r) {
			let obj = JSON.parse(r);
			// console.log(obj);
			let tbl =
				'<h4><span class="badge badge-primary" id="totalActual">' +
				obj.total +
				'</span></h4><div class="table-responsive"><table class="table table-bordered" id="dataTableUser" width="100%" cellspacing="0"><thead><tr style="text-align: center;"><th>No</th><th>Account</th><th>Description Budget</th><th>Description source of module</th><th>Source</th><th>Budget Amount DR</th><th>Budget Amount CR</th><th>Date</th></tr></thead><tbody class="list">' +
				obj.isi +
				"</tbody></table></div>";
			$("#bodyMyModal2").html("");
			$("#bodyMyModal2").append(tbl);
			$("#dataTableUser").DataTable({
				dom: "Bfrtip",
				buttons: [
					{
						extend: "pdfHtml5",
						title: "SYMBA - REMAINING DATA " + obj.division,
						download: "open",
					},
					{
						extend: "copyHtml5",
						title: "SYMBA - REMAINING DATA " + obj.division,
						download: "open",
						exportOptions: {
							columns: [0, ":visible"],
						},
					},
					{
						extend: "excelHtml5",
						title: "SYMBA - REMAINING DATA " + obj.division,
						exportOptions: {
							columns: ":visible",
						},
					},
				],
			});
		},
	});
}

function dtl_budget(id, tahun, idbudget, category) {
	let id_user = id;
	let thn = tahun;
	let id_bdgt = idbudget;
	let cat = category;
	$.ajax({
		url: base_url + "user/dtl_budget",
		type: "POST",
		data: {
			id_bdgt: id_bdgt,
			thn: thn,
			id_user: id_user,
			cat: cat,
		},
		success: function (r) {
			let obj = JSON.parse(r);
			let tbl =
				'<div class="table-responsive"><table class="table table-bordered" id="dataTableDetail" width="100%" cellspacing="0"><thead><tr style="text-align: center;"><th>No</th><th>Account</th><th>Description Budget</th><th>Description source of module</th><th>Budget Amount</th></tr></thead><tbody class="list">' +
				obj.isi +
				"</tbody></table></div>";
			// console.log(tbl);
			$("#bodydetailbudget").html("");
			$("#bodydetailbudget").append(tbl);
			$("#dataTableDetail").DataTable({
				dom: "Bfrtip",
				buttons: [
					{
						extend: "pdfHtml5",
						title: "SYMBA - BUDGET DATA " + obj.division,
						download: "open",
					},
					{
						extend: "copyHtml5",
						title: "SYMBA - BUDGET DATA " + obj.division,
						download: "open",
						exportOptions: {
							columns: [0, ":visible"],
						},
					},
					{
						extend: "excelHtml5",
						title: "SYMBA - BUDGET DATA " + obj.division,
						exportOptions: {
							columns: ":visible",
						},
					},
				],
			});
		},
	});
}

function budget(id, tahun, category) {
	let id_user = id;
	let thn = tahun;
	let cat = category;
	// console.log(cat);

	$.ajax({
		url: base_url + "admin/budget_detail",
		type: "POST",
		data: {
			id_user: id_user,
			thn: thn,
			cat: cat,
		},
		success: function (x) {
			// console.log(x);

			let obj = JSON.parse(x);
			let tbl =
				'<div class="table-responsive"><table class="table table-bordered" id="dataTableBudget" width="100%" cellspacing="0"><thead><tr style="text-align: center;"><th>No</th><th>Account</th><th>Program</th><th>Description</th><th>Remarks</th><th>Budget Amount</th><th>Status</th><th>Budget Date</th></tr></thead><tbody class="list">' +
				obj +
				"</tbody></table></div>";
			// console.log(obj);
			// $(".modal-body").html('');
			// $(".modal-body").append(tbl);
			$(".detailbudget").html("");
			$(".detailbudget").append(tbl);
			$("#dataTableBudget").DataTable({
				dom: "Bfrtip",
				buttons: ["copy", "excel", "pdf", "print"],
			});
		},
	});
}

function actual(id, tahun, category) {
	let id_user = id;
	let thn = tahun;
	let cat = category;

	$.ajax({
		url: base_url + "admin/actual_detail",
		type: "POST",
		data: {
			id_user: id_user,
			thn: thn,
			cat: cat,
		},
		success: function (r) {
			let obj = JSON.parse(r);
			let tbl =
				'<div class="table-responsive"><table class="table table-bordered" id="dataTableActual" width="100%" cellspacing="0"><thead><tr style="text-align: center;"><th>No</th><th>Account</th><th>Description Budget</th><th>Description source of module</th><th>Actual Amount</th><th>Accounted CR Amount</th><th>Actual Date</th></tr></thead><tbody class="list">' +
				obj +
				"</tbody></table></div>";
			// console.log(tbl);
			$(".detailbudget").html("");
			$(".detailbudget").append(tbl);
			$("#dataTableActual").DataTable({
				dom: "Bfrtip",
				buttons: ["copy", "excel", "pdf", "print"],
			});
		},
	});
}

function creditactual(id, tahun, category) {
	let id_user = id;
	let thn = tahun;
	let cat = category;
	// console.log(thn);
	$.ajax({
		url: base_url + "admin/creditactual_detail",
		type: "POST",
		data: {
			id_user: id_user,
			thn: thn,
			cat: cat,
		},
		success: function (r) {
			// console.log(r);
			let obj = JSON.parse(r);
			let tbl =
				'<div class="table-responsive"><table class="table table-bordered" id="dataTableActual" width="100%" cellspacing="0"><thead><tr style="text-align: center;"><th>No</th><th>Account</th><th>Description Budget</th><th>Description Transaction</th><th>Budget Amount</th><th>Actual Amount</th><th>Actual Date</th></tr></thead><tbody class="list">' +
				obj +
				"</tbody></table></div>";
			// console.log(tbl);
			$(".detailbudget").html("");
			$(".detailbudget").append(tbl);
			$("#dataTableActual").DataTable({
				dom: "Bfrtip",
				buttons: ["copy", "excel", "pdf", "print"],
			});
		},
	});
}
