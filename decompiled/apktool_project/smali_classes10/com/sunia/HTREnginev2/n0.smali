.class public Lcom/sunia/HTREnginev2/n0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/sunia/ref/jlatexmath/awt/Color;

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


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/sunia/ref/jlatexmath/awt/Color;->yellow:Lcom/sunia/ref/jlatexmath/awt/Color;

    sput-object v0, Lcom/sunia/HTREnginev2/n0;->a:Lcom/sunia/ref/jlatexmath/awt/Color;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sunia/HTREnginev2/n0;->b:Ljava/util/Map;

    const-string v1, "\\fint"

    const-string v2, "\u2a0f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\\oiint"

    const-string v2, "\u222f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\\sun"

    const-string v2, "\u263c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\\leftmoon"

    const-string v2, "\u263e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\\female"

    const-string v2, "\u2640"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\\male"

    const-string v2, "\u2642"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\\iddots"

    const-string v2, "\u22f0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\\textwon"

    const-string v2, "\u20a9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\\textcent"

    const-string v2, "\u00a2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\\oiiint"

    const-string v2, "\u2230"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\\otimes"

    const-string v2, "\\varotimes"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\\Omega"

    const-string v2, "\\mbox{\u03a9}"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\\leftrightharpoons"

    const-string v2, "\\mbox{\u21cb}"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\\rightleftharpoons"

    const-string v2, "\\mbox{\u21cc}"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sin"

    const-string v2, "\\sin"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cos"

    const-string v2, "\\cos"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tan"

    const-string v2, "\\tan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lim"

    const-string v2, "\\lim"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ln"

    const-string v2, "\\ln"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lg"

    const-string v2, "\\lg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "log"

    const-string v2, "\\log"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/sunia/calculatorv2/ink/model/f;DLcom/sunia/ref/jlatexmath/awt/Color;)Lcom/sunia/ref/jlatexmath/Atom;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/f<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;D",
            "Lcom/sunia/ref/jlatexmath/awt/Color;",
            ")",
            "Lcom/sunia/ref/jlatexmath/Atom;"
        }
    .end annotation

    const/4 p0, 0x0

    throw p0
.end method

.method public static b(Lcom/sunia/ref/jlatexmath/Atom;)Lcom/sunia/ref/jlatexmath/SymbolAtom;
    .locals 1

    instance-of v0, p0, Lcom/sunia/ref/jlatexmath/SymbolAtom;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Lcom/sunia/ref/jlatexmath/ColorAtom;

    iget-object p0, p0, Lcom/sunia/ref/jlatexmath/ColorAtom;->element:Lcom/sunia/ref/jlatexmath/Atom;

    :goto_0
    check-cast p0, Lcom/sunia/ref/jlatexmath/SymbolAtom;

    return-object p0
.end method
