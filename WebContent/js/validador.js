function Validate() {
	var user = document.frm.user
	var pass = document.frm.pass

	if ((user.value == null) || (user.value == "")) {
		alert("Please Enter user name")
		user.focus()
		return false
	}
	if ((pass.value == null) || (pass.value == "")) {
		alert("Please Enter password")
		pass.focus()
		return false
	}
	return true
}