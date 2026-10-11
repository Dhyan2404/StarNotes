.class final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/SlotAllocator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _firstAvailableSlot:I

.field private _free:I

.field private _size:I

.field private _slotsTaken:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/SlotAllocator;->_size:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/SlotAllocator;->_free:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/SlotAllocator;->_slotsTaken:[I

    return-void
.end method


# virtual methods
.method public allocateSlot(Lcom/sun/org/apache/bcel/internal/generic/Type;)I
    .locals 7

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result p1

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/SlotAllocator;->_free:I

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/SlotAllocator;->_firstAvailableSlot:I

    add-int v2, v0, p1

    iget v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/SlotAllocator;->_size:I

    const/4 v4, 0x0

    if-le v2, v3, :cond_1

    mul-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/SlotAllocator;->_size:I

    new-array v2, v3, [I

    move v3, v4

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/SlotAllocator;->_slotsTaken:[I

    aget v5, v5, v3

    aput v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/SlotAllocator;->_slotsTaken:[I

    :cond_1
    move v2, v4

    :goto_1
    if-ge v2, v0, :cond_3

    add-int v3, v1, p1

    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/SlotAllocator;->_slotsTaken:[I

    aget v5, v5, v2

    if-gt v3, v5, :cond_2

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-lt v0, v2, :cond_3

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/SlotAllocator;->_slotsTaken:[I

    add-int v5, v0, p1

    aget v6, v3, v0

    aput v6, v3, v5

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    if-ge v4, p1, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/SlotAllocator;->_slotsTaken:[I

    add-int v3, v2, v4

    add-int v5, v1, v4

    aput v5, v0, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/SlotAllocator;->_free:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/SlotAllocator;->_free:I

    return v1
.end method

.method public initialize([Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;)V
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v3

    aget-object v4, p1, v1

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/SlotAllocator;->_firstAvailableSlot:I

    return-void
.end method

.method public releaseSlot(Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;)V
    .locals 6

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result p1

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/SlotAllocator;->_free:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/SlotAllocator;->_slotsTaken:[I

    aget v3, v3, v2

    if-ne v3, p1, :cond_1

    add-int p1, v2, v0

    :goto_1
    if-ge p1, v1, :cond_0

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/SlotAllocator;->_slotsTaken:[I

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, p1, 0x1

    aget p1, v3, p1

    aput p1, v3, v2

    move v2, v4

    move p1, v5

    goto :goto_1

    :cond_0
    iget p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/SlotAllocator;->_free:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/SlotAllocator;->_free:I

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Variable slot allocation error(size="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", slot="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", limit="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v0, "INTERNAL_ERR"

    invoke-direct {p1, v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/Error;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method
