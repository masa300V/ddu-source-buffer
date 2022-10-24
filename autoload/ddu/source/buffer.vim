function! ddu#source#buffer#getsnapshot() abort
  let g:buffgss = {
  \  'currentDir': getcwd(),
  \  'currentBufNr': bufnr('%'),
  \  'alternateBufNr': bufnr('#'),
  \  'buffers': map(getbufinfo(), {_, buf -> {
  \    'bufnr': buf['bufnr'],
  \    'changed': buf['changed'],
  \    'lastused': buf['lastused'],
  \    'listed': buf['listed'],
  \    'name': buf['name'],
  \  }}),
  \}
endfunction

function! ddu#source#buffer#getbufinfo() abort
  return g:buffgss
endfunction
