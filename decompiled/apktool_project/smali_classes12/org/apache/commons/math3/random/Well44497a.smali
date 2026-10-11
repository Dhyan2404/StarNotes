.class public Lorg/apache/commons/math3/random/Well44497a;
.super Lorg/apache/commons/math3/random/AbstractWell;
.source "SourceFile"


# static fields
.field private static final K:I = 0xadd1

.field private static final M1:I = 0x17

.field private static final M2:I = 0x1e1

.field private static final M3:I = 0xe5

.field private static final serialVersionUID:J = -0x358ea8daca549783L


# direct methods
.method public constructor <init>()V
    .locals 4

    const/16 v0, 0x1e1

    const/16 v1, 0xe5

    const v2, 0xadd1

    const/16 v3, 0x17

    .line 1
    invoke-direct {p0, v2, v3, v0, v1}, Lorg/apache/commons/math3/random/AbstractWell;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    const v1, 0xadd1

    const/16 v2, 0x17

    const/16 v3, 0x1e1

    const/16 v4, 0xe5

    move-object v0, p0

    move v5, p1

    .line 2
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/random/AbstractWell;-><init>(IIIII)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 7

    const v1, 0xadd1

    const/16 v2, 0x17

    const/16 v3, 0x1e1

    const/16 v4, 0xe5

    move-object v0, p0

    move-wide v5, p1

    .line 4
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/random/AbstractWell;-><init>(IIIIJ)V

    return-void
.end method

.method public constructor <init>([I)V
    .locals 6

    const v1, 0xadd1

    const/16 v2, 0x17

    const/16 v3, 0x1e1

    const/16 v4, 0xe5

    move-object v0, p0

    move-object v5, p1

    .line 3
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/random/AbstractWell;-><init>(IIII[I)V

    return-void
.end method


# virtual methods
.method public next(I)I
    .locals 10

    iget-object v0, p0, Lorg/apache/commons/math3/random/AbstractWell;->iRm1:[I

    iget v1, p0, Lorg/apache/commons/math3/random/AbstractWell;->index:I

    aget v0, v0, v1

    iget-object v2, p0, Lorg/apache/commons/math3/random/AbstractWell;->iRm2:[I

    aget v2, v2, v1

    iget-object v3, p0, Lorg/apache/commons/math3/random/AbstractWell;->v:[I

    aget v4, v3, v1

    iget-object v5, p0, Lorg/apache/commons/math3/random/AbstractWell;->i1:[I

    aget v5, v5, v1

    aget v5, v3, v5

    iget-object v6, p0, Lorg/apache/commons/math3/random/AbstractWell;->i2:[I

    aget v6, v6, v1

    aget v6, v3, v6

    iget-object v7, p0, Lorg/apache/commons/math3/random/AbstractWell;->i3:[I

    aget v7, v7, v1

    aget v7, v3, v7

    aget v8, v3, v0

    and-int/lit16 v8, v8, -0x8000

    aget v9, v3, v2

    and-int/lit16 v9, v9, 0x7fff

    xor-int/2addr v8, v9

    shl-int/lit8 v9, v4, 0x18

    xor-int/2addr v4, v9

    ushr-int/lit8 v9, v5, 0x1e

    xor-int/2addr v5, v9

    xor-int/2addr v4, v5

    shl-int/lit8 v5, v6, 0xa

    xor-int/2addr v5, v6

    shl-int/lit8 v6, v7, 0x1a

    xor-int/2addr v5, v6

    xor-int v6, v4, v5

    shl-int/lit8 v7, v5, 0x9

    ushr-int/lit8 v9, v5, 0x17

    xor-int/2addr v7, v9

    const v9, -0x4000001

    and-int/2addr v7, v9

    const/high16 v9, 0x20000

    and-int/2addr v5, v9

    if-eqz v5, :cond_0

    const v5, -0x48d60314

    xor-int/2addr v7, v5

    :cond_0
    ushr-int/lit8 v5, v4, 0x14

    xor-int/2addr v4, v5

    xor-int/2addr v4, v8

    xor-int/2addr v4, v7

    xor-int/2addr v4, v6

    aput v6, v3, v1

    aput v4, v3, v0

    aget v1, v3, v2

    and-int/lit16 v1, v1, -0x8000

    aput v1, v3, v2

    iput v0, p0, Lorg/apache/commons/math3/random/AbstractWell;->index:I

    rsub-int/lit8 p0, p1, 0x20

    ushr-int p0, v4, p0

    return p0
.end method
