.class public Lorg/apache/commons/math3/random/Well19937a;
.super Lorg/apache/commons/math3/random/AbstractWell;
.source "SourceFile"


# static fields
.field private static final K:I = 0x4de1

.field private static final M1:I = 0x46

.field private static final M2:I = 0xb3

.field private static final M3:I = 0x1c1

.field private static final serialVersionUID:J = -0x678eb66171065afbL


# direct methods
.method public constructor <init>()V
    .locals 4

    const/16 v0, 0xb3

    const/16 v1, 0x1c1

    const/16 v2, 0x4de1

    const/16 v3, 0x46

    .line 1
    invoke-direct {p0, v2, v3, v0, v1}, Lorg/apache/commons/math3/random/AbstractWell;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    const/16 v1, 0x4de1

    const/16 v2, 0x46

    const/16 v3, 0xb3

    const/16 v4, 0x1c1

    move-object v0, p0

    move v5, p1

    .line 2
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/random/AbstractWell;-><init>(IIIII)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 7

    const/16 v1, 0x4de1

    const/16 v2, 0x46

    const/16 v3, 0xb3

    const/16 v4, 0x1c1

    move-object v0, p0

    move-wide v5, p1

    .line 4
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/random/AbstractWell;-><init>(IIIIJ)V

    return-void
.end method

.method public constructor <init>([I)V
    .locals 6

    const/16 v1, 0x4de1

    const/16 v2, 0x46

    const/16 v3, 0xb3

    const/16 v4, 0x1c1

    move-object v0, p0

    move-object v5, p1

    .line 3
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/random/AbstractWell;-><init>(IIII[I)V

    return-void
.end method


# virtual methods
.method public next(I)I
    .locals 12

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

    const/high16 v9, -0x80000000

    and-int/2addr v8, v9

    const v10, 0x7fffffff

    aget v11, v3, v2

    and-int/2addr v10, v11

    xor-int/2addr v8, v10

    shl-int/lit8 v10, v4, 0x19

    xor-int/2addr v4, v10

    ushr-int/lit8 v10, v5, 0x1b

    xor-int/2addr v5, v10

    xor-int/2addr v4, v5

    ushr-int/lit8 v5, v6, 0x9

    ushr-int/lit8 v6, v7, 0x1

    xor-int/2addr v6, v7

    xor-int/2addr v5, v6

    xor-int v6, v4, v5

    shl-int/lit8 v7, v4, 0x9

    xor-int/2addr v4, v7

    xor-int/2addr v4, v8

    shl-int/lit8 v7, v5, 0x15

    xor-int/2addr v5, v7

    xor-int/2addr v4, v5

    ushr-int/lit8 v5, v6, 0x15

    xor-int/2addr v5, v6

    xor-int/2addr v4, v5

    aput v6, v3, v1

    aput v4, v3, v0

    aget v1, v3, v2

    and-int/2addr v1, v9

    aput v1, v3, v2

    iput v0, p0, Lorg/apache/commons/math3/random/AbstractWell;->index:I

    rsub-int/lit8 p0, p1, 0x20

    ushr-int p0, v4, p0

    return p0
.end method
