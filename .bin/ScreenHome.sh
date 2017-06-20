# screen Start Script Need To Work!!
if which screen >/dev/null 2>&1; then
    #if not inside a screen session, and if no session is started, start a new session
    [ "$TERM" != "screen" ] && screen -d -R
fi
