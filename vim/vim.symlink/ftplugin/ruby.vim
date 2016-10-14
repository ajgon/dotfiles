setlocal shiftwidth=2 softtabstop=2 expandtab
setlocal omnifunc=rubycomplete#Complete
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1
autocmd BufWritePre * retab
let g:projectionist_heuristics = {
  \ "*.rb": {
    \ "lib/*.rb": { "alternate": "spec/{}_spec.rb", "type": "source" },
    \ "spec/*_spec.rb": { "alternate": "lib/{}.rb", "type": "spec" }
  \ }
\ }
