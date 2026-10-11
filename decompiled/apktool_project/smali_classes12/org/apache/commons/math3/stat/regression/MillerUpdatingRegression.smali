.class public Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/stat/regression/UpdatingMultipleLinearRegression;


# instance fields
.field public final e:I

.field public final f:[D

.field public final g:[D

.field public final h:[D

.field public final i:[D

.field public final j:[D

.field public final k:[I

.field public final l:[D

.field public m:J

.field public n:D

.field public o:Z

.field public p:Z

.field public final q:[Z

.field public final r:[D

.field public final s:[D

.field public t:D

.field public u:D

.field public v:Z

.field public final w:D


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x0

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    const/4 v3, -0x1

    .line 1
    invoke-direct {p0, v3, v0, v1, v2}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;-><init>(IZD)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    .line 28
    sget-wide v0, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;-><init>(IZD)V

    return-void
.end method

.method public constructor <init>(IZD)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->m:J

    const-wide/16 v2, 0x0

    .line 4
    iput-wide v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->n:D

    const/4 v4, 0x0

    .line 5
    iput-boolean v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->o:Z

    .line 6
    iput-boolean v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->p:Z

    .line 7
    iput-wide v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->t:D

    .line 8
    iput-wide v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->u:D

    const/4 v5, 0x1

    if-lt p1, v5, :cond_3

    if-eqz p2, :cond_0

    add-int/2addr p1, v5

    .line 9
    iput p1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    goto :goto_0

    .line 10
    :cond_0
    iput p1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    .line 11
    :goto_0
    iput-boolean p2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->v:Z

    .line 12
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->m:J

    .line 13
    iget p1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    new-array p2, p1, [D

    iput-object p2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->f:[D

    .line 14
    new-array p2, p1, [D

    iput-object p2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->g:[D

    add-int/lit8 p2, p1, -0x1

    mul-int/2addr p2, p1

    .line 15
    div-int/lit8 p2, p2, 0x2

    new-array p2, p2, [D

    iput-object p2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->h:[D

    .line 16
    new-array p2, p1, [D

    iput-object p2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->i:[D

    .line 17
    new-array p2, p1, [D

    iput-object p2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->j:[D

    .line 18
    new-array p2, p1, [I

    iput-object p2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->k:[I

    .line 19
    new-array p2, p1, [D

    iput-object p2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    .line 20
    new-array p2, p1, [D

    iput-object p2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->s:[D

    .line 21
    new-array p2, p1, [D

    iput-object p2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->l:[D

    .line 22
    new-array p1, p1, [Z

    iput-object p1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->q:[Z

    .line 23
    :goto_1
    iget p1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    if-ge v4, p1, :cond_1

    .line 24
    iget-object p1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->k:[I

    aput v4, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    cmpl-double p1, p3, v2

    if-lez p1, :cond_2

    .line 25
    iput-wide p3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->w:D

    goto :goto_2

    :cond_2
    neg-double p1, p3

    .line 26
    iput-wide p1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->w:D

    :goto_2
    return-void

    .line 27
    :cond_3
    new-instance p0, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NO_REGRESSORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array p2, v4, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public final a(I)[D
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-wide v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->m:J

    int-to-long v4, v1

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move v5, v2

    :goto_0
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    if-ge v5, v1, :cond_2

    iget-object v8, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->q:[Z

    aget-boolean v8, v8, v5

    if-nez v8, :cond_1

    add-double/2addr v3, v6

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->j:[D

    add-int/lit8 v8, v1, -0x1

    aget-wide v9, v5, v8

    iget-wide v11, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->m:J

    long-to-double v11, v11

    sub-double/2addr v11, v3

    div-double/2addr v9, v11

    mul-int v3, v1, v8

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [D

    invoke-virtual {v0, v3, v1}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->c([DI)V

    add-int/lit8 v4, v1, 0x1

    mul-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    new-array v4, v4, [D

    const-wide/high16 v11, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v4, v11, v12}, Ljava/util/Arrays;->fill([DD)V

    move v5, v2

    :goto_1
    if-ge v2, v1, :cond_8

    iget-object v8, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->q:[Z

    aget-boolean v8, v8, v2

    if-nez v8, :cond_7

    move v8, v2

    move v11, v5

    :goto_2
    if-ge v8, v1, :cond_7

    iget-object v12, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->q:[Z

    aget-boolean v12, v12, v8

    if-nez v12, :cond_6

    add-int v12, v5, v8

    sub-int/2addr v12, v2

    if-ne v2, v8, :cond_3

    iget-object v13, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->f:[D

    aget-wide v13, v13, v8

    div-double v13, v6, v13

    goto :goto_3

    :cond_3
    add-int/lit8 v13, v12, -0x1

    aget-wide v13, v3, v13

    iget-object v15, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->f:[D

    aget-wide v15, v15, v8

    div-double/2addr v13, v15

    :goto_3
    add-int/lit8 v15, v8, 0x1

    move v6, v15

    :goto_4
    if-ge v6, v1, :cond_5

    iget-object v7, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->q:[Z

    aget-boolean v7, v7, v6

    if-nez v7, :cond_4

    aget-wide v17, v3, v12

    aget-wide v19, v3, v11

    mul-double v17, v17, v19

    iget-object v7, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->f:[D

    aget-wide v19, v7, v6

    div-double v17, v17, v19

    add-double v13, v13, v17

    :cond_4
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    mul-int/2addr v15, v8

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v15, v2

    mul-double/2addr v13, v9

    aput-wide v13, v4, v15

    goto :goto_5

    :cond_6
    sub-int v6, v1, v8

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v11, v6

    :goto_5
    add-int/lit8 v8, v8, 0x1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    :cond_7
    sub-int v6, v1, v2

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    :cond_8
    return-object v4
.end method

.method public addObservation([DD)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->v:Z

    if-nez v0, :cond_0

    array-length v1, p1

    iget v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    array-length v2, p1

    add-int/2addr v2, v1

    iget v3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object p3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INVALID_REGRESSION_OBSERVATION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget p0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p2, p3, p0}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p2

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    array-length v0, p1

    invoke-static {p1, v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([DI)[D

    move-result-object v2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    move-object v1, p0

    move-wide v5, p2

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->b([DDD)V

    goto :goto_1

    :cond_3
    array-length v0, p1

    add-int/2addr v0, v1

    new-array v3, v0, [D

    array-length v0, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    aput-wide v0, v3, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object v2, p0

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->b([DDD)V

    :goto_1
    iget-wide p1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->m:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->m:J

    return-void
.end method

.method public addObservations([[D[D)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    array-length v2, p1

    if-eqz v2, :cond_3

    aget-object v2, p1, v1

    array-length v2, v2

    add-int/2addr v2, v0

    array-length v0, p1

    if-gt v2, v0, :cond_2

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_1

    aget-object v0, p1, v1

    aget-wide v2, p2, v1

    invoke-virtual {p0, v0, v2, v3}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->addObservation([DD)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p0, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_ENOUGH_DATA_FOR_NUMBER_OF_PREDICTORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aget-object p1, p1, v1

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0

    :cond_3
    new-instance p0, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NO_DATA:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array p2, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0

    :cond_4
    :goto_1
    new-instance p0, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DIMENSIONS_MISMATCH_SIMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    if-nez p1, :cond_5

    move p1, v1

    goto :goto_2

    :cond_5
    array-length p1, p1

    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    array-length v1, p2

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-direct {p0, v2, v3}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public final b([DDD)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    const/4 v4, 0x0

    iput-boolean v4, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->o:Z

    iget-wide v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->t:D

    invoke-virtual {v0, v2, v3, v5, v6}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->g(DD)D

    move-result-wide v5

    iput-wide v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->t:D

    iget-wide v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->u:D

    mul-double v7, v2, v2

    invoke-virtual {v0, v5, v6, v7, v8}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->g(DD)D

    move-result-wide v5

    iput-wide v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->u:D

    move v6, v4

    move v7, v6

    move-wide v4, v2

    move-wide/from16 v2, p2

    :goto_0
    array-length v8, v1

    if-ge v6, v8, :cond_7

    const-wide/16 v8, 0x0

    cmpl-double v10, v2, v8

    if-nez v10, :cond_0

    return-void

    :cond_0
    aget-wide v10, v1, v6

    cmpl-double v12, v10, v8

    if-nez v12, :cond_1

    iget v8, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    sub-int/2addr v8, v6

    add-int/lit8 v8, v8, -0x1

    add-int/2addr v7, v8

    goto/16 :goto_5

    :cond_1
    iget-object v12, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->f:[D

    aget-wide v12, v12, v6

    mul-double v14, v2, v10

    cmpl-double v16, v12, v8

    if-eqz v16, :cond_3

    mul-double v8, v14, v10

    invoke-virtual {v0, v12, v13, v8, v9}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->g(DD)D

    move-result-wide v17

    div-double/2addr v8, v12

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    sget-wide v19, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    cmpl-double v8, v8, v19

    if-lez v8, :cond_2

    mul-double/2addr v2, v12

    div-double v2, v2, v17

    :cond_2
    move-wide v8, v2

    goto :goto_1

    :cond_3
    mul-double v17, v14, v10

    :goto_1
    iget-object v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->f:[D

    aput-wide v17, v2, v6

    add-int/lit8 v2, v6, 0x1

    :goto_2
    iget v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    if-ge v2, v3, :cond_5

    move-wide/from16 p2, v8

    aget-wide v8, v1, v2

    move-wide/from16 v19, v4

    neg-double v3, v10

    iget-object v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->h:[D

    aget-wide v21, v5, v7

    mul-double v3, v3, v21

    invoke-virtual {v0, v8, v9, v3, v4}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->g(DD)D

    move-result-wide v3

    aput-wide v3, v1, v2

    if-eqz v16, :cond_4

    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->h:[D

    aget-wide v4, v3, v7

    mul-double/2addr v4, v12

    mul-double/2addr v8, v14

    invoke-virtual {v0, v4, v5, v8, v9}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->g(DD)D

    move-result-wide v4

    div-double v4, v4, v17

    aput-wide v4, v3, v7

    goto :goto_3

    :cond_4
    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->h:[D

    div-double/2addr v8, v10

    aput-wide v8, v3, v7

    :goto_3
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v8, p2

    move-wide/from16 v4, v19

    goto :goto_2

    :cond_5
    move-wide/from16 v19, v4

    move-wide/from16 p2, v8

    neg-double v2, v10

    iget-object v4, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->g:[D

    aget-wide v4, v4, v6

    mul-double/2addr v2, v4

    move-wide/from16 v4, v19

    invoke-virtual {v0, v4, v5, v2, v3}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->g(DD)D

    move-result-wide v2

    if-eqz v16, :cond_6

    iget-object v8, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->g:[D

    aget-wide v9, v8, v6

    mul-double/2addr v12, v9

    mul-double/2addr v14, v4

    invoke-virtual {v0, v12, v13, v14, v15}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->g(DD)D

    move-result-wide v4

    div-double v4, v4, v17

    aput-wide v4, v8, v6

    goto :goto_4

    :cond_6
    iget-object v8, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->g:[D

    div-double/2addr v4, v10

    aput-wide v4, v8, v6

    :goto_4
    move-wide v4, v2

    move-wide/from16 v2, p2

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_7
    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->n:D

    mul-double/2addr v2, v4

    mul-double/2addr v2, v4

    invoke-virtual {v0, v6, v7, v2, v3}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->g(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->n:D

    return-void
.end method

.method public final c([DI)V
    .locals 13

    add-int/lit8 v0, p2, -0x1

    mul-int v1, p2, v0

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    :goto_0
    if-lez v0, :cond_4

    iget-object v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->q:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_2

    add-int/lit8 v2, v0, -0x1

    iget v3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    add-int/2addr v3, v3

    sub-int/2addr v3, v0

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    move v3, p2

    :goto_1
    if-le v3, v0, :cond_3

    const-wide/16 v4, 0x0

    move v6, v0

    move v8, v1

    move v7, v2

    :goto_2
    add-int/lit8 v9, v3, -0x1

    if-ge v6, v9, :cond_1

    sub-int v9, p2, v6

    add-int/lit8 v9, v9, -0x1

    add-int/2addr v8, v9

    iget-object v9, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->q:[Z

    aget-boolean v9, v9, v6

    if-nez v9, :cond_0

    iget-object v9, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->h:[D

    aget-wide v9, v9, v7

    neg-double v9, v9

    aget-wide v11, p1, v8

    mul-double/2addr v9, v11

    add-double/2addr v4, v9

    :cond_0
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    iget-object v6, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->h:[D

    aget-wide v6, v6, v7

    sub-double/2addr v4, v6

    aput-wide v4, p1, v1

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    sub-int v2, p2, v0

    sub-int/2addr v1, v2

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public clear()V
    .locals 6

    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->f:[D

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->g:[D

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->h:[D

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->i:[D

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->j:[D

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->l:[D

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->s:[D

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->q:[Z

    const/4 v3, 0x0

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([ZZ)V

    move v0, v3

    :goto_0
    iget v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->k:[I

    aput v0, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->m:J

    iput-wide v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->n:D

    iput-wide v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->t:D

    iput-wide v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->u:D

    iput-boolean v3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->o:Z

    iput-boolean v3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->p:Z

    return-void
.end method

.method public final d(I)[D
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_7

    iget v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    if-gt p1, v2, :cond_6

    iget-boolean v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->p:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->i()V

    :cond_0
    new-array v2, p1, [D

    add-int/lit8 v3, p1, -0x1

    move v4, v0

    :goto_0
    const/4 v5, -0x1

    if-le v3, v5, :cond_3

    iget-object v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->f:[D

    aget-wide v5, v5, v3

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    iget-object v7, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->i:[D

    aget-wide v7, v7, v3

    cmpg-double v5, v5, v7

    if-gez v5, :cond_1

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    iget-object v6, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->f:[D

    aput-wide v4, v6, v3

    move v4, v1

    goto :goto_2

    :cond_1
    iget-object v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->g:[D

    aget-wide v5, v5, v3

    aput-wide v5, v2, v3

    iget v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    add-int/2addr v5, v5

    sub-int/2addr v5, v3

    sub-int/2addr v5, v1

    mul-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v6, v3, 0x1

    :goto_1
    if-ge v6, p1, :cond_2

    aget-wide v7, v2, v3

    iget-object v9, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->h:[D

    aget-wide v9, v9, v5

    neg-double v9, v9

    aget-wide v11, v2, v6

    mul-double/2addr v9, v11

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->g(DD)D

    move-result-wide v7

    aput-wide v7, v2, v3

    add-int/2addr v5, v1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_5

    :goto_3
    if-ge v0, p1, :cond_5

    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->q:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_4

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    aput-wide v3, v2, v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    return-object v2

    :cond_6
    new-instance v0, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_MANY_REGRESSORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget p0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :cond_7
    new-instance p0, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NO_REGRESSORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public final e([II)I
    .locals 6

    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    array-length v0, p1

    iget v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    add-int/2addr v2, v1

    sub-int/2addr v2, p2

    if-le v0, v2, :cond_0

    goto :goto_2

    :cond_0
    move v0, p2

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    const/4 v3, 0x0

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->k:[I

    aget v2, v2, v0

    move v4, v3

    :goto_1
    array-length v5, p1

    if-ge v4, v5, :cond_2

    aget v5, p1, v4

    if-ne v2, v5, :cond_1

    if-le v0, v1, :cond_1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->j(II)V

    add-int/lit8 v1, v1, 0x1

    array-length v2, p1

    add-int/2addr v2, p2

    if-lt v1, v2, :cond_2

    return v3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    :goto_2
    const/4 p0, -0x1

    return p0
.end method

.method public final f()V
    .locals 15

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->s:[D

    iget-object v3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->f:[D

    aget-wide v3, v3, v1

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    iget v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->i:[D

    aget-wide v2, v2, v1

    add-int/lit8 v4, v1, -0x1

    move v5, v0

    move v6, v4

    :goto_2
    const-wide/16 v7, 0x0

    if-ge v5, v4, :cond_2

    iget-object v9, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->h:[D

    aget-wide v9, v9, v6

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    iget-object v11, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->s:[D

    aget-wide v11, v11, v5

    mul-double/2addr v9, v11

    cmpg-double v9, v9, v2

    if-gez v9, :cond_1

    iget-object v9, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->h:[D

    aput-wide v7, v9, v6

    :cond_1
    iget v7, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    sub-int/2addr v7, v5

    add-int/lit8 v7, v7, -0x2

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->q:[Z

    aput-boolean v0, v4, v1

    iget-object v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->s:[D

    aget-wide v5, v5, v1

    cmpg-double v2, v5, v2

    if-gez v2, :cond_5

    const/4 v2, 0x1

    aput-boolean v2, v4, v1

    iget v3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    sub-int/2addr v3, v2

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    invoke-static {v3, v7, v8}, Ljava/util/Arrays;->fill([DD)V

    iget v3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    add-int/2addr v3, v3

    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    mul-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v1, 0x1

    :goto_3
    iget v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    if-ge v4, v5, :cond_3

    iget-object v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    iget-object v6, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->h:[D

    aget-wide v9, v6, v3

    aput-wide v9, v5, v4

    aput-wide v7, v6, v3

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v2

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->g:[D

    aget-wide v13, v2, v1

    iget-object v3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->f:[D

    aget-wide v11, v3, v1

    aput-wide v7, v3, v1

    aput-wide v7, v2, v1

    iget-object v10, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    move-object v9, p0

    invoke-virtual/range {v9 .. v14}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->b([DDD)V

    goto :goto_4

    :cond_4
    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->n:D

    iget-object v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->f:[D

    aget-wide v4, v4, v1

    iget-object v6, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->g:[D

    aget-wide v6, v6, v1

    mul-double/2addr v4, v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->n:D

    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_6
    return-void
.end method

.method public final g(DD)D
    .locals 6

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    cmpl-double p0, v0, v2

    if-lez p0, :cond_1

    sget-wide v4, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double/2addr v0, v4

    cmpl-double p0, v2, v0

    if-lez p0, :cond_0

    add-double/2addr p1, p3

    :cond_0
    return-wide p1

    :cond_1
    sget-wide v4, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double/2addr v2, v4

    cmpl-double p0, v0, v2

    if-lez p0, :cond_2

    add-double/2addr p1, p3

    return-wide p1

    :cond_2
    return-wide p3
.end method

.method public getDiagonalOfHatMatrix([D)D
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    new-array v3, v2, [D

    array-length v4, v1

    if-le v4, v2, :cond_0

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :cond_0
    iget-boolean v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->v:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    array-length v2, v1

    const/4 v5, 0x1

    add-int/2addr v2, v5

    new-array v2, v2, [D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v2, v4

    array-length v6, v1

    invoke-static {v1, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v2

    :cond_1
    const-wide/16 v5, 0x0

    move v2, v4

    move-wide v7, v5

    :goto_0
    array-length v9, v1

    if-ge v2, v9, :cond_4

    iget-object v9, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->f:[D

    aget-wide v9, v9, v2

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v9

    iget-object v11, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->i:[D

    aget-wide v11, v11, v2

    cmpg-double v9, v9, v11

    if-gez v9, :cond_2

    aput-wide v5, v3, v2

    goto :goto_2

    :cond_2
    add-int/lit8 v9, v2, -0x1

    aget-wide v10, v1, v2

    move v12, v4

    :goto_1
    if-ge v12, v2, :cond_3

    aget-wide v13, v3, v12

    neg-double v13, v13

    iget-object v15, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->h:[D

    aget-wide v15, v15, v9

    mul-double/2addr v13, v15

    invoke-virtual {v0, v10, v11, v13, v14}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->g(DD)D

    move-result-wide v10

    iget v13, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    sub-int/2addr v13, v12

    add-int/lit8 v13, v13, -0x2

    add-int/2addr v9, v13

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_3
    aput-wide v10, v3, v2

    mul-double/2addr v10, v10

    iget-object v9, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->f:[D

    aget-wide v12, v9, v2

    div-double/2addr v10, v12

    invoke-virtual {v0, v7, v8, v10, v11}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->g(DD)D

    move-result-wide v7

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-wide v7
.end method

.method public getN()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->m:J

    return-wide v0
.end method

.method public getOrderOfRegressors()[I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->k:[I

    invoke-static {p0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([I)[I

    move-result-object p0

    return-object p0
.end method

.method public getPartialCorrelations(I)[D
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    sub-int v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    sub-int v4, v2, v1

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [D

    neg-int v4, v1

    add-int/lit8 v5, v1, 0x1

    neg-int v6, v5

    sub-int v7, v2, v1

    new-array v7, v7, [D

    sub-int v8, v2, v1

    add-int/lit8 v8, v8, -0x1

    new-array v8, v8, [D

    sub-int v9, v2, v1

    sub-int v10, v2, v1

    add-int/lit8 v10, v10, -0x1

    mul-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    const/4 v10, -0x1

    if-lt v1, v10, :cond_b

    if-lt v1, v2, :cond_0

    goto/16 :goto_8

    :cond_0
    add-int/lit8 v2, v2, -0x1

    iget-object v10, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->h:[D

    array-length v10, v10

    sub-int/2addr v2, v1

    add-int/lit8 v11, v2, 0x1

    mul-int/2addr v2, v11

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v10, v2

    iget-object v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->f:[D

    aget-wide v11, v2, v1

    const-wide/16 v13, 0x0

    cmpl-double v2, v11, v13

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    if-lez v2, :cond_1

    add-int v2, v1, v4

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    div-double v11, v15, v11

    aput-wide v11, v7, v2

    :cond_1
    :goto_0
    iget v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    if-ge v5, v2, :cond_4

    add-int v2, v10, v5

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    iget-object v11, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->f:[D

    aget-wide v11, v11, v5

    move v15, v1

    :goto_1
    if-ge v15, v5, :cond_2

    iget-object v13, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->f:[D

    aget-wide v13, v13, v15

    move/from16 v16, v9

    iget-object v9, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->h:[D

    aget-wide v20, v9, v2

    mul-double v13, v13, v20

    mul-double v13, v13, v20

    add-double/2addr v11, v13

    iget v9, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    sub-int/2addr v9, v15

    add-int/lit8 v9, v9, -0x2

    add-int/2addr v2, v9

    add-int/lit8 v15, v15, 0x1

    move/from16 v9, v16

    const-wide/16 v13, 0x0

    goto :goto_1

    :cond_2
    move/from16 v16, v9

    cmpl-double v2, v11, v13

    if-lez v2, :cond_3

    add-int v2, v5, v4

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    div-double v11, v17, v11

    aput-wide v11, v7, v2

    goto :goto_2

    :cond_3
    add-int v2, v5, v4

    aput-wide v13, v7, v2

    :goto_2
    add-int/lit8 v5, v5, 0x1

    move/from16 v9, v16

    const-wide/16 v13, 0x0

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_4
    move/from16 v16, v9

    iget-wide v11, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->n:D

    move v2, v1

    :goto_3
    iget v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    if-ge v2, v5, :cond_5

    iget-object v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->f:[D

    aget-wide v13, v5, v2

    iget-object v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->g:[D

    aget-wide v20, v5, v2

    mul-double v13, v13, v20

    mul-double v13, v13, v20

    add-double/2addr v11, v13

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    const-wide/16 v13, 0x0

    cmpl-double v2, v11, v13

    if-lez v2, :cond_6

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    div-double v11, v17, v11

    :cond_6
    move v2, v1

    :goto_4
    iget v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    if-ge v2, v5, :cond_a

    invoke-static {v8, v13, v14}, Ljava/util/Arrays;->fill([DD)V

    add-int v5, v10, v2

    sub-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    move v9, v1

    move-wide/from16 v17, v13

    :goto_5
    if-ge v9, v2, :cond_8

    add-int/lit8 v15, v5, 0x1

    add-int/lit8 v19, v2, 0x1

    move/from16 v13, v19

    :goto_6
    iget v14, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    if-ge v13, v14, :cond_7

    add-int v14, v13, v6

    aget-wide v20, v8, v14

    move/from16 v22, v10

    iget-object v10, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->f:[D

    aget-wide v23, v10, v9

    iget-object v10, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->h:[D

    aget-wide v25, v10, v5

    mul-double v23, v23, v25

    aget-wide v25, v10, v15

    mul-double v23, v23, v25

    add-double v20, v20, v23

    aput-wide v20, v8, v14

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v13, v13, 0x1

    move/from16 v10, v22

    goto :goto_6

    :cond_7
    move/from16 v22, v10

    iget-object v10, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->f:[D

    aget-wide v20, v10, v9

    iget-object v10, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->h:[D

    aget-wide v23, v10, v5

    mul-double v20, v20, v23

    iget-object v10, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->g:[D

    aget-wide v23, v10, v9

    mul-double v20, v20, v23

    add-double v17, v17, v20

    sub-int/2addr v14, v9

    add-int/lit8 v14, v14, -0x2

    add-int/2addr v5, v14

    add-int/lit8 v9, v9, 0x1

    move/from16 v10, v22

    const-wide/16 v13, 0x0

    goto :goto_5

    :cond_8
    move/from16 v22, v10

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v9, v2, 0x1

    move v10, v9

    :goto_7
    iget v13, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    if-ge v10, v13, :cond_9

    add-int v13, v10, v6

    aget-wide v14, v8, v13

    move/from16 v20, v6

    iget-object v6, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->f:[D

    aget-wide v23, v6, v2

    iget-object v6, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->h:[D

    aget-wide v25, v6, v5

    mul-double v23, v23, v25

    add-double v14, v14, v23

    aput-wide v14, v8, v13

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v10, -0x1

    sub-int/2addr v6, v1

    sub-int v13, v10, v1

    mul-int/2addr v6, v13

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v2

    sub-int/2addr v6, v1

    add-int v13, v2, v4

    aget-wide v23, v7, v13

    mul-double v14, v14, v23

    add-int v13, v10, v4

    aget-wide v23, v7, v13

    mul-double v14, v14, v23

    aput-wide v14, v3, v6

    add-int/lit8 v10, v10, 0x1

    move/from16 v6, v20

    goto :goto_7

    :cond_9
    move/from16 v20, v6

    iget-object v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->f:[D

    aget-wide v5, v5, v2

    iget-object v10, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->g:[D

    aget-wide v13, v10, v2

    mul-double/2addr v5, v13

    add-double v17, v17, v5

    add-int/2addr v2, v4

    add-int v5, v2, v16

    aget-wide v13, v7, v2

    mul-double v17, v17, v13

    mul-double v17, v17, v11

    aput-wide v17, v3, v5

    move v2, v9

    move/from16 v6, v20

    move/from16 v10, v22

    const-wide/16 v13, 0x0

    goto/16 :goto_4

    :cond_a
    return-object v3

    :cond_b
    :goto_8
    const/4 v0, 0x0

    return-object v0
.end method

.method public final h()V
    .locals 8

    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->n:D

    iget-object v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->j:[D

    iget v3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    add-int/lit8 v4, v3, -0x1

    aput-wide v0, v2, v4

    const/4 v2, 0x1

    sub-int/2addr v3, v2

    :goto_0
    if-lez v3, :cond_0

    iget-object v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->f:[D

    aget-wide v4, v4, v3

    iget-object v6, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->g:[D

    aget-wide v6, v6, v3

    mul-double/2addr v4, v6

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    iget-object v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->j:[D

    add-int/lit8 v5, v3, -0x1

    aput-wide v0, v4, v5

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->o:Z

    return-void
.end method

.method public hasIntercept()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->v:Z

    return p0
.end method

.method public final i()V
    .locals 13

    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->w:D

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->l:[D

    iget-object v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->f:[D

    aget-wide v5, v5, v3

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->i:[D

    iget-object v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->l:[D

    aget-wide v4, v4, v2

    mul-double/2addr v4, v0

    aput-wide v4, v3, v2

    const/4 v3, 0x1

    move v4, v3

    :goto_1
    iget v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    if-ge v4, v5, :cond_2

    add-int/lit8 v5, v4, -0x1

    iget-object v6, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->l:[D

    aget-wide v6, v6, v4

    move v8, v2

    :goto_2
    if-ge v8, v4, :cond_1

    iget-object v9, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->h:[D

    aget-wide v9, v9, v5

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    iget-object v11, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->l:[D

    aget-wide v11, v11, v8

    mul-double/2addr v9, v11

    add-double/2addr v6, v9

    iget v9, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    sub-int/2addr v9, v8

    add-int/lit8 v9, v9, -0x2

    add-int/2addr v5, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    iget-object v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->i:[D

    mul-double/2addr v6, v0

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iput-boolean v3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->p:Z

    return-void
.end method

.method public final j(II)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    iget-boolean v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->o:Z

    if-nez v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->h()V

    :cond_1
    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    sub-int/2addr v2, v1

    move v4, v2

    move v2, v3

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v1, -0x1

    sub-int v2, v1, v2

    const/4 v1, -0x1

    move/from16 v24, v2

    move v2, v1

    move v1, v4

    move/from16 v4, v24

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v6, v4, :cond_e

    iget v8, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    add-int v9, v8, v8

    sub-int/2addr v9, v1

    sub-int/2addr v9, v3

    mul-int/2addr v9, v1

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    sub-int/2addr v8, v1

    sub-int/2addr v8, v3

    add-int/lit8 v10, v1, 0x1

    iget-object v11, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->f:[D

    aget-wide v12, v11, v1

    aget-wide v14, v11, v10

    move v11, v6

    iget-wide v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->w:D

    cmpl-double v16, v12, v5

    if-gtz v16, :cond_4

    cmpl-double v5, v14, v5

    if-lez v5, :cond_3

    goto :goto_2

    :cond_3
    move v12, v3

    move/from16 v19, v4

    goto/16 :goto_a

    :cond_4
    :goto_2
    iget-object v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->h:[D

    aget-wide v5, v5, v9

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v16

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->i:[D

    aget-wide v19, v3, v10

    cmpg-double v3, v16, v19

    const-wide/16 v16, 0x0

    move/from16 v19, v4

    if-gez v3, :cond_5

    move-wide/from16 v5, v16

    :cond_5
    iget-wide v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->w:D

    cmpg-double v3, v12, v3

    if-ltz v3, :cond_9

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    move/from16 p2, v7

    move/from16 v20, v8

    iget-wide v7, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->w:D

    cmpg-double v3, v3, v7

    if-gez v3, :cond_6

    goto :goto_4

    :cond_6
    cmpg-double v3, v14, v7

    if-gez v3, :cond_8

    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->f:[D

    mul-double v7, v12, v5

    mul-double/2addr v7, v5

    aput-wide v7, v3, v1

    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->h:[D

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    div-double/2addr v7, v5

    aput-wide v7, v3, v9

    add-int/lit8 v3, v9, 0x1

    :goto_3
    iget v4, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    add-int/2addr v4, v9

    sub-int/2addr v4, v1

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    if-ge v3, v4, :cond_7

    iget-object v4, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->h:[D

    aget-wide v7, v4, v3

    div-double/2addr v7, v5

    aput-wide v7, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->g:[D

    aget-wide v7, v3, v1

    div-double/2addr v7, v5

    aput-wide v7, v3, v1

    move/from16 v8, v20

    goto :goto_6

    :cond_8
    move/from16 v7, p2

    move/from16 v8, v20

    goto :goto_7

    :cond_9
    move/from16 v20, v8

    :goto_4
    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->f:[D

    aput-wide v14, v3, v1

    aput-wide v12, v3, v10

    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->h:[D

    aput-wide v16, v3, v9

    add-int/lit8 v3, v1, 0x2

    move/from16 v8, v20

    :goto_5
    iget v4, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    if-ge v3, v4, :cond_a

    add-int/lit8 v9, v9, 0x1

    iget-object v4, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->h:[D

    aget-wide v5, v4, v9

    aget-wide v16, v4, v8

    aput-wide v16, v4, v9

    aput-wide v5, v4, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->g:[D

    aget-wide v5, v3, v1

    aget-wide v16, v3, v10

    aput-wide v16, v3, v1

    aput-wide v5, v3, v10

    :goto_6
    const/4 v7, 0x1

    :goto_7
    if-nez v7, :cond_c

    mul-double v3, v12, v5

    mul-double v16, v3, v5

    add-double v16, v14, v16

    div-double v14, v14, v16

    div-double v3, v3, v16

    mul-double/2addr v12, v14

    move/from16 p2, v7

    iget-object v7, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->f:[D

    aput-wide v16, v7, v1

    aput-wide v12, v7, v10

    iget-object v7, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->h:[D

    aput-wide v3, v7, v9

    add-int/lit8 v7, v1, 0x2

    :goto_8
    iget v12, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    if-ge v7, v12, :cond_b

    const/4 v12, 0x1

    add-int/2addr v9, v12

    iget-object v12, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->h:[D

    aget-wide v16, v12, v9

    aget-wide v20, v12, v8

    mul-double v20, v20, v14

    mul-double v22, v3, v16

    add-double v20, v20, v22

    aput-wide v20, v12, v9

    aget-wide v20, v12, v8

    mul-double v20, v20, v5

    sub-double v16, v16, v20

    aput-wide v16, v12, v8

    const/4 v12, 0x1

    add-int/2addr v8, v12

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_b
    const/4 v12, 0x1

    iget-object v7, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->g:[D

    aget-wide v8, v7, v1

    aget-wide v16, v7, v10

    mul-double v14, v14, v16

    mul-double/2addr v3, v8

    add-double/2addr v14, v3

    aput-wide v14, v7, v1

    aget-wide v3, v7, v10

    mul-double/2addr v5, v3

    sub-double/2addr v8, v5

    aput-wide v8, v7, v10

    goto :goto_9

    :cond_c
    move/from16 p2, v7

    const/4 v12, 0x1

    :goto_9
    move/from16 v7, p2

    :goto_a
    if-lez v1, :cond_d

    move v4, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v1, :cond_d

    iget-object v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->h:[D

    aget-wide v8, v5, v4

    add-int/lit8 v6, v4, -0x1

    aget-wide v13, v5, v6

    aput-wide v13, v5, v4

    aput-wide v8, v5, v6

    iget v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x2

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_d
    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->k:[I

    aget v4, v3, v1

    aget v5, v3, v10

    aput v5, v3, v1

    aput v4, v3, v10

    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->i:[D

    aget-wide v4, v3, v1

    aget-wide v8, v3, v10

    aput-wide v8, v3, v1

    aput-wide v4, v3, v10

    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->j:[D

    aget-wide v4, v3, v10

    iget-object v6, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->f:[D

    aget-wide v8, v6, v10

    iget-object v6, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->g:[D

    aget-wide v13, v6, v10

    mul-double/2addr v8, v13

    mul-double/2addr v8, v13

    add-double/2addr v4, v8

    aput-wide v4, v3, v1

    add-int/2addr v1, v2

    add-int/lit8 v6, v11, 0x1

    move v3, v12

    move/from16 v4, v19

    goto/16 :goto_1

    :cond_e
    return-void
.end method

.method public regress()Lorg/apache/commons/math3/stat/regression/RegressionResults;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->regress(I)Lorg/apache/commons/math3/stat/regression/RegressionResults;

    move-result-object p0

    return-object p0
.end method

.method public regress(I)Lorg/apache/commons/math3/stat/regression/RegressionResults;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 2
    iget-wide v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->m:J

    int-to-long v4, v1

    cmp-long v2, v2, v4

    if-lez v2, :cond_c

    .line 3
    iget v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    if-gt v1, v2, :cond_b

    .line 4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->i()V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->f()V

    .line 6
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d(I)[D

    move-result-object v4

    .line 7
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->h()V

    .line 8
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->a(I)[D

    move-result-object v2

    const/4 v3, 0x0

    move v5, v3

    move v11, v5

    .line 9
    :goto_0
    iget-object v6, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->q:[Z

    array-length v7, v6

    if-ge v5, v7, :cond_1

    .line 10
    aget-boolean v6, v6, v5

    if-nez v6, :cond_0

    add-int/lit8 v11, v11, 0x1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_1
    const/4 v6, 0x1

    if-ge v5, v1, :cond_3

    .line 11
    iget-object v7, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->k:[I

    aget v7, v7, v5

    if-eq v7, v5, :cond_2

    move v5, v6

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move v5, v3

    :goto_2
    if-nez v5, :cond_4

    .line 12
    new-instance v1, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    new-array v5, v6, [[D

    aput-object v2, v5, v3

    const/4 v6, 0x1

    iget-wide v7, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->m:J

    iget-wide v12, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->t:D

    iget-wide v14, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->u:D

    iget-wide v9, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->n:D

    iget-boolean v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->v:Z

    const/16 v17, 0x0

    move-object v3, v1

    move-wide/from16 v18, v9

    move v9, v11

    move-wide v10, v12

    move-wide v12, v14

    move-wide/from16 v14, v18

    move/from16 v16, v0

    invoke-direct/range {v3 .. v17}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    return-object v1

    .line 13
    :cond_4
    array-length v5, v4

    new-array v7, v5, [D

    .line 14
    array-length v5, v2

    new-array v5, v5, [D

    .line 15
    array-length v8, v4

    new-array v8, v8, [I

    move v9, v3

    .line 16
    :goto_3
    iget v10, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    if-ge v9, v10, :cond_7

    move v10, v3

    :goto_4
    if-ge v10, v1, :cond_6

    .line 17
    iget-object v12, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->k:[I

    aget v12, v12, v10

    if-ne v12, v9, :cond_5

    .line 18
    aget-wide v12, v4, v10

    aput-wide v12, v7, v9

    .line 19
    aput v10, v8, v9

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_7
    move v1, v3

    move v9, v1

    .line 20
    :goto_5
    array-length v10, v4

    if-ge v1, v10, :cond_a

    .line 21
    aget v10, v8, v1

    move v12, v3

    :goto_6
    if-gt v12, v1, :cond_9

    .line 22
    aget v13, v8, v12

    if-le v10, v13, :cond_8

    add-int/lit8 v14, v10, 0x1

    mul-int/2addr v14, v10

    .line 23
    div-int/lit8 v14, v14, 0x2

    add-int/2addr v14, v13

    goto :goto_7

    :cond_8
    add-int/lit8 v14, v13, 0x1

    mul-int/2addr v13, v14

    .line 24
    div-int/lit8 v13, v13, 0x2

    add-int v14, v13, v10

    .line 25
    :goto_7
    aget-wide v13, v2, v14

    aput-wide v13, v5, v9

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 26
    :cond_a
    new-instance v1, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    new-array v2, v6, [[D

    aput-object v5, v2, v3

    const/4 v8, 0x1

    iget-wide v9, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->m:J

    iget-wide v12, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->t:D

    iget-wide v14, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->u:D

    iget-wide v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->n:D

    iget-boolean v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->v:Z

    const/16 v19, 0x0

    move-object v5, v1

    move-object v6, v7

    move-object v7, v2

    move-wide/from16 v16, v3

    move/from16 v18, v0

    invoke-direct/range {v5 .. v19}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    return-object v1

    .line 27
    :cond_b
    new-instance v2, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_MANY_REGRESSORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 28
    :cond_c
    new-instance v2, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_ENOUGH_DATA_FOR_NUMBER_OF_PREDICTORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v4, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->m:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2
.end method

.method public regress([I)Lorg/apache/commons/math3/stat/regression/RegressionResults;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 29
    array-length v2, v1

    iget v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    if-gt v2, v3, :cond_12

    .line 30
    iget-wide v4, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->m:J

    int-to-long v2, v3

    cmp-long v2, v4, v2

    if-lez v2, :cond_11

    .line 31
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->sort([I)V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 32
    :goto_0
    array-length v5, v1

    const/4 v6, -0x1

    if-ge v3, v5, :cond_2

    .line 33
    iget v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    if-ge v3, v5, :cond_1

    if-lez v3, :cond_0

    .line 34
    aget v5, v1, v3

    add-int/lit8 v7, v3, -0x1

    aget v7, v1, v7

    if-ne v5, v7, :cond_0

    .line 35
    aput v6, v1, v3

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 36
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INDEX_LARGER_THAN_MAX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    :cond_2
    if-lez v4, :cond_5

    .line 37
    array-length v3, v1

    sub-int/2addr v3, v4

    new-array v3, v3, [I

    move v4, v2

    move v5, v4

    .line 38
    :goto_1
    array-length v7, v1

    if-ge v4, v7, :cond_4

    .line 39
    aget v7, v1, v4

    if-le v7, v6, :cond_3

    .line 40
    aput v7, v3, v5

    add-int/lit8 v5, v5, 0x1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move-object v1, v3

    .line 41
    :cond_5
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e([II)I

    .line 42
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->i()V

    .line 43
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->f()V

    .line 44
    array-length v3, v1

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d(I)[D

    move-result-object v5

    .line 45
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->h()V

    .line 46
    array-length v3, v1

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->a(I)[D

    move-result-object v3

    move v4, v2

    move v12, v4

    .line 47
    :goto_2
    iget-object v6, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->q:[Z

    array-length v7, v6

    if-ge v4, v7, :cond_7

    .line 48
    aget-boolean v6, v6, v4

    if-nez v6, :cond_6

    add-int/lit8 v12, v12, 0x1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    move v4, v2

    .line 49
    :goto_3
    iget v6, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    const/4 v7, 0x1

    if-ge v4, v6, :cond_9

    .line 50
    iget-object v6, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->k:[I

    aget v6, v6, v4

    aget v8, v1, v4

    if-eq v6, v8, :cond_8

    move v4, v7

    goto :goto_4

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    move v4, v2

    :goto_4
    if-nez v4, :cond_a

    .line 51
    new-instance v1, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    new-array v6, v7, [[D

    aput-object v3, v6, v2

    const/4 v7, 0x1

    iget-wide v8, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->m:J

    iget-wide v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->t:D

    iget-wide v13, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->u:D

    iget-wide v10, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->n:D

    iget-boolean v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->v:Z

    const/16 v18, 0x0

    move-object v4, v1

    move-wide v15, v10

    move v10, v12

    move-wide v11, v2

    move/from16 v17, v0

    invoke-direct/range {v4 .. v18}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    return-object v1

    .line 52
    :cond_a
    array-length v4, v5

    new-array v4, v4, [D

    .line 53
    array-length v6, v5

    new-array v6, v6, [I

    move v8, v2

    .line 54
    :goto_5
    array-length v9, v1

    if-ge v8, v9, :cond_d

    move v9, v2

    .line 55
    :goto_6
    iget-object v10, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->k:[I

    array-length v11, v10

    if-ge v9, v11, :cond_c

    .line 56
    aget v10, v10, v9

    aget v11, v1, v8

    if-ne v10, v11, :cond_b

    .line 57
    aget-wide v10, v5, v9

    aput-wide v10, v4, v8

    .line 58
    aput v9, v6, v8

    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 59
    :cond_d
    array-length v1, v3

    new-array v1, v1, [D

    move v8, v2

    move v9, v8

    .line 60
    :goto_7
    array-length v10, v5

    if-ge v8, v10, :cond_10

    .line 61
    aget v10, v6, v8

    move v11, v2

    :goto_8
    if-gt v11, v8, :cond_f

    .line 62
    aget v13, v6, v11

    if-le v10, v13, :cond_e

    add-int/lit8 v14, v10, 0x1

    mul-int/2addr v14, v10

    .line 63
    div-int/lit8 v14, v14, 0x2

    add-int/2addr v14, v13

    goto :goto_9

    :cond_e
    add-int/lit8 v14, v13, 0x1

    mul-int/2addr v13, v14

    .line 64
    div-int/lit8 v13, v13, 0x2

    add-int v14, v13, v10

    .line 65
    :goto_9
    aget-wide v13, v3, v14

    aput-wide v13, v1, v9

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 66
    :cond_10
    new-instance v3, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    new-array v8, v7, [[D

    aput-object v1, v8, v2

    const/4 v9, 0x1

    iget-wide v10, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->m:J

    iget-wide v13, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->t:D

    iget-wide v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->u:D

    iget-wide v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->n:D

    iget-boolean v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->v:Z

    const/16 v20, 0x0

    move-wide/from16 v17, v5

    move-object v6, v3

    move-object v7, v4

    move-wide v15, v1

    move/from16 v19, v0

    invoke-direct/range {v6 .. v20}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    return-object v3

    .line 67
    :cond_11
    new-instance v1, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_ENOUGH_DATA_FOR_NUMBER_OF_PREDICTORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->m:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 68
    :cond_12
    new-instance v2, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_MANY_REGRESSORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2
.end method
