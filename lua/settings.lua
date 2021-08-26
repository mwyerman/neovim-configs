local o = vim.o
local wo = vim.wo
local bo = vim.bo

o.syntax = "enable" 	    	-- enables syntax highlighting
o.wrap = false		        	-- disable line wrapping
o.encoding = "utf-8"	    	-- set encoding
o.cmdheight = 2                 -- makes command line taller
o.mouse = "a"		        	-- enables mouse support
o.splitbelow = true	        	-- horizontal splits will create new window below
o.splitright = true	        	-- vertical splits will create new window to the right
o.tabstop = 4		        	-- insert 4 spaces for tab
o.shiftwidth = 4	        	-- change number of spaces for indentation
o.smarttab = true	        	-- autodetect 2 spaces or 4
o.expandtab = true	        	-- converts tabs to spaces
o.smartindent = true	    	-- makes indenting smart?
o.autoindent = true	        	-- improved auto indenting
o.number = true		        	-- enable line numbers
o.relativenumber = true         -- relative line numbers
o.cursorline = true	        	-- highlight current cursor line
o.showmode = false	        	-- disables "-- INSERT --" text
o.clipboard = "unnamedplus" 	-- clipboard support

o.hidden = true                 -- allow hidden buffers
