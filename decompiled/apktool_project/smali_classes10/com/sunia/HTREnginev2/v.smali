.class public Lcom/sunia/HTREnginev2/v;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/HashSet;Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ")",
            "Lcom/sunia/calculatorv2/ink/util/Pair<",
            "Lcom/sunia/calculatorv2/ink/model/e;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/v$a;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/v$a;-><init>(Ljava/util/HashSet;)V

    invoke-virtual {v0, p1}, Lcom/sunia/HTREnginev2/v$a;->f1(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/e;

    if-nez p0, :cond_0

    sget-object p0, Lcom/sunia/calculatorv2/ink/model/e;->g:Lcom/sunia/calculatorv2/ink/model/e;

    :cond_0
    new-instance v0, Lcom/sunia/calculatorv2/ink/util/Pair;

    if-eq p0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/sunia/calculatorv2/ink/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
