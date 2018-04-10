function hide_sometime() {

	document.getElementsByClassName("optional")[0].style.display="none"; 
	document.getElementsByClassName("optional")[1].style.display="none";

	
};

function info() {
	document.getElementsByTagName("P")[0].innerHTML = Date();
};

function getnumLocation() {
	var num=document.getElementsByTagName("input")[0].value;
	if (num ==2) {

		document.getElementsByClassName("optional")[0].style.display="inline-block"; 
		document.getElementsByClassName("optional")[1].style.display="inline-block";
	}
	else if(num ==1) {
		document.getElementsByClassName("optional")[0].style.display="none"; 
		document.getElementsByClassName("optional")[1].style.display="none";
	}
}

function display_in_category(category) {

	if (category=='h') {
		document.getElementsByClassName("hdescription")[0].style.display="block"; 
		if (document.getElementById("h").checked==false) {
			close_display(category);
		}
	}
	else if (category=='a') {
		document.getElementsByClassName("hdescription")[1].style.display="block"; 
		if (document.getElementById("a").checked==false) {
			close_display(category);
		}
	}
	else if (category=='p') {
		document.getElementsByClassName("hdescription")[2].style.display="block"; 
		if (document.getElementById("p").checked==false) {
			close_display(category);
		}
	}
}

function phtypechecked(){
	if(document.getElementById("Regular").checked==true) {
		return 'r';
	}
	if(document.getElementById("Mid-Range").checked==true) {
		return 'm';
	}
	if(document.getElementById("Executive").checked==true) {
		return 'e';
	}
	if (document.getElementById("Conference").checked==true ) {
		return 'c';
	}
}

function close_display(category) {

	if (category=='h') {
		document.getElementsByClassName("hdescription")[0].style.display="none"; 
	}
	else if (category=='a') {
		document.getElementsByClassName("hdescription")[1].style.display="none"; 
	}
	else if (category=='p') {
		document.getElementsByClassName("hdescription")[2].style.display="none"; 
	}
	
}

function sip_r_naa() {
	document.getElementsByName
}

function check_radio() {

	var r=document.getElementById('1').checked;
	if (r==true) {
		document.getElementsByClassName("close")[1].innerHTML=r; 
		document.getElementById('1').checked = false;
	}
	document.getElementsByClassName("close")[1].innerHTML=r; 
}


function calculate_total(){
	var total;
	total=0;//some html objects
	document.getElementById().innerHTML=total;
}