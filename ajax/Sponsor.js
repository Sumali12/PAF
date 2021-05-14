function getRow() {
	var table = document.getElementById('table');
	for (var i = 0; i < table.rows.length; i++) {
		table.rows[i].onclick = function() {
			document.getElementById("sponsor_id").value = this.cells[1].textContent;
			document.getElementById("organization").value = this.cells[2].textContent;
			document.getElementById("product_code").value = this.cells[3].textContent;
			document.getElementById("price").value = this.cells[4].textContent;
			document.getElementById("name").value = this.cells[5].textContent;
		};
	}
}

function getRowSearch() {
	var table = document.getElementById('idTable');
	for (var i = 0; i < table.rows.length; i++) {
		table.rows[i].onclick = function() {
			document.getElementById("sponsor_id").value = this.cells[1].textContent;
			document.getElementById("organization").value = this.cells[2].textContent;
			document.getElementById("product_code").value = this.cells[3].textContent;
			document.getElementById("price").value = this.cells[4].textContent;
			document.getElementById("name").value = this.cells[5].textContent;
		};
	}
}

function getID() {
	var table = document.getElementById('table');
	for (var i = 0; i < table.rows.length; i++) {
		table.rows[i].onclick = function() {
			document.getElementById("sponsor_id").value = this.cells[1].textContent;
		};
	}
}

function getIDserch() {
	var table = document.getElementById('idTable');
	for (var i = 0; i < table.rows.length; i++) {
		table.rows[i].onclick = function() {
			document.getElementById("sponsor_id").value = this.cells[1].textContent;
		};
	}
}

function resetForm() {
	document.getElementById("sponsor_id").value = "0";
	document.getElementById("organization").value = "";
	document.getElementById("product_code").value = "";
	document.getElementById("price").value = "";
	document.getElementById("name").value = "";
}

function save() {
	var sponsor_id = $('#sponsor_id').val();
	sponsor_id = parseInt(sponsor_id);
	if (sponsor_id === 0) {
		if(ValidInput()){
			$.ajax({
				url : 'http://localhost:8080/management/webresources/SponsorResources/Sponsor',
				method : 'POST',
				headers : {
					"Content-Type" : "application/json"
				},
				data : getJSON(),
				success : function(data) {
					$("#idTable").find("tr:gt(0)").remove();
					$("#table").find("tr:gt(0)").remove();
					load();
					resetForm();
					alert(data);
				},
				error : function(jqXHR, exception) {
					alert("error");
				}
			});
		}else{
			alert("Fill form");
		}
	}else{
		if(ValidInput()){
			$.ajax({
				url : 'http://localhost:8080/management/webresources/SponsorResources/Sponsor',
				method : 'PUT',
				headers : {
					"Content-Type" : "application/json"
				},
				data : getJSON(),
				success : function(data) {
					$("#idTable").find("tr:gt(0)").remove();
					$("#table").find("tr:gt(0)").remove();
					load();
					resetForm();
					alert(data);
				},
				error : function(jqXHR, exception) {
					alert("error");
				}
			});
		}else{
			alert("Fill form");
		}
	}
}

function delet(){
	getID();
	swal({
		title: "Are you sure?",
		text: "Do you realy want to Delete this?",
		icon: "warning",
		buttons: true,
		dangerMode: true,
	})
		.then((willDelete) => {
			if (willDelete) {
				$.ajax({
					url : 'http://localhost:8080/management/webresources/SponsorResources/Sponsor/' + $('#sponsor_id').val(),
					method: 'DELETE',
					success: function (resultText) {
						$("#table").find("tr:gt(0)").remove();
						$("#idTable").find("tr:gt(0)").remove();
						load();
						swal("Deleted!", {
							icon: "success",
							});
						},
						error: function (jqXHR, exception) {
							swal("fail");
						}
					});
				} else {
					swal("Safe!");
				}
			});
}

function deletSearch(){
	getIDserch();
	swal({
		title: "Are you sure?",
		text: "Do you realy want to Delete this?",
		icon: "warning",
		buttons: true,
		dangerMode: true,
	})
		.then((willDelete) => {
			if (willDelete) {
				$.ajax({
					url : 'http://localhost:8080/management/webresources/SponsorResources/Sponsor/' + $('#sponsor_id').val(),
					method: 'DELETE',
					success: function (resultText) {
						$("#table").find("tr:gt(0)").remove();
						$("#idTable").find("tr:gt(0)").remove();
						load();
						swal("Deleted!", {
							icon: "success",
							});
						},
						error: function (jqXHR, exception) {
							swal("fail");
						}
					});
				} else {
					swal("Safe!");
				}
			});
}

function load() {
	$.ajax({
		url : 'http://localhost:8080/management/webresources/SponsorResources/Sponsors',
		method : 'GET',
		headers : {
			Accept : "application/json",
			"Content-Type" : "application/json"
		},
		success : function(data, textStatus, errorThrown) {
			var items = [];
			$.each(data.sponsor,function(key, val) {
				var index = key + 1;
				items.push("<tr>");
				items.push("<td>" + index + "</td>");
				items.push("<td>" + val.sponsor_id + "</td>");
				items.push("<td>" + val.organization + "</td>");
				items.push("<td>" + val.product_code + "</td>");
				items.push("<td>" + val.price + "</td>");
				items.push("<td>" + val.name + "</td>");
				items.push("<td><button onclick='getRow()' type='button' class='btn btn-info btn-fill'>Edit</button></td>");
				items.push("<td><button onclick='delet()' type='button' class='btn btn-danger btn-fill'>Delete</button></td>");
				items.push("</tr>");
			});
		$("<tbody/>", {
			html : items.join("")
		}).appendTo("#table");
		},
		error : function(jqXHR, textStatus, errorThrown) {
			alert("Ajax request fail");
		},
		timeout : 120000,
	});
}

function getJSON() {
	return JSON.stringify({
		"sponsor_id" : $('#sponsor_id').val(),
		"organization" : $('#organization').val(),
		"product_code" : $('#product_code').val(),
		"price" : $('#price').val(),
		"name" : $('#name').val(),
	});
}

function ValidInput(){
	var sponsor_id = $('#sponsor_id').val();
	var organization = $('#organization').val();
	var product_code = $('#product_code').val();
	var price = $('#price').val();
	var name = $('#name').val();
	var sponsor_id = $('#sponsor_id').val();
	var organization = $('#organization').val();
	var product_code = $('#product_code').val();
	var price = $('#price').val();
	var name = $('#name').val();
	if(sponsor_id === "" || organization === "" || product_code === "" || price === "" || name === ""){
		return false;
	}else{
		return true;
	}
	return true;
}

function search(){
$("#idTable").find("tr:gt(0)").remove();
	var searchID = $('#searchID').val();
	if(searchID === ""){
		alert("Please Enter ID")
	}else{
	$.ajax({
		url : 'http://localhost:8080/management/webresources/SponsorResources/Sponsor/' + searchID,
		method : 'GET',
		headers : {
			Accept : "application/json",
			"Content-Type" : "application/json"
		},
		success : function(data, textStatus, errorThrown) {
			var items = [];
			$.each(data,function(key, val) {
				var index = key + 1;
				items.push("<tr>");
				items.push("<td>" + index + "</td>");
				items.push("<td>" + val.sponsor_id + "</td>");
				items.push("<td>" + val.organization + "</td>");
				items.push("<td>" + val.product_code + "</td>");
				items.push("<td>" + val.price + "</td>");
				items.push("<td>" + val.name + "</td>");
				items.push("<td><button onclick='getRow()' type='button' class='btn btn-info btn-fill'>Edit</button></td>");
				items.push("<td><button onclick='delet()' type='button' class='btn btn-danger btn-fill'>Delete</button></td>");
				items.push("</tr>");
			});
		$("<tbody/>", {
			html : items.join("")
		}).appendTo("#idTable");
	},
		error : function(jqXHR, textStatus, errorThrown) {
			alert("Ajax request fail");
		},
		timeout : 120000,
		});
	}
}