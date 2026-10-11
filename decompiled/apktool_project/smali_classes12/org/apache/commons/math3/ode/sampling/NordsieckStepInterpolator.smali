.class public Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;
.super Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x63a3fe2e1c0e0830L


# instance fields
.field private nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

.field private referenceTime:D

.field private scaled:[D

.field private scalingH:D

.field protected stateVariation:[D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;)V
    .locals 3

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;)V

    .line 3
    iget-wide v0, p1, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scalingH:D

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scalingH:D

    .line 4
    iget-wide v0, p1, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->referenceTime:D

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->referenceTime:D

    .line 5
    iget-object v0, p1, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scaled:[D

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scaled:[D

    .line 7
    :cond_0
    iget-object v0, p1, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget-object v1, p1, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getDataRef()[[D

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 9
    :cond_1
    iget-object p1, p1, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->stateVariation:[D

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->stateVariation:[D

    :cond_2
    return-void
.end method


# virtual methods
.method public computeInterpolatedStateAndDerivatives(DD)V
    .locals 17

    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedTime:D

    iget-wide v3, v0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->referenceTime:D

    sub-double/2addr v1, v3

    iget-wide v3, v0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scalingH:D

    div-double v3, v1, v3

    iget-object v5, v0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->stateVariation:[D

    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Ljava/util/Arrays;->fill([DD)V

    iget-object v5, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedDerivatives:[D

    invoke-static {v5, v6, v7}, Ljava/util/Arrays;->fill([DD)V

    iget-object v5, v0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getDataRef()[[D

    move-result-object v5

    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    :goto_0
    const/4 v7, 0x0

    if-ltz v6, :cond_1

    add-int/lit8 v8, v6, 0x2

    aget-object v9, v5, v6

    invoke-static {v3, v4, v8}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v10

    :goto_1
    array-length v12, v9

    if-ge v7, v12, :cond_0

    aget-wide v12, v9, v7

    mul-double/2addr v12, v10

    iget-object v14, v0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->stateVariation:[D

    aget-wide v15, v14, v7

    add-double/2addr v15, v12

    aput-wide v15, v14, v7

    iget-object v14, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedDerivatives:[D

    aget-wide v15, v14, v7

    move-object/from16 p1, v9

    move-wide/from16 p2, v10

    int-to-double v9, v8

    mul-double/2addr v9, v12

    add-double/2addr v15, v9

    aput-wide v15, v14, v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v9, p1

    move-wide/from16 v10, p2

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_1
    :goto_2
    iget-object v5, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    array-length v6, v5

    if-ge v7, v6, :cond_2

    iget-object v6, v0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->stateVariation:[D

    aget-wide v8, v6, v7

    iget-object v10, v0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scaled:[D

    aget-wide v11, v10, v7

    mul-double/2addr v11, v3

    add-double/2addr v8, v11

    aput-wide v8, v6, v7

    iget-object v6, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedState:[D

    aget-wide v11, v5, v7

    add-double/2addr v11, v8

    aput-wide v11, v6, v7

    iget-object v5, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedDerivatives:[D

    aget-wide v8, v5, v7

    aget-wide v10, v10, v7

    mul-double/2addr v10, v3

    add-double/2addr v8, v10

    div-double/2addr v8, v1

    aput-wide v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public doCopy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .locals 1

    new-instance v0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;)V

    return-object v0
.end method

.method public getInterpolatedStateVariation()[D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->getInterpolatedState()[D

    iget-object p0, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->stateVariation:[D

    return-object p0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->readBaseExternal(Ljava/io/ObjectInput;)D

    move-result-wide v0

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scalingH:D

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->referenceTime:D

    iget-object v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    if-nez v2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    array-length v2, v2

    :goto_0
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    new-array v5, v2, [D

    iput-object v5, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scaled:[D

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_2

    iget-object v6, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scaled:[D

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v7

    aput-wide v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    iput-object v4, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scaled:[D

    :cond_2
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iput-object p1, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    goto :goto_2

    :cond_3
    iput-object v4, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    :goto_2
    if-eqz v3, :cond_4

    if-eqz v5, :cond_4

    new-array p1, v2, [D

    iput-object p1, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->stateVariation:[D

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->setInterpolatedTime(D)V

    goto :goto_3

    :cond_4
    iput-object v4, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->stateVariation:[D

    :goto_3
    return-void
.end method

.method public reinitialize(DD[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->referenceTime:D

    .line 4
    iput-wide p3, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scalingH:D

    .line 5
    iput-object p5, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scaled:[D

    .line 6
    iput-object p6, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->getInterpolatedTime()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->setInterpolatedTime(D)V

    return-void
.end method

.method public reinitialize([DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->reinitialize([DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V

    .line 2
    array-length p1, p1

    new-array p1, p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->stateVariation:[D

    return-void
.end method

.method public rescale(D)V
    .locals 11

    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scalingH:D

    div-double v0, p1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scaled:[D

    array-length v5, v4

    if-ge v3, v5, :cond_0

    aget-wide v5, v4, v3

    mul-double/2addr v5, v0

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getDataRef()[[D

    move-result-object v3

    move-wide v5, v0

    move v4, v2

    :goto_1
    array-length v7, v3

    if-ge v4, v7, :cond_2

    mul-double/2addr v5, v0

    aget-object v7, v3, v4

    move v8, v2

    :goto_2
    array-length v9, v7

    if-ge v8, v9, :cond_1

    aget-wide v9, v7, v8

    mul-double/2addr v9, v5

    aput-wide v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scalingH:D

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->writeBaseExternal(Ljava/io/ObjectOutput;)V

    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scalingH:D

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->referenceTime:D

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scaled:[D

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeBoolean(Z)V

    goto :goto_2

    :cond_1
    invoke-interface {p1, v3}, Ljava/io/DataOutput;->writeBoolean(Z)V

    move v1, v2

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v4, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->scaled:[D

    aget-wide v4, v4, v1

    invoke-interface {p1, v4, v5}, Ljava/io/DataOutput;->writeDouble(D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    if-nez v0, :cond_3

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeBoolean(Z)V

    goto :goto_3

    :cond_3
    invoke-interface {p1, v3}, Ljava/io/DataOutput;->writeBoolean(Z)V

    iget-object p0, p0, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-interface {p1, p0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    :goto_3
    return-void
.end method
