function dtl_actual(id, user) {
	let id_budget = id;
	let id_user = user;
	$.ajax({
		url: "http://192.168.11.116/Symba/user/json_detail_actual",
		type: "POST",
		data: {
			id_budget: id_budget,
			id_user: id_user,
		},
		success: function (r) {
			let obj = JSON.parse(r);
			let tbl =
				'<h4><span class="badge badge-primary" id="totalActual">' +
				obj.total +
				'</span></h4><table class="table table-bordered" id="dataTableUser" width="100%" cellspacing="0"><thead><tr style="text-align: center;"><th>No</th><th>Description Budget</th><th>Description source of module</th><th>Source</th><th>Budget Amount DR</th><th>Budget Amount CR</th><th>Date</th></tr></thead><tbody class="list">' +
				obj.isi +
				"</tbody></table>";
			$("#bodyMyModal2").html("");
			$("#bodyMyModal2").append(tbl);
			$("#dataTableUser").DataTable({
				dom: "Bfrtip",
				buttons: ["copy", "excel", "pdf", "print"],
			});
		},
	});
}

function dtl_budget(id, idbudget) {
	let id_user = id;
	let id_bdgt = idbudget;
	$.ajax({
		url: "http://192.168.11.116/Symba/user/dtl_budget",
		type: "POST",
		data: {
			id_bdgt: id_bdgt,
			id_user: id_user,
		},
		success: function (r) {
			let obj = JSON.parse(r);
			let tbl =
				'<table class="table table-bordered" id="dataTableDetail" width="100%" cellspacing="0"><thead><tr style="text-align: center;"><th>No</th><th>Description Budget</th><th>Description source of module</th><th>Source</th><th>Budget Amount</th></tr></thead><tbody class="list">' +
				obj +
				"</tbody></table>";
			// console.log(tbl);
			$("#bodydetailbudget").html("");
			$("#bodydetailbudget").append(tbl);
			$("#dataTableDetail").DataTable({
				dom: "Bfrtip",
				buttons: ["copy", "excel", "pdf", "print"],
			});
		},
	});
}

function budget(id, tahun) {
	let id_user = id;
	let thn = tahun;
	$.ajax({
		url: "http://192.168.11.116/Symba/admin/budget_detail",
		type: "POST",
		data: {
			id_user: id_user,
			thn: thn,
		},
		success: function (r) {
			let obj = JSON.parse(r);
			let tbl =
				'<table class="table table-bordered" id="dataTableActual" width="100%" cellspacing="0"><thead><tr style="text-align: center;"><th>No</th><th>Description Budget</th><th>Description source of module</th><th>Source</th><th>Budget Amount</th><th>Status</th><th>Budget Date</th></tr></thead><tbody class="list">' +
				obj +
				"</tbody></table>";
			// console.log(tbl);
			// $(".modal-body").html('');
			// $(".modal-body").append(tbl);
			$(".budget").html("");
			$(".budget").append(tbl);
			$("#dataTableActual").DataTable({
				dom: "Bfrtip",
				buttons: ["copy", "excel", "pdf", "print"],
			});
		},
	});
}

function actual(id, tahun) {
	let id_user = id;
	let thn = tahun;
	$.ajax({
		url: "http://192.168.11.116/Symba/admin/actual_detail",
		type: "POST",
		data: {
			id_user: id_user,
			thn: thn,
		},
		success: function (r) {
			let obj = JSON.parse(r);
			let tbl =
				'<table class="table table-bordered" id="dataTableActual" width="100%" cellspacing="0"><thead><tr style="text-align: center;"><th>No</th><th>Description Budget</th><th>Description source of module</th><th>Source</th><th>Actual Amount</th><th>Accounted CR Amount</th><th>Actual Date</th></tr></thead><tbody class="list">' +
				obj +
				"</tbody></table>";
			// console.log(tbl);
			$(".budget").html("");
			$(".budget").append(tbl);
			$("#dataTableActual").DataTable({
				dom: "Bfrtip",
				buttons: ["copy", "excel", "pdf", "print"],
			});
		},
	});
}

function creditactual(id, tahun) {
	let id_user = id;
	let thn = tahun;
	// console.log(thn);
	$.ajax({
		url: "http://192.168.11.116/Symba/admin/creditactual_detail",
		type: "POST",
		data: {
			id_user: id_user,
			thn: thn,
		},
		success: function (r) {
			let obj = JSON.parse(r);
			let tbl =
				'<table class="table table-bordered" id="dataTableActual" width="100%" cellspacing="0"><thead><tr style="text-align: center;"><th>No</th><th>Description Budget</th><th>Description source of module</th><th>Source</th><th>Budget Amount</th><th>Actual Amount</th><th>Actual Date</th></tr></thead><tbody class="list">' +
				obj +
				"</tbody></table>";
			// console.log(tbl);
			$(".budget").html("");
			$(".budget").append(tbl);
			$("#dataTableActual").DataTable({
				dom: "Bfrtip",
				buttons: ["copy", "excel", "pdf", "print"],
			});
		},
	});
}
