" Vim syntax file
" Language:	generic configure file
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last Change:	2005 Jun 20

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

syn keyword	rsnapshotTodo	contained TODO FIXME XXX
" Avoid matching "text#text", used in /etc/disktab and /etc/gettytab
syn match	rsnapshotComment	"^#.*" contains=rsnapshotTodo
syn match	rsnapshotComment	"\s#.*"ms=s+1 contains=rsnapshotTodo
syn region	rsnapshotString	start=+"+ skip=+\\\\\|\\"+ end=+"+ oneline
syn region	rsnapshotString	start=+'+ skip=+\\\\\|\\'+ end=+'+ oneline
syn keyword rsnapshotOption config_version snapshot_root no_create_root
							\ cmd_cp cmd_rm cmd_rsync cmd_logger cmd_du
							\ cmd_rsnapshot_diff cmd_preexec cmd_postexec
							\ interval verbose loglevel logfile lockfile
							\ ssh_args du_args one_fs include exclude
							\ link_dest sync_first use_lazy_deletes backup
							\ retain cmd_ssh backup_exec

" Define the default highlighting.
" Only used when an item doesn't have highlighting yet
hi def link rsnapshotComment	Comment
hi def link rsnapshotTodo	Todo
hi def link rsnapshotString	String
hi def link rsnapshotOption	Keyword

let b:current_syntax = "rsnapshot"

" vim: ts=8 sw=2
