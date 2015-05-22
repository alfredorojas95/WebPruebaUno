$(document).ready(function() {
	bandera1 = 1;
	bandera2 = 1;
	bandera3 = 1;
	bandera4 = 1;

	$(".boton1").on("click", function() {
		if (bandera1 == 1) {
			$(".lista1").fadeIn("slow");
			$(".lista2").fadeOut("slow");
			$(".lista3").fadeOut("slow");
			$(".lista4").fadeOut("slow");
			bandera1 = 0;
		} else {
			$(".lista1").fadeOut("slow");
			bandera1 = 1;
		}
	});
	$(".boton2").on("click", function() {
		if (bandera2 == 1) {
			$(".lista1").fadeOut("slow");
			$(".lista2").fadeIn("slow");
			$(".lista3").fadeOut("slow");
			$(".lista4").fadeOut("slow");
			bandera2 = 0;
		} else {
			$(".lista2").fadeOut("slow");
			bandera2 = 1;
		}
	});

	$(".boton3").on("click", function() {
		if (bandera3 == 1) {
			$(".lista1").fadeOut("slow");
			$(".lista2").fadeOut("slow");
			$(".lista3").fadeIn("slow");
			$(".lista4").fadeOut("slow");
			bandera3 = 0;
		} else {
			$(".lista3").fadeOut("slow");
			bandera3 = 1;
		}
	});
	$(".boton4").on("click", function() {
		if (bandera4 == 1) {
			$(".lista1").fadeOut("slow");
			$(".lista2").fadeOut("slow");
			$(".lista3").fadeOut("slow");
			$(".lista4").fadeIn("slow");
			bandera4 = 0;
		} else {
			$(".lista4").fadeOut("slow");
			bandera4 = 1;
		}
	});
});