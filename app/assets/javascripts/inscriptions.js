$(document).on("page:change", function() {
	$(".new_register").on('change','select.type-register',function(){
		// var option = $(this).val();
		alert("Click in select");
		// var coach = ('select.type-register option:selected[value="1"]').length;
		// var players = $('select.type-register option:selected[value="2"]').length;
		// console.log(""+players+" Jugadores inscritos");
		// if (coach == 1 && option == 1){
		//   alert("Solo puede registrar un entrenador por inscripción");
		//   $(this).val('');
		// }
		// if (players > 20 && option == 2){
		//   alert("RECUERDE: Solo puede registrar 20 Jugadores por inscripción");
		//   $(this).find('option:selected').prop("selected", false);
		// }
	});
});