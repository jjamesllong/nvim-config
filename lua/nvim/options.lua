local opt = vim.opt

opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

-- 禁用 vim 自带的文件管理器
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- 使用终端真颜色
opt.termguicolors = true

-- 设置背景颜色
opt.background = "dark"

-- 显示行号
opt.number = true
-- 高亮光标所在行
opt.cursorline = true
-- 显示左侧的图标列
opt.signcolumn = "yes"
-- 不允许软包裹行
opt.wrap = false

-- 设置一个制表符渲染到窗口时占用的字符宽度
opt.tabstop = 4
-- 插入模式下，自动将按下 tab 键时输入的制表符替换为空格
opt.expandtab = true
-- - 指定 tab 替换的空格数量
-- - 指定 << >> 移动的步数
opt.shiftwidth = 4

-- vim 中的 4 种自动缩进，优先级依次升高
-- - autoindent 跟随上一行的缩进
-- - smartindent 按照类 c 语言的缩进规则，通过匹配花括号，if, for 等关键字对新行智能缩进
-- - cindent 可配置的 c 语言缩进
-- - indentexpr
opt.autoindent = true
opt.smartindent = true

-- 查找时忽略字母大小写
opt.ignorecase = true
-- 查找的内容如果含大写字母则不忽略大小写
opt.smartcase = true
-- 输入时搜索
opt.incsearch = true

-- 设置命令行高度
opt.cmdheight = 1

-- 文件被外部程序修改时自动加载
opt.autoread = true

vim.diagnostic.config {
    -- 在诊断问题行显示简短的诊断信息
    virtual_text = true,
    signs = true,
    -- 在输入模式下也更新提示，设置为 true 也许会影响性能
    update_in_insert = true,
}
