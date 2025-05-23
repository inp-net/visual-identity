echo "# Identité visuelle d'INP-net

 > By [@ewenlbh](https://instagram.com/ewenlbh) :3 — [ewen.works](https://ewen.works)

" > README.md 

for f in *.svg
		set b (basename $f .svg)
		echo "[![$b]($f)](https://git.inpt.fr/inp-net/visual-identity/-/blob/main/$f)" >> README.md
end

for d in */
		if not test -d $d; continue; end
		echo "

## $d
" >> README.md
		for f in $d/*.svg
				set b (basename $f .svg)
				echo "[![$b]($f)](https://git.inpt.fr/inp-net/visual-identity/-/blob/main/$f)" >> README.md
		end
end
