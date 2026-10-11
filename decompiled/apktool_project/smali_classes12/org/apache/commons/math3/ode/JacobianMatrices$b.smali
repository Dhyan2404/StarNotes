.class public Lorg/apache/commons/math3/ode/JacobianMatrices$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/ode/SecondaryEquations;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ode/JacobianMatrices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lorg/apache/commons/math3/ode/JacobianMatrices;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ode/JacobianMatrices;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices$b;->a:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/math3/ode/JacobianMatrices;Lorg/apache/commons/math3/ode/JacobianMatrices$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/JacobianMatrices$b;-><init>(Lorg/apache/commons/math3/ode/JacobianMatrices;)V

    return-void
.end method


# virtual methods
.method public computeDerivatives(D[D[D[D[D)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    iget-object v2, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$b;->a:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v2}, Lorg/apache/commons/math3/ode/JacobianMatrices;->c(Lorg/apache/commons/math3/ode/JacobianMatrices;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$b;->a:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v2}, Lorg/apache/commons/math3/ode/JacobianMatrices;->b(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$b;->a:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v2}, Lorg/apache/commons/math3/ode/JacobianMatrices;->h(Lorg/apache/commons/math3/ode/JacobianMatrices;)Ljava/util/List;

    move-result-object v2

    new-instance v4, Lorg/apache/commons/math3/ode/a;

    iget-object v5, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$b;->a:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v5}, Lorg/apache/commons/math3/ode/JacobianMatrices;->e(Lorg/apache/commons/math3/ode/JacobianMatrices;)Lorg/apache/commons/math3/ode/MainStateJacobianProvider;

    move-result-object v5

    iget-object v6, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$b;->a:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v6}, Lorg/apache/commons/math3/ode/JacobianMatrices;->f(Lorg/apache/commons/math3/ode/JacobianMatrices;)Lorg/apache/commons/math3/ode/ParameterizedODE;

    move-result-object v6

    iget-object v7, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$b;->a:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v7}, Lorg/apache/commons/math3/ode/JacobianMatrices;->g(Lorg/apache/commons/math3/ode/JacobianMatrices;)[Lorg/apache/commons/math3/ode/ParameterConfiguration;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/commons/math3/ode/a;-><init>(Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;Lorg/apache/commons/math3/ode/ParameterizedODE;[Lorg/apache/commons/math3/ode/ParameterConfiguration;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$b;->a:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v2, v3}, Lorg/apache/commons/math3/ode/JacobianMatrices;->d(Lorg/apache/commons/math3/ode/JacobianMatrices;Z)Z

    :cond_0
    iget-object v2, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$b;->a:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v2}, Lorg/apache/commons/math3/ode/JacobianMatrices;->a(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v2

    iget-object v4, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$b;->a:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v4}, Lorg/apache/commons/math3/ode/JacobianMatrices;->a(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v4

    filled-new-array {v2, v4}, [I

    move-result-object v2

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    iget-object v4, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$b;->a:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v4}, Lorg/apache/commons/math3/ode/JacobianMatrices;->e(Lorg/apache/commons/math3/ode/JacobianMatrices;)Lorg/apache/commons/math3/ode/MainStateJacobianProvider;

    move-result-object v4

    move-wide/from16 v5, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object v9, v2

    invoke-interface/range {v4 .. v9}, Lorg/apache/commons/math3/ode/MainStateJacobianProvider;->computeMainStateJacobian(D[D[D[[D)V

    move v4, v3

    :goto_0
    iget-object v5, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$b;->a:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v5}, Lorg/apache/commons/math3/ode/JacobianMatrices;->a(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v5

    const-wide/16 v6, 0x0

    if-ge v4, v5, :cond_3

    aget-object v5, v2, v4

    move v8, v3

    :goto_1
    iget-object v9, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$b;->a:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v9}, Lorg/apache/commons/math3/ode/JacobianMatrices;->a(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v9

    if-ge v8, v9, :cond_2

    move v9, v3

    move-wide v10, v6

    move v12, v8

    :goto_2
    iget-object v13, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$b;->a:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v13}, Lorg/apache/commons/math3/ode/JacobianMatrices;->a(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v13

    if-ge v9, v13, :cond_1

    aget-wide v13, v5, v9

    aget-wide v15, p5, v12

    mul-double/2addr v13, v15

    add-double/2addr v10, v13

    iget-object v13, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$b;->a:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v13}, Lorg/apache/commons/math3/ode/JacobianMatrices;->a(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v13

    add-int/2addr v12, v13

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    iget-object v9, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$b;->a:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v9}, Lorg/apache/commons/math3/ode/JacobianMatrices;->a(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v9

    mul-int/2addr v9, v4

    add-int/2addr v9, v8

    aput-wide v10, v1, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget-object v4, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$b;->a:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v4}, Lorg/apache/commons/math3/ode/JacobianMatrices;->b(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$b;->a:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v4}, Lorg/apache/commons/math3/ode/JacobianMatrices;->a(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v4

    new-array v4, v4, [D

    iget-object v5, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$b;->a:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v5}, Lorg/apache/commons/math3/ode/JacobianMatrices;->a(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v5

    iget-object v8, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$b;->a:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v8}, Lorg/apache/commons/math3/ode/JacobianMatrices;->a(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v8

    mul-int/2addr v5, v8

    iget-object v8, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$b;->a:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v8}, Lorg/apache/commons/math3/ode/JacobianMatrices;->g(Lorg/apache/commons/math3/ode/JacobianMatrices;)[Lorg/apache/commons/math3/ode/ParameterConfiguration;

    move-result-object v15

    array-length v14, v15

    move v13, v3

    :goto_3
    if-ge v13, v14, :cond_9

    aget-object v16, v15, v13

    move v8, v3

    move v12, v8

    :goto_4
    if-nez v8, :cond_7

    iget-object v9, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$b;->a:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v9}, Lorg/apache/commons/math3/ode/JacobianMatrices;->h(Lorg/apache/commons/math3/ode/JacobianMatrices;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v12, v9, :cond_7

    iget-object v9, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$b;->a:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v9}, Lorg/apache/commons/math3/ode/JacobianMatrices;->h(Lorg/apache/commons/math3/ode/JacobianMatrices;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/ode/ParameterJacobianProvider;

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/ode/ParameterConfiguration;->getParameterName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/ode/Parameterizable;->isSupported(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/ode/ParameterConfiguration;->getParameterName()Ljava/lang/String;

    move-result-object v17

    move-object v8, v9

    move-wide/from16 v9, p1

    move-object/from16 v11, p3

    move/from16 v18, v12

    move-object/from16 v12, p4

    move/from16 v19, v13

    move-object/from16 v13, v17

    move/from16 v17, v14

    move-object v14, v4

    invoke-interface/range {v8 .. v14}, Lorg/apache/commons/math3/ode/ParameterJacobianProvider;->computeParameterJacobian(D[D[DLjava/lang/String;[D)V

    move v8, v3

    :goto_5
    iget-object v9, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$b;->a:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v9}, Lorg/apache/commons/math3/ode/JacobianMatrices;->a(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v9

    const/4 v10, 0x1

    if-ge v8, v9, :cond_5

    aget-object v9, v2, v8

    aget-wide v11, v4, v8

    move v13, v3

    move v14, v5

    :goto_6
    iget-object v3, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$b;->a:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v3}, Lorg/apache/commons/math3/ode/JacobianMatrices;->a(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v3

    if-ge v13, v3, :cond_4

    aget-wide v20, v9, v13

    aget-wide v22, p5, v14

    mul-double v20, v20, v22

    add-double v11, v11, v20

    add-int/2addr v14, v10

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_4
    add-int v3, v5, v8

    aput-wide v11, v1, v3

    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x0

    goto :goto_5

    :cond_5
    move v8, v10

    goto :goto_7

    :cond_6
    move/from16 v18, v12

    move/from16 v19, v13

    move/from16 v17, v14

    :goto_7
    add-int/lit8 v12, v18, 0x1

    move/from16 v14, v17

    move/from16 v13, v19

    const/4 v3, 0x0

    goto :goto_4

    :cond_7
    move/from16 v19, v13

    move/from16 v17, v14

    if-nez v8, :cond_8

    iget-object v3, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$b;->a:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v3}, Lorg/apache/commons/math3/ode/JacobianMatrices;->a(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v3

    add-int/2addr v3, v5

    invoke-static {v1, v5, v3, v6, v7}, Ljava/util/Arrays;->fill([DIID)V

    :cond_8
    iget-object v3, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$b;->a:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v3}, Lorg/apache/commons/math3/ode/JacobianMatrices;->a(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v3

    add-int/2addr v5, v3

    add-int/lit8 v13, v19, 0x1

    move/from16 v14, v17

    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_9
    return-void
.end method

.method public getDimension()I
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices$b;->a:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v0}, Lorg/apache/commons/math3/ode/JacobianMatrices;->a(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices$b;->a:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v1}, Lorg/apache/commons/math3/ode/JacobianMatrices;->a(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v1

    iget-object p0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices$b;->a:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {p0}, Lorg/apache/commons/math3/ode/JacobianMatrices;->b(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result p0

    add-int/2addr v1, p0

    mul-int/2addr v0, v1

    return v0
.end method
