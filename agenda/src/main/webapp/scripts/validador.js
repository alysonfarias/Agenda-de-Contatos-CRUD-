/**
 * 
 */

function validar(){
	let nome = contato.nome.value
	let telefone= contato.telefone.value
	if(nome ===""){
		alert('Preencha o campo nome')
		contato.nome.focus()
		return false
	} else if(telefone ===""){
		alert('Preencha o campo telefone')
		contato.telefone.focus()
		return false
	}else{
		document.forms["contato"].submit()
	}
}