" C语言缩进
setlocal tabstop=8
setlocal shiftwidth=8
setlocal expandtab
set softtabstop=8       " 退格删除缩进

" 为C语言文件的各种语法元素设置颜色。可设置颜色的C语言语法元素的选项如下：
        "cComment: 注释
        "cStorageClass: 存储类关键字，如static、extern等
        "cConditional: 条件语句关键字，如if、else、switch等
        "cRepeat: 循环语句关键字，如for、while、do等
        "cLabel: 标签关键字，如goto等
        "cOperator: 运算符
        "cStructure: 结构体关键字，如struct、union等
        "cTypedef: 类型定义关键字，如typedef等
        "cDefine: 宏定义关键字，如#define等
        "cInclude: 头文件包含关键字，如#include等
        "cPreCondit: 预处理条件关键字，如#if、#ifdef、#ifndef等
        "cMacro: 宏展开内容
        "cFunction: 函数名
        "cConstant: 常量，如数字、字符常量等
        "cString: 字符串
        "cCharacter: 字符
        "cNumber: 数字
        "cFloat: 浮点数
        "cBoolean: 布尔值
        "cSpecial: 特殊字符，如$、@等
        "cError: 错误信息
        "cTodo: 待办事项注释

highlight cComment ctermfg=243
highlight cStorageClass ctermfg=130
highlight cPreCondit ctermfg=31
highlight cDefine ctermfg=126
highlight cTypedef ctermfg=5
highlight cInclude ctermfg=17
highlight cConditional ctermfg=126
highlight cStructure ctermfg=89
highlight cType ctermfg=89
highlight cLabel ctermfg=126    " case, default, etc.
highlight cRepeat ctermfg=5
highlight cKeyword ctermfg=red
hi cStatement ctermfg=130
hi cConstant ctermfg=88

