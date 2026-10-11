.class public Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;
    }
.end annotation


# static fields
.field private static final DEFAULT_EXPECTED_SIZE:I = 0x10

.field protected static final FREE:B = 0x0t

.field protected static final FULL:B = 0x1t

.field private static final LOAD_FACTOR:F = 0.5f

.field private static final PERTURB_SHIFT:I = 0x5

.field protected static final REMOVED:B = 0x2t

.field private static final RESIZE_MULTIPLIER:I = 0x2

.field private static final serialVersionUID:J = -0x329a643b11501df1L


# instance fields
.field private transient count:I

.field private keys:[I

.field private mask:I

.field private final missingEntries:D

.field private size:I

.field private states:[B

.field private values:[D


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x10

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;-><init>(ID)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    const/16 v0, 0x10

    .line 2
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;-><init>(ID)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;-><init>(ID)V

    return-void
.end method

.method public constructor <init>(ID)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->computeCapacity(I)I

    move-result p1

    .line 6
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->keys:[I

    .line 7
    new-array v0, p1, [D

    iput-object v0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->values:[D

    .line 8
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->states:[B

    .line 9
    iput-wide p2, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->missingEntries:D

    add-int/lit8 p1, p1, -0x1

    .line 10
    iput p1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->mask:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;)V
    .locals 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iget-object v0, p1, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->keys:[I

    array-length v0, v0

    .line 13
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->keys:[I

    .line 14
    iget-object v2, p1, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->keys:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    new-array v1, v0, [D

    iput-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->values:[D

    .line 16
    iget-object v2, p1, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->values:[D

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->states:[B

    .line 18
    iget-object v2, p1, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->states:[B

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    iget-wide v0, p1, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->missingEntries:D

    iput-wide v0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->missingEntries:D

    .line 20
    iget v0, p1, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->size:I

    iput v0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->size:I

    .line 21
    iget v0, p1, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->mask:I

    iput v0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->mask:I

    .line 22
    iget p1, p1, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->count:I

    iput p1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->count:I

    return-void
.end method

.method public static synthetic access$100(Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;)I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->count:I

    return p0
.end method

.method public static synthetic access$200(Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;)[I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->keys:[I

    return-object p0
.end method

.method public static synthetic access$300(Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;)[D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->values:[D

    return-object p0
.end method

.method public static synthetic access$400(Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;)[B
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->states:[B

    return-object p0
.end method

.method private static changeIndexSign(I)I
    .locals 0

    neg-int p0, p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private static computeCapacity(I)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    int-to-float p0, p0

    const/high16 v0, 0x3f000000    # 0.5f

    div-float/2addr p0, v0

    float-to-double v0, p0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    if-ne v0, p0, :cond_1

    return p0

    :cond_1
    invoke-static {p0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->nextPowerOfTwo(I)I

    move-result p0

    return p0
.end method

.method private containsKey(II)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 9
    iget-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->states:[B

    aget-byte v1, v1, p2

    if-ne v1, v0, :cond_1

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->keys:[I

    aget p0, p0, p2

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private doRemove(I)D
    .locals 5

    iget-object v0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->keys:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    iget-object v0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->states:[B

    const/4 v1, 0x2

    aput-byte v1, v0, p1

    iget-object v0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->values:[D

    aget-wide v1, v0, p1

    iget-wide v3, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->missingEntries:D

    aput-wide v3, v0, p1

    iget p1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->size:I

    iget p1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->count:I

    return-wide v1
.end method

.method private findInsertionIndex(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->keys:[I

    iget-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->states:[B

    iget p0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->mask:I

    invoke-static {v0, v1, p1, p0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->findInsertionIndex([I[BII)I

    move-result p0

    return p0
.end method

.method private static findInsertionIndex([I[BII)I
    .locals 7

    .line 2
    invoke-static {p2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->hashOf(I)I

    move-result v0

    and-int v1, v0, p3

    .line 3
    aget-byte v2, p1, v1

    if-nez v2, :cond_0

    return v1

    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 4
    aget v2, p0, v1

    if-ne v2, p2, :cond_1

    .line 5
    invoke-static {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->changeIndexSign(I)I

    move-result p0

    return p0

    .line 6
    :cond_1
    invoke-static {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->perturb(I)I

    move-result v0

    .line 7
    aget-byte v2, p1, v1

    if-ne v2, v3, :cond_4

    .line 8
    :cond_2
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->probe(II)I

    move-result v1

    and-int v2, v1, p3

    shr-int/lit8 v0, v0, 0x5

    .line 9
    aget-byte v4, p1, v2

    if-ne v4, v3, :cond_3

    aget v4, p0, v2

    if-ne v4, p2, :cond_2

    :cond_3
    move v6, v2

    move v2, v1

    move v1, v6

    goto :goto_0

    :cond_4
    move v2, v1

    .line 10
    :goto_0
    aget-byte v4, p1, v1

    if-nez v4, :cond_5

    return v1

    :cond_5
    if-ne v4, v3, :cond_6

    .line 11
    invoke-static {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->changeIndexSign(I)I

    move-result p0

    return p0

    .line 12
    :cond_6
    :goto_1
    invoke-static {v0, v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->probe(II)I

    move-result v2

    and-int v4, v2, p3

    .line 13
    aget-byte v5, p1, v4

    if-nez v5, :cond_7

    return v1

    :cond_7
    if-ne v5, v3, :cond_8

    .line 14
    aget v5, p0, v4

    if-ne v5, p2, :cond_8

    .line 15
    invoke-static {v4}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->changeIndexSign(I)I

    move-result p0

    return p0

    :cond_8
    shr-int/lit8 v0, v0, 0x5

    goto :goto_1
.end method

.method private growTable()V
    .locals 14

    iget-object v0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->states:[B

    array-length v1, v0

    iget-object v2, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->keys:[I

    iget-object v3, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->values:[D

    mul-int/lit8 v4, v1, 0x2

    new-array v5, v4, [I

    new-array v6, v4, [D

    new-array v7, v4, [B

    const/4 v8, 0x1

    sub-int/2addr v4, v8

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v1, :cond_1

    aget-byte v10, v0, v9

    if-ne v10, v8, :cond_0

    aget v10, v2, v9

    invoke-static {v5, v7, v10, v4}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->findInsertionIndex([I[BII)I

    move-result v11

    aput v10, v5, v11

    aget-wide v12, v3, v9

    aput-wide v12, v6, v11

    aput-byte v8, v7, v11

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    iput v4, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->mask:I

    iput-object v5, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->keys:[I

    iput-object v6, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->values:[D

    iput-object v7, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->states:[B

    return-void
.end method

.method private static hashOf(I)I
    .locals 2

    ushr-int/lit8 v0, p0, 0x14

    ushr-int/lit8 v1, p0, 0xc

    xor-int/2addr v0, v1

    xor-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x7

    xor-int/2addr v0, p0

    ushr-int/lit8 p0, p0, 0x4

    xor-int/2addr p0, v0

    return p0
.end method

.method private static nextPowerOfTwo(I)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static perturb(I)I
    .locals 1

    const v0, 0x7fffffff

    and-int/2addr p0, v0

    return p0
.end method

.method private static probe(II)I
    .locals 1

    shl-int/lit8 v0, p1, 0x2

    add-int/2addr v0, p1

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->count:I

    return-void
.end method

.method private shouldGrowTable()Z
    .locals 3

    iget v0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->size:I

    int-to-float v0, v0

    iget p0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->mask:I

    const/4 v1, 0x1

    add-int/2addr p0, v1

    int-to-float p0, p0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr p0, v2

    cmpl-float p0, v0, p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public containsKey(I)Z
    .locals 6

    .line 1
    invoke-static {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->hashOf(I)I

    move-result v0

    .line 2
    iget v1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->mask:I

    and-int/2addr v1, v0

    .line 3
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->containsKey(II)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    .line 4
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->states:[B

    aget-byte v2, v2, v1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    return v4

    .line 5
    :cond_1
    invoke-static {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->perturb(I)I

    move-result v0

    move v2, v1

    :goto_0
    iget-object v5, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->states:[B

    aget-byte v1, v5, v1

    if-eqz v1, :cond_3

    .line 6
    invoke-static {v0, v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->probe(II)I

    move-result v2

    .line 7
    iget v1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->mask:I

    and-int/2addr v1, v2

    .line 8
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->containsKey(II)Z

    move-result v5

    if-eqz v5, :cond_2

    return v3

    :cond_2
    shr-int/lit8 v0, v0, 0x5

    goto :goto_0

    :cond_3
    return v4
.end method

.method public get(I)D
    .locals 4

    invoke-static {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->hashOf(I)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->mask:I

    and-int/2addr v1, v0

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->containsKey(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->values:[D

    aget-wide p0, p0, v1

    return-wide p0

    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->states:[B

    aget-byte v2, v2, v1

    if-nez v2, :cond_1

    iget-wide p0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->missingEntries:D

    return-wide p0

    :cond_1
    invoke-static {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->perturb(I)I

    move-result v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->states:[B

    aget-byte v1, v3, v1

    if-eqz v1, :cond_3

    invoke-static {v0, v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->probe(II)I

    move-result v2

    iget v1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->mask:I

    and-int/2addr v1, v2

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->containsKey(II)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->values:[D

    aget-wide p0, p0, v1

    return-wide p0

    :cond_2
    shr-int/lit8 v0, v0, 0x5

    goto :goto_0

    :cond_3
    iget-wide p0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->missingEntries:D

    return-wide p0
.end method

.method public iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;
    .locals 2

    new-instance v0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;-><init>(Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$a;)V

    return-object v0
.end method

.method public put(ID)D
    .locals 6

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->findInsertionIndex(I)I

    move-result v0

    iget-wide v1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->missingEntries:D

    const/4 v3, 0x1

    if-gez v0, :cond_0

    invoke-static {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->changeIndexSign(I)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->values:[D

    aget-wide v1, v1, v0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    iget-object v5, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->keys:[I

    aput p1, v5, v0

    iget-object p1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->states:[B

    aput-byte v3, p1, v0

    iget-object p1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->values:[D

    aput-wide p2, p1, v0

    if-eqz v4, :cond_2

    iget p1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->size:I

    add-int/2addr p1, v3

    iput p1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->size:I

    invoke-direct {p0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->shouldGrowTable()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->growTable()V

    :cond_1
    iget p1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->count:I

    add-int/2addr p1, v3

    iput p1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->count:I

    :cond_2
    return-wide v1
.end method

.method public remove(I)D
    .locals 4

    invoke-static {p1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->hashOf(I)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->mask:I

    and-int/2addr v1, v0

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->containsKey(II)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->doRemove(I)D

    move-result-wide p0

    return-wide p0

    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->states:[B

    aget-byte v2, v2, v1

    if-nez v2, :cond_1

    iget-wide p0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->missingEntries:D

    return-wide p0

    :cond_1
    invoke-static {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->perturb(I)I

    move-result v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->states:[B

    aget-byte v1, v3, v1

    if-eqz v1, :cond_3

    invoke-static {v0, v2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->probe(II)I

    move-result v2

    iget v1, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->mask:I

    and-int/2addr v1, v2

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->containsKey(II)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->doRemove(I)D

    move-result-wide p0

    return-wide p0

    :cond_2
    shr-int/lit8 v0, v0, 0x5

    goto :goto_0

    :cond_3
    iget-wide p0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->missingEntries:D

    return-wide p0
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->size:I

    return p0
.end method
