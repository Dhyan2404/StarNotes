.class public Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final l:J = -0x8000000000000000L

.field public static final m:J = 0x7ff0000000000000L

.field public static final n:J = 0xfffffffffffffL

.field public static final o:J = 0x10000000000000L


# instance fields
.field public e:[D

.field public f:I

.field public g:I

.field public h:[J

.field public i:Z

.field public j:Z

.field public k:Z


# direct methods
.method public varargs constructor <init>([D)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->e:[D

    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->g:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->i:Z

    iput-boolean v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->j:Z

    iput-boolean v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->k:Z

    const/high16 v1, -0x80000000

    move v2, v0

    :goto_0
    array-length v3, p1

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-ge v2, v3, :cond_4

    aget-wide v7, p1, v2

    invoke-static {v7, v8}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-eqz v3, :cond_1

    aget-wide v3, p1, v2

    const-wide/16 v7, 0x0

    cmpg-double v3, v3, v7

    if-gez v3, :cond_0

    iput-boolean v6, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->j:Z

    goto :goto_1

    :cond_0
    iput-boolean v6, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->i:Z

    goto :goto_1

    :cond_1
    aget-wide v7, p1, v2

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-boolean v6, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->k:Z

    goto :goto_1

    :cond_2
    aget-wide v6, p1, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->f(J)J

    move-result-wide v8

    cmp-long v3, v8, v4

    if-eqz v3, :cond_3

    invoke-static {v6, v7}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->d(J)I

    move-result v3

    invoke-static {v8, v9}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->b(J)I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {v1, v4}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v1

    iget v4, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->g:I

    invoke-static {v8, v9}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->a(J)I

    move-result v5

    add-int/2addr v3, v5

    invoke-static {v4, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v3

    iput v3, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->g:I

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-boolean p1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->i:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->j:Z

    if-eqz p1, :cond_5

    iput-boolean v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->i:Z

    iput-boolean v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->j:Z

    iput-boolean v6, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->k:Z

    :cond_5
    iget p1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->g:I

    if-gt p1, v1, :cond_6

    add-int/lit8 v1, v1, 0x10

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->c(I)V

    goto :goto_2

    :cond_6
    new-array p1, v6, [J

    aput-wide v4, p1, v0

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->h:[J

    :goto_2
    return-void
.end method

.method public static a(J)I
    .locals 6

    const-wide v0, -0x100000000L

    const/16 v2, 0x20

    const/4 v3, 0x0

    :goto_0
    if-eqz v2, :cond_1

    and-long v4, p0, v0

    cmp-long v4, v4, p0

    if-nez v4, :cond_0

    or-int/2addr v3, v2

    shr-long/2addr p0, v2

    :cond_0
    shr-int/lit8 v2, v2, 0x1

    shr-long/2addr v0, v2

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static b(J)I
    .locals 6

    const-wide v0, 0xffffffffL

    const/16 v2, 0x20

    const/4 v3, 0x0

    :goto_0
    if-eqz v2, :cond_1

    and-long v4, p0, v0

    cmp-long v4, v4, p0

    if-eqz v4, :cond_0

    or-int/2addr v3, v2

    shr-long/2addr p0, v2

    :cond_0
    shr-int/lit8 v2, v2, 0x1

    shr-long/2addr v0, v2

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static d(J)I
    .locals 2

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr p0, v0

    const/16 v0, 0x34

    shr-long/2addr p0, v0

    long-to-int p0, p0

    add-int/lit16 p0, p0, -0x433

    return p0
.end method

.method public static f(J)J
    .locals 5

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-wide v1, 0xfffffffffffffL

    if-nez v0, :cond_0

    and-long/2addr p0, v1

    const/4 v0, 0x1

    shl-long/2addr p0, v0

    goto :goto_0

    :cond_0
    const-wide/high16 v3, 0x10000000000000L

    and-long/2addr p0, v1

    or-long/2addr p0, v3

    :goto_0
    return-wide p0
.end method

.method public static g(J)J
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public final c(I)V
    .locals 11

    add-int/lit8 p1, p1, 0x1f

    iput p1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->f:I

    rem-int/lit8 v0, p1, 0x20

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->f:I

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->h:[J

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    array-length v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    aget-wide v4, v0, v3

    cmp-long v0, v4, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, p1, 0x1

    iget v4, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->g:I

    sub-int/2addr v0, v4

    const/16 v4, 0x3e

    add-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x3f

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->e:[D

    array-length v5, v5

    mul-int/2addr v5, v0

    new-array v0, v5, [J

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->h:[J

    move-wide v6, v1

    move v0, v3

    move v5, v4

    :goto_0
    iget-object v8, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->h:[J

    array-length v8, v8

    if-ge v0, v8, :cond_4

    move v8, v3

    :goto_1
    iget-object v9, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->e:[D

    array-length v9, v9

    if-ge v8, v9, :cond_3

    invoke-virtual {p0, v8, p1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->e(II)I

    move-result v9

    if-eqz v9, :cond_1

    const-wide/16 v9, 0x1

    shl-long/2addr v9, v5

    or-long/2addr v6, v9

    :cond_1
    add-int/lit8 v9, v5, -0x1

    if-nez v5, :cond_2

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->h:[J

    add-int/lit8 v9, v0, 0x1

    aput-wide v6, v5, v0

    move-wide v6, v1

    move v5, v4

    move v0, v9

    goto :goto_2

    :cond_2
    move v5, v9

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->compareTo(Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;)I
    .locals 10

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->e:[D

    array-length v1, v0

    iget-object v2, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->e:[D

    array-length v3, v2

    if-ne v1, v3, :cond_d

    .line 3
    iget-boolean v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->k:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4
    :cond_0
    iget-boolean v0, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->k:Z

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    return v2

    .line 5
    :cond_1
    iget-boolean v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->j:Z

    if-nez v0, :cond_c

    iget-boolean v0, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->i:Z

    if-eqz v0, :cond_2

    goto :goto_3

    .line 6
    :cond_2
    iget-boolean v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->i:Z

    if-nez v0, :cond_b

    iget-boolean v0, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->j:Z

    if-eqz v0, :cond_3

    goto :goto_2

    .line 7
    :cond_3
    iget v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->f:I

    iget v3, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->f:I

    if-ge v0, v3, :cond_4

    .line 8
    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->c(I)V

    goto :goto_0

    :cond_4
    if-le v0, v3, :cond_5

    .line 9
    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->c(I)V

    .line 10
    :cond_5
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->h:[J

    array-length v0, v0

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->h:[J

    array-length v3, v3

    invoke-static {v0, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v0, :cond_8

    .line 11
    iget-object v5, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->h:[J

    aget-wide v5, v5, v4

    iget-object v7, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->h:[J

    aget-wide v7, v7, v4

    cmp-long v9, v5, v7

    if-gez v9, :cond_6

    return v2

    :cond_6
    cmp-long v5, v5, v7

    if-lez v5, :cond_7

    return v1

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 12
    :cond_8
    iget-object p0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->h:[J

    array-length v0, p0

    iget-object p1, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->h:[J

    array-length v4, p1

    if-ge v0, v4, :cond_9

    return v2

    .line 13
    :cond_9
    array-length p0, p0

    array-length p1, p1

    if-le p0, p1, :cond_a

    return v1

    :cond_a
    return v3

    :cond_b
    :goto_2
    return v1

    :cond_c
    :goto_3
    return v2

    .line 14
    :cond_d
    array-length p0, v0

    array-length p1, v2

    sub-int/2addr p0, p1

    return p0
.end method

.method public final e(II)I
    .locals 6

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->e:[D

    aget-wide v0, v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->d(J)I

    move-result p1

    const/4 v2, 0x0

    if-lt p2, p1, :cond_6

    iget p0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->f:I

    if-le p2, p0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    if-ne p2, p0, :cond_2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->g(J)J

    move-result-wide p0

    cmp-long p0, p0, v4

    if-nez p0, :cond_1

    move v2, v3

    :cond_1
    return v2

    :cond_2
    add-int/lit8 p0, p1, 0x34

    if-le p2, p0, :cond_4

    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->g(J)J

    move-result-wide p0

    cmp-long p0, p0, v4

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    return v2

    :cond_4
    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->g(J)J

    move-result-wide v2

    cmp-long p0, v2, v4

    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->f(J)J

    move-result-wide v0

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    neg-long v0, v0

    :goto_1
    sub-int/2addr p2, p1

    shr-long p0, v0, p2

    const-wide/16 v0, 0x1

    and-long/2addr p0, v0

    long-to-int p0, p0

    return p0

    :cond_6
    :goto_2
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->compareTo(Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getComponents()[D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->e:[D

    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->e:[D

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->g:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-boolean v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->i:Z

    const/16 v2, 0x61

    const/16 v3, 0x47

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-boolean v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->j:Z

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-boolean p0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->k:Z

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method
