# Hyphenation Makefile
# Copyright (C) 2009-2011 Shravan Aras <123.shravan@gmail.com>
# Copyright (C) 2008-2010 Santhosh Thottingal <santhosh.thottingal@gmail.com>
#
#  This library is free software; you can redistribute it and/or
#  modify it under the terms of the GNU Lesser General Public
#  License as published by the Free Software Foundation;
#  version 3 or later version of the License.
#
#  This library is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
#  Lesser General Public License for more details.
#
#  You should have received a copy of the GNU Lesser General Public
#  License along with this library; if not, write to the Free Software
#  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307  USA

DESTDIR = 
hyphdir = /usr/share/hyphen/
dictdir = /usr/share/myspell/dicts/
docdir = /usr/share/doc/hyphen-pa/


dict_files = hyph_pa_IN.dic
doc_files = README ChangeLog
extra_files = Makefile
version = 0.8.0

distdir=hyphen-pa-${version}

all: ${doc_files} ${dict_files}

install: all
	mkdir -p ${DESTDIR}${docdir}
	cp ${doc_files} ${DESTDIR}${docdir}
	mkdir -p ${DESTDIR}${hyphdir}
	cp ${dict_files} ${DESTDIR}${hyphdir}
	chmod 644 ${DESTDIR}${hyphdir}${dict_files}	
	mkdir -p ${DESTDIR}${dictdir}
	ln -s ${hyphdir}${dict_files} ${DESTDIR}${dictdir}${dict_files}
	
uninstall:
	-cd ${DESTDIR}${dictdir}/ && rm ${dict_files}
	-cd ${DESTDIR}${docdir}/ && rm ${doc_files}
	-cd ${DESTDIR}${hyphdir}/ && rm ${dict_files}
	
clean:
	-rm -rf ${distdir}.tar.bz2 ${distdir}	
	
dist:
	-rm -rf ${distdir}.tar.bz2 ${distdir}
	mkdir ${distdir}
	cp -p ${dict_files}  ${doc_files}  ${extra_files} ${distdir}/
	tar cf ${distdir}.tar ${distdir}/
	bzip2 -9 ${distdir}.tar
	rm -rf ${distdir}/


