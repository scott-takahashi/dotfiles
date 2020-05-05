## Defines abbreviations
function setup
    for abbreviation in (abbr -l)
        abbr -e $abbreviation
    end
    abbr g git
    abbr gf git fetch
    abbr gs git status
    abbr gc git commit -m
    abbr gp git push
    abbr gfp git push --force-with-lease
    abbr gd git diff
    abbr ll ls -lhA
    fisher
end