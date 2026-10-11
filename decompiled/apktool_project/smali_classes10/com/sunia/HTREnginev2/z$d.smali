.class public Lcom/sunia/HTREnginev2/z$d;
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
    name = "d"
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
    invoke-direct {p0}, Lcom/sunia/HTREnginev2/z$d;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sunia/calculatorv2/ink/model/f;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sunia/HTREnginev2/z$d;->j(Lcom/sunia/calculatorv2/ink/model/f;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lcom/sunia/calculatorv2/ink/model/f;)Z
    .locals 0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/o0;->g(Lcom/sunia/calculatorv2/ink/model/f;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public a(Lcom/sunia/HTREnginev2/p1;Lcom/sunia/HTREnginev2/q;)Z
    .locals 5

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/z$d;->m(Lcom/sunia/HTREnginev2/p1;Lcom/sunia/HTREnginev2/q;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v0, "StrikeGesture"

    const-string v2, "Strike detected"

    .line 3
    invoke-static {v0, v2}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/z$d;->l(Lcom/sunia/HTREnginev2/p1;Lcom/sunia/HTREnginev2/q;)Lcom/sunia/calculatorv2/ink/util/Pair;

    move-result-object v0

    .line 5
    new-instance v2, Lcom/sunia/HTREnginev2/p1;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sunia/HTREnginev2/s1;

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/p1;->b()Lcom/sunia/HTREnginev2/s1;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/p1;->a()Lcom/sunia/HTREnginev2/s1;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/sunia/HTREnginev2/p1;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v2, p2}, Lcom/sunia/HTREnginev2/z$d;->k(Lcom/sunia/HTREnginev2/p1;Lcom/sunia/HTREnginev2/q;)Lcom/sunia/calculatorv2/ink/util/Pair;

    move-result-object p0

    .line 6
    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 7
    :cond_1
    :goto_0
    new-instance p1, Lcom/sunia/calculatorv2/ink/editor/Selection;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/IElement;

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p1, p0, v0}, Lcom/sunia/calculatorv2/ink/editor/Selection;-><init>(Lcom/sunia/calculatorv2/ink/model/IElement;Ljava/util/List;)V

    invoke-virtual {p2, p1}, Lcom/sunia/HTREnginev2/q;->a(Lcom/sunia/calculatorv2/ink/editor/Selection;)V

    return v4

    :cond_2
    return v1
.end method

.method public final b(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/HTREnginev2/p1;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Ljava/util/Set;Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/f<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Lcom/sunia/HTREnginev2/p1;",
            "Lcom/sunia/calculatorv2/ink/graphics/BoundBox;",
            "Ljava/util/Set<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {p1 .. p1}, Lcom/sunia/calculatorv2/ink/model/f;->g()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v1

    invoke-static {v1, v8}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->isIntersect(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)Z

    move-result v2

    if-eqz v2, :cond_14

    instance-of v2, v0, Lcom/sunia/calculatorv2/ink/model/x;

    const/4 v3, 0x0

    const/4 v5, -0x1

    if-eqz v2, :cond_7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    check-cast v11, Lcom/sunia/calculatorv2/ink/model/x;

    invoke-virtual {v11}, Lcom/sunia/calculatorv2/ink/model/x;->f()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v12, v5

    move v13, v12

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sunia/calculatorv2/ink/model/y;

    invoke-virtual {v14}, Lcom/sunia/calculatorv2/ink/model/y;->f()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sunia/calculatorv2/ink/model/w;

    invoke-virtual {v15}, Lcom/sunia/calculatorv2/ink/model/w;->c()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_1

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sunia/HTREnginev2/k;

    invoke-virtual {v4}, Lcom/sunia/HTREnginev2/k;->b()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v4

    invoke-virtual {v6, v4, v8}, Lcom/sunia/HTREnginev2/z$d;->g(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-ne v12, v5, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v12, 0x1

    sub-int/2addr v4, v12

    move v12, v4

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    goto :goto_0

    :cond_3
    if-nez v12, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eq v13, v3, :cond_5

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v6, v1, v8}, Lcom/sunia/HTREnginev2/z$d;->g(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    invoke-virtual {v6, v0, v7, v9, v10}, Lcom/sunia/HTREnginev2/z$d;->c(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/HTREnginev2/p1;Ljava/util/Set;Ljava/util/List;)V

    goto/16 :goto_3

    :cond_6
    if-eq v12, v5, :cond_14

    invoke-interface {v2, v12, v13}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v6, v0, v7, v9, v10}, Lcom/sunia/HTREnginev2/z$d;->d(Ljava/util/List;Lcom/sunia/HTREnginev2/p1;Ljava/util/Set;Ljava/util/List;)V

    goto/16 :goto_3

    :cond_7
    instance-of v2, v0, Lcom/sunia/calculatorv2/ink/model/m;

    if-eqz v2, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v12, v3

    move v11, v5

    move v13, v11

    :cond_8
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sunia/calculatorv2/ink/model/f;

    const/4 v15, 0x1

    add-int/2addr v12, v15

    invoke-virtual {v14}, Lcom/sunia/calculatorv2/ink/model/f;->g()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v15

    invoke-static {v15, v8}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->isIntersect(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v15, v8}, Lcom/sunia/HTREnginev2/z$d;->g(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)Z

    move-result v14

    if-eqz v14, :cond_8

    if-ne v11, v5, :cond_9

    add-int/lit8 v11, v12, -0x1

    :cond_9
    move v13, v12

    goto :goto_1

    :cond_a
    if-nez v11, :cond_b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v13, v4, :cond_b

    invoke-virtual {v6, v0, v7, v9, v10}, Lcom/sunia/HTREnginev2/z$d;->c(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/HTREnginev2/p1;Ljava/util/Set;Ljava/util/List;)V

    goto/16 :goto_3

    :cond_b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_c

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/sunia/calculatorv2/ink/model/f;

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sunia/HTREnginev2/z$d;->b(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/HTREnginev2/p1;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Ljava/util/Set;Ljava/util/List;)V

    goto/16 :goto_3

    :cond_c
    if-eq v11, v5, :cond_14

    invoke-interface {v1, v11, v13}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v6, v0, v7, v9, v10}, Lcom/sunia/HTREnginev2/z$d;->d(Ljava/util/List;Lcom/sunia/HTREnginev2/p1;Ljava/util/Set;Ljava/util/List;)V

    goto/16 :goto_3

    :cond_d
    instance-of v2, v0, Lcom/sunia/calculatorv2/ink/model/r;

    if-eqz v2, :cond_e

    invoke-virtual {v6, v1, v8}, Lcom/sunia/HTREnginev2/z$d;->g(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v6, v0, v7, v9, v10}, Lcom/sunia/HTREnginev2/z$d;->c(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/HTREnginev2/p1;Ljava/util/Set;Ljava/util/List;)V

    goto/16 :goto_3

    :cond_e
    instance-of v1, v0, Lcom/sunia/calculatorv2/ink/model/n;

    if-eqz v1, :cond_10

    move-object v11, v0

    check-cast v11, Lcom/sunia/calculatorv2/ink/model/n;

    invoke-virtual {v11}, Lcom/sunia/calculatorv2/ink/model/n;->m()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v12

    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sunia/HTREnginev2/z$d;->b(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/HTREnginev2/p1;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Ljava/util/Set;Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v0

    invoke-virtual {v12}, Lcom/sunia/calculatorv2/ink/model/f;->g()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_f

    invoke-virtual/range {p3 .. p3}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v0

    invoke-virtual {v12}, Lcom/sunia/calculatorv2/ink/model/f;->g()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_14

    :cond_f
    invoke-virtual {v11}, Lcom/sunia/calculatorv2/ink/model/n;->l()Lcom/sunia/calculatorv2/ink/model/r;

    move-result-object v0

    invoke-virtual {v6, v0, v7, v9, v10}, Lcom/sunia/HTREnginev2/z$d;->c(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/HTREnginev2/p1;Ljava/util/Set;Ljava/util/List;)V

    goto/16 :goto_3

    :cond_10
    instance-of v1, v0, Lcom/sunia/calculatorv2/ink/model/j;

    if-eqz v1, :cond_13

    move-object v11, v0

    check-cast v11, Lcom/sunia/calculatorv2/ink/model/j;

    invoke-virtual {v11}, Lcom/sunia/calculatorv2/ink/model/j;->n()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v12

    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sunia/HTREnginev2/z$d;->b(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/HTREnginev2/p1;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Ljava/util/Set;Ljava/util/List;)V

    invoke-virtual {v11}, Lcom/sunia/calculatorv2/ink/model/j;->l()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v13

    move-object v1, v13

    invoke-virtual/range {v0 .. v5}, Lcom/sunia/HTREnginev2/z$d;->b(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/HTREnginev2/p1;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Ljava/util/Set;Ljava/util/List;)V

    invoke-virtual {v12}, Lcom/sunia/calculatorv2/ink/model/f;->g()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v0

    invoke-virtual {v13}, Lcom/sunia/calculatorv2/ink/model/f;->g()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v2

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_11

    invoke-static {v1, v8}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->isContain(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    invoke-virtual/range {p3 .. p3}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v1

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_14

    invoke-virtual/range {p3 .. p3}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v1

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_14

    :cond_12
    invoke-virtual {v11}, Lcom/sunia/calculatorv2/ink/model/j;->m()Lcom/sunia/calculatorv2/ink/model/r;

    move-result-object v0

    invoke-virtual {v6, v0, v7, v9, v10}, Lcom/sunia/HTREnginev2/z$d;->c(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/HTREnginev2/p1;Ljava/util/Set;Ljava/util/List;)V

    goto :goto_3

    :cond_13
    instance-of v1, v0, Lcom/sunia/calculatorv2/ink/model/i;

    if-nez v1, :cond_14

    invoke-virtual/range {p1 .. p1}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/sunia/calculatorv2/ink/model/f;

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sunia/HTREnginev2/z$d;->b(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/HTREnginev2/p1;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Ljava/util/Set;Ljava/util/List;)V

    goto :goto_2

    :cond_14
    :goto_3
    return-void
.end method

.method public final c(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/HTREnginev2/p1;Ljava/util/Set;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/f<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Lcom/sunia/HTREnginev2/p1;",
            "Ljava/util/Set<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/sunia/HTREnginev2/o0;->g(Lcom/sunia/calculatorv2/ink/model/f;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/f;->g()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/sunia/HTREnginev2/z$d;->f(Lcom/sunia/HTREnginev2/p1;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final d(Ljava/util/List;Lcom/sunia/HTREnginev2/p1;Ljava/util/Set;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Lcom/sunia/HTREnginev2/p1;",
            "Ljava/util/Set<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/v8p;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/v8p;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p3

    new-instance v0, Lcom/sunia/HTREnginev2/fzo;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/fzo;-><init>()V

    invoke-interface {p3, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/stream/BaseStream;->iterator()Ljava/util/Iterator;

    move-result-object p3

    invoke-static {p3}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->union(Ljava/util/Iterator;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/sunia/HTREnginev2/z$d;->f(Lcom/sunia/HTREnginev2/p1;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public final e(Lcom/sunia/HTREnginev2/p1;Lcom/sunia/HTREnginev2/p1;)Z
    .locals 3

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/p1;->a()Lcom/sunia/HTREnginev2/s1;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/p1;->b()Lcom/sunia/HTREnginev2/s1;

    move-result-object p1

    instance-of p2, p0, Lcom/sunia/HTREnginev2/w0;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    instance-of p2, p1, Lcom/sunia/HTREnginev2/w0;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/s1;->a()J

    move-result-wide p1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/s1;->a()J

    move-result-wide v1

    sub-long/2addr p1, v1

    const-wide/16 v1, 0x1f4

    cmp-long p0, p1, v1

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public final f(Lcom/sunia/HTREnginev2/p1;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)Z
    .locals 6

    invoke-virtual {p2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result p0

    invoke-virtual {p2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v0

    invoke-virtual {p2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v1

    invoke-virtual {p2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result p2

    new-instance v2, Lcom/sunia/HTREnginev2/s1;

    invoke-direct {v2, p0, v1}, Lcom/sunia/HTREnginev2/s1;-><init>(FF)V

    new-instance v3, Lcom/sunia/HTREnginev2/s1;

    invoke-direct {v3, v0, v1}, Lcom/sunia/HTREnginev2/s1;-><init>(FF)V

    new-instance v1, Lcom/sunia/HTREnginev2/s1;

    invoke-direct {v1, v0, p2}, Lcom/sunia/HTREnginev2/s1;-><init>(FF)V

    new-instance v0, Lcom/sunia/HTREnginev2/s1;

    invoke-direct {v0, p0, p2}, Lcom/sunia/HTREnginev2/s1;-><init>(FF)V

    new-instance p0, Lcom/sunia/HTREnginev2/p1;

    const/4 p2, 0x5

    new-array p2, p2, [Lcom/sunia/HTREnginev2/s1;

    const/4 v4, 0x0

    aput-object v2, p2, v4

    const/4 v5, 0x1

    aput-object v3, p2, v5

    const/4 v3, 0x2

    aput-object v1, p2, v3

    const/4 v1, 0x3

    aput-object v0, p2, v1

    const/4 v0, 0x4

    aput-object v2, p2, v0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/sunia/HTREnginev2/p1;-><init>(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/p1;->getPoints()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/p1;->b()Lcom/sunia/HTREnginev2/s1;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sunia/HTREnginev2/q1;->a(Ljava/util/Iterator;Lcom/sunia/HTREnginev2/s1;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {p1, p0}, Lcom/sunia/HTREnginev2/q1;->a(Lcom/sunia/HTREnginev2/p1;Lcom/sunia/HTREnginev2/p1;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    move v4, v5

    :cond_1
    return v4
.end method

.method public final g(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)Z
    .locals 7

    invoke-static {p1, p2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->isIntersect(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result p0

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v1

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v2

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result p1

    invoke-virtual {p2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v3

    invoke-virtual {p2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v4

    invoke-virtual {p2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v5

    invoke-virtual {p2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result p2

    cmpg-float v6, v1, p0

    if-ltz v6, :cond_3

    cmpg-float v6, p1, v2

    if-gez v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {p0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    sub-float/2addr v4, v3

    sub-float/2addr v1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    mul-float/2addr v1, p0

    cmpl-float v1, v4, v1

    const/4 v3, 0x1

    if-ltz v1, :cond_2

    return v3

    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sub-float/2addr p2, v1

    sub-float/2addr p1, v2

    mul-float/2addr p1, p0

    cmpl-float p0, p2, p1

    if-ltz p0, :cond_3

    return v3

    :cond_3
    :goto_0
    return v0
.end method

.method public final h(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/model/f;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/graphics/BoundBox;",
            "Lcom/sunia/calculatorv2/ink/model/f<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/sunia/calculatorv2/ink/model/f;->g()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->isIntersect(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/sunia/calculatorv2/ink/model/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/HTREnginev2/k;

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/k;->b()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->isContain(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_1
    invoke-virtual {p2}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/z$d;->h(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/model/f;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final i(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/graphics/BoundBox;",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/p1;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sunia/HTREnginev2/p1;

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/p1;->getBoundBox()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->isContain(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final k(Lcom/sunia/HTREnginev2/p1;Lcom/sunia/HTREnginev2/q;)Lcom/sunia/calculatorv2/ink/util/Pair;
    .locals 8
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

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/q;->e()Lcom/sunia/calculatorv2/ink/model/e;

    move-result-object p2

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/p1;->getBoundBox()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v3

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v4, v6

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/sunia/HTREnginev2/z$d;->b(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/HTREnginev2/p1;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Ljava/util/Set;Ljava/util/List;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Items to delete: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; touched: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StrikeGesture"

    invoke-static {p1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {v6, p2}, Lcom/sunia/HTREnginev2/v;->a(Ljava/util/HashSet;Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/util/Pair;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/sunia/calculatorv2/ink/util/Pair;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p2, p1}, Lcom/sunia/calculatorv2/ink/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final l(Lcom/sunia/HTREnginev2/p1;Lcom/sunia/HTREnginev2/q;)Lcom/sunia/calculatorv2/ink/util/Pair;
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

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/q;->getTraces()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/HTREnginev2/p1;

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/p1;->getBoundBox()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/p1;->getBoundBox()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->isContain(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1, v2}, Lcom/sunia/HTREnginev2/q1;->a(Lcom/sunia/HTREnginev2/p1;Lcom/sunia/HTREnginev2/p1;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {p0, p1, v2}, Lcom/sunia/HTREnginev2/z$d;->e(Lcom/sunia/HTREnginev2/p1;Lcom/sunia/HTREnginev2/p1;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sunia/calculatorv2/ink/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final m(Lcom/sunia/HTREnginev2/p1;Lcom/sunia/HTREnginev2/q;)Z
    .locals 11

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/p1;->b()Lcom/sunia/HTREnginev2/s1;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/p1;->a()Lcom/sunia/HTREnginev2/s1;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/s1;->a(Lcom/sunia/HTREnginev2/s1;Lcom/sunia/HTREnginev2/s1;)D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/p1;->getPoints()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v0, v1}, Lcom/sunia/HTREnginev2/q1;->a(Ljava/util/List;Lcom/sunia/HTREnginev2/s1;Lcom/sunia/HTREnginev2/s1;)D

    move-result-wide v4

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/s1;->a()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/s1;->a()J

    move-result-wide v8

    sub-long/2addr v6, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Measure: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-double v9, v4, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "StrikeGesture"

    invoke-static {v9, v8}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/high16 v8, 0x3fc0000000000000L    # 0.125

    mul-double/2addr v8, v2

    cmpg-double v4, v4, v8

    const/4 v5, 0x0

    if-gez v4, :cond_2

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v4

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v8

    sub-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result v1

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result v0

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    cmpl-float v0, v4, v0

    if-lez v0, :cond_2

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/q;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v0

    float-to-double v8, v0

    mul-double/2addr v2, v8

    const-wide v8, 0x4039666660000000L    # 25.399999618530273

    mul-double/2addr v2, v8

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/q;->f()F

    move-result v0

    long-to-float v4, v6

    mul-float/2addr v0, v4

    mul-float/2addr v0, v1

    float-to-double v0, v0

    cmpl-double v0, v2, v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/p1;->getBoundBox()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p1

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/q;->e()Lcom/sunia/calculatorv2/ink/model/e;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/z$d;->h(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/model/f;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/q;->getTraces()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/z$d;->i(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move v5, v1

    :cond_2
    return v5
.end method
