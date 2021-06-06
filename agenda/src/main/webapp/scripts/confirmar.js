/**
 * 
 */

function confirmar(idcon){
	let resposta = confirm("Deseja realmente excluir o contato ?")
	if(resposta == true){
		//alert(idcon)
		window.location.href= "delete?idcon=" + idcon
	}
}