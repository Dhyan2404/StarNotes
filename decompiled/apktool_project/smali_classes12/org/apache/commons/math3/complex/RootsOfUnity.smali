.class public Lorg/apache/commons/math3/complex/RootsOfUnity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1330289L


# instance fields
.field private isCounterClockWise:Z

.field private omegaCount:I

.field private omegaImaginaryClockwise:[D

.field private omegaImaginaryCounterClockwise:[D

.field private omegaReal:[D


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaReal:[D

    iput-object v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaImaginaryCounterClockwise:[D

    iput-object v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaImaginaryClockwise:[D

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->isCounterClockWise:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized computeRoots(I)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ZeroException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-lez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    :try_start_0
    iput-boolean v2, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->isCounterClockWise:Z

    invoke-static {p1}, Lorg/apache/commons/math3/util/FastMath;->abs(I)I

    move-result p1

    iget v2, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v2, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v4, p1

    div-double/2addr v2, v4

    :try_start_1
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v2

    new-array v6, p1, [D

    iput-object v6, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaReal:[D

    new-array v7, p1, [D

    iput-object v7, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaImaginaryCounterClockwise:[D

    new-array v8, p1, [D

    iput-object v8, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaImaginaryClockwise:[D

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    aput-wide v9, v6, v0

    const-wide/16 v9, 0x0

    aput-wide v9, v7, v0

    aput-wide v9, v8, v0

    :goto_1
    if-ge v1, p1, :cond_2

    iget-object v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaReal:[D

    add-int/lit8 v6, v1, -0x1

    aget-wide v7, v0, v6

    mul-double/2addr v7, v4

    iget-object v9, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaImaginaryCounterClockwise:[D

    aget-wide v10, v9, v6

    mul-double/2addr v10, v2

    sub-double/2addr v7, v10

    aput-wide v7, v0, v1

    aget-wide v7, v0, v6

    mul-double/2addr v7, v2

    aget-wide v10, v9, v6

    mul-double/2addr v10, v4

    add-double/2addr v7, v10

    aput-wide v7, v9, v1

    iget-object v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaImaginaryClockwise:[D

    neg-double v6, v7

    aput-wide v6, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iput p1, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    new-instance p1, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CANNOT_COMPUTE_0TH_ROOT_OF_UNITY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p1, v1, v0}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getImaginary(I)D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaCount:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->isCounterClockWise:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaImaginaryCounterClockwise:[D

    aget-wide v0, v0, p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaImaginaryClockwise:[D

    aget-wide v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_1
    :try_start_1
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_RANGE_ROOT_OF_UNITY_INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaCount:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v2, p1, v1, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ROOTS_OF_UNITY_NOT_COMPUTED_YET:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getNumberOfRoots()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getReal(I)D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;,
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaCount:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaReal:[D

    aget-wide v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_RANGE_ROOT_OF_UNITY_INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaCount:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v2, p1, v1, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ROOTS_OF_UNITY_NOT_COMPUTED_YET:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isCounterClockWise()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaCount:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->isCounterClockWise:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ROOTS_OF_UNITY_NOT_COMPUTED_YET:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
