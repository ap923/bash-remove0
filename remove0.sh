#!/bin/bash
traverse(){


	for file in "$1"/*
	do
	if [ ! -d "${file}" ]; then
		 filesize=`du -b "${file}" | cut -f1`
			if [[ "$filesize" -eq 0 ]]; then
				rm "${file}"
			fi	
	else
		traverse "${file}"
	fi

	done
}
traverse "$1"
