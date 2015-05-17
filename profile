
HOSTNAME=`/bin/hostname 2>/dev/null`
HISTSIZE=10000                                  # 現在使用中のbashが保持する履歴数
HISTFILESIZE=10000                              # 履歴ファイルに保存される履歴数
#HISTTIMEFORMAT='%F %T '                         # historyに実行時刻を追加
# HISTCONTROL=ignoredups                        # 同じコマンドが連続する場合は1回だけ記録する
# HISTCONTROL=ignorespace                       # コマンドの頭にスペースを付けて実行すると記録しない
HISTCONTROL=ignoreboth                          # ignoredupsとignorespaceどちらも設定する
HISTIGNORE="*history:pwd:ls:ls -l:ls -1:ls -la" # 記録しないコマンド

export PATH USER LOGNAME MAIL HOSTNAME HISTSIZE HISTFILESIZE HISTTIMEFORMAT HISTCONTROL HISTIGNORE

