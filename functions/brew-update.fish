function brew-update -d "Update package index and display upgradable packages"
	pacaur -Sya
	pacaur -Qua
end
