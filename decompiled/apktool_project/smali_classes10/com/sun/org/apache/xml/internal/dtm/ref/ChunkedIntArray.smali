.class final Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;
    }
.end annotation


# static fields
.field static final chunkalloc:I = 0x400

.field static final lowbits:I = 0xa

.field static final lowmask:I = 0x3ff


# instance fields
.field chunks:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;

.field final fastArray:[I

.field lastUsed:I

.field final slotsize:I


# direct methods
.method public constructor <init>(I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->slotsize:I

    new-instance v1, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;

    invoke-direct {v1, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;)V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->chunks:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;

    const/16 v1, 0x400

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->fastArray:[I

    const/4 v2, 0x0

    iput v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->lastUsed:I

    if-lt v0, p1, :cond_1

    if-le v0, p1, :cond_0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*****WARNING: ChunkedIntArray("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") wasting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " words per slot"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->chunks:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;->addElement([I)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ER_CHUNKEDINTARRAY_NOT_SUPPORTED"

    invoke-static {v0, p1}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public appendSlot(IIII)I
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->lastUsed:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x4

    shr-int/lit8 v1, v0, 0xa

    and-int/lit16 v0, v0, 0x3ff

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->chunks:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;

    invoke-virtual {v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->chunks:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;

    const/16 v3, 0x400

    new-array v3, v3, [I

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;->addElement([I)V

    :cond_0
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->chunks:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;->elementAt(I)[I

    move-result-object v1

    aput p1, v1, v0

    add-int/lit8 p1, v0, 0x1

    aput p2, v1, p1

    add-int/lit8 p1, v0, 0x2

    aput p3, v1, p1

    add-int/lit8 v0, v0, 0x3

    aput p4, v1, v0

    iget p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->lastUsed:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->lastUsed:I

    return p1
.end method

.method public discardLast()V
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->lastUsed:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->lastUsed:I

    return-void
.end method

.method public readEntry(II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    const/4 v0, 0x4

    if-ge p2, v0, :cond_0

    mul-int/2addr p1, v0

    shr-int/lit8 v0, p1, 0xa

    and-int/lit16 p1, p1, 0x3ff

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->chunks:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;->elementAt(I)[I

    move-result-object p0

    add-int/2addr p1, p2

    aget p0, p0, p1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "ER_OFFSET_BIGGER_THAN_SLOT"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readSlot(I[I)V
    .locals 4

    const/4 v0, 0x4

    mul-int/2addr p1, v0

    shr-int/lit8 v1, p1, 0xa

    and-int/lit16 p1, p1, 0x3ff

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->chunks:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;

    invoke-virtual {v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->chunks:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;

    const/16 v3, 0x400

    new-array v3, v3, [I

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;->addElement([I)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->chunks:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;->elementAt(I)[I

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public slotsUsed()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->lastUsed:I

    return p0
.end method

.method public specialFind(II)I
    .locals 2

    :cond_0
    if-lez p1, :cond_1

    mul-int/lit8 p1, p1, 0x4

    shr-int/lit8 v0, p1, 0xa

    and-int/lit16 p1, p1, 0x3ff

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->chunks:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;->elementAt(I)[I

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    if-ne p1, p2, :cond_0

    :cond_1
    if-gtz p1, :cond_2

    return p2

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public writeEntry(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    const/4 v0, 0x4

    if-ge p2, v0, :cond_0

    mul-int/2addr p1, v0

    shr-int/lit8 v0, p1, 0xa

    and-int/lit16 p1, p1, 0x3ff

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->chunks:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;->elementAt(I)[I

    move-result-object p0

    add-int/2addr p1, p2

    aput p3, p0, p1

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "ER_OFFSET_BIGGER_THAN_SLOT"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeSlot(IIIII)V
    .locals 3

    mul-int/lit8 p1, p1, 0x4

    shr-int/lit8 v0, p1, 0xa

    and-int/lit16 p1, p1, 0x3ff

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->chunks:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->chunks:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;

    const/16 v2, 0x400

    new-array v2, v2, [I

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;->addElement([I)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->chunks:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;->elementAt(I)[I

    move-result-object p0

    aput p2, p0, p1

    add-int/lit8 p2, p1, 0x1

    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x2

    aput p4, p0, p2

    add-int/lit8 p1, p1, 0x3

    aput p5, p0, p1

    return-void
.end method
