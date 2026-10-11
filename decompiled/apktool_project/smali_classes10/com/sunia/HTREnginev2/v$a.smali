.class public Lcom/sunia/HTREnginev2/v$a;
.super Lcom/sunia/HTREnginev2/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/v;->a(Ljava/util/HashSet;Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/util/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Ljava/util/HashSet;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/v$a;->b:Ljava/util/HashSet;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/r;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic G(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/v$a;->f1(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public f1(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/f<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;)",
            "Lcom/sunia/calculatorv2/ink/model/f;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/v$a;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sunia/HTREnginev2/s;->G(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/f;

    return-object p0
.end method
