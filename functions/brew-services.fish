function brew-services -d "manage services"
    set paramCount (count $argv)
	  if test $paramCount -lt 2
		    brew-services-help
		    return 1
	  end

	  if test $argv[1] = "-s"
		    set systemctlf sudo systemctl
        set other $argv[2..-1]
	  else
		    set systemctlf systemctl --user
        set other $argv
	  end

	  eval $systemctlf $other
end
