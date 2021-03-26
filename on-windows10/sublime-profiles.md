下面你会看到的，它目前不是任何一种语言(未来也很可能不是)

我只是为了自己看着方便，懒得打字，就用符号表意了而已。

Sublime好像可以用脚本装插件，不过冇研究过。

就这样吧。

```xxx
sublime::

press>> Ctrl+shift+P ;
input>> %"Install Package Control" ;

:: wait to install ...

press>> Ctrl+Shift+P ;
input>> %"Install Package" ;

:: it will init ...

install>> !! in [Install Package] , input to install>> list:
[
    >> %."A File Icon" ;
    >> %."BracketHighlighter" ;
    >> %."DocBlockr" ;
    >> %."Emmet" ;
    >> %!"Git" ;
    >> %."GitGutter" ;
    >> %."JsFormat" ;
    >> %!"Modific" ;
    >> %!"Nord" ;
    >> %."Pretty JSON" ;
    >> %."Pretty Ruby" ;
    >> %."Pretty Shell" ;
    >> %."rainbow_csv" ;
    >> %."RainbowBrackets" ;
    >> %."Rainbowth" ;
    >> %."SideBarEnhancements" ;
    >> %."Terminality" ;
    >> %."Theme - Fits" ;
    >> %."WolframLanguage" ;
    >> %."orgmode" ;
] ;

;; then setting

menu>> Perferences -> settings , input as this:
```<<<json
{
    "ignored_packages": 
    [
    ],
    "color_scheme": "Packages/Nord/Nord.sublime-color-scheme",
    "default_line_ending": "unix",
    "font_face": "mononoki",
    "font_size": 12,
    "theme": "Fits.sublime-theme",
    "translate_tabs_to_spaces": true
}
```>>>json
....>> and save it ;
```

这是过去的我给自己写来看的装插件的步骤。现在整理资料发现了。不过我现在也不保证自己能看懂。

应该是可以意会的吧。
