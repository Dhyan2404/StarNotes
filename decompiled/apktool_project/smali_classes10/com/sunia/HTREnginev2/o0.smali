.class public Lcom/sunia/HTREnginev2/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "+"

    const-string v2, "-"

    const-string v3, "\u00d7"

    const-string v4, "\u00f7"

    const-string v5, "/"

    const-string v6, ":"

    const-string v7, "("

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sunia/HTREnginev2/o0;->a:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "+"

    const-string v2, "-"

    const-string v3, "\u00d7"

    const-string v4, "\u00f7"

    const-string v5, "/"

    const-string v6, ":"

    const-string v7, ")"

    const-string v8, "!"

    const-string v9, "%"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sunia/HTREnginev2/o0;->b:Ljava/util/Set;

    return-void
.end method

.method public static A(Lcom/sunia/calculatorv2/ink/model/f;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/f<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;)Z"
        }
    .end annotation

    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/m;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/o0;->g(Lcom/sunia/calculatorv2/ink/model/f;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/sunia/HTREnginev2/o0;->A(Lcom/sunia/calculatorv2/ink/model/f;)Z

    move-result p0

    return p0

    :cond_1
    return v1

    :cond_2
    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/r;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/sunia/HTREnginev2/o0;->b:Ljava/util/Set;

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/r;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/r;->a()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public static B(Lcom/sunia/calculatorv2/ink/model/f;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/f<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;)Z"
        }
    .end annotation

    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/m;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/o0;->g(Lcom/sunia/calculatorv2/ink/model/f;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/sunia/HTREnginev2/o0;->B(Lcom/sunia/calculatorv2/ink/model/f;)Z

    move-result p0

    return p0

    :cond_1
    return v1

    :cond_2
    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/r;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/sunia/HTREnginev2/o0;->a:Ljava/util/Set;

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/r;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/r;->a()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public static synthetic C(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/util/stream/Stream;
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/sunia/calculatorv2/ink/model/e;Lcom/sunia/calculatorv2/ink/model/e;Lcom/sunia/HTREnginev2/q;)Lcom/sunia/calculatorv2/ink/model/e;
    .locals 9

    .line 2
    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/e;->f()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/e;->f()Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    .line 5
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    return-object p1

    .line 6
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 8
    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/q;->c()Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

    move-result-object v0

    sget-object v2, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;->MATHS:Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

    if-eq v0, v2, :cond_3

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/q;->c()Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

    move-result-object v0

    sget-object v2, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;->TEXT_BLOCK:Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 9
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/calculatorv2/ink/model/f;

    .line 10
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/model/f;->e()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v4

    .line 12
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sunia/calculatorv2/ink/model/f;

    .line 13
    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/model/f;->j()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/model/f;->j()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    instance-of v7, v6, Lcom/sunia/HTREnginev2/l0;

    if-nez v7, :cond_5

    .line 14
    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/model/f;->g()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v7

    .line 15
    invoke-static {v4, v7}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->isIntersect(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)Z

    move-result v7

    if-nez v7, :cond_6

    if-eqz v0, :cond_5

    .line 16
    :cond_6
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 17
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 18
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 19
    :cond_8
    invoke-interface {p1, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 20
    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object v4

    .line 21
    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v5, Lcom/sunia/HTREnginev2/gzo;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/gzo;-><init>()V

    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 22
    invoke-static {v4, v3, p2}, Lcom/sunia/HTREnginev2/o0;->l(Ljava/util/List;Ljava/util/List;Lcom/sunia/HTREnginev2/q;)Ljava/util/List;

    move-result-object v3

    .line 23
    instance-of v4, v2, Lcom/sunia/HTREnginev2/n1;

    if-eqz v4, :cond_9

    .line 24
    new-instance v2, Lcom/sunia/HTREnginev2/n1;

    invoke-direct {v2, v3}, Lcom/sunia/HTREnginev2/n1;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 25
    :cond_9
    instance-of v4, v2, Lcom/sunia/HTREnginev2/m;

    if-eqz v4, :cond_a

    .line 26
    new-instance v2, Lcom/sunia/HTREnginev2/m;

    invoke-direct {v2, v3}, Lcom/sunia/HTREnginev2/m;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 27
    :cond_a
    instance-of v4, v2, Lcom/sunia/HTREnginev2/m1;

    if-eqz v4, :cond_b

    .line 28
    new-instance v2, Lcom/sunia/HTREnginev2/m1;

    invoke-direct {v2, v3}, Lcom/sunia/HTREnginev2/m1;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 29
    :cond_b
    instance-of v4, v2, Lcom/sunia/HTREnginev2/l0;

    if-eqz v4, :cond_c

    .line 30
    new-instance v2, Lcom/sunia/HTREnginev2/l0;

    invoke-direct {v2, v3}, Lcom/sunia/HTREnginev2/l0;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 31
    :cond_c
    instance-of v2, v2, Lcom/sunia/HTREnginev2/h0;

    if-eqz v2, :cond_4

    .line 32
    new-instance v2, Lcom/sunia/HTREnginev2/h0;

    invoke-direct {v2, v3}, Lcom/sunia/HTREnginev2/h0;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 33
    :cond_d
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 34
    new-instance p1, Lcom/sunia/calculatorv2/ink/model/e;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/sunia/calculatorv2/ink/model/e;-><init>(Ljava/util/List;Ljava/util/List;)V

    move-object p0, p1

    .line 35
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Discarding"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/c0;->a(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Merger"

    invoke-static {p2, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {p0}, Lcom/sunia/HTREnginev2/o0;->y(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/e;

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Discarded"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/c0;->a(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static a(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/HTREnginev2/q;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/f<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Lcom/sunia/HTREnginev2/q;",
            ")",
            "Lcom/sunia/calculatorv2/ink/model/f;"
        }
    .end annotation

    .line 38
    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/q;->n()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Aligning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Merger"

    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/calculatorv2/ink/model/f;

    .line 42
    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/calculatorv2/ink/model/f;

    .line 43
    instance-of v4, v3, Lcom/sunia/calculatorv2/ink/model/MathElement;

    if-eqz v4, :cond_2

    .line 44
    check-cast v3, Lcom/sunia/calculatorv2/ink/model/MathElement;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p0

    .line 45
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    return-object p0

    .line 46
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/calculatorv2/ink/model/MathElement;

    .line 47
    invoke-virtual {v3}, Lcom/sunia/calculatorv2/ink/model/MathElement;->c()Ljava/util/List;

    move-result-object v3

    .line 48
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_5

    return-object p0

    .line 49
    :cond_5
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/HTREnginev2/m0;

    invoke-virtual {v3}, Lcom/sunia/HTREnginev2/m0;->d()F

    move-result v3

    add-float/2addr v2, v3

    goto :goto_1

    .line 50
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 51
    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/q;->f()F

    move-result v1

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/q;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v3

    const v5, 0x41cb3333    # 25.4f

    mul-float/2addr v3, v5

    div-float/2addr v1, v3

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v3, v1

    .line 52
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 53
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 54
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->g()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v5

    .line 55
    invoke-virtual {v5}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v6

    invoke-virtual {v5}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v5

    .line 56
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sunia/calculatorv2/ink/model/MathElement;

    .line 57
    invoke-virtual {v8}, Lcom/sunia/calculatorv2/ink/model/MathElement;->c()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sunia/HTREnginev2/m0;

    .line 58
    invoke-virtual {v8}, Lcom/sunia/HTREnginev2/m0;->d()F

    move-result v9

    div-float v9, v2, v9

    .line 59
    invoke-virtual {v8}, Lcom/sunia/HTREnginev2/k;->b()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v8

    .line 60
    new-instance v10, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    invoke-virtual {v8}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getWidth()F

    move-result v11

    mul-float/2addr v11, v9

    add-float/2addr v11, v6

    invoke-virtual {v8}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getHeight()F

    move-result v8

    mul-float/2addr v9, v8

    add-float/2addr v9, v5

    invoke-direct {v10, v6, v11, v5, v9}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;-><init>(FFFF)V

    .line 61
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-virtual {v10}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v5

    add-float/2addr v5, v2

    goto :goto_2

    .line 63
    :cond_7
    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/q;->l()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p1

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float/2addr v1, v2

    invoke-static {v3, p1, v1}, Lcom/sunia/HTREnginev2/o0;->o(Ljava/util/List;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;F)V

    .line 64
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 65
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_8

    .line 66
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/calculatorv2/ink/model/MathElement;

    .line 67
    new-instance v2, Lcom/sunia/calculatorv2/ink/model/MathElement;

    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/model/MathElement;->getCandidates()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/model/MathElement;->d()Ljava/util/List;

    move-result-object v6

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/model/MathElement;->l()Lcom/sunia/calculatorv2/ink/solver/SolverContext;

    move-result-object v1

    invoke-direct {v2, v5, v6, v7, v1}, Lcom/sunia/calculatorv2/ink/model/MathElement;-><init>(Ljava/util/List;Ljava/util/List;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/solver/SolverContext;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 68
    :cond_8
    new-instance v0, Lcom/sunia/calculatorv2/ink/model/e;

    new-instance v1, Lcom/sunia/HTREnginev2/n1;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/n1;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->i()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/sunia/calculatorv2/ink/model/e;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/util/stream/Stream;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sunia/HTREnginev2/o0;->C(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/sunia/calculatorv2/ink/util/Pair;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sunia/HTREnginev2/o0;->t(Lcom/sunia/calculatorv2/ink/util/Pair;)I

    move-result p0

    return p0
.end method

.method public static b(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/HTREnginev2/q;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/f<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Lcom/sunia/HTREnginev2/q;",
            ")",
            "Lcom/sunia/calculatorv2/ink/model/f;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/o0$c;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/o0$c;-><init>(Lcom/sunia/HTREnginev2/q;)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/sunia/HTREnginev2/s;->G(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/f;

    return-object p0
.end method

.method public static synthetic c(Lcom/sunia/calculatorv2/ink/util/Pair;)I
    .locals 0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/o0;->h(Lcom/sunia/calculatorv2/ink/util/Pair;)I

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/sunia/calculatorv2/ink/model/x;)Z
    .locals 0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/o0;->r(Lcom/sunia/calculatorv2/ink/model/x;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/sunia/HTREnginev2/k;)D
    .locals 2

    invoke-static {p0}, Lcom/sunia/HTREnginev2/o0;->s(Lcom/sunia/HTREnginev2/k;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic f(Lcom/sunia/HTREnginev2/k;)Z
    .locals 0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/o0;->p(Lcom/sunia/HTREnginev2/k;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Lcom/sunia/calculatorv2/ink/model/x;)Lcom/sunia/calculatorv2/ink/util/Pair;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sunia/HTREnginev2/o0;->v(Lcom/sunia/calculatorv2/ink/model/x;)Lcom/sunia/calculatorv2/ink/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lcom/sunia/calculatorv2/ink/model/f;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/f<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;)Z"
        }
    .end annotation

    .line 2
    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/i;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/m;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/model/f;

    .line 5
    invoke-static {v0}, Lcom/sunia/HTREnginev2/o0;->g(Lcom/sunia/calculatorv2/ink/model/f;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_2
    return v1

    :cond_3
    return v2
.end method

.method public static synthetic h(Lcom/sunia/calculatorv2/ink/util/Pair;)I
    .locals 1

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public static synthetic i(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/MathElement;
    .locals 0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/o0;->u(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/MathElement;

    move-result-object p0

    return-object p0
.end method

.method public static j(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 1

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/o0$b;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/o0$b;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/sunia/HTREnginev2/s;->G(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/f;

    return-object p0
.end method

.method public static j(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/MathElement;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/MathElement;",
            ">;",
            "Lcom/sunia/calculatorv2/ink/model/MathElement;",
            ")",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/MathElement;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/sunia/HTREnginev2/fzo;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/fzo;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/sunia/HTREnginev2/b0;->a(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/MathElement;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/x;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/x;",
            ">;",
            "Lcom/sunia/calculatorv2/ink/model/x;",
            ")",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/x;",
            ">;"
        }
    .end annotation

    const-string v0, "Correcting text"

    const-string v1, "Merger"

    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/sunia/HTREnginev2/jzo;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/jzo;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/sunia/HTREnginev2/kzo;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/kzo;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/x;->f()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sunia/calculatorv2/ink/model/y;

    invoke-virtual {v4}, Lcom/sunia/calculatorv2/ink/model/y;->f()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sunia/calculatorv2/ink/model/w;

    invoke-virtual {v8}, Lcom/sunia/calculatorv2/ink/model/w;->c()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    new-instance v9, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-direct {v9, v8, v4}, Lcom/sunia/calculatorv2/ink/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lcom/sunia/calculatorv2/ink/model/f;->g()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v8

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-virtual {v10}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sunia/calculatorv2/ink/model/x;

    invoke-virtual {v11}, Lcom/sunia/calculatorv2/ink/model/f;->e()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->isIntersect(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v10}, Lcom/sunia/calculatorv2/ink/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    aget v11, v10, v6

    const/4 v12, -0x1

    if-ne v11, v12, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v5

    aput v11, v10, v6

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    aput v11, v10, v5

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    return-object p0

    :cond_5
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sunia/calculatorv2/ink/util/Pair;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Selected: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/sunia/calculatorv2/ink/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    aget v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/sunia/calculatorv2/ink/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    aget v9, v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/sunia/calculatorv2/ink/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    aget v8, v8, v5

    if-nez v8, :cond_6

    invoke-virtual {v7}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sunia/calculatorv2/ink/model/x;

    invoke-interface {p0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    new-instance v0, Lcom/sunia/HTREnginev2/lzo;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/lzo;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/mzo;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/mzo;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/f;->g()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p1

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v6

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-virtual {v4}, Lcom/sunia/calculatorv2/ink/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    aget v7, v7, v6

    invoke-virtual {v4}, Lcom/sunia/calculatorv2/ink/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    aget v8, v8, v5

    if-le v7, v1, :cond_8

    invoke-static {v1, v7, v2, v3}, Lcom/sunia/HTREnginev2/o0;->m(IILjava/util/List;Ljava/util/List;)V

    :cond_8
    invoke-virtual {v4}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sunia/calculatorv2/ink/model/x;

    invoke-virtual {v7}, Lcom/sunia/calculatorv2/ink/model/x;->f()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sunia/calculatorv2/ink/model/y;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    if-le v8, v1, :cond_a

    move v1, v8

    :cond_a
    invoke-virtual {v4}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sunia/calculatorv2/ink/model/x;

    invoke-virtual {v4}, Lcom/sunia/calculatorv2/ink/model/f;->e()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->union(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p1

    goto :goto_2

    :cond_b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v1, v0, v2, v3}, Lcom/sunia/HTREnginev2/o0;->m(IILjava/util/List;Ljava/util/List;)V

    :cond_c
    new-instance v0, Lcom/sunia/calculatorv2/ink/model/x;

    new-instance v1, Lcom/sunia/calculatorv2/ink/util/Alternative;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-direct {v1, v3, v4, v5}, Lcom/sunia/calculatorv2/ink/util/Alternative;-><init>(Ljava/lang/Object;D)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/sunia/calculatorv2/ink/model/x;-><init>(Ljava/util/List;Ljava/util/List;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static l(Ljava/util/List;Ljava/util/List;Lcom/sunia/HTREnginev2/q;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Lcom/sunia/HTREnginev2/q;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;"
        }
    .end annotation

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/LinkedHashSet;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sunia/calculatorv2/ink/model/f;

    instance-of v6, v5, Lcom/sunia/calculatorv2/ink/model/x;

    if-nez v6, :cond_2

    instance-of v6, v5, Lcom/sunia/calculatorv2/ink/model/MathElement;

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v5}, Lcom/sunia/calculatorv2/ink/model/f;->e()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unconverted box: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Merger"

    invoke-static {v8, v7}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    move-object v9, v8

    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-virtual {v10}, Lcom/sunia/calculatorv2/ink/model/f;->j()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lcom/sunia/calculatorv2/ink/model/f;->j()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v10}, Lcom/sunia/calculatorv2/ink/model/f;->g()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v11

    invoke-static {v6, v11}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->isIntersect(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)Z

    move-result v12

    if-nez v12, :cond_4

    instance-of v12, v5, Lcom/sunia/calculatorv2/ink/model/MathElement;

    if-eqz v12, :cond_3

    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v12

    invoke-virtual {v11}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v13

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_3

    invoke-virtual {v11}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v11

    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v12

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_3

    :cond_4
    if-nez v9, :cond_6

    move-object v9, v10

    goto :goto_2

    :cond_5
    move-object v8, v9

    :cond_6
    if-nez v8, :cond_c

    instance-of v7, v5, Lcom/sunia/calculatorv2/ink/model/MathElement;

    if-eqz v7, :cond_c

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sunia/calculatorv2/ink/model/f;

    instance-of v10, v9, Lcom/sunia/calculatorv2/ink/model/MathElement;

    if-eqz v10, :cond_7

    invoke-virtual {v5}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_7

    invoke-virtual {v9}, Lcom/sunia/calculatorv2/ink/model/f;->g()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v10

    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v11

    invoke-virtual {v10}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v12

    cmpg-float v11, v11, v12

    const/4 v12, 0x0

    if-gtz v11, :cond_8

    invoke-virtual {v10}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v11

    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v13

    cmpg-float v11, v11, v13

    if-gtz v11, :cond_8

    move v11, v12

    goto :goto_4

    :cond_8
    invoke-virtual {v10}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v11

    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v13

    sub-float/2addr v11, v13

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v13

    invoke-virtual {v10}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v14

    sub-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    invoke-static {v11, v13}, Ljava/lang/Math;->min(FF)F

    move-result v11

    :goto_4
    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v13

    invoke-virtual {v10}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v14

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_9

    invoke-virtual {v10}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v13

    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v14

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v10}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v12

    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v13

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v13

    invoke-virtual {v10}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v14

    sub-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    :goto_5
    add-float/2addr v11, v12

    const/high16 v12, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpg-float v12, v11, v12

    if-gez v12, :cond_7

    invoke-virtual {v10}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getHeight()F

    move-result v10

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v10, v12

    cmpg-float v10, v11, v10

    if-gez v10, :cond_7

    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getHeight()F

    move-result v10

    mul-float/2addr v10, v12

    cmpg-float v10, v11, v10

    if-gez v10, :cond_7

    invoke-virtual {v9}, Lcom/sunia/calculatorv2/ink/model/f;->h()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v10

    new-instance v12, Lcom/sunia/HTREnginev2/hzo;

    invoke-direct {v12}, Lcom/sunia/HTREnginev2/hzo;-><init>()V

    invoke-interface {v10, v12}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v10

    new-instance v12, Lcom/sunia/HTREnginev2/izo;

    invoke-direct {v12}, Lcom/sunia/HTREnginev2/izo;-><init>()V

    invoke-interface {v10, v12}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/stream/DoubleStream;->sorted()Ljava/util/stream/DoubleStream;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/stream/DoubleStream;->toArray()[D

    move-result-object v10

    array-length v12, v10

    if-eqz v12, :cond_a

    float-to-double v11, v11

    array-length v13, v10

    div-int/lit8 v13, v13, 0x2

    aget-wide v13, v10, v13

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    div-double/2addr v13, v15

    cmpg-double v10, v11, v13

    if-gez v10, :cond_7

    :cond_a
    invoke-virtual {v5}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-static {v10}, Lcom/sunia/HTREnginev2/b0;->F(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/util/Pair;

    move-result-object v10

    if-nez v10, :cond_b

    invoke-virtual {v5}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-static {v10}, Lcom/sunia/HTREnginev2/b0;->E(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/util/Pair;

    move-result-object v10

    if-eqz v10, :cond_7

    :cond_b
    move-object v8, v9

    goto/16 :goto_3

    :cond_c
    if-eqz v8, :cond_e

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_d

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_d
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_e
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_f
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    instance-of v5, v4, Lcom/sunia/calculatorv2/ink/model/MathElement;

    if-eqz v5, :cond_11

    check-cast v4, Lcom/sunia/calculatorv2/ink/model/MathElement;

    invoke-static {v3, v4}, Lcom/sunia/HTREnginev2/o0;->j(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/MathElement;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    :cond_11
    instance-of v5, v4, Lcom/sunia/calculatorv2/ink/model/x;

    if-eqz v5, :cond_10

    check-cast v4, Lcom/sunia/calculatorv2/ink/model/x;

    invoke-static {v3, v4}, Lcom/sunia/HTREnginev2/o0;->k(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/x;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    :cond_12
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static m(IILjava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/util/Pair<",
            "Lcom/sunia/calculatorv2/ink/model/w;",
            "Lcom/sunia/calculatorv2/ink/model/y;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/y;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-ge p0, p1, :cond_2

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-virtual {v4}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sunia/calculatorv2/ink/model/w;

    invoke-virtual {v4}, Lcom/sunia/calculatorv2/ink/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sunia/calculatorv2/ink/model/y;

    if-eq v4, v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/sunia/calculatorv2/ink/model/y;

    new-instance v6, Lcom/sunia/calculatorv2/ink/util/Alternative;

    invoke-direct {v6, v0, v2, v3}, Lcom/sunia/calculatorv2/ink/util/Alternative;-><init>(Ljava/lang/Object;D)V

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sunia/calculatorv2/ink/model/y;-><init>(Ljava/util/List;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    move-object v1, v4

    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    new-instance p0, Lcom/sunia/calculatorv2/ink/model/y;

    new-instance p1, Lcom/sunia/calculatorv2/ink/util/Alternative;

    invoke-direct {p1, v0, v2, v3}, Lcom/sunia/calculatorv2/ink/util/Alternative;-><init>(Ljava/lang/Object;D)V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sunia/calculatorv2/ink/model/y;-><init>(Ljava/util/List;)V

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public static n(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/f<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/graphics/BoundBox;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/i;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/HTREnginev2/k;

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/k;->b()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-static {v0, p1}, Lcom/sunia/HTREnginev2/o0;->n(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static o(Ljava/util/List;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;F)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/graphics/BoundBox;",
            ">;",
            "Lcom/sunia/calculatorv2/ink/graphics/BoundBox;",
            "F)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getWidth()F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, p2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getHeight()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    new-instance v0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v1

    add-float/2addr v1, p2

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v2

    sub-float/2addr v2, p2

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v3

    add-float/2addr v3, p2

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result p1

    sub-float/2addr p1, p2

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;-><init>(FFFF)V

    move-object p1, v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-static {p2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->union(Ljava/util/Iterator;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->isContain(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getWidth()F

    move-result v0

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    invoke-virtual {p2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getHeight()F

    move-result v0

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getHeight()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getWidth()F

    move-result v0

    invoke-virtual {p2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getWidth()F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getHeight()F

    move-result v1

    invoke-virtual {p2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getHeight()F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->scale(F)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p2

    :goto_1
    invoke-virtual {p2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v1

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v2

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_3

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v1

    invoke-virtual {p2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v3

    sub-float/2addr v1, v3

    add-float/2addr v1, v2

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-virtual {p2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v3

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v3

    invoke-virtual {p2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v4

    sub-float/2addr v3, v4

    add-float/2addr v1, v3

    :cond_4
    invoke-virtual {p2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v3

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v3

    invoke-virtual {p2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v4

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    :cond_5
    invoke-virtual {p2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v3

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result p1

    invoke-virtual {p2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result p2

    sub-float/2addr p1, p2

    add-float/2addr v2, p1

    :cond_6
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    new-instance p2, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v1

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v1

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v5

    mul-float/2addr v5, v0

    add-float/2addr v5, v2

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result p1

    mul-float/2addr p1, v0

    add-float/2addr p1, v2

    invoke-direct {p2, v3, v4, v5, p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;-><init>(FFFF)V

    invoke-interface {p0, p2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    return-void
.end method

.method public static synthetic p(Lcom/sunia/HTREnginev2/k;)Z
    .locals 0

    instance-of p0, p0, Lcom/sunia/HTREnginev2/u0;

    return p0
.end method

.method public static synthetic q(Lcom/sunia/calculatorv2/ink/model/f;)Z
    .locals 0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/o0;->B(Lcom/sunia/calculatorv2/ink/model/f;)Z

    move-result p0

    return p0
.end method

.method public static synthetic r(Lcom/sunia/calculatorv2/ink/model/x;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/x;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic s(Lcom/sunia/HTREnginev2/k;)D
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/k;->b()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getHeight()F

    move-result p0

    float-to-double v0, p0

    return-wide v0
.end method

.method public static synthetic t(Lcom/sunia/calculatorv2/ink/util/Pair;)I
    .locals 1

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0
.end method

.method public static u(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/MathElement;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/MathElement;",
            ">;)",
            "Lcom/sunia/calculatorv2/ink/model/MathElement;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    move-wide v5, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sunia/calculatorv2/ink/model/MathElement;

    invoke-virtual {v7}, Lcom/sunia/calculatorv2/ink/model/MathElement;->getCandidates()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sunia/calculatorv2/ink/util/Alternative;

    invoke-virtual {v8}, Lcom/sunia/calculatorv2/ink/util/Alternative;->getContent()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sunia/calculatorv2/ink/model/f;

    instance-of v10, v9, Lcom/sunia/calculatorv2/ink/model/m;

    if-eqz v10, :cond_0

    invoke-virtual {v9}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v0, v9}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-static {v10}, Lcom/sunia/HTREnginev2/o0;->g(Lcom/sunia/calculatorv2/ink/model/f;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    :cond_0
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v7}, Lcom/sunia/calculatorv2/ink/model/MathElement;->d()Ljava/util/List;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v8}, Lcom/sunia/calculatorv2/ink/util/Alternative;->getConfidence()D

    move-result-wide v7

    mul-double/2addr v5, v7

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    int-to-double v9, v2

    div-double/2addr v3, v9

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    new-instance v4, Lcom/sunia/calculatorv2/ink/model/MathElement;

    new-instance v5, Lcom/sunia/calculatorv2/ink/util/Alternative;

    invoke-static {v0}, Lcom/sunia/calculatorv2/ink/model/m;->b(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/m;

    move-result-object v0

    invoke-direct {v5, v0, v2, v3}, Lcom/sunia/calculatorv2/ink/util/Alternative;-><init>(Ljava/lang/Object;D)V

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/MathElement;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->e()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v4, v0, v1, p0, v2}, Lcom/sunia/calculatorv2/ink/model/MathElement;-><init>(Ljava/util/List;Ljava/util/List;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/solver/SolverContext;)V

    return-object v4
.end method

.method public static synthetic v(Lcom/sunia/calculatorv2/ink/model/x;)Lcom/sunia/calculatorv2/ink/util/Pair;
    .locals 3

    new-instance v0, Lcom/sunia/calculatorv2/ink/util/Pair;

    const/4 v1, -0x1

    const/4 v2, 0x0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sunia/calculatorv2/ink/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static synthetic w(Lcom/sunia/calculatorv2/ink/model/f;)Z
    .locals 0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/o0;->A(Lcom/sunia/calculatorv2/ink/model/f;)Z

    move-result p0

    return p0
.end method

.method public static synthetic x(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;
    .locals 0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/o0;->z(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p0

    return-object p0
.end method

.method public static y(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/o0$a;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/o0$a;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sunia/HTREnginev2/s;->G(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/f;

    return-object p0
.end method

.method public static z(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/f<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;)",
            "Lcom/sunia/calculatorv2/ink/graphics/BoundBox;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0}, Lcom/sunia/HTREnginev2/o0;->n(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->union(Ljava/util/Iterator;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p0

    return-object p0
.end method
