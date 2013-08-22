^;::send ^c
^+;::send ^x
^'::send ^v
^/::send ^s
^,::send #d
^p::send ! ep


;; #x::send ! x
;; ^+r::send ! r
;; ^+n::send ! n
;; ^>::send #r
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#n::
IfWinExist 无标题 - 记事本
  WinActivate
else
  Run Notepad
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#c::
IfWinExist 计算器
  WinActivate
else
  Run Calc
return


;; #c::Run, cmd

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#p::
IfWinExist 未命名 - 画图
  WinActivate
else
  Run MSPaint
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#i::Run, IEXPLORE
#y::Run, C:\Users\Administrator.WillLee-PC\AppData\Local\Youdao\Dict\Application\YodaoDict.exe
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#v::Run, gVim

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#m::Run, F:\Software\System\SwapMouseButton.exe

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

