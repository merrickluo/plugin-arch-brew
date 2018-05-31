function brew -d "fake brew functions on Arch Linux"
	  if test (count $argv) -gt 0
		    if functions -q brew-$argv[1]
			      if test (count $argv) -gt 1
				        set other $argv[2..-1]
            end

            set -q AUR_HELPER
            or set -gx AUR_HELPER aurman

			      eval "brew-$argv[1] $other"
		    else
			      brew-help
		    end
	  end
end
