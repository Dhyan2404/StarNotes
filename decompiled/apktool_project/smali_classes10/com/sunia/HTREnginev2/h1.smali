.class public Lcom/sunia/HTREnginev2/h1;
.super Lcom/sunia/calculatorv2/ink/model/b;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/d0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sunia/calculatorv2/ink/model/b<",
        "Lcom/sunia/calculatorv2/ink/model/f;",
        ">;",
        "Lcom/sunia/HTREnginev2/d0;"
    }
.end annotation


# instance fields
.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/p1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/sunia/calculatorv2/ink/model/b;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/h1;->h:Ljava/lang/String;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public j()Ljava/lang/String;
    .locals 0

    const-string p0, "Structure"

    return-object p0
.end method
