var editor;
function pageInit() {

    //定义插件
    var allPlugin = {
        Code: {
            c: 'btnCode', t: '插入代码', h: 1, e: function () {
                var _this = this;
                var codeArr1 = ["html", "javascript", "css", "cpp", "java", "sql", "plain"];
                var codeArr2 = ["HTML/XML",  "JavaScript", "CSS", "C/C++", "Java", "SQL", "其它"];
                var opts = '';
                for (var i = 0; i < codeArr1.length; i++) {
                    opts += '<option value="' + codeArr1[i] + '">' + codeArr2[i] + '</option>';
                }
                var htmlCode = '<div>编程语言: <select id="xheCodeType">' + opts + '</select></div>'
                    + '<div><textarea id="xheCodeValue" wrap="soft" rows=6 spellcheck="false" cols=40 style="width:300px;height:100px;"></textarea></div>'
                    + '<div style="text-align:right;"><input type="button" id="xheSave" value="确定" /></div>';
                var jCode = $(htmlCode), jType = $('#xheCodeType', jCode), jValue = $('#xheCodeValue', jCode), jSave = $('#xheSave', jCode);
                jSave.click(function () {
                    var sel_code = $("#xheCodeType").val();
                    _this.loadBookmark();
                    _this.pasteHTML('<br/><pre class="brush: ' + jType.val() + '">' + _this.domEncode(jValue.val()) + '</pre><br/>');
                    _this.hidePanel();
                    //写入cookie相关值最近插入的是什么语言代码
                    document.cookie = "postedit_code=" + sel_code + "; expires=" + function () { var d = new Date(); d.setFullYear(d.getFullYear() + 1); return d.toGMTString(); }();
                    return false;
                });
                _this.saveBookmark();
                _this.showDialog(jCode);
                //读取COOKIE并设置
                var _his_code = document.cookie.match(new RegExp("(^|\s)postedit_code=([^;]*)(;|$)"));
                if (_his_code) $('#xheCodeType').val(_his_code);
                else $("#xheCodeType option")[0].selected = true;
            }
        }

    };


    editor = $('#content1').xheditor({
        //对应相关的插件
        plugins: allPlugin,
        //功能块
        tools: 'Cut,Copy,Paste,Pastetext,|,Blocktag,Fontface,FontSize,Bold,Italic,Underline,Strikethrough,FontColor,BackColor,SelectAll,Removeformat,|,Align,List,Outdent,Indent,|,Link,Unlink,Img,Emot,Table,Code,|,Source,Fullscreen',
        //编辑器内的样式
        loadCSS: '<style>p { margin:4px 0px; padding:2px 0px; }pre { margin:4px 0px; background-color:#f0f0f0;}img { max-width:98%; }</style>',
    });

    //下面是xheditor载入！
    //xheditor-1.2.2的自动载入过程！
    SyntaxHighlighter.defaults['toolbar'] = false;  //去掉右上角问号图标
    SyntaxHighlighter.config.tagName = 'pre';       //可以更改解析的默认Tag。
    SyntaxHighlighter.config.bloggerMode = true;
    SyntaxHighlighter.config.stripBrs = true;
    SyntaxHighlighter.all();

}