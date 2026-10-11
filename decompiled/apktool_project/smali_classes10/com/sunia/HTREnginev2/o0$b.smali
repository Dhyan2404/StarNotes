.class public Lcom/sunia/HTREnginev2/o0$b;
.super Lcom/sunia/HTREnginev2/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/o0;->j(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/model/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/r;-><init>()V

    return-void
.end method

.method public static synthetic f1(Lcom/sunia/calculatorv2/ink/model/f;)D
    .locals 2

    invoke-static {p0}, Lcom/sunia/HTREnginev2/o0$b;->g1(Lcom/sunia/calculatorv2/ink/model/f;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic g1(Lcom/sunia/calculatorv2/ink/model/f;)D
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->e()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result p0

    float-to-double v0, p0

    return-wide v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/sunia/HTREnginev2/h0;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/o0$b;->b(Lcom/sunia/HTREnginev2/h0;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/sunia/HTREnginev2/m1;)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/o0$b;->b(Lcom/sunia/HTREnginev2/m1;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/sunia/HTREnginev2/m;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/o0$b;->b(Lcom/sunia/HTREnginev2/m;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/sunia/HTREnginev2/n1;)Ljava/lang/Object;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/o0$b;->b(Lcom/sunia/HTREnginev2/n1;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/sunia/HTREnginev2/h0;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 0

    .line 1
    return-object p1
.end method

.method public b(Lcom/sunia/HTREnginev2/m1;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 0

    .line 2
    return-object p1
.end method

.method public b(Lcom/sunia/HTREnginev2/m;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 0

    .line 3
    return-object p1
.end method

.method public b(Lcom/sunia/HTREnginev2/n1;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/HTREnginev2/n1;",
            ")",
            "Lcom/sunia/calculatorv2/ink/model/f<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/b;->f()Ljava/util/List;

    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/calculatorv2/ink/model/f;

    .line 7
    instance-of v3, v2, Lcom/sunia/calculatorv2/ink/model/MathElement;

    if-eqz v3, :cond_0

    .line 8
    check-cast v2, Lcom/sunia/calculatorv2/ink/model/MathElement;

    invoke-static {v2}, Lcom/sunia/HTREnginev2/b0;->b(Lcom/sunia/calculatorv2/ink/model/MathElement;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    new-instance v1, Lcom/sunia/HTREnginev2/nzo;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/nzo;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 11
    invoke-interface {v0, p0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    .line 13
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 14
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sunia/calculatorv2/ink/model/f;

    add-int/lit8 v5, v3, 0x1

    .line 15
    instance-of v6, v4, Lcom/sunia/calculatorv2/ink/model/MathElement;

    if-eqz v6, :cond_4

    move-object v6, v4

    check-cast v6, Lcom/sunia/calculatorv2/ink/model/MathElement;

    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/model/MathElement;->getCandidates()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    move v6, v5

    .line 16
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 17
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sunia/calculatorv2/ink/model/f;

    .line 18
    instance-of v8, v7, Lcom/sunia/calculatorv2/ink/model/MathElement;

    if-eqz v8, :cond_5

    move-object v8, v7

    check-cast v8, Lcom/sunia/calculatorv2/ink/model/MathElement;

    invoke-virtual {v8}, Lcom/sunia/calculatorv2/ink/model/MathElement;->getCandidates()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_3

    .line 19
    :cond_2
    move-object v9, v4

    check-cast v9, Lcom/sunia/calculatorv2/ink/model/MathElement;

    invoke-virtual {v9}, Lcom/sunia/calculatorv2/ink/model/MathElement;->getCandidates()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sunia/calculatorv2/ink/util/Alternative;

    invoke-virtual {v9}, Lcom/sunia/calculatorv2/ink/util/Alternative;->getContent()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sunia/calculatorv2/ink/model/f;

    .line 20
    invoke-virtual {v8}, Lcom/sunia/calculatorv2/ink/model/MathElement;->getCandidates()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sunia/calculatorv2/ink/util/Alternative;

    invoke-virtual {v8}, Lcom/sunia/calculatorv2/ink/util/Alternative;->getContent()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sunia/calculatorv2/ink/model/f;

    .line 21
    instance-of v10, v9, Lcom/sunia/calculatorv2/ink/model/m;

    if-eqz v10, :cond_5

    instance-of v10, v8, Lcom/sunia/calculatorv2/ink/model/m;

    if-eqz v10, :cond_5

    .line 22
    invoke-static {v9}, Lcom/sunia/HTREnginev2/o0;->q(Lcom/sunia/calculatorv2/ink/model/f;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {v8}, Lcom/sunia/HTREnginev2/o0;->w(Lcom/sunia/calculatorv2/ink/model/f;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    move-object v4, v7

    goto :goto_2

    :cond_4
    move v6, v5

    :cond_5
    :goto_3
    if-le v6, v5, :cond_6

    .line 23
    invoke-interface {v0, v3, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/sunia/HTREnginev2/o0;->i(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/MathElement;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v6, -0x1

    goto :goto_4

    .line 24
    :cond_6
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_7
    if-nez p0, :cond_9

    .line 25
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_8

    goto :goto_5

    :cond_8
    return-object p1

    .line 26
    :cond_9
    :goto_5
    new-instance p0, Lcom/sunia/HTREnginev2/n1;

    invoke-direct {p0, v1}, Lcom/sunia/HTREnginev2/n1;-><init>(Ljava/util/List;)V

    return-object p0
.end method
