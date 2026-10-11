.class public Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final DEBUG_ASSERTIONS:Z = false

.field private static final _masks:[I

.field static final serialVersionUID:J = -0x43ab1a3f4b5d8c3fL


# instance fields
.field private _bit:I

.field private _bitSize:I

.field private _bits:[I

.field _first:I

.field private _int:I

.field private _intSize:I

.field _last:I

.field private _mask:I

.field private _node:I

.field private _pos:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_masks:[I

    return-void

    :array_0
    .array-data 4
        -0x80000000
        0x40000000    # 2.0f
        0x20000000
        0x10000000
        0x8000000
        0x4000000
        0x2000000
        0x1000000
        0x800000
        0x400000
        0x200000
        0x100000
        0x80000
        0x40000
        0x20000
        0x10000
        0x8000
        0x4000
        0x2000
        0x1000
        0x800
        0x400
        0x200
        0x100
        0x80
        0x40
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x20

    .line 1
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 3
    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_pos:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_node:I

    .line 5
    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_int:I

    .line 6
    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_bit:I

    .line 7
    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_first:I

    const/high16 v0, -0x80000000

    .line 8
    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_last:I

    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    move p1, v0

    .line 9
    :cond_0
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_bitSize:I

    ushr-int/lit8 p1, p1, 0x5

    add-int/lit8 p1, p1, 0x1

    .line 10
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_intSize:I

    add-int/lit8 p1, p1, 0x1

    .line 11
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_bits:[I

    return-void
.end method

.method public constructor <init>(I[I)V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 13
    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_pos:I

    const/4 v1, 0x0

    .line 14
    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_node:I

    .line 15
    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_int:I

    .line 16
    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_bit:I

    .line 17
    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_first:I

    const/high16 v0, -0x80000000

    .line 18
    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_last:I

    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    move p1, v0

    .line 19
    :cond_0
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_bitSize:I

    ushr-int/lit8 p1, p1, 0x5

    add-int/lit8 p1, p1, 0x1

    .line 20
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_intSize:I

    .line 21
    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_bits:[I

    return-void
.end method


# virtual methods
.method public cloneArray()Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_intSize:I

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_bits:[I

    invoke-direct {v0, v1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;-><init>(I[I)V

    return-object v0
.end method

.method public final data()[I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_bits:[I

    return-object p0
.end method

.method public final getBit(I)Z
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_bits:[I

    ushr-int/lit8 v0, p1, 0x5

    aget p0, p0, v0

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_masks:[I

    rem-int/lit8 p1, p1, 0x20

    aget p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getBitNumber(I)I
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_pos:I

    if-ne p1, v0, :cond_0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_node:I

    return p0

    :cond_0
    const/4 v1, 0x0

    if-ge p1, v0, :cond_1

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_pos:I

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_bit:I

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_int:I

    :cond_1
    :goto_0
    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_int:I

    iget v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_intSize:I

    if-gt v0, v2, :cond_5

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_bits:[I

    aget v0, v2, v0

    if-eqz v0, :cond_4

    :goto_1
    iget v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_bit:I

    const/16 v3, 0x20

    if-ge v2, v3, :cond_3

    sget-object v3, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_masks:[I

    aget v3, v3, v2

    and-int/2addr v3, v0

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_pos:I

    if-ne v3, p1, :cond_2

    iget p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_int:I

    shl-int/lit8 p1, p1, 0x5

    add-int/2addr p1, v2

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_node:I

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_bit:I

    goto :goto_1

    :cond_3
    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_bit:I

    :cond_4
    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_int:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_int:I

    goto :goto_0

    :cond_5
    return v1
.end method

.method public getMask()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_mask:I

    return p0
.end method

.method public final getNextBit(I)I
    .locals 4

    ushr-int/lit8 v0, p1, 0x5

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_intSize:I

    if-gt v0, v1, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_bits:[I

    aget v1, v1, v0

    if-eqz v1, :cond_1

    const/16 v2, 0x20

    rem-int/2addr p1, v2

    :goto_1
    if-ge p1, v2, :cond_1

    sget-object v3, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_masks:[I

    aget v3, v3, p1

    and-int/2addr v3, v1

    if-eqz v3, :cond_0

    shl-int/lit8 p0, v0, 0x5

    add-int/2addr p0, p1

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public final merge(Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;)Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;
    .locals 5

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_last:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_bits:[I

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_bits:[I

    goto :goto_4

    :cond_0
    iget v2, p1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_last:I

    if-eq v2, v1, :cond_7

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_first:I

    iget v3, p1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_first:I

    if-ge v1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-le v0, v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    iget v2, p1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_intSize:I

    iget v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_intSize:I

    if-le v2, v3, :cond_5

    if-le v0, v3, :cond_3

    move v0, v3

    :cond_3
    :goto_2
    if-gt v1, v0, :cond_4

    iget-object v2, p1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_bits:[I

    aget v3, v2, v1

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_bits:[I

    aget v4, v4, v1

    or-int/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-object p1, p1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_bits:[I

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_bits:[I

    goto :goto_4

    :cond_5
    if-le v0, v2, :cond_6

    move v0, v2

    :cond_6
    :goto_3
    if-gt v1, v0, :cond_7

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_bits:[I

    aget v3, v2, v1

    iget-object v4, p1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_bits:[I

    aget v4, v4, v1

    or-int/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    return-object p0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_bitSize:I

    ushr-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_intSize:I

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_mask:I

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_bits:[I

    return-void
.end method

.method public final resize(I)V
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_bitSize:I

    if-le p1, v0, :cond_0

    ushr-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_intSize:I

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_bits:[I

    ushr-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_bits:[I

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_bitSize:I

    :cond_0
    return-void
.end method

.method public final setBit(I)V
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_bitSize:I

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 v0, p1, 0x5

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_first:I

    if-ge v0, v1, :cond_1

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_first:I

    :cond_1
    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_last:I

    if-le v0, v1, :cond_2

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_last:I

    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_bits:[I

    aget v1, p0, v0

    sget-object v2, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_masks:[I

    rem-int/lit8 p1, p1, 0x20

    aget p1, v2, p1

    or-int/2addr p1, v1

    aput p1, p0, v0

    return-void
.end method

.method public setMask(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_mask:I

    return-void
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_bitSize:I

    return p0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_bitSize:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_mask:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->_bits:[I

    invoke-interface {p1, p0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/io/ObjectOutput;->flush()V

    return-void
.end method
