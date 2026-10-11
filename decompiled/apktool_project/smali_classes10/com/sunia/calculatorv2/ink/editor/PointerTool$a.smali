.class public Lcom/sunia/calculatorv2/ink/editor/PointerTool$a;
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
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/HTREnginev2/p1;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Ljava/util/HashSet;)V
    .locals 12
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

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->g()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->isIntersect(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)Z

    move-result v1

    if-eqz v1, :cond_d

    instance-of v1, p0, Lcom/sunia/calculatorv2/ink/model/n;

    if-eqz v1, :cond_1

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/n;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/n;->m()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/sunia/calculatorv2/ink/editor/PointerTool$a;->b(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/HTREnginev2/p1;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Ljava/util/HashSet;)V

    invoke-virtual {p2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result p1

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/model/f;->g()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v1

    cmpg-float p1, p1, v1

    if-ltz p1, :cond_0

    invoke-virtual {p2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result p1

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/model/f;->g()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_d

    :cond_0
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/n;->l()Lcom/sunia/calculatorv2/ink/model/r;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_1
    instance-of v1, p0, Lcom/sunia/calculatorv2/ink/model/j;

    if-eqz v1, :cond_4

    move-object v0, p0

    check-cast v0, Lcom/sunia/calculatorv2/ink/model/j;

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/model/j;->n()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lcom/sunia/calculatorv2/ink/editor/PointerTool$a;->b(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/HTREnginev2/p1;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Ljava/util/HashSet;)V

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/model/j;->l()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/sunia/calculatorv2/ink/editor/PointerTool$a;->b(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/HTREnginev2/p1;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Ljava/util/HashSet;)V

    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/model/f;->g()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p1

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/model/f;->g()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v1

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    invoke-static {v0, p2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->isContain(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v0

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_d

    invoke-virtual {p2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result p2

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result p1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_d

    :cond_3
    check-cast p0, Lcom/sunia/calculatorv2/ink/model/n;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/n;->l()Lcom/sunia/calculatorv2/ink/model/r;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/HTREnginev2/k;

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/k;->b()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->isIntersect(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)Z

    move-result v3

    if-eqz v3, :cond_5

    instance-of v3, v2, Lcom/sunia/HTREnginev2/f0;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_6

    check-cast v2, Lcom/sunia/HTREnginev2/f0;

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/f0;->f()Lcom/sunia/HTREnginev2/s1;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/f0;->d()Lcom/sunia/HTREnginev2/s1;

    move-result-object v2

    new-instance v7, Lcom/sunia/HTREnginev2/p1;

    new-array v4, v4, [Lcom/sunia/HTREnginev2/s1;

    aput-object v3, v4, v5

    aput-object v2, v4, v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/sunia/HTREnginev2/p1;-><init>(Ljava/util/List;)V

    invoke-static {v7, p1}, Lcom/sunia/HTREnginev2/q1;->a(Lcom/sunia/HTREnginev2/p1;Lcom/sunia/HTREnginev2/p1;)Z

    move-result v5

    goto/16 :goto_1

    :cond_6
    instance-of v3, v2, Lcom/sunia/HTREnginev2/c;

    if-eqz v3, :cond_8

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Lcom/sunia/HTREnginev2/c;

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/c;->i()F

    move-result v4

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/c;->j()F

    move-result v5

    const/4 v6, 0x0

    :goto_0
    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_7

    mul-float v7, v6, v5

    add-float/2addr v7, v4

    float-to-double v7, v7

    invoke-virtual {v2, v7, v8}, Lcom/sunia/HTREnginev2/c;->a(D)Lcom/sunia/HTREnginev2/s1;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    float-to-double v6, v6

    const-wide/high16 v8, 0x3fc0000000000000L    # 0.125

    add-double/2addr v6, v8

    double-to-float v6, v6

    goto :goto_0

    :cond_7
    new-instance v2, Lcom/sunia/HTREnginev2/p1;

    invoke-direct {v2, v3}, Lcom/sunia/HTREnginev2/p1;-><init>(Ljava/util/List;)V

    invoke-static {v2, p1}, Lcom/sunia/HTREnginev2/q1;->a(Lcom/sunia/HTREnginev2/p1;Lcom/sunia/HTREnginev2/p1;)Z

    move-result v5

    goto :goto_1

    :cond_8
    instance-of v2, p0, Lcom/sunia/calculatorv2/ink/model/MathElement;

    if-nez v2, :cond_b

    instance-of v2, p0, Lcom/sunia/calculatorv2/ink/model/x;

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->h()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v6, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v2

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v3

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v7

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v8

    new-instance v9, Lcom/sunia/HTREnginev2/p1;

    const/4 v10, 0x5

    new-array v10, v10, [Lcom/sunia/HTREnginev2/s1;

    new-instance v11, Lcom/sunia/HTREnginev2/s1;

    invoke-direct {v11, v2, v7}, Lcom/sunia/HTREnginev2/s1;-><init>(FF)V

    aput-object v11, v10, v5

    new-instance v11, Lcom/sunia/HTREnginev2/s1;

    invoke-direct {v11, v3, v7}, Lcom/sunia/HTREnginev2/s1;-><init>(FF)V

    aput-object v11, v10, v6

    new-instance v11, Lcom/sunia/HTREnginev2/s1;

    invoke-direct {v11, v3, v8}, Lcom/sunia/HTREnginev2/s1;-><init>(FF)V

    aput-object v11, v10, v4

    new-instance v3, Lcom/sunia/HTREnginev2/s1;

    invoke-direct {v3, v2, v8}, Lcom/sunia/HTREnginev2/s1;-><init>(FF)V

    const/4 v4, 0x3

    aput-object v3, v10, v4

    new-instance v3, Lcom/sunia/HTREnginev2/s1;

    invoke-direct {v3, v2, v7}, Lcom/sunia/HTREnginev2/s1;-><init>(FF)V

    const/4 v2, 0x4

    aput-object v3, v10, v2

    invoke-static {v10}, Lcom/sunia/HTREnginev2/g0;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v9, v2}, Lcom/sunia/HTREnginev2/p1;-><init>(Ljava/util/List;)V

    invoke-static {v9, p1}, Lcom/sunia/HTREnginev2/q1;->a(Lcom/sunia/HTREnginev2/p1;Lcom/sunia/HTREnginev2/p1;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v9}, Lcom/sunia/HTREnginev2/p1;->getPoints()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/p1;->b()Lcom/sunia/HTREnginev2/s1;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sunia/HTREnginev2/q1;->a(Ljava/util/Iterator;Lcom/sunia/HTREnginev2/s1;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    move v5, v6

    :cond_b
    :goto_1
    if-eqz v5, :cond_5

    invoke-virtual {p3, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_c
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-static {v0, p1, p2, p3}, Lcom/sunia/calculatorv2/ink/editor/PointerTool$a;->b(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/HTREnginev2/p1;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Ljava/util/HashSet;)V

    goto :goto_2

    :cond_d
    :goto_3
    return-void
.end method

.method public static c(Lcom/sunia/HTREnginev2/p1;Lcom/sunia/HTREnginev2/q;)Lcom/sunia/calculatorv2/ink/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/HTREnginev2/p1;",
            "Lcom/sunia/HTREnginev2/q;",
            ")",
            "Lcom/sunia/calculatorv2/ink/util/Pair<",
            "Lcom/sunia/calculatorv2/ink/model/e;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/q;->e()Lcom/sunia/calculatorv2/ink/model/e;

    move-result-object p1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/p1;->getBoundBox()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v1

    invoke-static {p1, p0, v1, v0}, Lcom/sunia/calculatorv2/ink/editor/PointerTool$a;->b(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/HTREnginev2/p1;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Ljava/util/HashSet;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {v0, p1}, Lcom/sunia/HTREnginev2/v;->a(Ljava/util/HashSet;Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/util/Pair;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/sunia/calculatorv2/ink/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0}, Lcom/sunia/calculatorv2/ink/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static d(Lcom/sunia/HTREnginev2/p1;Lcom/sunia/HTREnginev2/q;)Lcom/sunia/calculatorv2/ink/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/HTREnginev2/p1;",
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/q;->getTraces()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/HTREnginev2/p1;

    invoke-static {v3, p0}, Lcom/sunia/HTREnginev2/q1;->a(Lcom/sunia/HTREnginev2/p1;Lcom/sunia/HTREnginev2/p1;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    new-instance p0, Lcom/sunia/calculatorv2/ink/util/Pair;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, p1}, Lcom/sunia/calculatorv2/ink/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/sunia/calculatorv2/ink/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0}, Lcom/sunia/calculatorv2/ink/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public a(Lcom/sunia/HTREnginev2/p1;Lcom/sunia/HTREnginev2/q;)V
    .locals 1

    invoke-static {p1, p2}, Lcom/sunia/calculatorv2/ink/editor/PointerTool$a;->d(Lcom/sunia/HTREnginev2/p1;Lcom/sunia/HTREnginev2/q;)Lcom/sunia/calculatorv2/ink/util/Pair;

    move-result-object p0

    invoke-static {p1, p2}, Lcom/sunia/calculatorv2/ink/editor/PointerTool$a;->c(Lcom/sunia/HTREnginev2/p1;Lcom/sunia/HTREnginev2/q;)Lcom/sunia/calculatorv2/ink/util/Pair;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/sunia/calculatorv2/ink/editor/Selection;

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sunia/calculatorv2/ink/model/IElement;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-direct {v0, p1, p0}, Lcom/sunia/calculatorv2/ink/editor/Selection;-><init>(Lcom/sunia/calculatorv2/ink/model/IElement;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Lcom/sunia/HTREnginev2/q;->a(Lcom/sunia/calculatorv2/ink/editor/Selection;)V

    :cond_1
    return-void
.end method

.method public getStyleName()Ljava/lang/String;
    .locals 0

    const-string p0, "eraser"

    return-object p0
.end method
