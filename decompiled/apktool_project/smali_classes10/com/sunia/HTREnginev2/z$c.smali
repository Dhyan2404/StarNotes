.class public Lcom/sunia/HTREnginev2/z$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/z$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sunia/HTREnginev2/z$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcom/sunia/HTREnginev2/q;)Lcom/sunia/calculatorv2/ink/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/s1;",
            ">;",
            "Lcom/sunia/HTREnginev2/q;",
            ")",
            "Lcom/sunia/calculatorv2/ink/util/Pair<",
            "Lcom/sunia/calculatorv2/ink/model/e;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 8
    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/q;->e()Lcom/sunia/calculatorv2/ink/model/e;

    move-result-object p2

    .line 9
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    .line 10
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/HTREnginev2/s1;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v1, Lcom/sunia/HTREnginev2/p1;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/p1;-><init>(Ljava/util/List;)V

    .line 12
    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/p1;->getBoundBox()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p1

    invoke-virtual {p0, p2, v1, p1, v0}, Lcom/sunia/HTREnginev2/z$c;->b(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/HTREnginev2/p1;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Ljava/util/HashSet;)V

    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Items to delete: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ScratchGesture"

    invoke-static {p1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    .line 15
    invoke-static {v0, p2}, Lcom/sunia/HTREnginev2/v;->a(Ljava/util/HashSet;Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/util/Pair;

    move-result-object p0

    return-object p0

    .line 16
    :cond_0
    new-instance p0, Lcom/sunia/calculatorv2/ink/util/Pair;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p2, p1}, Lcom/sunia/calculatorv2/ink/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public a(Lcom/sunia/HTREnginev2/p1;Lcom/sunia/HTREnginev2/q;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/p1;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/sunia/HTREnginev2/q1;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/z$c;->c(Lcom/sunia/HTREnginev2/p1;Ljava/util/List;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-string p1, "ScratchGesture"

    const-string v2, "Scratch detected"

    .line 3
    invoke-static {p1, v2}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0, p2}, Lcom/sunia/HTREnginev2/z$c;->d(Ljava/util/List;Lcom/sunia/HTREnginev2/q;)Lcom/sunia/calculatorv2/ink/util/Pair;

    move-result-object p1

    .line 5
    invoke-virtual {p0, v0, p2}, Lcom/sunia/HTREnginev2/z$c;->a(Ljava/util/List;Lcom/sunia/HTREnginev2/q;)Lcom/sunia/calculatorv2/ink/util/Pair;

    move-result-object p0

    .line 6
    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 7
    :cond_1
    :goto_0
    new-instance v0, Lcom/sunia/calculatorv2/ink/editor/Selection;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/IElement;

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {v0, p0, p1}, Lcom/sunia/calculatorv2/ink/editor/Selection;-><init>(Lcom/sunia/calculatorv2/ink/model/IElement;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Lcom/sunia/HTREnginev2/q;->a(Lcom/sunia/calculatorv2/ink/editor/Selection;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public final b(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/HTREnginev2/p1;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Ljava/util/HashSet;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/f<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Lcom/sunia/HTREnginev2/p1;",
            "Lcom/sunia/calculatorv2/ink/graphics/BoundBox;",
            "Ljava/util/HashSet<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/f;->g()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->isIntersect(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)Z

    move-result v0

    if-eqz v0, :cond_c

    instance-of v0, p1, Lcom/sunia/calculatorv2/ink/model/n;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/sunia/calculatorv2/ink/model/n;

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/n;->m()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/sunia/HTREnginev2/z$c;->b(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/HTREnginev2/p1;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Ljava/util/HashSet;)V

    invoke-virtual {p3}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result p0

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/model/f;->g()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result p2

    cmpg-float p0, p0, p2

    if-ltz p0, :cond_0

    invoke-virtual {p3}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result p0

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/model/f;->g()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result p2

    cmpg-float p0, p0, p2

    if-gez p0, :cond_c

    :cond_0
    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/n;->l()Lcom/sunia/calculatorv2/ink/model/r;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_1
    instance-of v0, p1, Lcom/sunia/calculatorv2/ink/model/j;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/sunia/calculatorv2/ink/model/j;

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/j;->n()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/sunia/HTREnginev2/z$c;->b(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/HTREnginev2/p1;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Ljava/util/HashSet;)V

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/j;->l()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/sunia/HTREnginev2/z$c;->b(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/HTREnginev2/p1;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Ljava/util/HashSet;)V

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/model/f;->g()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p0

    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/model/f;->g()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p2

    invoke-virtual {p3}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v0

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    invoke-static {p2, p3}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->isContain(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    invoke-virtual {p3}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result p2

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v0

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_c

    invoke-virtual {p3}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result p2

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result p0

    cmpg-float p0, p2, p0

    if-gez p0, :cond_c

    :cond_3
    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/j;->m()Lcom/sunia/calculatorv2/ink/model/r;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/HTREnginev2/k;

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/k;->b()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->isIntersect(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)Z

    move-result v2

    if-eqz v2, :cond_5

    instance-of v2, v1, Lcom/sunia/HTREnginev2/f0;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    check-cast v1, Lcom/sunia/HTREnginev2/f0;

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/f0;->f()Lcom/sunia/HTREnginev2/s1;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/f0;->d()Lcom/sunia/HTREnginev2/s1;

    move-result-object v1

    new-instance v5, Lcom/sunia/HTREnginev2/p1;

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/sunia/HTREnginev2/s1;

    aput-object v2, v6, v4

    aput-object v1, v6, v3

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/sunia/HTREnginev2/p1;-><init>(Ljava/util/List;)V

    invoke-static {v5, p2}, Lcom/sunia/HTREnginev2/q1;->a(Lcom/sunia/HTREnginev2/p1;Lcom/sunia/HTREnginev2/p1;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/p1;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/sunia/HTREnginev2/q1;->a(Ljava/util/Iterator;Lcom/sunia/HTREnginev2/s1;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_1

    :cond_6
    instance-of v2, v1, Lcom/sunia/HTREnginev2/c;

    if-eqz v2, :cond_8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Lcom/sunia/HTREnginev2/c;

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/c;->i()F

    move-result v5

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/c;->j()F

    move-result v6

    const/4 v7, 0x0

    :goto_0
    const/high16 v8, 0x3f800000    # 1.0f

    cmpg-float v8, v7, v8

    if-gtz v8, :cond_7

    mul-float v8, v7, v6

    add-float/2addr v8, v5

    float-to-double v8, v8

    invoke-virtual {v1, v8, v9}, Lcom/sunia/HTREnginev2/c;->a(D)Lcom/sunia/HTREnginev2/s1;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    float-to-double v7, v7

    const-wide/high16 v9, 0x3fc0000000000000L    # 0.125

    add-double/2addr v7, v9

    double-to-float v7, v7

    goto :goto_0

    :cond_7
    new-instance v1, Lcom/sunia/HTREnginev2/p1;

    invoke-direct {v1, v2}, Lcom/sunia/HTREnginev2/p1;-><init>(Ljava/util/List;)V

    invoke-static {v1, p2}, Lcom/sunia/HTREnginev2/q1;->a(Lcom/sunia/HTREnginev2/p1;Lcom/sunia/HTREnginev2/p1;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/p1;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/HTREnginev2/s1;

    invoke-static {v1, v2}, Lcom/sunia/HTREnginev2/q1;->a(Ljava/util/Iterator;Lcom/sunia/HTREnginev2/s1;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_1

    :cond_8
    instance-of v1, p1, Lcom/sunia/calculatorv2/ink/model/MathElement;

    if-nez v1, :cond_9

    instance-of v1, p1, Lcom/sunia/calculatorv2/ink/model/x;

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/f;->h()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v3, :cond_9

    goto :goto_1

    :cond_9
    move v3, v4

    :cond_a
    :goto_1
    if-eqz v3, :cond_5

    invoke-virtual {p4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/sunia/HTREnginev2/z$c;->b(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/HTREnginev2/p1;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Ljava/util/HashSet;)V

    goto :goto_2

    :cond_c
    :goto_3
    return-void
.end method

.method public final c(Lcom/sunia/HTREnginev2/p1;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/HTREnginev2/p1;",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/s1;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/p1;->getPoints()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sunia/HTREnginev2/s1;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/HTREnginev2/s1;

    invoke-virtual {v3}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v4

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v1, v4

    invoke-virtual {v3}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result v4

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result p2

    sub-float/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result p2

    add-float/2addr v2, p2

    move-object p2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/p1;->getPoints()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/q1;->a(Ljava/util/Iterator;)D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/p1;->getBoundBox()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getWidth()F

    move-result p1

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getHeight()F

    move-result p0

    const/high16 p2, 0x40a00000    # 5.0f

    mul-float v5, p1, p2

    cmpl-float v1, v1, v5

    if-gtz v1, :cond_1

    mul-float/2addr p2, p0

    cmpl-float p2, v2, p2

    if-lez p2, :cond_2

    :cond_1
    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr p0, p1

    float-to-double p0, p0

    cmpl-double p0, v3, p0

    if-lez p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public final d(Ljava/util/List;Lcom/sunia/HTREnginev2/q;)Lcom/sunia/calculatorv2/ink/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/s1;",
            ">;",
            "Lcom/sunia/HTREnginev2/q;",
            ")",
            "Lcom/sunia/calculatorv2/ink/util/Pair<",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/p1;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/q;->getTraces()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/HTREnginev2/p1;

    invoke-static {v3}, Lcom/sunia/HTREnginev2/r1;->a(Lcom/sunia/HTREnginev2/p1;)D

    move-result-wide v4

    const/16 v6, 0xb

    invoke-static {v3, v6, v4, v5}, Lcom/sunia/HTREnginev2/r1;->a(Lcom/sunia/HTREnginev2/p1;ID)Lcom/sunia/HTREnginev2/p1;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sunia/HTREnginev2/p1;->getPoints()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v1

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sunia/HTREnginev2/s1;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/sunia/HTREnginev2/q1;->a(Ljava/util/Iterator;Lcom/sunia/HTREnginev2/s1;)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x5

    if-gt v5, v4, :cond_2

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    new-instance p1, Lcom/sunia/calculatorv2/ink/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, p0, p2}, Lcom/sunia/calculatorv2/ink/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_4
    new-instance p0, Lcom/sunia/calculatorv2/ink/util/Pair;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p2, p1}, Lcom/sunia/calculatorv2/ink/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method
