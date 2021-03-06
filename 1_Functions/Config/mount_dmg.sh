#!/usr/bin/expect

#-------------------------------------------------------------------------------
#  dmg文件挂载expect脚本 - mount .dmg file expect script
#-------------------------------------------------------------------------------
# expect 表达式 用来处理挂载dmg镜像时出现的协议声明，默认同意
# 调用时候要注意不要使用-e 因为有些dmg是没有协议的，脚本会出错
# 注意dmg文件名不支持空格
#  $1 file path
#-----------------------------------------------------------------------------

set timeout 30
spawn hdiutil attach [lindex $argv 0] -nobrowse
expect {
        "(END)"
        {send "q";exp_continue}
        "Agree Y/N?"
        {send "Y\n"}
}
interact