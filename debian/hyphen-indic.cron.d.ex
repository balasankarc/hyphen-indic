#
# Regular cron jobs for the hyphen-indic package
#
0 4	* * *	root	[ -x /usr/bin/hyphen-indic_maintenance ] && /usr/bin/hyphen-indic_maintenance
