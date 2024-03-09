au InsertLeave,TextChanged * {
	silent! w
	}

au BufReadPost * {
	setpos(".",  getpos("'\""))
	silent! foldopen
	}
