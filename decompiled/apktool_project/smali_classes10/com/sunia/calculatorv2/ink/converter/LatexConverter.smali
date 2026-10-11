.class public Lcom/sunia/calculatorv2/ink/converter/LatexConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lcom/sunia/calculatorv2/ink/model/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->f:Ljava/util/Map;

    const-string v0, "!"

    invoke-static {v0, v0}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\\#"

    const-string v1, "#"

    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\\$"

    const-string v1, "$"

    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\\%"

    const-string v1, "%"

    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\\&"

    const-string v1, "&"

    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "("

    invoke-static {v0, v0}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ")"

    invoke-static {v0, v0}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\\ast"

    const-string v1, "*"

    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "+"

    invoke-static {v0, v0}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ","

    invoke-static {v0, v0}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "-"

    invoke-static {v0, v0}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "."

    invoke-static {v0, v0}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/"

    invoke-static {v0, v0}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "0"

    invoke-static {v0, v0}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "1"

    invoke-static {v0, v0}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "2"

    invoke-static {v0, v0}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "3"

    invoke-static {v0, v0}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "4"

    invoke-static {v0, v0}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "5"

    invoke-static {v0, v0}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "6"

    invoke-static {v0, v0}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "7"

    invoke-static {v0, v0}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "8"

    invoke-static {v0, v0}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "9"

    invoke-static {v0, v0}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ":"

    invoke-static {v0, v0}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ";"

    invoke-static {v0, v0}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "<"

    const-string v1, "<"

    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    const-string v1, "="

    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ">"

    const-string v1, ">"

    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "?"

    const-string v1, "?"

    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\\@"

    const-string v1, "@"

    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "A"

    const-string v1, "A"

    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "B"

    const-string v1, "B"

    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "C"

    const-string v1, "C"

    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "D"

    const-string v1, "D"

    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "E"

    const-string v1, "E"

    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "F"

    const-string v1, "F"

    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "G"

    const-string v1, "G"

    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "H"

    const-string v1, "H"

    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "I"

    const-string v1, "I"

    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "J"

    const-string v1, "J"

    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "K"

    const-string v1, "K"

    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "L"

    const-string v1, "L"

    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "M"

    const-string v1, "M"

    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "N"

    const-string v1, "N"

    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "O"

    const-string v1, "O"

    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "P"

    const-string v1, "P"

    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Q"

    const-string v1, "Q"

    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "R"

    const-string v1, "R"

    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "S"

    const-string v1, "S"

    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "T"

    const-string v1, "T"

    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "U"

    const-string v1, "U"

    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "V"

    const-string v1, "V"

    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "W"

    const-string v1, "W"

    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X"

    const-string v1, "X"

    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Y"

    const-string v1, "Y"

    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Z"

    const-string v1, "Z"

    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "["

    const-string v1, "["

    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\\setminus"

    const-string v1, "\\"

    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "]"

    const-string v1, "]"

    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`"

    invoke-static {v0, v0}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "a"

    const-string v2, "a"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "b"

    const-string v2, "b"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "c"

    const-string v2, "c"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "d"

    const-string v2, "d"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "e"

    const-string v2, "e"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "f"

    const-string v2, "f"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "g"

    const-string v2, "g"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "h"

    const-string v2, "h"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "i"

    const-string v2, "i"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "j"

    const-string v2, "j"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "k"

    const-string v2, "k"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "l"

    const-string v2, "l"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "m"

    const-string v2, "m"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "n"

    const-string v2, "n"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "o"

    const-string v2, "o"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "p"

    const-string v2, "p"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "q"

    const-string v2, "q"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "r"

    const-string v2, "r"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "s"

    const-string v2, "s"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "t"

    const-string v2, "t"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "u"

    const-string v2, "u"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "v"

    const-string v2, "v"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "w"

    const-string v2, "w"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "x"

    const-string v2, "x"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "y"

    const-string v2, "y"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "z"

    const-string v2, "z"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\{"

    const-string v2, "{"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "|"

    const-string v2, "|"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\}"

    const-string v2, "}"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\yen"

    const-string v2, "\u00a5"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\S"

    const-string v2, "\u00a7"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\copyright"

    const-string v2, "\u00a9"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\neg"

    const-string v2, "\u00ac"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\circ"

    const-string v2, "\u00b0"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\pm"

    const-string v2, "\u00b1"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\times"

    const-string v2, "\u00d7"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\ae"

    const-string v2, "\u00e6"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\div"

    const-string v2, "\u00f7"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\oe"

    const-string v2, "\u0153"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\cup"

    const-string v2, "\u02d8"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\Gamma"

    const-string v2, "\u0393"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\Delta"

    const-string v2, "\u0394"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\Theta"

    const-string v2, "\u0398"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\Lambda"

    const-string v2, "\u039b"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\Xi"

    const-string v2, "\u039e"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\Phi"

    const-string v2, "\u03a6"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\Psi"

    const-string v2, "\u03a8"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\Omega"

    const-string v2, "\u03a9"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\alpha"

    const-string v2, "\u03b1"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\beta"

    const-string v2, "\u03b2"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\gamma"

    const-string v2, "\u03b3"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\delta"

    const-string v2, "\u03b4"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\epsilon"

    const-string v2, "\u03b5"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\zeta"

    const-string v2, "\u03b6"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\eta"

    const-string v2, "\u03b7"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\theta"

    const-string v2, "\u03b8"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\iota"

    const-string v2, "\u03b9"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\kappa"

    const-string v2, "\u03ba"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\lambda"

    const-string v2, "\u03bb"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\mu"

    const-string v2, "\u03bc"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\nu"

    const-string v2, "\u03bd"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\xi"

    const-string v2, "\u03be"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\pi"

    const-string v2, "\u03c0"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\rho"

    const-string v2, "\u03c1"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\sigma"

    const-string v2, "\u03c3"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\tau"

    const-string v2, "\u03c4"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\upsilon"

    const-string v2, "\u03c5"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\phi"

    const-string v2, "\u03c6"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\chi"

    const-string v2, "\u03c7"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\psi"

    const-string v2, "\u03c8"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\omega"

    const-string v2, "\u03c9"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\hslash"

    const-string v2, "\u210f"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\aleph"

    const-string v2, "\u05d0"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\dagger"

    const-string v2, "\u2020"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\ddagger"

    const-string v2, "\u2021"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\wp"

    const-string v2, "\u2118"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\leftarrow"

    const-string v2, "\u2190"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\uparrow"

    const-string v2, "\u2191"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\rightarrow"

    const-string v2, "\u2192"

    invoke-static {v1, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\downarrow"

    const-string v3, "\u2193"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\leftrightarrow"

    const-string v3, "\u2194"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\nwarrow"

    const-string v3, "\u2196"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\nearrow"

    const-string v3, "\u2197"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\searrow"

    const-string v3, "\u2198"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\swarrow"

    const-string v3, "\u2199"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\mapsto"

    const-string v3, "\u21a6"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\hookrightarrow"

    const-string v3, "\u21aa"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\Leftarrow"

    const-string v3, "\u21d0"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\Uparrow"

    const-string v3, "\u21d1"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\Rightarrow"

    const-string v3, "\u21d2"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\Downarrow"

    const-string v3, "\u21d3"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\Leftrightarrow"

    const-string v3, "\u21d4"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\forall"

    const-string v3, "\u2200"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\partial"

    const-string v3, "\u2202"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\exists"

    const-string v3, "\u2203"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\emptyset"

    const-string v3, "\u2205"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\nabla"

    const-string v3, "\u2207"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\in"

    const-string v3, "\u2208"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\ni"

    const-string v3, "\u220b"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\prod"

    const-string v3, "\u220f"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\coprod"

    const-string v3, "\u2210"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\sum"

    const-string v3, "\u2211"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\mp"

    const-string v3, "\u2213"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\sqrt"

    const-string v3, "\u221a"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\propto"

    const-string v3, "\u221d"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\infty"

    const-string v3, "\u221e"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\angle"

    const-string v3, "\u2220"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\wedge"

    const-string v3, "\u2227"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\vee"

    const-string v3, "\u2228"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\cap"

    const-string v3, "\u2229"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\cup"

    const-string v3, "\u222a"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\int"

    const-string v3, "\u222b"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\oint"

    const-string v3, "\u222e"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\sim"

    const-string v3, "\u223c"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\simeq"

    const-string v3, "\u2243"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\cong"

    const-string v3, "\u2245"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\approx"

    const-string v3, "\u2248"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\doteqdot"

    const-string v3, "\u2251"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\fallingdotseq"

    const-string v3, "\u2252"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\equiv"

    const-string v3, "\u2261"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\leq"

    const-string v3, "\u2264"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\geq"

    const-string v3, "\u2265"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\leqq"

    const-string v3, "\u2266"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\geqq"

    const-string v3, "\u2267"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\ll"

    const-string v3, "\u226a"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\gg"

    const-string v3, "\u226b"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\lessgtr"

    const-string v3, "\u2276"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\gtrless"

    const-string v3, "\u2277"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\prec"

    const-string v3, "\u227a"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\succ"

    const-string v3, "\u227b"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\preceq"

    const-string v3, "\u227c"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\succeq"

    const-string v3, "\u227d"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\subset"

    const-string v3, "\u2282"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\supset"

    const-string v3, "\u2283"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\subseteq"

    const-string v3, "\u2286"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\supseteq"

    const-string v3, "\u2287"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\subsetneq"

    const-string v3, "\u228a"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\supsetneq"

    const-string v3, "\u228b"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\oplus"

    const-string v3, "\u2295"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\ominus"

    const-string v3, "\u2296"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\otimes"

    const-string v3, "\u2297"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\vdash"

    const-string v3, "\u22a2"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\dashv"

    const-string v3, "\u22a3"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\perp"

    const-string v3, "\u22a5"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\models"

    const-string v3, "\u22a7"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\ltimes"

    const-string v3, "\u22c9"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\rtimes"

    const-string v3, "\u22ca"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\Subset"

    const-string v3, "\u22d0"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\Supset"

    const-string v3, "\u22d1"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\pitchfork"

    const-string v3, "\u22d4"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\lceil"

    const-string v3, "\u2308"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\rceil"

    const-string v3, "\u2309"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\lfloor"

    const-string v3, "\u230a"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\rfloor"

    const-string v3, "\u230b"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\underbrace"

    const-string v3, "\u23df"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\ulcorner"

    const-string v3, "\u250c"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\urcorner"

    const-string v3, "\u2510"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\llcorner"

    const-string v3, "\u2514"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\lrcorner"

    const-string v3, "\u251a"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\blacksquare"

    const-string v3, "\u25a0"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\square"

    const-string v3, "\u25a1"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\triangle"

    const-string v3, "\u25b3"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\triangleright"

    const-string v3, "\u25b7"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\triangleleft"

    const-string v3, "\u25c1"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\star"

    const-string v3, "\u2605"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\subseteqq"

    const-string v3, "\u2ac5"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\supseteqq"

    const-string v3, "\u2ac6"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\subsetneqq"

    const-string v3, "\u2acb"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\supsetneqq"

    const-string v3, "\u2acc"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\langle"

    const-string v3, "\u3008"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\rangle"

    const-string v3, "\u3009"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\'"

    const-string v3, "\'"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\llbracket"

    const-string v3, "\u27e6"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\rrbracket"

    const-string v3, "\u27e7"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\mathsterling"

    const-string v3, "\u00a3"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\checkmark"

    const-string v3, "\u2713"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\textregistered"

    const-string v3, "\u00ae"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\diamond"

    const-string v3, "\u22c4"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\uplus"

    const-string v3, "\u228e"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\lightning"

    const-string v3, "\u21af"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\odot"

    const-string v3, "\u2299"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\vdots"

    const-string v3, "\u22ee"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\ddots"

    const-string v3, "\u22f1"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\clubsuit"

    const-string v3, "\u2667"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\heartsuit"

    const-string v3, "\u2661"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\sphericalangle"

    const-string v3, "\u2222"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\bowtie"

    const-string v3, "\u22c8"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\trianglelefteq"

    const-string v3, "\u22b4"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\blacktriangleright"

    const-string v3, "\u25b6"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\triangleq"

    const-string v3, "\u225c"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\rightleftharpoons"

    const-string v3, "\u21cc"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\rightharpoonup"

    const-string v3, "\u21c0"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\upharpoonright"

    const-string v3, "\u21be"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\mapsfrom"

    const-string v3, "\u21a4"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\circlearrowleft"

    const-string v3, "\u21ba"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\rightleftarrows"

    const-string v3, "\u21c4"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\circlearrowright"

    const-string v3, "\u21bb"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\rightrightarrows"

    const-string v3, "\u21c9"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\rightsquigarrow"

    const-string v3, "\u21dd"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\curvearrowright"

    const-string v3, "\u21b7"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\twoheadrightarrow"

    const-string v3, "\u21a0"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\lesssim"

    const-string v3, "\u2272"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\gtrsim"

    const-string v3, "\u2273"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\wr"

    const-string v3, "\u2240"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\circledcirc"

    const-string v3, "\u229a"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\boxdot"

    const-string v3, "\u22a1"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\boxplus"

    const-string v3, "\u229e"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\boxtimes"

    const-string v3, "\u22a0"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\circledast"

    const-string v3, "\u229b"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\parr"

    const-string v3, "\u214b"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\fint"

    const-string v3, "\u2a0f"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\oiint"

    const-string v3, "\u222f"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\asymp"

    const-string v3, "\u224d"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\frown"

    const-string v3, "\u2322"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\doteq"

    const-string v3, "\u2250"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\backsim"

    const-string v3, "\u223d"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\multimap"

    const-string v3, "\u22b8"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\therefore"

    const-string v3, "\u2234"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\because"

    const-string v3, "\u2235"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\iddots"

    const-string v3, "\u22f0"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\between"

    const-string v3, "\u226c"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\AE"

    const-string v3, "\u00c6"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\female"

    const-string v3, "\u2640"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\male"

    const-string v3, "\u2642"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\sun"

    const-string v3, "\u263c"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\leftmoon"

    const-string v3, "\u263e"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\texteuro"

    const-string v3, "\u20ac"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\textwon"

    const-string v3, "\u20a9"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\textcent"

    const-string v3, "\u00a2"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\textperthousand"

    const-string v3, "\u2030"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\updownarrow"

    const-string v3, "\u2195"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\leftharpoonup"

    const-string v3, "\u21bc"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\leftharpoondown"

    const-string v3, "\u21bd"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\rightharpoondown"

    const-string v3, "\u21c1"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\leftrightharpoons"

    const-string v3, "\u21cb"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\Updownarrow"

    const-string v3, "\u21d5"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\oiiint"

    const-string v3, "\u2230"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\cdot"

    const-string v3, "\u00b7"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\not ="

    const-string v3, "\u2260"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\not |"

    const-string v3, "\u2224"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\not \\cong"

    const-string v3, "\u2247"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\not \\equiv"

    const-string v3, "\u2262"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\not \\exists"

    const-string v3, "\u2204"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\not \\geq"

    const-string v3, "\u2271"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\not \\in"

    const-string v3, "\u2209"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\not \\leq"

    const-string v3, "\u2270"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\not \\models"

    const-string v3, "\u22ad"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\not \\rightarrow"

    const-string v3, "\u219b"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\not \\Rightarrow"

    const-string v3, "\u21cf"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\not \\simeq"

    const-string v3, "\u2244"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\not \\subset"

    const-string v3, "\u2284"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\not \\subseteq"

    const-string v3, "\u2288"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\not \\supset"

    const-string v3, "\u2285"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\not <"

    const-string v3, "\u226e"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\not >"

    const-string v3, "\u226f"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\not \\ni"

    const-string v3, "\u220c"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\not \\supseteq"

    const-string v3, "\u2289"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\dot"

    const-string v3, "\u02d9"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->D(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\ddot"

    const-string v3, "\u00a8"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->D(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\overline"

    const-string v3, "\u203e"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->D(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\tilde"

    const-string v3, "~"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->D(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\widetilde"

    const-string v3, "~"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->D(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\hat"

    const-string v3, "\u02c6"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->D(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\widehat"

    const-string v3, "\u02c6"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->D(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\check"

    const-string v3, "\u02c7"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->D(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\acute"

    const-string v3, "\u00b4"

    invoke-static {v1, v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->D(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "\\grave"

    invoke-static {v1, v0}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->D(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\\breve"

    const-string v1, "\u02d8"

    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->D(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\\vec"

    invoke-static {v0, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->D(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\\overrightarrow"

    invoke-static {v0, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->D(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\\mathring"

    const-string v1, "\u02da"

    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->D(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\\overbrace"

    const-string v1, "\u23de"

    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->D(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\\underline"

    const-string v1, "_"

    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->z(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\\underbrace"

    const-string v1, "\u23df"

    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->z(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sunia/calculatorv2/ink/model/m;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunia/calculatorv2/ink/model/m;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->g:Lcom/sunia/calculatorv2/ink/model/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p3, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic B(Ljava/util/Map;Lcom/sunia/HTREnginev2/b;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic C(Ljava/util/Map;Lcom/sunia/HTREnginev2/b;)Lcom/sunia/HTREnginev2/b;
    .locals 3

    new-instance v0, Lcom/sunia/HTREnginev2/b;

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/sunia/HTREnginev2/k0;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/util/Alternative;->getConfidence()D

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, Lcom/sunia/HTREnginev2/b;-><init>(Ljava/lang/String;D)V

    return-object v0
.end method

.method public static D(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->c:Ljava/util/Map;

    sget-object v1, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->d:Ljava/util/Map;

    invoke-static {p0, p1, v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->A(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public static E(Ljava/util/LinkedList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/calculatorv2/ink/model/f;

    instance-of v4, v3, Lcom/sunia/calculatorv2/ink/model/s;

    if-nez v4, :cond_1

    instance-of v3, v3, Lcom/sunia/calculatorv2/ink/model/u;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0, v1, v2}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->h(Ljava/util/LinkedList;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lcom/sunia/calculatorv2/ink/model/s;

    invoke-direct {v0, v1}, Lcom/sunia/calculatorv2/ink/model/s;-><init>(Lcom/sunia/calculatorv2/ink/model/f;)V

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public static F(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->a:Ljava/util/Map;

    sget-object v1, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->b:Ljava/util/Map;

    invoke-static {p0, p1, v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->A(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public static G(Ljava/util/LinkedList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/calculatorv2/ink/model/f;

    instance-of v3, v3, Lcom/sunia/calculatorv2/ink/model/u;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0, v1, v2}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/sunia/calculatorv2/ink/model/u;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/sunia/HTREnginev2/ovi;

    invoke-direct {v3}, Lcom/sunia/HTREnginev2/ovi;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/sunia/HTREnginev2/hbk;

    invoke-direct {v3}, Lcom/sunia/HTREnginev2/hbk;-><init>()V

    invoke-static {v3}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/sunia/calculatorv2/ink/model/u;-><init>(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Lcom/sunia/HTREnginev2/b1;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 12

    .line 9
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 10
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/b1;->a()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_18

    .line 12
    invoke-virtual {p0, v1}, Lcom/sunia/HTREnginev2/b1;->a(I)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    .line 13
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sunia/HTREnginev2/b;

    .line 14
    invoke-virtual {v5}, Lcom/sunia/HTREnginev2/b;->b()Ljava/lang/String;

    move-result-object v6

    .line 15
    invoke-virtual {v5}, Lcom/sunia/calculatorv2/ink/util/Alternative;->getConfidence()D

    move-result-wide v7

    .line 16
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v5

    const-string v9, "\\sqrt"

    const-string v10, "["

    const/4 v11, -0x1

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v5, "\\end{matrix}"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v11, 0x10

    goto/16 :goto_1

    :sswitch_1
    const-string v5, "\\begin{matrix}"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v11, 0xf

    goto/16 :goto_1

    :sswitch_2
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v11, 0xe

    goto/16 :goto_1

    :sswitch_3
    const-string v5, "\\left"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v11, 0xd

    goto/16 :goto_1

    :sswitch_4
    const-string v5, "\\frac"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v11, 0xc

    goto/16 :goto_1

    :sswitch_5
    const-string v5, "\\not"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v11, 0xb

    goto/16 :goto_1

    :sswitch_6
    const-string v5, "\\hl"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v11, 0xa

    goto/16 :goto_1

    :sswitch_7
    const-string v5, "\\\\"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto/16 :goto_1

    :cond_7
    const/16 v11, 0x9

    goto/16 :goto_1

    :sswitch_8
    const-string v5, "}"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto/16 :goto_1

    :cond_8
    const/16 v11, 0x8

    goto/16 :goto_1

    :sswitch_9
    const-string v5, "{"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_1

    :cond_9
    const/4 v11, 0x7

    goto :goto_1

    :sswitch_a
    const-string v5, "_"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_1

    :cond_a
    const/4 v11, 0x6

    goto :goto_1

    :sswitch_b
    const-string v5, "^"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_1

    :cond_b
    const/4 v11, 0x5

    goto :goto_1

    :sswitch_c
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_1

    :cond_c
    const/4 v11, 0x4

    goto :goto_1

    :sswitch_d
    const-string v5, "&"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_1

    :cond_d
    const/4 v11, 0x3

    goto :goto_1

    :sswitch_e
    const-string v5, "\\mathop"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    goto :goto_1

    :cond_e
    const/4 v11, 0x2

    goto :goto_1

    :sswitch_f
    const-string v5, "\\operatorname"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    goto :goto_1

    :cond_f
    move v11, v2

    goto :goto_1

    :sswitch_10
    const-string v5, "\\right"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    goto :goto_1

    :cond_10
    move v11, v4

    :goto_1
    packed-switch v11, :pswitch_data_0

    .line 17
    sget-object v5, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->c:Ljava/util/Map;

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 18
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sunia/calculatorv2/ink/model/f;

    .line 19
    new-instance v6, Lcom/sunia/calculatorv2/ink/model/l;

    new-instance v7, Lcom/sunia/calculatorv2/ink/model/r;

    invoke-static {v3, v5, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->i(Ljava/util/List;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/sunia/HTREnginev2/b1;->b(I)Ljava/util/List;

    move-result-object v5

    invoke-direct {v7, v3, v5}, Lcom/sunia/calculatorv2/ink/model/r;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-direct {v6, v4, v7}, Lcom/sunia/calculatorv2/ink/model/l;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/r;)V

    goto :goto_2

    .line 20
    :cond_11
    sget-object v5, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->e:Ljava/util/Map;

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 21
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sunia/calculatorv2/ink/model/f;

    .line 22
    new-instance v6, Lcom/sunia/calculatorv2/ink/model/v;

    new-instance v7, Lcom/sunia/calculatorv2/ink/model/r;

    invoke-static {v3, v5, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->i(Ljava/util/List;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/sunia/HTREnginev2/b1;->b(I)Ljava/util/List;

    move-result-object v5

    invoke-direct {v7, v3, v5}, Lcom/sunia/calculatorv2/ink/model/r;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-direct {v6, v4, v7}, Lcom/sunia/calculatorv2/ink/model/v;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/r;)V

    goto :goto_2

    .line 23
    :cond_12
    new-instance v6, Lcom/sunia/calculatorv2/ink/model/r;

    sget-object v5, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->a:Ljava/util/Map;

    invoke-static {v3, v5, v4}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->i(Ljava/util/List;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/sunia/HTREnginev2/b1;->b(I)Ljava/util/List;

    move-result-object v4

    invoke-direct {v6, v3, v4}, Lcom/sunia/calculatorv2/ink/model/r;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 24
    :goto_2
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 25
    :pswitch_0
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 26
    :pswitch_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    .line 27
    invoke-static {v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->E(Ljava/util/LinkedList;)V

    .line 28
    invoke-static {v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->G(Ljava/util/LinkedList;)V

    .line 29
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    new-instance v5, Lcom/sunia/calculatorv2/ink/model/t;

    invoke-direct {v5, v3}, Lcom/sunia/calculatorv2/ink/model/t;-><init>(Ljava/util/List;)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 30
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/sunia/HTREnginev2/b1;->b(I)Ljava/util/List;

    move-result-object v3

    .line 31
    new-instance v5, Lcom/sunia/calculatorv2/ink/model/r;

    new-instance v6, Lcom/sunia/HTREnginev2/b;

    const-string v9, "\u221a"

    invoke-direct {v6, v9, v7, v8}, Lcom/sunia/HTREnginev2/b;-><init>(Ljava/lang/String;D)V

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/sunia/calculatorv2/ink/model/r;-><init>(Ljava/util/List;Ljava/util/List;)V

    add-int/lit8 v3, v1, 0x1

    .line 32
    invoke-virtual {p0, v3}, Lcom/sunia/HTREnginev2/b1;->a(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/HTREnginev2/b;

    invoke-virtual {v3}, Lcom/sunia/HTREnginev2/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 33
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/calculatorv2/ink/model/f;

    .line 34
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sunia/calculatorv2/ink/model/f;

    .line 35
    new-instance v6, Lcom/sunia/calculatorv2/ink/model/j;

    invoke-direct {v6, v4, v3, v5}, Lcom/sunia/calculatorv2/ink/model/j;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/r;)V

    goto :goto_3

    .line 36
    :cond_13
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/calculatorv2/ink/model/f;

    .line 37
    new-instance v6, Lcom/sunia/calculatorv2/ink/model/n;

    invoke-direct {v6, v3, v5}, Lcom/sunia/calculatorv2/ink/model/n;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/r;)V

    .line 38
    :goto_3
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 39
    :pswitch_3
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/calculatorv2/ink/model/f;

    .line 40
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sunia/calculatorv2/ink/model/f;

    .line 41
    invoke-virtual {p0, v1}, Lcom/sunia/HTREnginev2/b1;->b(I)Ljava/util/List;

    move-result-object v5

    .line 42
    new-instance v6, Lcom/sunia/calculatorv2/ink/model/r;

    new-instance v9, Lcom/sunia/HTREnginev2/b;

    const-string v10, "-"

    invoke-direct {v9, v10, v7, v8}, Lcom/sunia/HTREnginev2/b;-><init>(Ljava/lang/String;D)V

    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Lcom/sunia/calculatorv2/ink/model/r;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 43
    new-instance v5, Lcom/sunia/calculatorv2/ink/model/h;

    invoke-direct {v5, v3, v4, v6}, Lcom/sunia/calculatorv2/ink/model/h;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/r;)V

    .line 44
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 45
    :pswitch_4
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sunia/calculatorv2/ink/model/f;

    .line 46
    instance-of v6, v5, Lcom/sunia/calculatorv2/ink/model/r;

    if-eqz v6, :cond_17

    .line 47
    new-instance v6, Ljava/util/ArrayList;

    move-object v7, v5

    check-cast v7, Lcom/sunia/calculatorv2/ink/model/r;

    invoke-virtual {v7}, Lcom/sunia/calculatorv2/ink/model/f;->i()Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 48
    invoke-virtual {p0, v1}, Lcom/sunia/HTREnginev2/b1;->b(I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 49
    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v7, Lcom/sunia/HTREnginev2/pvi;

    invoke-direct {v7, v5}, Lcom/sunia/HTREnginev2/pvi;-><init>(Lcom/sunia/calculatorv2/ink/model/f;)V

    invoke-interface {v3, v7}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 50
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/LinkedList;

    new-instance v7, Lcom/sunia/calculatorv2/ink/model/r;

    sget-object v8, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->a:Ljava/util/Map;

    invoke-static {v3, v8, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->i(Ljava/util/List;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v3

    invoke-direct {v7, v3, v6}, Lcom/sunia/calculatorv2/ink/model/r;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v5, v4, v7}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 51
    :pswitch_5
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    new-instance v4, Lcom/sunia/calculatorv2/ink/model/i;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-direct {v4, v5}, Lcom/sunia/calculatorv2/ink/model/i;-><init>(Lcom/sunia/calculatorv2/ink/model/f;)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 52
    :pswitch_6
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    .line 53
    invoke-static {v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->E(Ljava/util/LinkedList;)V

    .line 54
    invoke-static {v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->G(Ljava/util/LinkedList;)V

    goto/16 :goto_6

    .line 55
    :pswitch_7
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 56
    :pswitch_8
    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    .line 57
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    invoke-static {v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->h(Ljava/util/LinkedList;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 58
    :pswitch_9
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/calculatorv2/ink/model/f;

    .line 59
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/LinkedList;

    new-instance v6, Lcom/sunia/calculatorv2/ink/model/o;

    sget-object v7, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->g:Lcom/sunia/calculatorv2/ink/model/f;

    invoke-direct {v6, v7, v3, v4, v4}, Lcom/sunia/calculatorv2/ink/model/o;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;ZZ)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 60
    :pswitch_a
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/calculatorv2/ink/model/f;

    .line 61
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/LinkedList;

    new-instance v6, Lcom/sunia/calculatorv2/ink/model/q;

    sget-object v7, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->g:Lcom/sunia/calculatorv2/ink/model/f;

    invoke-direct {v6, v7, v3, v4, v4}, Lcom/sunia/calculatorv2/ink/model/q;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;ZZ)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_b
    if-lez v1, :cond_16

    add-int/lit8 v5, v1, -0x1

    .line 62
    invoke-virtual {p0, v5}, Lcom/sunia/HTREnginev2/b1;->a(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sunia/HTREnginev2/b;

    invoke-virtual {v4}, Lcom/sunia/HTREnginev2/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 63
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 64
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    .line 65
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 66
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sunia/calculatorv2/ink/model/f;

    .line 67
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 68
    instance-of v7, v6, Lcom/sunia/calculatorv2/ink/model/r;

    if-eqz v7, :cond_14

    move-object v7, v6

    check-cast v7, Lcom/sunia/calculatorv2/ink/model/r;

    invoke-virtual {v7}, Lcom/sunia/calculatorv2/ink/model/r;->a()Ljava/lang/String;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    goto :goto_5

    .line 69
    :cond_14
    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 70
    :cond_15
    :goto_5
    invoke-static {v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->h(Ljava/util/LinkedList;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_6

    .line 71
    :cond_16
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    new-instance v5, Lcom/sunia/calculatorv2/ink/model/r;

    sget-object v6, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->a:Ljava/util/Map;

    invoke-static {v3, v6, v2}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->i(Ljava/util/List;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/sunia/HTREnginev2/b1;->b(I)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Lcom/sunia/calculatorv2/ink/model/r;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_6

    .line 72
    :pswitch_c
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    .line 73
    invoke-static {v3}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->E(Ljava/util/LinkedList;)V

    goto :goto_6

    .line 74
    :pswitch_d
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    new-instance v4, Lcom/sunia/calculatorv2/ink/model/k;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-direct {v4, v5}, Lcom/sunia/calculatorv2/ink/model/k;-><init>(Lcom/sunia/calculatorv2/ink/model/f;)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_17
    :goto_6
    :pswitch_e
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 75
    :cond_18
    :goto_7
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result p0

    if-le p0, v2, :cond_19

    .line 76
    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedList;

    .line 77
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    invoke-static {p0}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->h(Ljava/util/LinkedList;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_7

    .line 78
    :cond_19
    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedList;

    invoke-static {p0}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->h(Ljava/util/LinkedList;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x5c8a64c0 -> :sswitch_10
        -0x4ed8f875 -> :sswitch_f
        -0x3db541bb -> :sswitch_e
        0x26 -> :sswitch_d
        0x5b -> :sswitch_c
        0x5e -> :sswitch_b
        0x5f -> :sswitch_a
        0x7b -> :sswitch_9
        0x7d -> :sswitch_8
        0xb80 -> :sswitch_7
        0x16660 -> :sswitch_6
        0x2b7cf7 -> :sswitch_5
        0x540884a -> :sswitch_4
        0x5431263 -> :sswitch_3
        0x5466f7c -> :sswitch_2
        0x6dd424ce -> :sswitch_1
        0x7fb1dc00 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 7

    .line 2
    invoke-static {p0}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/sunia/HTREnginev2/b;

    .line 6
    new-instance v4, Lcom/sunia/HTREnginev2/b;

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-direct {v4, v0, v5, v6}, Lcom/sunia/HTREnginev2/b;-><init>(Ljava/lang/String;D)V

    const/4 v0, 0x0

    aput-object v4, v3, v0

    invoke-static {v3}, Lcom/sunia/HTREnginev2/g0;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v0, v0, [Lcom/sunia/HTREnginev2/p1;

    .line 7
    invoke-static {v0}, Lcom/sunia/HTREnginev2/g0;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    new-instance p0, Lcom/sunia/HTREnginev2/b1;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-string v5, "math_generic"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sunia/HTREnginev2/b1;-><init>(Ljava/util/List;Ljava/util/List;DLjava/lang/String;)V

    invoke-static {p0}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->a(Lcom/sunia/HTREnginev2/b1;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/HTREnginev2/b;)Ljava/util/stream/Stream;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->j(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/HTREnginev2/b;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->f:Ljava/util/Map;

    invoke-static {v0, p0, p0}, Lcom/sunia/HTREnginev2/k0;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Ljava/util/Map;Lcom/sunia/HTREnginev2/b;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->B(Ljava/util/Map;Lcom/sunia/HTREnginev2/b;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->g(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->d:Ljava/util/Map;

    invoke-static {v0, p0, p0}, Lcom/sunia/HTREnginev2/k0;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Ljava/util/Map;Lcom/sunia/HTREnginev2/b;)Lcom/sunia/HTREnginev2/b;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->C(Ljava/util/Map;Lcom/sunia/HTREnginev2/b;)Lcom/sunia/HTREnginev2/b;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->b:Ljava/util/Map;

    invoke-static {v0, p0, p0}, Lcom/sunia/HTREnginev2/k0;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic e(Lcom/sunia/HTREnginev2/b;Lcom/sunia/HTREnginev2/b;)Lcom/sunia/HTREnginev2/b;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->f(Lcom/sunia/HTREnginev2/b;Lcom/sunia/HTREnginev2/b;)Lcom/sunia/HTREnginev2/b;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "\\beginmatrix "

    const-string v1, "\\begin{matrix}"

    .line 2
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\endmatrix "

    const-string v2, "\\end{matrix}"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, -0x1

    const/4 v4, 0x0

    move v5, v3

    move v6, v4

    :goto_0
    if-gez v5, :cond_4

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_0

    goto :goto_3

    .line 5
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v4, p0, :cond_3

    .line 6
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v3, "\\beginmatrix"

    .line 7
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    invoke-interface {v0, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    const-string v3, "\\endmatrix"

    .line 9
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 10
    invoke-interface {v0, v4, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-object v0

    :cond_4
    :goto_3
    if-ltz v5, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v5, v6, 0x1

    .line 11
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v9, v6

    move v6, v5

    move v5, v9

    .line 12
    :goto_4
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v7

    if-nez v7, :cond_a

    const/16 v7, 0x5c

    if-ne v5, v7, :cond_9

    add-int/lit8 v7, v6, 0x1

    .line 13
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 14
    invoke-static {v6}, Ljava/lang/Character;->isLetter(I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 15
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move v5, v6

    move v6, v7

    .line 17
    :goto_5
    invoke-static {v5}, Ljava/lang/Character;->isLetter(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 18
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v6, v5, :cond_6

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v9, v6

    move v6, v5

    move v5, v9

    goto :goto_5

    :cond_6
    move v5, v3

    goto :goto_5

    .line 20
    :cond_7
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 21
    :cond_8
    new-instance v8, Ljava/lang/String;

    filled-new-array {v5, v6}, [I

    move-result-object v5

    const/4 v6, 0x2

    invoke-direct {v8, v5, v4, v6}, Ljava/lang/String;-><init>([III)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v3

    move v6, v7

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v5, v6, -0x1

    .line 22
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    move v5, v3

    goto/16 :goto_0
.end method

.method public static encode(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->k(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    const-string v0, " "

    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic f(Lcom/sunia/HTREnginev2/b;Lcom/sunia/HTREnginev2/b;)Lcom/sunia/HTREnginev2/b;
    .locals 4

    new-instance v0, Lcom/sunia/HTREnginev2/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/util/Alternative;->getConfidence()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/util/Alternative;->getConfidence()D

    move-result-wide p0

    mul-double/2addr v2, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/sunia/HTREnginev2/b;-><init>(Ljava/lang/String;D)V

    return-object v0
.end method

.method public static synthetic g(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 1

    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/s;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/s;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/s;->l()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static h(Ljava/util/LinkedList;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;)",
            "Lcom/sunia/calculatorv2/ink/model/f;"
        }
    .end annotation

    invoke-static {p0}, Lcom/sunia/calculatorv2/ink/model/m;->b(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/m;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/util/List;Ljava/util/Map;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/b;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/b;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    if-eqz p2, :cond_0

    new-instance p2, Lcom/sunia/HTREnginev2/mvi;

    invoke-direct {p2, p1}, Lcom/sunia/HTREnginev2/mvi;-><init>(Ljava/util/Map;)V

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    :cond_0
    new-instance p2, Lcom/sunia/HTREnginev2/nvi;

    invoke-direct {p2, p1}, Lcom/sunia/HTREnginev2/nvi;-><init>(Ljava/util/Map;)V

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static synthetic j(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/HTREnginev2/b;)Ljava/util/stream/Stream;
    .locals 1

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/r;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/r;->getCandidates()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/lvi;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/lvi;-><init>(Lcom/sunia/HTREnginev2/b;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static k(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/r;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/r;

    invoke-static {p0, p1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->v(Lcom/sunia/calculatorv2/ink/model/r;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_0
    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/m;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/m;

    invoke-static {p0, p1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->q(Lcom/sunia/calculatorv2/ink/model/m;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_1
    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/h;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/h;

    invoke-static {p0, p1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->l(Lcom/sunia/calculatorv2/ink/model/h;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_2
    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/n;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/n;

    invoke-static {p0, p1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->r(Lcom/sunia/calculatorv2/ink/model/n;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_3
    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/j;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/j;

    invoke-static {p0, p1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->n(Lcom/sunia/calculatorv2/ink/model/j;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_4
    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/o;

    if-eqz v0, :cond_5

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/o;

    invoke-static {p0, p1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->s(Lcom/sunia/calculatorv2/ink/model/o;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_5
    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/q;

    if-eqz v0, :cond_6

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/q;

    invoke-static {p0, p1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->u(Lcom/sunia/calculatorv2/ink/model/q;Ljava/util/List;)V

    goto :goto_0

    :cond_6
    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/p;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/p;

    invoke-static {p0, p1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->t(Lcom/sunia/calculatorv2/ink/model/p;Ljava/util/List;)V

    goto :goto_0

    :cond_7
    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/v;

    if-eqz v0, :cond_8

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/v;

    invoke-static {p0, p1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->y(Lcom/sunia/calculatorv2/ink/model/v;Ljava/util/List;)V

    goto :goto_0

    :cond_8
    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/l;

    if-eqz v0, :cond_9

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/l;

    invoke-static {p0, p1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->p(Lcom/sunia/calculatorv2/ink/model/l;Ljava/util/List;)V

    goto :goto_0

    :cond_9
    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/u;

    if-eqz v0, :cond_a

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/u;

    invoke-static {p0, p1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->x(Lcom/sunia/calculatorv2/ink/model/u;Ljava/util/List;)V

    goto :goto_0

    :cond_a
    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/t;

    if-eqz v0, :cond_b

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/t;

    invoke-static {p0, p1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->w(Lcom/sunia/calculatorv2/ink/model/t;Ljava/util/List;)V

    goto :goto_0

    :cond_b
    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/k;

    if-eqz v0, :cond_c

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/k;

    invoke-static {p0, p1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->o(Lcom/sunia/calculatorv2/ink/model/k;Ljava/util/List;)V

    goto :goto_0

    :cond_c
    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/i;

    if-eqz v0, :cond_d

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/i;

    invoke-static {p0, p1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->m(Lcom/sunia/calculatorv2/ink/model/i;Ljava/util/List;)V

    goto :goto_0

    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->j()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not supported"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LatexConverter"

    invoke-static {p1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static l(Lcom/sunia/calculatorv2/ink/model/h;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/h;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "\\frac"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "{"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/h;->n()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->k(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;)V

    const-string v1, "}"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/h;->l()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->k(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static m(Lcom/sunia/calculatorv2/ink/model/i;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/i;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "\\hl"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "{"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/i;->l()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->k(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;)V

    const-string p0, "}"

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static n(Lcom/sunia/calculatorv2/ink/model/j;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/j;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "\\sqrt"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "["

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/j;->l()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->k(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;)V

    const-string v0, "]"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "{"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/j;->n()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->k(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;)V

    const-string p0, "}"

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static o(Lcom/sunia/calculatorv2/ink/model/k;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/k;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "\\mathop"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "{"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/k;->l()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->k(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;)V

    const-string p0, "}"

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static p(Lcom/sunia/calculatorv2/ink/model/l;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/l;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/l;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->d:Ljava/util/Map;

    invoke-static {v1, v0, v0}, Lcom/sunia/HTREnginev2/k0;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "{"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/l;->m()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->k(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;)V

    const-string p0, "}"

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static q(Lcom/sunia/calculatorv2/ink/model/m;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/m;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/m;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/calculatorv2/ink/model/f;

    instance-of v4, v3, Lcom/sunia/calculatorv2/ink/model/r;

    if-eqz v4, :cond_3

    check-cast v3, Lcom/sunia/calculatorv2/ink/model/r;

    invoke-virtual {v3}, Lcom/sunia/calculatorv2/ink/model/r;->a()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->b:Ljava/util/Map;

    invoke-static {v4, v3, v3}, Lcom/sunia/HTREnginev2/k0;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3}, Lcom/sunia/calculatorv2/ink/model/r;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\\left "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lcom/sunia/calculatorv2/ink/model/r;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\\right "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {v3, p1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->k(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;)V

    goto :goto_0

    :cond_4
    :goto_2
    if-lez v1, :cond_5

    const-string p0, "\\left ."

    invoke-interface {p1, v0, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_5
    :goto_3
    if-lez v2, :cond_6

    const-string p0, "\\right ."

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method public static r(Lcom/sunia/calculatorv2/ink/model/n;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/n;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "\\sqrt"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "{"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/n;->m()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->k(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;)V

    const-string p0, "}"

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static s(Lcom/sunia/calculatorv2/ink/model/o;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/o;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/o;->l()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->k(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;)V

    const-string v0, "_"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "{"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/o;->m()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->k(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;)V

    const-string p0, "}"

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static t(Lcom/sunia/calculatorv2/ink/model/p;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/p;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/p;->l()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->k(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;)V

    const-string v0, "_"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "{"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/p;->m()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->k(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;)V

    const-string v1, "}"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "^"

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/p;->n()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->k(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static u(Lcom/sunia/calculatorv2/ink/model/q;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/q;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/q;->l()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->k(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;)V

    const-string v0, "^"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "{"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/q;->m()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->k(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;)V

    const-string p0, "}"

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static v(Lcom/sunia/calculatorv2/ink/model/r;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/r;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/r;->a()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->b:Ljava/util/Map;

    invoke-static {v0, p0, p0}, Lcom/sunia/HTREnginev2/k0;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static w(Lcom/sunia/calculatorv2/ink/model/t;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/t;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "\\begin{matrix}"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/t;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/calculatorv2/ink/model/u;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    const-string v2, "\\\\"

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-static {v1, p1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->k(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    const-string p0, "\\end{matrix}"

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static x(Lcom/sunia/calculatorv2/ink/model/u;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/u;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/u;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/calculatorv2/ink/model/f;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    const-string v2, "&"

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-static {v1, p1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->k(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static y(Lcom/sunia/calculatorv2/ink/model/v;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/v;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/v;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->f:Ljava/util/Map;

    invoke-static {v1, v0, v0}, Lcom/sunia/HTREnginev2/k0;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "{"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/v;->m()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->k(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;)V

    const-string p0, "}"

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static z(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->e:Ljava/util/Map;

    sget-object v1, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->f:Ljava/util/Map;

    invoke-static {p0, p1, v0, v1}, Lcom/sunia/calculatorv2/ink/converter/LatexConverter;->A(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method
