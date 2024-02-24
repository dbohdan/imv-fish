# An imv(1) clone in pure fish.
# Copyright (c) 2024 D. Bohdan.
# License: MIT.

function imv --argument-names path
    if test (count $argv) -ne 1
        echo 'usage: imv path' >/dev/stderr
        return 1
    end

    if not test -e $path
        printf 'cannot stat ‘%s’\n' $path >/dev/stderr
        return 1
    end

    if test $path = . -o $path = ..
        set path "$(readlink -f $path)"
    end

    # `vared` requires a global variable.
    if set --query name
        set --function name_backup $name
    end

    set --local current_name "$(basename $path)"
    set --global name $current_name
    vared name
    set --local new_name $name

    # Restore the global if it was set;
    # erase if it wasn't.
    if set --query name_backup
        set name $name_backup
    else
        set --erase name
    end

    if test -z $new_name -o $new_name = $current_name
        printf 'no changes made\n' >/dev/stderr
        return
    end

    set --local dir "$(dirname $path)"
    mv -i $path $dir/$new_name
end
