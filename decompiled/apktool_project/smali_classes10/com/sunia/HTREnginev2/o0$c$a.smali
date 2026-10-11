.class public Lcom/sunia/HTREnginev2/o0$c$a;
.super Lcom/sunia/HTREnginev2/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/o0$c;->b(Lcom/sunia/calculatorv2/ink/model/MathElement;)Lcom/sunia/calculatorv2/ink/model/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/sunia/HTREnginev2/o0$c;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/o0$c;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/o0$c$a;->b:Lcom/sunia/HTREnginev2/o0$c;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/r;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/sunia/calculatorv2/ink/model/i;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/o0$c$a;->b(Lcom/sunia/calculatorv2/ink/model/i;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/sunia/calculatorv2/ink/model/i;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 5

    new-instance p0, Lcom/sunia/calculatorv2/ink/model/i;

    new-instance p1, Lcom/sunia/calculatorv2/ink/model/m;

    new-instance v0, Lcom/sunia/calculatorv2/ink/model/r;

    new-instance v1, Lcom/sunia/HTREnginev2/b;

    const-string v2, "?"

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-direct {v1, v2, v3, v4}, Lcom/sunia/HTREnginev2/b;-><init>(Ljava/lang/String;D)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sunia/calculatorv2/ink/model/r;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/sunia/calculatorv2/ink/model/m;-><init>(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/sunia/calculatorv2/ink/model/i;-><init>(Lcom/sunia/calculatorv2/ink/model/f;)V

    return-object p0
.end method
