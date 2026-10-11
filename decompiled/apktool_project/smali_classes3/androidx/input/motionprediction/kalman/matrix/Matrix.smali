.class public Landroidx/input/motionprediction/kalman/matrix/Matrix;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:[D


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a:I

    .line 3
    iput p2, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->b:I

    mul-int/2addr p1, p2

    .line 4
    new-array p1, p1, [D

    iput-object p1, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->c:[D

    return-void
.end method

.method public constructor <init>(I[D)V
    .locals 2
    .param p2    # [D
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    array-length v0, p2

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p1

    iput v0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a:I

    .line 7
    iput p1, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->b:I

    .line 8
    iput-object p2, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->c:[D

    .line 9
    array-length p0, p2

    mul-int v1, v0, p1

    if-ne p0, v1, :cond_0

    return-void

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    array-length p2, p2

    .line 11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    and-int/2addr p1, v0

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Invalid number of elements in \'values\' Expected:%d Actual:%d"

    .line 13
    invoke-static {v1, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Landroidx/input/motionprediction/kalman/matrix/Matrix;)V
    .locals 2
    .param p1    # Landroidx/input/motionprediction/kalman/matrix/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iget v0, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a:I

    iput v0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a:I

    .line 16
    iget v1, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->b:I

    iput v1, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->b:I

    mul-int/2addr v0, v1

    .line 17
    new-array v0, v0, [D

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->c:[D

    .line 18
    iget-object p0, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->c:[D

    const/4 p1, 0x0

    array-length v1, v0

    invoke-static {p0, p1, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static identity(I)Landroidx/input/motionprediction/kalman/matrix/Matrix;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-direct {v0, p0, p0}, Landroidx/input/motionprediction/kalman/matrix/Matrix;-><init>(II)V

    invoke-static {v0}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->setIdentity(Landroidx/input/motionprediction/kalman/matrix/Matrix;)V

    return-object v0
.end method

.method public static setIdentity(Landroidx/input/motionprediction/kalman/matrix/Matrix;)V
    .locals 4
    .param p0    # Landroidx/input/motionprediction/kalman/matrix/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->c:[D

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    iget v0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a:I

    iget v1, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->b:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v1, v1, v2, v3}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->put(IID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->b:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public dot(Landroidx/input/motionprediction/kalman/matrix/Matrix;Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;
    .locals 10
    .param p1    # Landroidx/input/motionprediction/kalman/matrix/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/input/motionprediction/kalman/matrix/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget v0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a:I

    iget v1, p2, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->b:I

    iget v1, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a:I

    if-ne v0, v1, :cond_3

    iget v0, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->b:I

    iget v1, p2, Landroidx/input/motionprediction/kalman/matrix/Matrix;->b:I

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a:I

    if-ge v1, v2, :cond_2

    move v2, v0

    :goto_1
    iget v3, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->b:I

    if-ge v2, v3, :cond_1

    const-wide/16 v3, 0x0

    move v5, v0

    :goto_2
    iget v6, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->b:I

    if-ge v5, v6, :cond_0

    invoke-virtual {p0, v1, v5}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v6

    invoke-virtual {p1, v5, v2}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_0
    invoke-virtual {p2, v1, v2, v3, v4}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->put(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p2

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "The matrices dimensions are not conformant for a dot matrix operation. this:%s that:%s result:%s"

    invoke-static {v1, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dotTranspose(Landroidx/input/motionprediction/kalman/matrix/Matrix;Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;
    .locals 10
    .param p1    # Landroidx/input/motionprediction/kalman/matrix/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/input/motionprediction/kalman/matrix/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget v0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a:I

    iget v1, p2, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->b:I

    iget v1, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->b:I

    if-ne v0, v1, :cond_3

    iget v0, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a:I

    iget v1, p2, Landroidx/input/motionprediction/kalman/matrix/Matrix;->b:I

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a:I

    if-ge v1, v2, :cond_2

    move v2, v0

    :goto_1
    iget v3, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a:I

    if-ge v2, v3, :cond_1

    const-wide/16 v3, 0x0

    move v5, v0

    :goto_2
    iget v6, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->b:I

    if-ge v5, v6, :cond_0

    invoke-virtual {p0, v1, v5}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v6

    invoke-virtual {p1, v2, v5}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_0
    invoke-virtual {p2, v1, v2, v3, v4}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->put(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p2

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "The matrices dimensions are not conformant for a transpose operation. this:%s that:%s result:%s"

    invoke-static {v1, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;

    iget v1, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a:I

    iget v3, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->b:I

    iget v3, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    move v1, v2

    :goto_0
    iget-object v3, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->c:[D

    array-length v4, v3

    if-ge v1, v4, :cond_5

    aget-wide v3, v3, v1

    iget-object v5, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->c:[D

    aget-wide v5, v5, v1

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public fill(D)V
    .locals 0

    iget-object p0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->c:[D

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->fill([DD)V

    return-void
.end method

.method public get(II)D
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a:I

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->b:I

    if-ge p2, v0, :cond_0

    iget-object p0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->c:[D

    mul-int/2addr p1, v0

    add-int/2addr p1, p2

    aget-wide p0, p0, p1

    return-wide p0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Invalid matrix index value. i:%d j:%d not available in %s"

    invoke-static {v1, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNumCols()I
    .locals 0

    iget p0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->b:I

    return p0
.end method

.method public getNumRows()I
    .locals 0

    iget p0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a:I

    return p0
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a:I

    mul-int/lit8 v0, v0, 0x65

    iget v1, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->b:I

    add-int/2addr v0, v1

    iget-object p0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->c:[D

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, p0, v2

    mul-int/lit8 v0, v0, 0x25

    invoke-static {v3, v4}, Ljava/lang/Double;->hashCode(D)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public inverse(Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;
    .locals 13
    .param p1    # Landroidx/input/motionprediction/kalman/matrix/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget v0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a:I

    iget v1, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->b:I

    if-ne v0, v1, :cond_11

    iget v2, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a:I

    if-ne v2, v0, :cond_10

    iget v0, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->b:I

    mul-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_10

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a:I

    const-wide/16 v3, 0x0

    if-ge v1, v2, :cond_2

    move v2, v0

    :goto_1
    iget v5, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->b:I

    if-ge v2, v5, :cond_1

    invoke-virtual {p0, v1, v2}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v5

    invoke-virtual {p1, v1, v2, v5, v6}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->put(IID)V

    iget v5, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->b:I

    add-int/2addr v5, v2

    if-ne v1, v2, :cond_0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    :cond_0
    move-wide v6, v3

    :goto_2
    invoke-virtual {p1, v1, v5, v6, v7}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->put(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_3
    iget v2, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a:I

    if-ge v1, v2, :cond_a

    invoke-virtual {p1, v1, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    add-int/lit8 v2, v1, 0x1

    move v8, v1

    move v7, v2

    :goto_4
    iget v9, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a:I

    if-ge v7, v9, :cond_4

    invoke-virtual {p1, v7, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpl-double v11, v9, v5

    if-lez v11, :cond_3

    move v8, v7

    move-wide v5, v9

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_4
    if-eq v8, v1, :cond_5

    move v5, v0

    :goto_5
    iget v6, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->b:I

    if-ge v5, v6, :cond_5

    invoke-virtual {p1, v1, v5}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v6

    invoke-virtual {p1, v8, v5}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v9

    invoke-virtual {p1, v1, v5, v9, v10}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->put(IID)V

    invoke-virtual {p1, v8, v5, v6, v7}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->put(IID)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_5
    invoke-virtual {p1, v1, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v5

    cmpl-double v7, v5, v3

    if-eqz v7, :cond_9

    move v7, v0

    :goto_6
    iget v8, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->b:I

    if-ge v7, v8, :cond_6

    invoke-virtual {p1, v1, v7}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v8

    div-double/2addr v8, v5

    invoke-virtual {p1, v1, v7, v8, v9}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->put(IID)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_6
    move v5, v2

    :goto_7
    iget v6, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a:I

    if-ge v5, v6, :cond_8

    invoke-virtual {p1, v5, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v6

    move v8, v0

    :goto_8
    iget v9, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->b:I

    if-ge v8, v9, :cond_7

    invoke-virtual {p1, v5, v8}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v9

    invoke-virtual {p1, v1, v8}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v11

    mul-double/2addr v11, v6

    sub-double/2addr v9, v11

    invoke-virtual {p1, v5, v8, v9, v10}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->put(IID)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_8
    move v1, v2

    goto :goto_3

    :cond_9
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "Singular matrix"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    add-int/lit8 v2, v2, -0x1

    :goto_9
    if-ltz v2, :cond_d

    move v1, v0

    :goto_a
    if-ge v1, v2, :cond_c

    invoke-virtual {p1, v1, v2}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v3

    move v5, v0

    :goto_b
    iget v6, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->b:I

    if-ge v5, v6, :cond_b

    invoke-virtual {p1, v1, v5}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v6

    invoke-virtual {p1, v2, v5}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v8

    mul-double/2addr v8, v3

    sub-double/2addr v6, v8

    invoke-virtual {p1, v1, v5, v6, v7}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->put(IID)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_c
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    :cond_d
    move v1, v0

    :goto_c
    iget v2, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a:I

    if-ge v1, v2, :cond_f

    move v2, v0

    :goto_d
    iget v3, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->b:I

    if-ge v2, v3, :cond_e

    add-int/2addr v3, v2

    invoke-virtual {p1, v1, v3}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v3

    invoke-virtual {p0, v1, v2, v3, v4}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->put(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_f
    return-object p0

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "The scratch matrix size is not correct. this:%s"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "The matrix is not square. this:%s"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public minus(Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;
    .locals 6
    .param p1    # Landroidx/input/motionprediction/kalman/matrix/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget v0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a:I

    iget v1, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->b:I

    iget v1, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->b:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->c:[D

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-wide v2, v1, v0

    iget-object v4, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->c:[D

    aget-wide v4, v4, v0

    sub-double/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "The matrix dimensions are not the same. this:%s that:%s"

    invoke-static {v1, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public plus(Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;
    .locals 6
    .param p1    # Landroidx/input/motionprediction/kalman/matrix/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget v0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a:I

    iget v1, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->b:I

    iget v1, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->b:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->c:[D

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-wide v2, v1, v0

    iget-object v4, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->c:[D

    aget-wide v4, v4, v0

    add-double/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "The matrix dimensions are not the same. this:%s that:%s"

    invoke-static {v1, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public put(IID)V
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a:I

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->b:I

    if-ge p2, v0, :cond_0

    iget-object p0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->c:[D

    mul-int/2addr p1, v0

    add-int/2addr p1, p2

    aput-wide p3, p0, p1

    return-void

    :cond_0
    new-instance p3, Ljava/lang/IndexOutOfBoundsException;

    sget-object p4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Invalid matrix index value. i:%d j:%d not available in %s"

    invoke-static {p4, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public scale(D)V
    .locals 5

    iget v0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a:I

    iget v1, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->b:I

    mul-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->c:[D

    aget-wide v3, v2, v1

    mul-double/2addr v3, p1

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a:I

    iget v2, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->b:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget v1, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->c:[D

    array-length v2, v2

    if-ge v1, v2, :cond_2

    if-lez v1, :cond_1

    iget v2, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->b:I

    rem-int v2, v1, v2

    if-nez v2, :cond_0

    const-string v2, "; "

    goto :goto_1

    :cond_0
    const-string v2, ", "

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v2, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->c:[D

    aget-wide v2, v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
