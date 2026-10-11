.class public Lcom/sunia/calculatorv2/ink/editor/PointerTool$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/calculatorv2/ink/editor/PointerTool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/calculatorv2/ink/editor/PointerTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sunia/HTREnginev2/p1;Lcom/sunia/HTREnginev2/q;)V
    .locals 6

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/q;->getTraces()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/HTREnginev2/p1;

    invoke-static {v1}, Lcom/sunia/HTREnginev2/r1;->a(Lcom/sunia/HTREnginev2/p1;)D

    move-result-wide v2

    const/16 v4, 0xb

    invoke-static {v1, v4, v2, v3}, Lcom/sunia/HTREnginev2/r1;->a(Lcom/sunia/HTREnginev2/p1;ID)Lcom/sunia/HTREnginev2/p1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/p1;->getPoints()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sunia/HTREnginev2/s1;

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/p1;->getPoints()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/sunia/HTREnginev2/q1;->a(Ljava/util/Iterator;Lcom/sunia/HTREnginev2/s1;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x5

    if-le v3, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/sunia/calculatorv2/ink/editor/Selection;

    sget-object v0, Lcom/sunia/calculatorv2/ink/model/e;->g:Lcom/sunia/calculatorv2/ink/model/e;

    invoke-direct {p1, v0, p0}, Lcom/sunia/calculatorv2/ink/editor/Selection;-><init>(Lcom/sunia/calculatorv2/ink/model/IElement;Ljava/util/List;)V

    invoke-virtual {p2, p1}, Lcom/sunia/HTREnginev2/q;->b(Lcom/sunia/calculatorv2/ink/editor/Selection;)V

    return-void
.end method

.method public getStyleName()Ljava/lang/String;
    .locals 0

    const-string p0, "selector"

    return-object p0
.end method
