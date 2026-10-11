.class public Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected m_blocksize:I

.field protected m_firstFree:I

.field protected m_map:[[B

.field protected m_map0:[B

.field protected m_numblocks:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x800

    .line 1
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    .line 3
    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_numblocks:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_firstFree:I

    .line 5
    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_blocksize:I

    .line 6
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_map0:[B

    new-array v0, v0, [[B

    .line 7
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_map:[[B

    aput-object p1, v0, v1

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;-><init>(I)V

    return-void
.end method

.method private addElements(BI)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_firstFree:I

    add-int v1, v0, p2

    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_blocksize:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    :goto_0
    if-ge v3, p2, :cond_5

    .line 2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_map0:[B

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_firstFree:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_firstFree:I

    aput-byte p1, v0, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3
    :cond_0
    div-int v1, v0, v2

    .line 4
    rem-int v2, v0, v2

    add-int/2addr v0, p2

    .line 5
    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_firstFree:I

    :goto_1
    if-lez p2, :cond_5

    .line 6
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_map:[[B

    array-length v4, v0

    if-lt v1, v4, :cond_1

    .line 7
    iget v4, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_numblocks:I

    add-int/2addr v4, v1

    .line 8
    new-array v4, v4, [[B

    .line 9
    array-length v5, v0

    invoke-static {v0, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iput-object v4, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_map:[[B

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_map:[[B

    aget-object v4, v0, v1

    if-nez v4, :cond_2

    .line 12
    iget v4, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_blocksize:I

    new-array v4, v4, [B

    aput-object v4, v0, v1

    .line 13
    :cond_2
    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_blocksize:I

    sub-int v5, v0, v2

    if-ge v5, p2, :cond_3

    sub-int/2addr v0, v2

    goto :goto_2

    :cond_3
    move v0, p2

    :goto_2
    sub-int/2addr p2, v0

    :goto_3
    add-int/lit8 v5, v0, -0x1

    if-lez v0, :cond_4

    add-int/lit8 v0, v2, 0x1

    .line 14
    aput-byte p1, v4, v2

    move v2, v0

    move v0, v5

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_1

    :cond_5
    return-void
.end method

.method private addElements(I)V
    .locals 4

    .line 15
    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_firstFree:I

    add-int v1, v0, p1

    .line 16
    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_blocksize:I

    if-le v1, v2, :cond_0

    .line 17
    rem-int v3, v0, v2

    add-int/2addr v0, p1

    .line 18
    rem-int/2addr v0, v2

    :goto_0
    add-int/lit8 v3, v3, 0x1

    if-gt v3, v0, :cond_0

    .line 19
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_map:[[B

    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_blocksize:I

    new-array v2, v2, [B

    aput-object v2, p1, v3

    goto :goto_0

    .line 20
    :cond_0
    iput v1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_firstFree:I

    return-void
.end method

.method private contains(B)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->indexOf(BI)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private insertElementAt(BI)V
    .locals 8

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_firstFree:I

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->addElement(B)V

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le p2, v0, :cond_3

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_blocksize:I

    div-int v0, p2, v0

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_map:[[B

    array-length v4, v3

    if-lt v0, v4, :cond_1

    iget v4, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_numblocks:I

    add-int/2addr v4, v0

    new-array v4, v4, [[B

    array-length v5, v3

    invoke-static {v3, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_map:[[B

    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_map:[[B

    aget-object v3, v1, v0

    if-nez v3, :cond_2

    iget v3, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_blocksize:I

    new-array v3, v3, [B

    aput-object v3, v1, v0

    :cond_2
    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_blocksize:I

    rem-int/2addr p2, v0

    aput-byte p1, v3, p2

    add-int/2addr p2, v2

    iput p2, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_firstFree:I

    goto :goto_2

    :cond_3
    iget v3, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_blocksize:I

    div-int v4, p2, v3

    div-int v5, v2, v3

    add-int/2addr v5, v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_firstFree:I

    rem-int/2addr p2, v3

    :goto_0
    if-gt v4, v5, :cond_5

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_blocksize:I

    sub-int v3, v0, p2

    sub-int/2addr v3, v2

    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_map:[[B

    aget-object v7, v6, v4

    if-nez v7, :cond_4

    new-array v7, v0, [B

    aput-object v7, v6, v4

    move v0, v1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, -0x1

    aget-byte v0, v7, v0

    add-int/lit8 v6, p2, 0x1

    invoke-static {v7, p2, v7, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    aput-byte p1, v7, p2

    add-int/lit8 v4, v4, 0x1

    move p1, v0

    move p2, v1

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method private lastIndexOf(B)I
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_firstFree:I

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_blocksize:I

    rem-int v2, v0, v1

    div-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_map:[[B

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    :goto_1
    if-ltz v2, :cond_1

    aget-byte v3, v1, v2

    if-ne v3, p1, :cond_0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_blocksize:I

    mul-int/2addr v0, p0

    add-int/2addr v2, v0

    return v2

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private removeElement(B)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->indexOf(BI)I

    move-result p1

    if-gez p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->removeElementAt(I)V

    const/4 p0, 0x1

    return p0
.end method

.method private removeElementAt(I)V
    .locals 6

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_firstFree:I

    if-ge p1, v0, :cond_3

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_blocksize:I

    div-int v2, p1, v1

    div-int/2addr v0, v1

    rem-int/2addr p1, v1

    :goto_0
    if-gt v2, v0, :cond_3

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_blocksize:I

    sub-int v3, v1, p1

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_map:[[B

    aget-object v5, v4, v2

    if-nez v5, :cond_0

    new-array v5, v1, [B

    aput-object v5, v4, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, p1, 0x1

    invoke-static {v5, v1, v5, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    const/4 p1, 0x0

    if-ge v2, v0, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_map:[[B

    add-int/lit8 v3, v2, 0x1

    aget-object v1, v1, v3

    if-eqz v1, :cond_2

    iget v3, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_blocksize:I

    add-int/lit8 v3, v3, -0x1

    aget-byte v1, v1, p1

    aput-byte v1, v5, v3

    goto :goto_2

    :cond_1
    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_blocksize:I

    add-int/lit8 v1, v1, -0x1

    aput-byte p1, v5, v1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget p1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_firstFree:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_firstFree:I

    return-void
.end method

.method private setSize(I)V
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_firstFree:I

    if-ge v0, p1, :cond_0

    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_firstFree:I

    :cond_0
    return-void
.end method


# virtual methods
.method public addElement(B)V
    .locals 6

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_firstFree:I

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_blocksize:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_map0:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_firstFree:I

    aput-byte p1, v1, v0

    goto :goto_0

    :cond_0
    div-int v2, v0, v1

    rem-int v1, v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_firstFree:I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_map:[[B

    array-length v3, v0

    if-lt v2, v3, :cond_1

    iget v3, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_numblocks:I

    add-int/2addr v3, v2

    new-array v3, v3, [[B

    array-length v4, v0

    const/4 v5, 0x0

    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_map:[[B

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_map:[[B

    aget-object v3, v0, v2

    if-nez v3, :cond_2

    iget p0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_blocksize:I

    new-array v3, p0, [B

    aput-object v3, v0, v2

    :cond_2
    aput-byte p1, v3, v1

    :goto_0
    return-void
.end method

.method public elementAt(I)B
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_blocksize:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_map0:[B

    aget-byte p0, p0, p1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_map:[[B

    div-int v1, p1, v0

    aget-object p0, p0, v1

    rem-int/2addr p1, v0

    aget-byte p0, p0, p1

    return p0
.end method

.method public indexOf(B)I
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->indexOf(BI)I

    move-result p0

    return p0
.end method

.method public indexOf(BI)I
    .locals 6

    .line 1
    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_firstFree:I

    const/4 v1, -0x1

    if-lt p2, v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_blocksize:I

    div-int v3, p2, v2

    .line 3
    rem-int/2addr p2, v2

    .line 4
    div-int/2addr v0, v2

    :goto_0
    if-ge v3, v0, :cond_3

    .line 5
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_map:[[B

    aget-object v2, v2, v3

    if-eqz v2, :cond_2

    .line 6
    :goto_1
    iget v4, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_blocksize:I

    if-ge p2, v4, :cond_2

    .line 7
    aget-byte v5, v2, p2

    if-ne v5, p1, :cond_1

    mul-int/2addr v3, v4

    add-int/2addr p2, v3

    return p2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    const/4 p2, 0x0

    goto :goto_0

    .line 8
    :cond_3
    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_firstFree:I

    iget v3, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_blocksize:I

    rem-int/2addr v2, v3

    .line 9
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_map:[[B

    aget-object v3, v3, v0

    :goto_2
    if-ge p2, v2, :cond_5

    .line 10
    aget-byte v4, v3, p2

    if-ne v4, p1, :cond_4

    .line 11
    iget p0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_blocksize:I

    mul-int/2addr v0, p0

    add-int/2addr p2, v0

    return p2

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_5
    return v1
.end method

.method public removeAllElements()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_firstFree:I

    return-void
.end method

.method public setElementAt(BI)V
    .locals 6

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_blocksize:I

    if-ge p2, v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_map0:[B

    aput-byte p1, p0, p2

    return-void

    :cond_0
    div-int v1, p2, v0

    rem-int v0, p2, v0

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_map:[[B

    array-length v3, v2

    if-lt v1, v3, :cond_1

    iget v3, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_numblocks:I

    add-int/2addr v3, v1

    new-array v3, v3, [[B

    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_map:[[B

    :cond_1
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_map:[[B

    aget-object v3, v2, v1

    if-nez v3, :cond_2

    iget v3, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_blocksize:I

    new-array v3, v3, [B

    aput-object v3, v2, v1

    :cond_2
    aput-byte p1, v3, v0

    iget p1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_firstFree:I

    if-lt p2, p1, :cond_3

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_firstFree:I

    :cond_3
    return-void
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedByteVector;->m_firstFree:I

    return p0
.end method
