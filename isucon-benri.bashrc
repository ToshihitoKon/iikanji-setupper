cmd=git
if [ "`command -v $cmd`" ]; then
    echo -n
else
    echo "warn: command not found: $cmd"
fi

cmd=alp
if [ "`command -v $cmd`" ]; then
    echo -n
else
    echo "warn: command not found: $cmd"
fi

cmd=pt-query-digest
if [ "`command -v $cmd`" ]; then
    echo -n
else
    echo "warn: command not found: $cmd"
fi

cmd=dstat
if [ "`command -v $cmd`" ]; then
    alias dstat-full='dstat -tclmdrn'
    alias dstat-mem='dstat -tclm'
    alias dstat-cpu='dstat -tclr'
    alias dstat-net='dstat -tclnd'
    alias dstat-disk='dstat -tcldr'
else
    echo "warn: command not found: $cmd"
fi

cmd=htop
if [ "`command -v $cmd`" ]; then
    echo -n
else
    echo "warn: command not found: $cmd"
fi