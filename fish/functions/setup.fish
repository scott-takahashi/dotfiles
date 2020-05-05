## Defines abbreviations
function setup
    for abbreviation in (abbr -l)
        abbr -e $abbreviation
    end
    abbr g git
    abbr ga git commit --amend
    abbr gac git add -A . && git commit -m
    abbr ganv git commit --amend --no-verify
    abbr gc git commit -m
    abbr gcmp git checkout master && git pull
    abbr gcnv git commit --no-verify -m
    abbr gd git diff
    abbr gf git fetch
    abbr gfp git push --force-with-lease
    abbr gfpnv git push --force-with-lease --no-verify origin
    abbr gnb git checkout -b
    abbr gp git push
    abbr gpnv git push --no-verify
    abbr gpub git push -u origin $(git rev-parse --abbrev-ref HEAD)
    abbr grb git fetch && git rebase origin/master
    abbr grba git rebase --abort
    abbr grbc git rebase --continue
    abbr gs git status
    abbr ll ls -lhA
    fisher
end
