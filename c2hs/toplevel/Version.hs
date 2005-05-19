module Version (version, copyright, disclaimer)
where

-- version number is major.minor.patchlvl; don't change the format of the
-- `versnum' line as it is `grep'ed for by a Makefile
--
idstr      = "$Id: Version.hs,v 1.79 2005/05/18 03:04:03 chak Exp $"
name       = "C->Haskell Compiler"
versnum    = "0.13.6"
versnick   = "\"Pressing Forward\""
date	   = "18 May 2005"
version    = name ++ ", version " ++ versnum ++ " " ++ versnick ++ ", " ++ date
copyright  = "Copyright (c) [1999..2005] Manuel M T Chakravarty"
disclaimer = "This software is distributed under the \
	     \terms of the GNU Public Licence.\n\
	     \NO WARRANTY WHATSOEVER IS PROVIDED. \
	     \See the details in the documentation."