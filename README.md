Script to locate URLs within a set of PDF files and append missing HTTP:// so that eMags on a separate domain redirect correctly

!!! Dependent on perl module within CAM::PDF - http://search.cpan.org/~cdolan/CAM-PDF-1.59/bin/changepdfstring.pl

Place bash script in same directory as PDF files you wish to search and fix. Execute script, fixed PDF files will be placed in the 'fixed' subdirectory.
