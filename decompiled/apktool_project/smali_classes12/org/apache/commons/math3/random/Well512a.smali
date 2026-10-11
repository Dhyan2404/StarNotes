.class public Lorg/apache/commons/math3/random/Well512a;
.super Lorg/apache/commons/math3/random/AbstractWell;
.source "SourceFile"


# static fields
.field private static final K:I = 0x200

.field private static final M1:I = 0xd

.field private static final M2:I = 0x9

.field private static final M3:I = 0x5

.field private static final serialVersionUID:J = -0x54b66732a18f151eL


# direct methods
.method public constructor <init>()V
    .locals 4

    const/16 v0, 0x9

    const/4 v1, 0x5

    const/16 v2, 0x200

    const/16 v3, 0xd

    .line 1
    invoke-direct {p0, v2, v3, v0, v1}, Lorg/apache/commons/math3/random/AbstractWell;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    const/16 v1, 0x200

    const/16 v2, 0xd

    const/16 v3, 0x9

    const/4 v4, 0x5

    move-object v0, p0

    move v5, p1

    .line 2
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/random/AbstractWell;-><init>(IIIII)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 7

    const/16 v1, 0x200

    const/16 v2, 0xd

    const/16 v3, 0x9

    const/4 v4, 0x5

    move-object v0, p0

    move-wide v5, p1

    .line 4
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/random/AbstractWell;-><init>(IIIIJ)V

    return-void
.end method

.method public constructor <init>([I)V
    .locals 6

    const/16 v1, 0x200

    const/16 v2, 0xd

    const/16 v3, 0x9

    const/4 v4, 0x5

    move-object v0, p0

    move-object v5, p1

    .line 3
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/random/AbstractWell;-><init>(IIII[I)V

    return-void
.end method


# virtual methods
.method public next(I)I
    .locals 8

    iget-object v0, p0, Lorg/apache/commons/math3/random/AbstractWell;->iRm1:[I

    iget v1, p0, Lorg/apache/commons/math3/random/AbstractWell;->index:I

    aget v0, v0, v1

    iget-object v2, p0, Lorg/apache/commons/math3/random/AbstractWell;->v:[I

    aget v3, v2, v1

    iget-object v4, p0, Lorg/apache/commons/math3/random/AbstractWell;->i1:[I

    aget v4, v4, v1

    aget v4, v2, v4

    iget-object v5, p0, Lorg/apache/commons/math3/random/AbstractWell;->i2:[I

    aget v5, v5, v1

    aget v5, v2, v5

    aget v6, v2, v0

    shl-int/lit8 v7, v3, 0x10

    xor-int/2addr v3, v7

    shl-int/lit8 v7, v4, 0xf

    xor-int/2addr v4, v7

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v5, 0xb

    xor-int/2addr v4, v5

    xor-int v5, v3, v4

    shl-int/lit8 v7, v6, 0x2

    xor-int/2addr v6, v7

    shl-int/lit8 v7, v3, 0x12

    xor-int/2addr v3, v7

    xor-int/2addr v3, v6

    shl-int/lit8 v4, v4, 0x1c

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v5, 0x5

    const v6, -0x25bbd2dc

    and-int/2addr v4, v6

    xor-int/2addr v4, v5

    xor-int/2addr v3, v4

    aput v5, v2, v1

    aput v3, v2, v0

    iput v0, p0, Lorg/apache/commons/math3/random/AbstractWell;->index:I

    rsub-int/lit8 p0, p1, 0x20

    ushr-int p0, v3, p0

    return p0
.end method
