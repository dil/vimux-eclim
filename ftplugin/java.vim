if exists("g:loaded_vimux_eclim") || &cp
  finish
endif
let g:loaded_vimux_eclim = 1

command VimuxEclimRunAllJUnits :call s:VimuxEclimRunAllJUnits()
command VimuxEclimRunFocusedJUnit :call s:VimuxEclimRunFocusedJUnit()

function s:VimuxEclimRunAllJUnits()
  call s:VimuxEclimRunJUnits()
endfunction

function s:VimuxEclimRunFocusedJUnit()
  call s:VimuxEclimRunJUnits(eclim#util#GetOffset())
endfunction

function s:VimuxEclimRunJUnits(...)
  let project_name = eclim#project#util#GetCurrentProjectName()
  let eclimd_instance = eclim#client#nailgun#ChooseEclimdInstance(eclim#project#util#GetProjectWorkspace(project_name))

  let command = eclim#client#nailgun#GetEclimCommand(eclimd_instance.home)
  let command .= ' --nailgun-port ' . eclimd_instance.port
  let command .= ' -editor vim '
  let command .= ' -command java_junit'
  let command .= ' -p ' . project_name
  let command .= ' -f "' . eclim#project#util#GetProjectRelativeFilePath() . '"'
  let command .= ' -e ' . eclim#util#GetEncoding()
  if a:0
    let command .= ' -o ' . a:1
  end

  call VimuxRunCommand(command)
endfunction


