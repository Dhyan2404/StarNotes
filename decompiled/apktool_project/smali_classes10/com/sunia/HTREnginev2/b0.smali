.class public Lcom/sunia/HTREnginev2/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sunia/HTREnginev2/b0;->a:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/sunia/HTREnginev2/b0;->b:Ljava/util/Map;

    const-string v2, "."

    const-string v3, "\u02d9"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "\u203e"

    const-string v3, "-"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "\u223c"

    const-string v4, "~"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "\u2227"

    const-string v4, "\u02c6"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "\u2228"

    const-string v4, "\u02c7"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "v"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "/"

    const-string v4, "\u00b4"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "\\"

    const-string v4, "`"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "U"

    const-string v4, "\u02d8"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "\u2192"

    invoke-interface {v0, v2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "o"

    const-string v4, "\u02da"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "O"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "0"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "\u00b0"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "_"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static A(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/model/r;
    .locals 6

    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/r;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sunia/HTREnginev2/b0;->a:Ljava/util/Map;

    move-object v2, p0

    check-cast v2, Lcom/sunia/calculatorv2/ink/model/r;

    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/model/r;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sunia/calculatorv2/ink/model/r;

    new-instance v3, Lcom/sunia/HTREnginev2/b;

    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/model/r;->l()D

    move-result-wide v4

    invoke-direct {v3, v0, v4, v5}, Lcom/sunia/HTREnginev2/b;-><init>(Ljava/lang/String;D)V

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->d()Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lcom/sunia/calculatorv2/ink/model/r;-><init>(Ljava/util/List;Ljava/util/List;)V

    :cond_0
    return-object v1

    :cond_1
    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/m;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/b0;->A(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/model/r;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public static B(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/function/Function;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/util/Pair<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Ljava/util/function/Function<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            "Lcom/sunia/calculatorv2/ink/graphics/BoundBox;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/util/Pair<",
            "Lcom/sunia/calculatorv2/ink/util/Pair<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            "Ljava/lang/Boolean;",
            ">;[I>;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-interface {v1, v5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    invoke-virtual {v5}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v5

    aput v5, v3, v4

    const/4 v5, 0x1

    move v6, v5

    :goto_0
    if-ge v6, v2, :cond_0

    add-int/lit8 v7, v6, -0x1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-interface {v1, v7}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    invoke-virtual {v7}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v7

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-interface {v1, v8}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    invoke-virtual {v8}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v8

    add-float/2addr v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    aput v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v6, v2, -0x1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-interface {v1, v6}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v6

    aput v6, v3, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-virtual {v7}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-static {v8, v3, v0, v1}, Lcom/sunia/HTREnginev2/b0;->y(Lcom/sunia/calculatorv2/ink/model/f;[FLjava/util/List;Ljava/util/function/Function;)[I

    move-result-object v8

    invoke-virtual {v7}, Lcom/sunia/calculatorv2/ink/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v7}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/sunia/calculatorv2/ink/model/m;

    if-eqz v9, :cond_8

    aget v9, v8, v5

    aget v10, v8, v4

    sub-int v11, v9, v10

    if-lt v11, v5, :cond_8

    new-instance v12, Ljava/util/ArrayList;

    invoke-virtual {v7}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-virtual {v13}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v7}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-virtual {v13}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object v13

    invoke-static {v13, v12}, Lcom/sunia/HTREnginev2/b0;->x(Ljava/util/List;Ljava/util/List;)V

    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v14, -0x1

    move v15, v14

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Lcom/sunia/calculatorv2/ink/model/f;

    instance-of v4, v5, Lcom/sunia/calculatorv2/ink/model/i;

    if-eqz v4, :cond_1

    :goto_3
    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    invoke-static {v5, v3, v0, v1}, Lcom/sunia/HTREnginev2/b0;->y(Lcom/sunia/calculatorv2/ink/model/f;[FLjava/util/List;Ljava/util/function/Function;)[I

    move-result-object v4

    const/16 v16, 0x0

    aget v0, v4, v16

    if-lt v0, v14, :cond_2

    move/from16 p0, v0

    const/4 v14, 0x1

    aget v0, v4, v14

    if-lt v0, v15, :cond_2

    new-instance v14, Lcom/sunia/calculatorv2/ink/util/Pair;

    new-instance v15, Lcom/sunia/calculatorv2/ink/util/Pair;

    move/from16 v17, v0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v15, v5, v0}, Lcom/sunia/calculatorv2/ink/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v14, v15, v4}, Lcom/sunia/calculatorv2/ink/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v14, p0

    move-object/from16 v0, p1

    move/from16 v15, v17

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_4

    :cond_3
    const/4 v0, 0x1

    :goto_4
    if-eqz v0, :cond_7

    const/4 v0, 0x1

    if-ne v11, v0, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-virtual {v5}, Lcom/sunia/calculatorv2/ink/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    const/4 v11, 0x0

    aget v12, v7, v11

    const/4 v14, 0x1

    aget v7, v7, v14

    if-ne v12, v10, :cond_4

    if-ne v7, v9, :cond_4

    invoke-virtual {v5}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-virtual {v5}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_4
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    const/4 v11, 0x0

    const/4 v14, 0x1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    new-instance v4, Lcom/sunia/calculatorv2/ink/util/Pair;

    new-instance v5, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-static {v0}, Lcom/sunia/calculatorv2/ink/model/m;->b(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/m;

    move-result-object v0

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v5, v0, v7}, Lcom/sunia/calculatorv2/ink/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v4, v5, v8}, Lcom/sunia/calculatorv2/ink/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_6
    move v14, v0

    const/4 v11, 0x0

    invoke-interface {v2, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    :cond_7
    const/4 v11, 0x0

    const/4 v14, 0x1

    new-instance v0, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-direct {v0, v7, v8}, Lcom/sunia/calculatorv2/ink/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_8
    move v11, v4

    move v14, v5

    new-instance v0, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-direct {v0, v7, v8}, Lcom/sunia/calculatorv2/ink/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_6
    move-object/from16 v0, p1

    move v4, v11

    move v5, v14

    goto/16 :goto_1

    :cond_a
    return-object v2
.end method

.method public static C(Lcom/sunia/calculatorv2/ink/model/f;)Z
    .locals 2
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

    invoke-static {v0}, Lcom/sunia/HTREnginev2/b0;->C(Lcom/sunia/calculatorv2/ink/model/f;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static D(Lcom/sunia/calculatorv2/ink/model/f;)Z
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

    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/r;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/b0;->D(Lcom/sunia/calculatorv2/ink/model/f;)Z

    move-result p0

    return p0

    :cond_1
    return v2
.end method

.method public static E(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/f<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;)",
            "Lcom/sunia/calculatorv2/ink/util/Pair<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            "Lcom/sunia/calculatorv2/ink/model/r;",
            ">;"
        }
    .end annotation

    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/h;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/h;->n()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v0

    invoke-static {v0}, Lcom/sunia/HTREnginev2/b0;->C(Lcom/sunia/calculatorv2/ink/model/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/h;->l()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/h;->m()Lcom/sunia/calculatorv2/ink/model/r;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/sunia/calculatorv2/ink/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    return-object v1

    :cond_1
    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/l;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/l;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/l;->l()Lcom/sunia/calculatorv2/ink/model/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/model/r;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u203e"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/l;->m()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    new-instance v2, Lcom/sunia/calculatorv2/ink/model/r;

    new-instance v3, Lcom/sunia/HTREnginev2/b;

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/model/r;->l()D

    move-result-wide v4

    const-string v6, "-"

    invoke-direct {v3, v6, v4, v5}, Lcom/sunia/HTREnginev2/b;-><init>(Ljava/lang/String;D)V

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/model/g;->d()Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/sunia/calculatorv2/ink/model/r;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-direct {v1, p0, v2}, Lcom/sunia/calculatorv2/ink/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object v1

    :cond_3
    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/m;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/b0;->E(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/util/Pair;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v1
.end method

.method public static F(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/f<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;)",
            "Lcom/sunia/calculatorv2/ink/util/Pair<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            "Lcom/sunia/calculatorv2/ink/model/r;",
            ">;"
        }
    .end annotation

    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/h;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/h;->l()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v0

    invoke-static {v0}, Lcom/sunia/HTREnginev2/b0;->C(Lcom/sunia/calculatorv2/ink/model/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/h;->n()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/h;->m()Lcom/sunia/calculatorv2/ink/model/r;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/sunia/calculatorv2/ink/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    return-object v1

    :cond_1
    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/v;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/v;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/v;->l()Lcom/sunia/calculatorv2/ink/model/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/model/r;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/v;->m()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    new-instance v2, Lcom/sunia/calculatorv2/ink/model/r;

    new-instance v3, Lcom/sunia/HTREnginev2/b;

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/model/r;->l()D

    move-result-wide v4

    const-string v6, "-"

    invoke-direct {v3, v6, v4, v5}, Lcom/sunia/HTREnginev2/b;-><init>(Ljava/lang/String;D)V

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/model/g;->d()Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/sunia/calculatorv2/ink/model/r;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-direct {v1, p0, v2}, Lcom/sunia/calculatorv2/ink/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object v1

    :cond_3
    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/m;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/b0;->F(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/util/Pair;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v1
.end method

.method public static synthetic a(Lcom/sunia/calculatorv2/ink/util/Pair;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sunia/HTREnginev2/b0;->z(Lcom/sunia/calculatorv2/ink/util/Pair;)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/util/Pair<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Lcom/sunia/calculatorv2/ink/model/f<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Ljava/util/function/Function<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            "Lcom/sunia/calculatorv2/ink/graphics/BoundBox;",
            ">;)",
            "Lcom/sunia/calculatorv2/ink/model/f;"
        }
    .end annotation

    .line 31
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 32
    :cond_0
    instance-of v0, p1, Lcom/sunia/calculatorv2/ink/model/r;

    if-eqz v0, :cond_1

    .line 33
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/b0;->u(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0

    .line 34
    :cond_1
    instance-of v0, p1, Lcom/sunia/calculatorv2/ink/model/m;

    if-eqz v0, :cond_2

    .line 35
    check-cast p1, Lcom/sunia/calculatorv2/ink/model/m;

    invoke-static {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/b0;->m(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/m;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0

    .line 36
    :cond_2
    instance-of v0, p1, Lcom/sunia/calculatorv2/ink/model/o;

    if-eqz v0, :cond_3

    .line 37
    check-cast p1, Lcom/sunia/calculatorv2/ink/model/o;

    invoke-static {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/b0;->o(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/o;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0

    .line 38
    :cond_3
    instance-of v0, p1, Lcom/sunia/calculatorv2/ink/model/q;

    if-eqz v0, :cond_4

    .line 39
    check-cast p1, Lcom/sunia/calculatorv2/ink/model/q;

    invoke-static {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/b0;->q(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/q;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0

    .line 40
    :cond_4
    instance-of v0, p1, Lcom/sunia/calculatorv2/ink/model/p;

    if-eqz v0, :cond_5

    .line 41
    check-cast p1, Lcom/sunia/calculatorv2/ink/model/p;

    invoke-static {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/b0;->p(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/p;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0

    .line 42
    :cond_5
    instance-of v0, p1, Lcom/sunia/calculatorv2/ink/model/v;

    if-eqz v0, :cond_6

    .line 43
    check-cast p1, Lcom/sunia/calculatorv2/ink/model/v;

    invoke-static {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/b0;->t(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/v;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0

    .line 44
    :cond_6
    instance-of v0, p1, Lcom/sunia/calculatorv2/ink/model/l;

    if-eqz v0, :cond_7

    .line 45
    check-cast p1, Lcom/sunia/calculatorv2/ink/model/l;

    invoke-static {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/b0;->l(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/l;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0

    .line 46
    :cond_7
    instance-of v0, p1, Lcom/sunia/calculatorv2/ink/model/h;

    if-eqz v0, :cond_8

    .line 47
    check-cast p1, Lcom/sunia/calculatorv2/ink/model/h;

    invoke-static {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/b0;->h(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/h;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0

    .line 48
    :cond_8
    instance-of v0, p1, Lcom/sunia/calculatorv2/ink/model/n;

    if-eqz v0, :cond_9

    .line 49
    check-cast p1, Lcom/sunia/calculatorv2/ink/model/n;

    invoke-static {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/b0;->n(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/n;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0

    .line 50
    :cond_9
    instance-of v0, p1, Lcom/sunia/calculatorv2/ink/model/j;

    if-eqz v0, :cond_a

    .line 51
    check-cast p1, Lcom/sunia/calculatorv2/ink/model/j;

    invoke-static {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/b0;->j(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/j;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0

    .line 52
    :cond_a
    instance-of v0, p1, Lcom/sunia/calculatorv2/ink/model/t;

    if-eqz v0, :cond_b

    .line 53
    check-cast p1, Lcom/sunia/calculatorv2/ink/model/t;

    invoke-static {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/b0;->s(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/t;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0

    .line 54
    :cond_b
    instance-of v0, p1, Lcom/sunia/calculatorv2/ink/model/s;

    if-eqz v0, :cond_c

    .line 55
    check-cast p1, Lcom/sunia/calculatorv2/ink/model/s;

    invoke-static {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/b0;->r(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/s;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0

    .line 56
    :cond_c
    instance-of v0, p1, Lcom/sunia/calculatorv2/ink/model/k;

    if-eqz v0, :cond_d

    .line 57
    check-cast p1, Lcom/sunia/calculatorv2/ink/model/k;

    invoke-static {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/b0;->k(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/k;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0

    .line 58
    :cond_d
    instance-of v0, p1, Lcom/sunia/calculatorv2/ink/model/i;

    if-eqz v0, :cond_e

    .line 59
    check-cast p1, Lcom/sunia/calculatorv2/ink/model/i;

    invoke-static {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/b0;->i(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/i;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0

    .line 60
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Inserter"

    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/b0;->u(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/MathElement;Ljava/util/function/Function;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/MathElement;",
            ">;",
            "Lcom/sunia/calculatorv2/ink/model/MathElement;",
            "Ljava/util/function/Function<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            "Lcom/sunia/calculatorv2/ink/graphics/BoundBox;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/MathElement;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/MathElement;->getCandidates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3
    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/f;->g()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/MathElement;->getCandidates()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sunia/calculatorv2/ink/util/Alternative;

    .line 5
    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/util/Alternative;->getContent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/calculatorv2/ink/model/f;

    .line 6
    instance-of v3, v2, Lcom/sunia/calculatorv2/ink/model/m;

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object v3

    .line 8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    :goto_0
    if-lez v4, :cond_0

    add-int/lit8 v5, v4, -0x1

    .line 9
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/sunia/calculatorv2/ink/model/i;

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 11
    new-instance v2, Lcom/sunia/calculatorv2/ink/model/m;

    invoke-interface {v3, v1, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sunia/calculatorv2/ink/model/m;-><init>(Ljava/util/List;)V

    .line 12
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sunia/calculatorv2/ink/model/f;

    .line 14
    move-object v6, v5

    check-cast v6, Lcom/sunia/calculatorv2/ink/model/MathElement;

    .line 15
    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/model/MathElement;->getCandidates()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 16
    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/model/MathElement;->getCandidates()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sunia/calculatorv2/ink/util/Alternative;

    invoke-virtual {v7}, Lcom/sunia/calculatorv2/ink/util/Alternative;->getContent()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sunia/calculatorv2/ink/model/f;

    .line 17
    invoke-static {v7}, Lcom/sunia/HTREnginev2/b0;->c(Lcom/sunia/calculatorv2/ink/model/f;)Z

    move-result v8

    const-string v9, "Inserter"

    if-eqz v8, :cond_3

    const-string v6, "AlignmentAvailable"

    .line 18
    invoke-static {v9, v6}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance v6, Lcom/sunia/calculatorv2/ink/util/Pair;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v6, v7, v8}, Lcom/sunia/calculatorv2/ink/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const-string v8, "AlignmentUnavailable"

    .line 20
    invoke-static {v9, v8}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/model/f;->e()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/sunia/calculatorv2/ink/model/f;->a(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)V

    .line 22
    new-instance v6, Lcom/sunia/calculatorv2/ink/util/Pair;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v6, v7, v8}, Lcom/sunia/calculatorv2/ink/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    :goto_2
    invoke-virtual {v5}, Lcom/sunia/calculatorv2/ink/model/f;->e()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->union(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v0

    goto :goto_1

    .line 24
    :cond_4
    new-instance v1, Lcom/sunia/HTREnginev2/eyo;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/eyo;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {p0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 25
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-static {v3, v2, p0, p2}, Lcom/sunia/HTREnginev2/b0;->a(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p2

    .line 27
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    new-instance v2, Lcom/sunia/calculatorv2/ink/model/MathElement;

    new-instance v3, Lcom/sunia/calculatorv2/ink/util/Alternative;

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/util/Alternative;->getConfidence()D

    move-result-wide v4

    invoke-direct {v3, p2, v4, v5}, Lcom/sunia/calculatorv2/ink/util/Alternative;-><init>(Ljava/lang/Object;D)V

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, p2, v3, v0, v4}, Lcom/sunia/calculatorv2/ink/model/MathElement;-><init>(Ljava/util/List;Ljava/util/List;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/solver/SolverContext;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sunia/calculatorv2/ink/model/f;

    .line 30
    new-instance v0, Lcom/sunia/calculatorv2/ink/model/MathElement;

    new-instance v2, Lcom/sunia/calculatorv2/ink/util/Alternative;

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/util/Alternative;->getConfidence()D

    move-result-wide v5

    invoke-direct {v2, p2, v5, v6}, Lcom/sunia/calculatorv2/ink/util/Alternative;-><init>(Ljava/lang/Object;D)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sunia/calculatorv2/ink/model/f;->e()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p2

    invoke-direct {v0, v2, v3, p2, v4}, Lcom/sunia/calculatorv2/ink/model/MathElement;-><init>(Ljava/util/List;Ljava/util/List;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/solver/SolverContext;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    return-object v1

    :cond_6
    return-object p0
.end method

.method public static b(Lcom/sunia/calculatorv2/ink/model/MathElement;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/MathElement;",
            ")",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/MathElement;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/MathElement;->getCandidates()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/MathElement;->c()Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/calculatorv2/ink/util/Alternative;

    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/util/Alternative;->getContent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-static {v2}, Lcom/sunia/HTREnginev2/b0;->h(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v2

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/util/Alternative;

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/util/Alternative;->getConfidence()D

    move-result-wide v3

    .line 7
    instance-of v0, v2, Lcom/sunia/calculatorv2/ink/model/t;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_2

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    check-cast v2, Lcom/sunia/calculatorv2/ink/model/t;

    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/model/t;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sunia/calculatorv2/ink/model/u;

    .line 10
    invoke-virtual {v7}, Lcom/sunia/calculatorv2/ink/model/u;->f()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eq v8, v6, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {v7}, Lcom/sunia/calculatorv2/ink/model/u;->f()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sunia/calculatorv2/ink/model/f;

    .line 12
    new-instance v8, Lcom/sunia/calculatorv2/ink/model/MathElement;

    new-instance v9, Lcom/sunia/calculatorv2/ink/util/Alternative;

    invoke-direct {v9, v7, v3, v4}, Lcom/sunia/calculatorv2/ink/util/Alternative;-><init>(Ljava/lang/Object;D)V

    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v7}, Lcom/sunia/calculatorv2/ink/model/f;->g()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v7

    invoke-direct {v8, v9, v10, v7, v5}, Lcom/sunia/calculatorv2/ink/model/MathElement;-><init>(Ljava/util/List;Ljava/util/List;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/solver/SolverContext;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move v1, v6

    :goto_1
    if-eqz v1, :cond_3

    return-object v0

    .line 13
    :cond_2
    instance-of v0, v2, Lcom/sunia/calculatorv2/ink/model/p;

    if-eqz v0, :cond_3

    check-cast v2, Lcom/sunia/calculatorv2/ink/model/p;

    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/model/p;->l()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v0

    invoke-static {v0}, Lcom/sunia/HTREnginev2/b0;->C(Lcom/sunia/calculatorv2/ink/model/f;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/model/p;->n()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/model/p;->m()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v0

    .line 15
    new-instance v2, Lcom/sunia/calculatorv2/ink/model/MathElement;

    new-instance v7, Lcom/sunia/calculatorv2/ink/util/Alternative;

    invoke-direct {v7, p0, v3, v4}, Lcom/sunia/calculatorv2/ink/util/Alternative;-><init>(Ljava/lang/Object;D)V

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->g()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p0

    invoke-direct {v2, v7, v8, p0, v5}, Lcom/sunia/calculatorv2/ink/model/MathElement;-><init>(Ljava/util/List;Ljava/util/List;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/solver/SolverContext;)V

    .line 16
    new-instance p0, Lcom/sunia/calculatorv2/ink/model/MathElement;

    new-instance v7, Lcom/sunia/calculatorv2/ink/util/Alternative;

    invoke-direct {v7, v0, v3, v4}, Lcom/sunia/calculatorv2/ink/util/Alternative;-><init>(Ljava/lang/Object;D)V

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/model/f;->g()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v0

    invoke-direct {p0, v3, v4, v0, v5}, Lcom/sunia/calculatorv2/ink/model/MathElement;-><init>(Ljava/util/List;Ljava/util/List;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/solver/SolverContext;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sunia/calculatorv2/ink/model/MathElement;

    aput-object v2, v0, v1

    aput-object p0, v0, v6

    .line 17
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 18
    :cond_3
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/util/List;)Ljava/util/stream/Stream;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sunia/HTREnginev2/b0;->w(Ljava/util/List;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/sunia/calculatorv2/ink/util/Pair;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sunia/HTREnginev2/b0;->f(Lcom/sunia/calculatorv2/ink/util/Pair;)I

    move-result p0

    return p0
.end method

.method public static c(Lcom/sunia/calculatorv2/ink/model/f;)Z
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
    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/r;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unavailable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p0

    check-cast v2, Lcom/sunia/calculatorv2/ink/model/r;

    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/model/r;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Inserter"

    invoke-static {v2, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->d()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    .line 6
    :cond_1
    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/i;

    if-eqz v0, :cond_2

    return v1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/model/f;

    .line 8
    invoke-static {v0}, Lcom/sunia/HTREnginev2/b0;->c(Lcom/sunia/calculatorv2/ink/model/f;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 p0, 0x0

    return p0

    :cond_4
    return v1
.end method

.method public static synthetic d(Lcom/sunia/calculatorv2/ink/model/MathElement;)D
    .locals 2

    invoke-static {p0}, Lcom/sunia/HTREnginev2/b0;->e(Lcom/sunia/calculatorv2/ink/model/MathElement;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic e(Lcom/sunia/calculatorv2/ink/model/MathElement;)D
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->e()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result p0

    float-to-double v0, p0

    return-wide v0
.end method

.method public static synthetic f(Lcom/sunia/calculatorv2/ink/util/Pair;)I
    .locals 1

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public static g(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;ZZ)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/f<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Lcom/sunia/calculatorv2/ink/model/f<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Lcom/sunia/calculatorv2/ink/model/f<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;ZZ)",
            "Lcom/sunia/calculatorv2/ink/model/f;"
        }
    .end annotation

    if-nez p3, :cond_1

    invoke-static {p2}, Lcom/sunia/HTREnginev2/b0;->F(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/util/Pair;

    move-result-object v0

    invoke-static {p1}, Lcom/sunia/HTREnginev2/b0;->E(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/util/Pair;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_0

    new-instance p2, Lcom/sunia/calculatorv2/ink/model/m;

    new-array p3, v4, [Lcom/sunia/calculatorv2/ink/model/f;

    aput-object p0, p3, v3

    new-instance p0, Lcom/sunia/calculatorv2/ink/model/h;

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/model/r;

    invoke-direct {p0, p4, p1, v0}, Lcom/sunia/calculatorv2/ink/model/h;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/r;)V

    aput-object p0, p3, v2

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/sunia/calculatorv2/ink/model/m;-><init>(Ljava/util/List;)V

    return-object p2

    :cond_0
    if-eqz v1, :cond_1

    new-instance p1, Lcom/sunia/calculatorv2/ink/model/m;

    new-array p3, v4, [Lcom/sunia/calculatorv2/ink/model/f;

    aput-object p0, p3, v3

    new-instance p0, Lcom/sunia/calculatorv2/ink/model/h;

    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/model/r;

    invoke-direct {p0, p2, p4, v0}, Lcom/sunia/calculatorv2/ink/model/h;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/r;)V

    aput-object p0, p3, v2

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sunia/calculatorv2/ink/model/m;-><init>(Ljava/util/List;)V

    return-object p1

    :cond_1
    new-instance v6, Lcom/sunia/calculatorv2/ink/model/p;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sunia/calculatorv2/ink/model/p;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;ZZ)V

    return-object v6
.end method

.method public static h(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/f<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;)",
            "Lcom/sunia/calculatorv2/ink/model/f<",
            "*>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/m;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 p0, 0x0

    .line 4
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/b0;->h(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static h(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/h;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/util/Pair<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Lcom/sunia/calculatorv2/ink/model/h;",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Ljava/util/function/Function<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            "Lcom/sunia/calculatorv2/ink/graphics/BoundBox;",
            ">;)",
            "Lcom/sunia/calculatorv2/ink/model/f;"
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/h;->m()Lcom/sunia/calculatorv2/ink/model/r;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    .line 7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sunia/calculatorv2/ink/util/Pair;

    .line 8
    invoke-virtual {v4}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-virtual {v5}, Lcom/sunia/calculatorv2/ink/model/f;->e()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v5

    .line 9
    invoke-virtual {v5}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v6

    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    .line 10
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v5}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v5

    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 12
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/b0;->u(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0

    .line 14
    :cond_2
    new-instance p0, Lcom/sunia/calculatorv2/ink/model/h;

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/h;->n()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v2

    invoke-static {v0, v2, p2, p3}, Lcom/sunia/HTREnginev2/b0;->a(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/h;->l()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v2

    invoke-static {v1, v2, p2, p3}, Lcom/sunia/HTREnginev2/b0;->a(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/h;->m()Lcom/sunia/calculatorv2/ink/model/r;

    move-result-object p1

    invoke-direct {p0, v0, p2, p1}, Lcom/sunia/calculatorv2/ink/model/h;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/r;)V

    return-object p0
.end method

.method public static i(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/i;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/util/Pair<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Lcom/sunia/calculatorv2/ink/model/i;",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Ljava/util/function/Function<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            "Lcom/sunia/calculatorv2/ink/graphics/BoundBox;",
            ">;)",
            "Lcom/sunia/calculatorv2/ink/model/f;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/b0;->u(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/j;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/util/Pair<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Lcom/sunia/calculatorv2/ink/model/j;",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Ljava/util/function/Function<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            "Lcom/sunia/calculatorv2/ink/graphics/BoundBox;",
            ">;)",
            "Lcom/sunia/calculatorv2/ink/model/f;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/j;->n()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/j;->l()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->isNonempty()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-virtual {v5}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/model/f;->e()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v7

    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_0

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v6

    invoke-virtual {v3}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_1

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/b0;->u(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-virtual {v4}, Lcom/sunia/calculatorv2/ink/model/f;->e()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v4

    invoke-virtual {v3}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance p0, Lcom/sunia/calculatorv2/ink/model/j;

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/j;->n()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v2

    invoke-static {v0, v2, p2, p3}, Lcom/sunia/HTREnginev2/b0;->a(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/j;->l()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v2

    invoke-static {v1, v2, p2, p3}, Lcom/sunia/HTREnginev2/b0;->a(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/j;->m()Lcom/sunia/calculatorv2/ink/model/r;

    move-result-object p1

    invoke-direct {p0, v0, p2, p1}, Lcom/sunia/calculatorv2/ink/model/j;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/r;)V

    return-object p0
.end method

.method public static k(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/k;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/util/Pair<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Lcom/sunia/calculatorv2/ink/model/k;",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Ljava/util/function/Function<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            "Lcom/sunia/calculatorv2/ink/graphics/BoundBox;",
            ">;)",
            "Lcom/sunia/calculatorv2/ink/model/f;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/k;->l()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/b0;->a(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public static l(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/l;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/util/Pair<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Lcom/sunia/calculatorv2/ink/model/l;",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Ljava/util/function/Function<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            "Lcom/sunia/calculatorv2/ink/graphics/BoundBox;",
            ">;)",
            "Lcom/sunia/calculatorv2/ink/model/f;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/l;->m()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->isNonempty()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-virtual {v4}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-virtual {v5}, Lcom/sunia/calculatorv2/ink/model/f;->e()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v5

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    invoke-virtual {v4}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-static {v4}, Lcom/sunia/HTREnginev2/b0;->v(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/model/r;

    move-result-object v4

    if-nez v3, :cond_0

    if-eqz v4, :cond_0

    move-object v3, v4

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/b0;->u(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/sunia/calculatorv2/ink/model/l;

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/l;->m()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v0

    invoke-static {v1, v0, p2, p3}, Lcom/sunia/HTREnginev2/b0;->a(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p2

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/l;->l()Lcom/sunia/calculatorv2/ink/model/r;

    move-result-object v3

    :goto_1
    invoke-direct {p0, p2, v3}, Lcom/sunia/calculatorv2/ink/model/l;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/r;)V

    return-object p0

    :cond_4
    new-instance v0, Lcom/sunia/calculatorv2/ink/model/l;

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/l;->m()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v1

    invoke-static {p0, v1, p2, p3}, Lcom/sunia/HTREnginev2/b0;->a(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/l;->l()Lcom/sunia/calculatorv2/ink/model/r;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/sunia/calculatorv2/ink/model/l;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/r;)V

    return-object v0
.end method

.method public static m(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/m;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/util/Pair<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Lcom/sunia/calculatorv2/ink/model/m;",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Ljava/util/function/Function<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            "Lcom/sunia/calculatorv2/ink/graphics/BoundBox;",
            ">;)",
            "Lcom/sunia/calculatorv2/ink/model/f;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lcom/sunia/calculatorv2/ink/model/m;->f()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/sunia/calculatorv2/ink/model/m;->f()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/sunia/HTREnginev2/b0;->x(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3, v1, v2}, Lcom/sunia/HTREnginev2/b0;->u(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {v0, v3, v1, v2}, Lcom/sunia/HTREnginev2/b0;->B(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/sunia/HTREnginev2/byo;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/byo;-><init>()V

    invoke-static {v6}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v6

    new-instance v7, Lcom/sunia/HTREnginev2/cyo;

    invoke-direct {v7}, Lcom/sunia/HTREnginev2/cyo;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/Comparator;->thenComparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v6

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    move v8, v7

    move v9, v8

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_c

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-virtual {v10}, Lcom/sunia/calculatorv2/ink/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    aget v11, v11, v7

    invoke-interface {v3, v9, v11}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v10}, Lcom/sunia/calculatorv2/ink/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    const/4 v12, 0x1

    aget v9, v9, v12

    invoke-interface {v6}, Ljava/util/List;->clear()V

    add-int/lit8 v13, v8, 0x1

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_2

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-virtual {v14}, Lcom/sunia/calculatorv2/ink/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [I

    aget v15, v15, v7

    if-ge v15, v9, :cond_2

    invoke-virtual {v14}, Lcom/sunia/calculatorv2/ink/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [I

    aget v15, v15, v12

    if-le v15, v9, :cond_1

    invoke-virtual {v14}, Lcom/sunia/calculatorv2/ink/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    aget v9, v9, v12

    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    new-instance v14, Ljava/util/ArrayList;

    sub-int v15, v9, v11

    mul-int/lit8 v16, v15, 0x2

    add-int/lit8 v7, v16, 0x1

    invoke-direct {v14, v7}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v15}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v15, v11

    :goto_2
    move/from16 v16, v8

    if-ge v15, v9, :cond_3

    new-array v8, v12, [Lcom/sunia/calculatorv2/ink/model/f;

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sunia/calculatorv2/ink/model/f;

    const/16 v18, 0x0

    aput-object v17, v8, v18

    invoke-static {v8}, Lcom/sunia/HTREnginev2/g0;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move/from16 v8, v16

    goto :goto_2

    :cond_3
    :goto_3
    if-ge v8, v13, :cond_8

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-virtual {v15}, Lcom/sunia/calculatorv2/ink/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [I

    const/16 v17, 0x0

    aget v12, v16, v17

    invoke-virtual {v15}, Lcom/sunia/calculatorv2/ink/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [I

    move-object/from16 v18, v0

    const/16 v17, 0x1

    aget v0, v16, v17

    invoke-virtual {v15}, Lcom/sunia/calculatorv2/ink/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [I

    move/from16 v17, v9

    const/4 v9, 0x2

    move-object/from16 v19, v3

    aget v3, v16, v9

    sub-int v9, v12, v11

    move/from16 v20, v11

    mul-int/lit8 v11, v9, 0x2

    invoke-virtual {v10}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-virtual/range {v21 .. v21}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v21

    move/from16 v22, v4

    move-object/from16 v4, v21

    check-cast v4, Lcom/sunia/calculatorv2/ink/model/f;

    move-object/from16 v21, v5

    const/4 v5, 0x1

    if-ne v3, v5, :cond_4

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v3, Lcom/sunia/calculatorv2/ink/model/o;

    invoke-static {}, Lcom/sunia/calculatorv2/ink/model/m;->l()Lcom/sunia/calculatorv2/ink/model/m;

    move-result-object v5

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/sunia/calculatorv2/ink/model/m;->b(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/m;

    move-result-object v4

    const/4 v9, 0x0

    invoke-direct {v3, v5, v4, v9, v9}, Lcom/sunia/calculatorv2/ink/model/o;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;ZZ)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v16, v13

    goto :goto_4

    :cond_4
    move/from16 v16, v13

    const/4 v5, 0x2

    const/4 v13, 0x0

    if-ne v3, v5, :cond_5

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v3, Lcom/sunia/calculatorv2/ink/model/q;

    invoke-static {}, Lcom/sunia/calculatorv2/ink/model/m;->l()Lcom/sunia/calculatorv2/ink/model/m;

    move-result-object v5

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/sunia/calculatorv2/ink/model/m;->b(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/m;

    move-result-object v4

    invoke-direct {v3, v5, v4, v13, v13}, Lcom/sunia/calculatorv2/ink/model/q;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;ZZ)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    if-ne v0, v12, :cond_6

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    add-int/lit8 v12, v12, 0x1

    if-ne v0, v12, :cond_7

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v10}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-virtual {v15}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v8, v8, 0x1

    move/from16 v13, v16

    move/from16 v9, v17

    move-object/from16 v0, v18

    move-object/from16 v3, v19

    move/from16 v11, v20

    move-object/from16 v5, v21

    move/from16 v4, v22

    const/4 v12, 0x1

    goto/16 :goto_3

    :cond_8
    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move/from16 v22, v4

    move-object/from16 v21, v5

    move/from16 v17, v9

    move/from16 v16, v13

    const/4 v0, 0x0

    :goto_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_a

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    mul-int/lit8 v4, v0, 0x2

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-static {v3, v4, v1, v2}, Lcom/sunia/HTREnginev2/b0;->a(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v3

    invoke-interface {v5, v8, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_9
    const/4 v8, 0x0

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_a
    const/4 v8, 0x0

    add-int/lit8 v13, v16, -0x1

    invoke-interface {v14}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/sunia/HTREnginev2/dyo;

    invoke-direct {v3}, Lcom/sunia/HTREnginev2/dyo;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-static {v6, v0, v1, v2}, Lcom/sunia/HTREnginev2/b0;->u(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v0

    move-object/from16 v3, v21

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_b
    move-object/from16 v3, v21

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_7
    const/4 v0, 0x1

    add-int/2addr v0, v13

    move-object v5, v3

    move v7, v8

    move/from16 v9, v17

    move-object/from16 v3, v19

    move/from16 v4, v22

    move v8, v0

    move-object/from16 v0, v18

    goto/16 :goto_0

    :cond_c
    move-object v0, v3

    move-object v3, v5

    invoke-interface {v0, v9, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v3}, Lcom/sunia/calculatorv2/ink/model/m;->b(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/m;

    move-result-object v0

    return-object v0
.end method

.method public static n(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/n;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/util/Pair<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Lcom/sunia/calculatorv2/ink/model/n;",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Ljava/util/function/Function<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            "Lcom/sunia/calculatorv2/ink/graphics/BoundBox;",
            ">;)",
            "Lcom/sunia/calculatorv2/ink/model/f;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/n;->m()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->isNonempty()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-virtual {v3}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-virtual {v4}, Lcom/sunia/calculatorv2/ink/model/f;->e()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v4

    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Lcom/sunia/calculatorv2/ink/model/n;

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/n;->m()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lcom/sunia/HTREnginev2/b0;->a(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/n;->l()Lcom/sunia/calculatorv2/ink/model/r;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/sunia/calculatorv2/ink/model/n;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/r;)V

    return-object p0

    :cond_3
    new-instance p0, Lcom/sunia/calculatorv2/ink/model/j;

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/n;->m()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v2

    invoke-static {v0, v2, p2, p3}, Lcom/sunia/HTREnginev2/b0;->a(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2, p2, p3}, Lcom/sunia/HTREnginev2/b0;->u(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/n;->l()Lcom/sunia/calculatorv2/ink/model/r;

    move-result-object p1

    invoke-direct {p0, v0, p2, p1}, Lcom/sunia/calculatorv2/ink/model/j;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/r;)V

    return-object p0
.end method

.method public static o(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/o;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/util/Pair<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Lcom/sunia/calculatorv2/ink/model/o;",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Ljava/util/function/Function<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            "Lcom/sunia/calculatorv2/ink/graphics/BoundBox;",
            ">;)",
            "Lcom/sunia/calculatorv2/ink/model/f;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/o;->l()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/o;->m()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->isNonempty()Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/o;->n()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-virtual {v7}, Lcom/sunia/calculatorv2/ink/model/f;->e()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v8

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_0

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v7}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v8

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_1

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v7

    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_2

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/b0;->u(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-virtual {v7}, Lcom/sunia/calculatorv2/ink/model/f;->e()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v8

    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_4

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v7}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v8

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_6

    invoke-virtual {v7}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v7

    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_5

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/b0;->u(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_8

    new-instance p0, Lcom/sunia/calculatorv2/ink/model/o;

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/o;->l()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v0

    invoke-static {v2, v0, p2, p3}, Lcom/sunia/HTREnginev2/b0;->a(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/o;->m()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v1

    invoke-static {v3, v1, p2, p3}, Lcom/sunia/HTREnginev2/b0;->a(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/o;->n()Z

    move-result p3

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/o;->o()Z

    move-result p1

    invoke-direct {p0, v0, p2, p3, p1}, Lcom/sunia/calculatorv2/ink/model/o;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;ZZ)V

    return-object p0

    :cond_8
    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/o;->l()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    invoke-static {v2, p0, p2, p3}, Lcom/sunia/HTREnginev2/b0;->a(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/o;->m()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v0

    invoke-static {v3, v0, p2, p3}, Lcom/sunia/HTREnginev2/b0;->a(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v4, v1, p2, p3}, Lcom/sunia/HTREnginev2/b0;->u(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/o;->n()Z

    move-result p3

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/o;->o()Z

    move-result p1

    invoke-static {p0, v0, p2, p3, p1}, Lcom/sunia/HTREnginev2/b0;->g(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;ZZ)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0

    :cond_9
    new-instance v0, Lcom/sunia/calculatorv2/ink/model/o;

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/o;->l()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/o;->m()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v2

    invoke-static {p0, v2, p2, p3}, Lcom/sunia/HTREnginev2/b0;->a(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/o;->n()Z

    move-result p2

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/o;->o()Z

    move-result p1

    invoke-direct {v0, v1, p0, p2, p1}, Lcom/sunia/calculatorv2/ink/model/o;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;ZZ)V

    return-object v0
.end method

.method public static p(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/p;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/util/Pair<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Lcom/sunia/calculatorv2/ink/model/p;",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Ljava/util/function/Function<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            "Lcom/sunia/calculatorv2/ink/graphics/BoundBox;",
            ">;)",
            "Lcom/sunia/calculatorv2/ink/model/f;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/p;->l()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/p;->m()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/p;->n()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->isNonempty()Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/p;->o()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-virtual {v8}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-virtual {v9}, Lcom/sunia/calculatorv2/ink/model/f;->e()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v10

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v11

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_0

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v9}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v10

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v11

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_1

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v9}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v10

    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v11

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_2

    invoke-virtual {v9}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v9

    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v10

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_2

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/b0;->u(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-virtual {v8}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-virtual {v9}, Lcom/sunia/calculatorv2/ink/model/f;->e()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v10

    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v11

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_4

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v9}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v10

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v11

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_7

    invoke-virtual {v9}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v10

    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v11

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_5

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v9}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v9

    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v10

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_6

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/b0;->u(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/p;->l()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    invoke-static {v3, p0, p2, p3}, Lcom/sunia/HTREnginev2/b0;->a(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/p;->m()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v0

    invoke-static {v4, v0, p2, p3}, Lcom/sunia/HTREnginev2/b0;->a(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/p;->n()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v1

    invoke-static {v5, v1, p2, p3}, Lcom/sunia/HTREnginev2/b0;->a(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/p;->o()Z

    move-result p3

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/p;->p()Z

    move-result p1

    invoke-static {p0, v0, p2, p3, p1}, Lcom/sunia/HTREnginev2/b0;->g(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;ZZ)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x2

    new-array v0, p0, [Lcom/sunia/calculatorv2/ink/model/f;

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/p;->l()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p1

    invoke-static {v3, p1, p2, p3}, Lcom/sunia/HTREnginev2/b0;->a(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/util/List;

    aput-object v6, p1, v1

    const/4 v1, 0x1

    aput-object v4, p1, v1

    aput-object v5, p1, p0

    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/ayo;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/ayo;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/b0;->u(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/sunia/calculatorv2/ink/model/m;->b(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/m;

    move-result-object p0

    return-object p0

    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-virtual {v5}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/model/f;->e()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v7

    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_b

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_b
    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v6

    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_c

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_c
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/b0;->u(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0

    :cond_d
    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/p;->l()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/p;->m()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lcom/sunia/HTREnginev2/b0;->a(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/p;->n()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v1

    invoke-static {v3, v1, p2, p3}, Lcom/sunia/HTREnginev2/b0;->a(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/p;->o()Z

    move-result p3

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/p;->p()Z

    move-result p1

    invoke-static {p0, v0, p2, p3, p1}, Lcom/sunia/HTREnginev2/b0;->g(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;ZZ)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0
.end method

.method public static q(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/q;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/util/Pair<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Lcom/sunia/calculatorv2/ink/model/q;",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Ljava/util/function/Function<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            "Lcom/sunia/calculatorv2/ink/graphics/BoundBox;",
            ">;)",
            "Lcom/sunia/calculatorv2/ink/model/f;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/q;->l()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/q;->m()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->isNonempty()Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/q;->n()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-virtual {v7}, Lcom/sunia/calculatorv2/ink/model/f;->e()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v8

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_0

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v7}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v8

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_1

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v7

    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_2

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/b0;->u(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-virtual {v7}, Lcom/sunia/calculatorv2/ink/model/f;->e()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v8

    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_4

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v7}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v8

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_6

    invoke-virtual {v7}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v7

    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_5

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/b0;->u(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_8

    new-instance p0, Lcom/sunia/calculatorv2/ink/model/q;

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/q;->l()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v0

    invoke-static {v2, v0, p2, p3}, Lcom/sunia/HTREnginev2/b0;->a(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/q;->m()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v1

    invoke-static {v4, v1, p2, p3}, Lcom/sunia/HTREnginev2/b0;->a(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/q;->n()Z

    move-result p3

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/q;->o()Z

    move-result p1

    invoke-direct {p0, v0, p2, p3, p1}, Lcom/sunia/calculatorv2/ink/model/q;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;ZZ)V

    return-object p0

    :cond_8
    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/q;->l()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    invoke-static {v2, p0, p2, p3}, Lcom/sunia/HTREnginev2/b0;->a(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v3, v0, p2, p3}, Lcom/sunia/HTREnginev2/b0;->u(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/q;->m()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v1

    invoke-static {v4, v1, p2, p3}, Lcom/sunia/HTREnginev2/b0;->a(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/q;->n()Z

    move-result p3

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/q;->o()Z

    move-result p1

    invoke-static {p0, v0, p2, p3, p1}, Lcom/sunia/HTREnginev2/b0;->g(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;ZZ)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0

    :cond_9
    new-instance v0, Lcom/sunia/calculatorv2/ink/model/q;

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/q;->l()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/q;->m()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v2

    invoke-static {p0, v2, p2, p3}, Lcom/sunia/HTREnginev2/b0;->a(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/q;->n()Z

    move-result p2

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/q;->o()Z

    move-result p1

    invoke-direct {v0, v1, p0, p2, p1}, Lcom/sunia/calculatorv2/ink/model/q;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;ZZ)V

    return-object v0
.end method

.method public static r(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/s;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/util/Pair<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Lcom/sunia/calculatorv2/ink/model/s;",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Ljava/util/function/Function<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            "Lcom/sunia/calculatorv2/ink/graphics/BoundBox;",
            ">;)",
            "Lcom/sunia/calculatorv2/ink/model/f;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/calculatorv2/ink/model/s;

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/s;->l()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/b0;->a(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sunia/calculatorv2/ink/model/s;-><init>(Lcom/sunia/calculatorv2/ink/model/f;)V

    return-object v0
.end method

.method public static s(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/t;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/util/Pair<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Lcom/sunia/calculatorv2/ink/model/t;",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Ljava/util/function/Function<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            "Lcom/sunia/calculatorv2/ink/graphics/BoundBox;",
            ">;)",
            "Lcom/sunia/calculatorv2/ink/model/f;"
        }
    .end annotation

    move-object/from16 v0, p3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p1 .. p1}, Lcom/sunia/calculatorv2/ink/model/t;->f()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    mul-int/2addr v5, v6

    const/4 v7, 0x1

    add-int/2addr v5, v7

    move v10, v7

    const/4 v9, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_7

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sunia/calculatorv2/ink/model/u;

    invoke-virtual {v11}, Lcom/sunia/calculatorv2/ink/model/u;->f()Ljava/util/List;

    move-result-object v11

    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    mul-int/2addr v13, v6

    add-int/2addr v13, v7

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v13, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-static {}, Lcom/sunia/calculatorv2/ink/model/m;->l()Lcom/sunia/calculatorv2/ink/model/m;

    move-result-object v14

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v13, v14, v15}, Lcom/sunia/calculatorv2/ink/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v13, v6, [F

    fill-array-data v13, :array_0

    const/4 v14, 0x0

    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_5

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sunia/calculatorv2/ink/model/f;

    new-instance v6, Lcom/sunia/calculatorv2/ink/util/Pair;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v6, v15, v7}, Lcom/sunia/calculatorv2/ink/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-static {}, Lcom/sunia/calculatorv2/ink/model/m;->l()Lcom/sunia/calculatorv2/ink/model/m;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v6, v7, v8}, Lcom/sunia/calculatorv2/ink/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v15}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v14, v7, :cond_2

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v8

    const/4 v15, 0x0

    aget v17, v7, v15

    cmpg-float v8, v8, v17

    if-gez v8, :cond_0

    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v8

    aput v8, v7, v15

    :cond_0
    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v8

    const/4 v15, 0x1

    aget v16, v7, v15

    cmpl-float v8, v8, v16

    if-lez v8, :cond_1

    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v8

    aput v8, v7, v15

    :cond_1
    const/4 v7, 0x2

    const/16 v17, 0x0

    goto :goto_2

    :cond_2
    const/4 v7, 0x2

    const/4 v15, 0x1

    new-array v8, v7, [F

    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v16

    const/16 v17, 0x0

    aput v16, v8, v17

    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v16

    aput v16, v8, v15

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v8

    aget v15, v13, v17

    cmpg-float v8, v8, v15

    if-gez v8, :cond_3

    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v8

    aput v8, v13, v17

    :cond_3
    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v8

    const/4 v15, 0x1

    aget v16, v13, v15

    cmpl-float v8, v8, v16

    if-lez v8, :cond_4

    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v6

    aput v6, v13, v15

    :cond_4
    add-int/lit8 v14, v14, 0x1

    move v6, v7

    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_5
    move v7, v6

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v10, :cond_6

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v10

    :cond_6
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    move v6, v7

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v5, :cond_9

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    :goto_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v10, :cond_8

    new-instance v7, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-static {}, Lcom/sunia/calculatorv2/ink/model/m;->l()Lcom/sunia/calculatorv2/ink/model/m;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v7, v8, v9}, Lcom/sunia/calculatorv2/ink/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    new-array v4, v10, [F

    new-array v6, v5, [F

    new-array v7, v10, [Z

    new-array v8, v5, [Z

    const/high16 v9, -0x800000    # Float.NEGATIVE_INFINITY

    const/16 v17, 0x0

    aput v9, v4, v17

    aput v9, v6, v17

    move/from16 v15, v17

    const/4 v9, 0x1

    :goto_5
    if-ge v9, v5, :cond_a

    const/16 v16, 0x1

    aput-boolean v16, v8, v9

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [F

    aget v12, v11, v17

    aput v12, v6, v9

    add-int/lit8 v12, v9, 0x1

    aget v11, v11, v16

    aput v11, v6, v12

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v9, v9, 0x2

    const/16 v17, 0x0

    goto :goto_5

    :cond_a
    const/16 v16, 0x1

    move/from16 v15, v16

    const/4 v2, 0x0

    :goto_6
    if-ge v15, v10, :cond_b

    aput-boolean v16, v7, v15

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [F

    const/4 v11, 0x0

    aget v12, v9, v11

    aput v12, v4, v15

    add-int/lit8 v12, v15, 0x1

    aget v9, v9, v16

    aput v9, v4, v12

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v15, v15, 0x2

    const/16 v16, 0x1

    goto :goto_6

    :cond_b
    const/4 v11, 0x0

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-virtual {v9}, Lcom/sunia/calculatorv2/ink/model/f;->e()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getCenterX()F

    move-result v12

    invoke-virtual {v9}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getCenterY()F

    move-result v9

    move v15, v11

    :goto_8
    aget v13, v6, v15

    cmpl-float v13, v9, v13

    if-lez v13, :cond_c

    if-ge v15, v5, :cond_c

    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    :cond_c
    add-int/lit8 v15, v15, -0x1

    move v9, v11

    :goto_9
    aget v13, v4, v9

    cmpl-float v13, v12, v13

    if-lez v13, :cond_d

    if-ge v9, v10, :cond_d

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_d
    add-int/lit8 v9, v9, -0x1

    const/4 v12, 0x1

    aput-boolean v12, v8, v15

    aput-boolean v12, v7, v9

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-virtual {v9}, Lcom/sunia/calculatorv2/ink/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v15, v11

    :goto_a
    if-ge v15, v5, :cond_12

    aget-boolean v2, v8, v15

    if-eqz v2, :cond_11

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v6, v11

    :goto_b
    if-ge v6, v10, :cond_10

    aget-boolean v9, v7, v6

    if-eqz v9, :cond_f

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-virtual {v9}, Lcom/sunia/calculatorv2/ink/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-virtual {v9}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sunia/calculatorv2/ink/model/f;

    move-object/from16 v13, p2

    invoke-static {v12, v9, v13, v0}, Lcom/sunia/HTREnginev2/b0;->a(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_f
    move-object/from16 v13, p2

    :goto_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_10
    move-object/from16 v13, p2

    new-instance v2, Lcom/sunia/calculatorv2/ink/model/u;

    invoke-direct {v2, v4}, Lcom/sunia/calculatorv2/ink/model/u;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_11
    move-object/from16 v13, p2

    :goto_d
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    :cond_12
    new-instance v0, Lcom/sunia/calculatorv2/ink/model/t;

    invoke-direct {v0, v1}, Lcom/sunia/calculatorv2/ink/model/t;-><init>(Ljava/util/List;)V

    return-object v0

    :array_0
    .array-data 4
        0x7f800000    # Float.POSITIVE_INFINITY
        -0x800000    # Float.NEGATIVE_INFINITY
    .end array-data
.end method

.method public static t(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/v;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/util/Pair<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Lcom/sunia/calculatorv2/ink/model/v;",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Ljava/util/function/Function<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            "Lcom/sunia/calculatorv2/ink/graphics/BoundBox;",
            ">;)",
            "Lcom/sunia/calculatorv2/ink/model/f;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/v;->m()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->isNonempty()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-virtual {v4}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-virtual {v5}, Lcom/sunia/calculatorv2/ink/model/f;->e()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v5

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    invoke-virtual {v4}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-static {v4}, Lcom/sunia/HTREnginev2/b0;->A(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/model/r;

    move-result-object v4

    if-nez v3, :cond_0

    if-eqz v4, :cond_0

    move-object v3, v4

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/b0;->u(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/sunia/calculatorv2/ink/model/v;

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/v;->m()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v0

    invoke-static {v1, v0, p2, p3}, Lcom/sunia/HTREnginev2/b0;->a(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p2

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/v;->l()Lcom/sunia/calculatorv2/ink/model/r;

    move-result-object v3

    :goto_1
    invoke-direct {p0, p2, v3}, Lcom/sunia/calculatorv2/ink/model/v;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/r;)V

    return-object p0

    :cond_4
    new-instance v0, Lcom/sunia/calculatorv2/ink/model/v;

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/v;->m()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v1

    invoke-static {p0, v1, p2, p3}, Lcom/sunia/HTREnginev2/b0;->a(Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/v;->l()Lcom/sunia/calculatorv2/ink/model/r;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/sunia/calculatorv2/ink/model/v;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/r;)V

    return-object v0
.end method

.method public static u(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/function/Function;)Lcom/sunia/calculatorv2/ink/model/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/util/Pair<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Ljava/util/List<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Ljava/util/function/Function<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            "Lcom/sunia/calculatorv2/ink/graphics/BoundBox;",
            ">;)",
            "Lcom/sunia/calculatorv2/ink/model/f;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_3

    const/4 p2, 0x0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-virtual {p2}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/b0;->h(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p2

    instance-of p3, p2, Lcom/sunia/calculatorv2/ink/model/n;

    if-eqz p3, :cond_0

    move-object p3, p2

    check-cast p3, Lcom/sunia/calculatorv2/ink/model/n;

    invoke-virtual {p3}, Lcom/sunia/calculatorv2/ink/model/n;->m()Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v0

    invoke-static {v0}, Lcom/sunia/HTREnginev2/b0;->C(Lcom/sunia/calculatorv2/ink/model/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/sunia/calculatorv2/ink/model/m;

    new-instance p2, Lcom/sunia/calculatorv2/ink/model/n;

    invoke-static {p1}, Lcom/sunia/calculatorv2/ink/model/m;->b(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/m;

    move-result-object p1

    invoke-virtual {p3}, Lcom/sunia/calculatorv2/ink/model/n;->l()Lcom/sunia/calculatorv2/ink/model/r;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/sunia/calculatorv2/ink/model/n;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/r;)V

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sunia/calculatorv2/ink/model/m;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_0
    invoke-static {p2}, Lcom/sunia/HTREnginev2/b0;->E(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/util/Pair;

    move-result-object p3

    if-eqz p3, :cond_1

    new-instance p0, Lcom/sunia/calculatorv2/ink/model/h;

    invoke-static {p1}, Lcom/sunia/calculatorv2/ink/model/m;->b(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/m;

    move-result-object p1

    invoke-virtual {p3}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-virtual {p3}, Lcom/sunia/calculatorv2/ink/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sunia/calculatorv2/ink/model/r;

    invoke-direct {p0, p1, p2, p3}, Lcom/sunia/calculatorv2/ink/model/h;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/r;)V

    return-object p0

    :cond_1
    invoke-static {p2}, Lcom/sunia/HTREnginev2/b0;->F(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/util/Pair;

    move-result-object p2

    if-eqz p2, :cond_2

    new-instance p0, Lcom/sunia/calculatorv2/ink/model/h;

    invoke-virtual {p2}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-static {p1}, Lcom/sunia/calculatorv2/ink/model/m;->b(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/m;

    move-result-object p1

    invoke-virtual {p2}, Lcom/sunia/calculatorv2/ink/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sunia/calculatorv2/ink/model/r;

    invoke-direct {p0, p3, p1, p2}, Lcom/sunia/calculatorv2/ink/model/h;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/r;)V

    return-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/fyo;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/fyo;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/sunia/calculatorv2/ink/model/m;->b(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/m;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/fyo;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/fyo;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/sunia/calculatorv2/ink/model/m;->b(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/model/m;

    move-result-object p0

    return-object p0
.end method

.method public static v(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/model/r;
    .locals 6

    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/r;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sunia/HTREnginev2/b0;->b:Ljava/util/Map;

    move-object v2, p0

    check-cast v2, Lcom/sunia/calculatorv2/ink/model/r;

    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/model/r;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sunia/calculatorv2/ink/model/r;

    new-instance v3, Lcom/sunia/HTREnginev2/b;

    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/model/r;->l()D

    move-result-wide v4

    invoke-direct {v3, v0, v4, v5}, Lcom/sunia/HTREnginev2/b;-><init>(Ljava/lang/String;D)V

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->d()Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lcom/sunia/calculatorv2/ink/model/r;-><init>(Ljava/util/List;Ljava/util/List;)V

    :cond_0
    return-object v1

    :cond_1
    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/m;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/b0;->v(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/model/r;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public static synthetic w(Ljava/util/List;)Ljava/util/stream/Stream;
    .locals 0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static x(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/model/f;

    instance-of v1, v0, Lcom/sunia/calculatorv2/ink/model/m;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/sunia/calculatorv2/ink/model/k;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sunia/HTREnginev2/b0;->x(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static y(Lcom/sunia/calculatorv2/ink/model/f;[FLjava/util/List;Ljava/util/function/Function;)[I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            "[F",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Ljava/util/function/Function<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            "Lcom/sunia/calculatorv2/ink/graphics/BoundBox;",
            ">;)[I"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->e()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v4

    invoke-virtual {v3}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    move v9, v6

    move v10, v9

    move v8, v7

    :goto_0
    if-ge v8, v2, :cond_2

    aget v11, p1, v8

    add-int/lit8 v12, v8, 0x1

    aget v13, p1, v12

    cmpg-float v11, v11, v5

    if-gtz v11, :cond_1

    cmpg-float v11, v4, v13

    if-gtz v11, :cond_1

    if-ne v9, v6, :cond_0

    move v9, v8

    :cond_0
    move v10, v8

    :cond_1
    move v8, v12

    goto :goto_0

    :cond_2
    if-ne v9, v6, :cond_4

    invoke-virtual {v3}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getCenterX()F

    move-result v4

    aget v5, p1, v7

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_3

    move v2, v7

    :cond_3
    :goto_1
    move v10, v2

    goto :goto_4

    :cond_4
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-interface {v1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    invoke-interface {v1, v6}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/b0;->D(Lcom/sunia/calculatorv2/ink/model/f;)Z

    move-result v12

    if-eqz v12, :cond_5

    add-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    move v5, v4

    :cond_5
    invoke-static {v2}, Lcom/sunia/HTREnginev2/b0;->D(Lcom/sunia/calculatorv2/ink/model/f;)Z

    move-result v2

    const/high16 v12, 0x3f400000    # 0.75f

    const/high16 v13, 0x3e800000    # 0.25f

    if-eqz v2, :cond_6

    invoke-virtual {v8}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v2

    mul-float/2addr v2, v13

    invoke-virtual {v8}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v8

    mul-float/2addr v8, v12

    add-float/2addr v2, v8

    goto :goto_2

    :cond_6
    invoke-virtual {v8}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v2

    :goto_2
    invoke-static {v6}, Lcom/sunia/HTREnginev2/b0;->D(Lcom/sunia/calculatorv2/ink/model/f;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v11}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v6

    mul-float/2addr v6, v12

    invoke-virtual {v11}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v8

    mul-float/2addr v8, v13

    add-float/2addr v6, v8

    goto :goto_3

    :cond_7
    invoke-virtual {v11}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v6

    :goto_3
    cmpl-float v5, v5, v6

    if-ltz v5, :cond_8

    add-int/lit8 v10, v10, 0x1

    :cond_8
    cmpl-float v2, v4, v2

    if-ltz v2, :cond_9

    add-int/lit8 v2, v9, 0x1

    if-le v2, v10, :cond_a

    goto :goto_1

    :cond_9
    move v2, v9

    :cond_a
    :goto_4
    if-ne v2, v10, :cond_e

    if-lez v2, :cond_b

    add-int/lit8 v4, v2, -0x1

    goto :goto_5

    :cond_b
    move v4, v7

    :goto_5
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    instance-of v4, v0, Lcom/sunia/calculatorv2/ink/model/r;

    if-nez v4, :cond_c

    instance-of v4, v0, Lcom/sunia/calculatorv2/ink/model/l;

    if-nez v4, :cond_c

    instance-of v0, v0, Lcom/sunia/calculatorv2/ink/model/v;

    if-eqz v0, :cond_e

    :cond_c
    invoke-virtual {v3}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v0

    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getCenterY()F

    move-result v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_d

    invoke-virtual {v3}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v0

    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_d

    const/4 v7, 0x2

    goto :goto_6

    :cond_d
    invoke-virtual {v3}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v0

    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getCenterY()F

    move-result v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_e

    invoke-virtual {v3}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v0

    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_e

    const/4 v7, 0x1

    :cond_e
    :goto_6
    filled-new-array {v2, v10, v7}, [I

    move-result-object v0

    return-object v0
.end method

.method public static synthetic z(Lcom/sunia/calculatorv2/ink/util/Pair;)I
    .locals 1

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0
.end method
