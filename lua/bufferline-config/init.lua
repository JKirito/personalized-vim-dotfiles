require("bufferline").setup{}
vim.cmd[[
  nnoremap <silent><TAB> :BufferLineCycleNext<CR>
  nnoremap <silent><S-TAB> :BufferLineCyclePrev<CR>
  nnoremap <silent><A-1> :BufferLineGoToBuffer 1<CR>
  nnoremap <silent><A-2> :BufferLineGoToBuffer 2<CR> 
  nnoremap <silent><A-3> :BufferLineGoToBuffer 3<CR>
  nnoremap <silent><A-4> :BufferLineGoToBuffer 4<CR>
  nnoremap <silent><A-5> :BufferLineGoToBuffer 5<CR>
  nnoremap <silent><A-6> :BufferLineGoToBuffer 6<CR>
  nnoremap <silent><A-7> :BufferLineGoToBuffer 7<CR>
  nnoremap <silent><A-8> :BufferLineGoToBuffer 8<CR>

]]

