.class public Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final NUMBLOCKS_DEFAULT:I = 0x20


# instance fields
.field protected m_MASK:I

.field protected m_SHIFT:I

.field protected m_blocksize:I

.field protected m_buildCache:[I

.field protected m_buildCacheStartIndex:I

.field protected m_firstFree:I

.field protected m_map:[[I

.field protected m_map0:[I

.field protected m_numblocks:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x800

    .line 1
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x20

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    .line 3
    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_numblocks:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_firstFree:I

    .line 5
    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_SHIFT:I

    :goto_0
    const/4 v1, 0x1

    ushr-int/2addr p1, v1

    if-eqz p1, :cond_0

    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_SHIFT:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_SHIFT:I

    goto :goto_0

    .line 6
    :cond_0
    iget p1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_SHIFT:I

    shl-int p1, v1, p1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_blocksize:I

    add-int/lit8 v1, p1, -0x1

    .line 7
    iput v1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_MASK:I

    .line 8
    iput p2, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_numblocks:I

    .line 9
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_map0:[I

    .line 10
    new-array p2, p2, [[I

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_map:[[I

    .line 11
    aput-object p1, p2, v0

    .line 12
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_buildCache:[I

    .line 13
    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_buildCacheStartIndex:I

    return-void
.end method

.method private addElements(I)V
    .locals 4

    .line 15
    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_firstFree:I

    add-int v1, v0, p1

    .line 16
    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_blocksize:I

    if-le v1, v2, :cond_0

    .line 17
    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v3, v0, v2

    add-int/2addr v0, p1

    ushr-int p1, v0, v2

    :goto_0
    add-int/lit8 v3, v3, 0x1

    if-gt v3, p1, :cond_0

    .line 18
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_map:[[I

    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_blocksize:I

    new-array v2, v2, [I

    aput-object v2, v0, v3

    goto :goto_0

    .line 19
    :cond_0
    iput v1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_firstFree:I

    return-void
.end method

.method private addElements(II)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_firstFree:I

    add-int v1, v0, p2

    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_blocksize:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    :goto_0
    if-ge v3, p2, :cond_5

    .line 2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_map0:[I

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_firstFree:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_firstFree:I

    aput p1, v0, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v1, v0, v1

    .line 4
    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_MASK:I

    and-int/2addr v2, v0

    add-int/2addr v0, p2

    .line 5
    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_firstFree:I

    :goto_1
    if-lez p2, :cond_5

    .line 6
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_map:[[I

    array-length v4, v0

    if-lt v1, v4, :cond_1

    .line 7
    iget v4, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_numblocks:I

    add-int/2addr v4, v1

    .line 8
    new-array v4, v4, [[I

    .line 9
    array-length v5, v0

    invoke-static {v0, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iput-object v4, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_map:[[I

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_map:[[I

    aget-object v4, v0, v1

    if-nez v4, :cond_2

    .line 12
    iget v4, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_blocksize:I

    new-array v4, v4, [I

    aput-object v4, v0, v1

    .line 13
    :cond_2
    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_blocksize:I

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
    aput p1, v4, v2

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

.method private contains(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->indexOf(II)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private insertElementAt(II)V
    .locals 7

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_firstFree:I

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->addElement(I)V

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    if-le p2, v0, :cond_3

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v0, p2, v0

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_map:[[I

    array-length v3, v2

    if-lt v0, v3, :cond_1

    iget v3, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_numblocks:I

    add-int/2addr v3, v0

    new-array v3, v3, [[I

    array-length v4, v2

    invoke-static {v2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_map:[[I

    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_map:[[I

    aget-object v2, v1, v0

    if-nez v2, :cond_2

    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_blocksize:I

    new-array v2, v2, [I

    aput-object v2, v1, v0

    :cond_2
    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_MASK:I

    and-int/2addr p2, v0

    aput p1, v2, p2

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_firstFree:I

    goto :goto_2

    :cond_3
    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v3, p2, v2

    ushr-int v2, v0, v2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_firstFree:I

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_MASK:I

    and-int/2addr p2, v0

    :goto_0
    if-gt v3, v2, :cond_5

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_blocksize:I

    sub-int v4, v0, p2

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_map:[[I

    aget-object v6, v5, v3

    if-nez v6, :cond_4

    new-array v6, v0, [I

    aput-object v6, v5, v3

    move v0, v1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, -0x1

    aget v0, v6, v0

    add-int/lit8 v5, p2, 0x1

    invoke-static {v6, p2, v6, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    aput p1, v6, p2

    add-int/lit8 v3, v3, 0x1

    move p1, v0

    move p2, v1

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method private lastIndexOf(I)I
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_firstFree:I

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_MASK:I

    and-int/2addr v1, v0

    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_map:[[I

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    :goto_1
    if-ltz v1, :cond_1

    aget v3, v2, v1

    if-ne v3, p1, :cond_0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_blocksize:I

    mul-int/2addr v0, p0

    add-int/2addr v1, v0

    return v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private removeElement(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->indexOf(II)I

    move-result p1

    if-gez p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->removeElementAt(I)V

    const/4 p0, 0x1

    return p0
.end method

.method private removeElementAt(I)V
    .locals 6

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_firstFree:I

    if-ge p1, v0, :cond_3

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v2, p1, v1

    ushr-int/2addr v0, v1

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_MASK:I

    and-int/2addr p1, v1

    :goto_0
    if-gt v2, v0, :cond_3

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_blocksize:I

    sub-int v3, v1, p1

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_map:[[I

    aget-object v5, v4, v2

    if-nez v5, :cond_0

    new-array v5, v1, [I

    aput-object v5, v4, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, p1, 0x1

    invoke-static {v5, v1, v5, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    const/4 p1, 0x0

    if-ge v2, v0, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_map:[[I

    add-int/lit8 v3, v2, 0x1

    aget-object v1, v1, v3

    if-eqz v1, :cond_2

    iget v3, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_blocksize:I

    add-int/lit8 v3, v3, -0x1

    aget v1, v1, p1

    aput v1, v5, v3

    goto :goto_2

    :cond_1
    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_blocksize:I

    add-int/lit8 v1, v1, -0x1

    aput p1, v5, v1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget p1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_firstFree:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_firstFree:I

    return-void
.end method


# virtual methods
.method public addElement(I)V
    .locals 6

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_firstFree:I

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_buildCacheStartIndex:I

    sub-int v1, v0, v1

    if-ltz v1, :cond_0

    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_blocksize:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_buildCache:[I

    aput p1, v2, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_firstFree:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v1, v0, v1

    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_MASK:I

    and-int/2addr v0, v2

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_map:[[I

    array-length v3, v2

    if-lt v1, v3, :cond_1

    iget v3, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_numblocks:I

    add-int/2addr v3, v1

    new-array v3, v3, [[I

    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_map:[[I

    :cond_1
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_map:[[I

    aget-object v3, v2, v1

    if-nez v3, :cond_2

    iget v3, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_blocksize:I

    new-array v3, v3, [I

    aput-object v3, v2, v1

    :cond_2
    aput p1, v3, v0

    iput-object v3, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_buildCache:[I

    iget p1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_firstFree:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_buildCacheStartIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_firstFree:I

    :goto_0
    return-void
.end method

.method public elementAt(I)I
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_blocksize:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_map0:[I

    aget p0, p0, p1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_map:[[I

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v1, p1, v1

    aget-object v0, v0, v1

    iget p0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_MASK:I

    and-int/2addr p0, p1

    aget p0, v0, p0

    return p0
.end method

.method public final getMap()[[I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_map:[[I

    return-object p0
.end method

.method public final getMap0()[I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_map0:[I

    return-object p0
.end method

.method public indexOf(I)I
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->indexOf(II)I

    move-result p0

    return p0
.end method

.method public indexOf(II)I
    .locals 6

    .line 1
    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_firstFree:I

    const/4 v1, -0x1

    if-lt p2, v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v3, p2, v2

    .line 3
    iget v4, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_MASK:I

    and-int/2addr p2, v4

    ushr-int/2addr v0, v2

    :goto_0
    if-ge v3, v0, :cond_3

    .line 4
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_map:[[I

    aget-object v2, v2, v3

    if-eqz v2, :cond_2

    .line 5
    :goto_1
    iget v4, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_blocksize:I

    if-ge p2, v4, :cond_2

    .line 6
    aget v5, v2, p2

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

    .line 7
    :cond_3
    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_firstFree:I

    iget v3, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_MASK:I

    and-int/2addr v2, v3

    .line 8
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_map:[[I

    aget-object v3, v3, v0

    :goto_2
    if-ge p2, v2, :cond_5

    .line 9
    aget v4, v3, p2

    if-ne v4, p1, :cond_4

    .line 10
    iget p0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_blocksize:I

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
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_firstFree:I

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_map0:[I

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_buildCache:[I

    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_buildCacheStartIndex:I

    return-void
.end method

.method public setElementAt(II)V
    .locals 6

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_blocksize:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_map0:[I

    aput p1, v0, p2

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v0, p2, v0

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_MASK:I

    and-int/2addr v1, p2

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_map:[[I

    array-length v3, v2

    if-lt v0, v3, :cond_1

    iget v3, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_numblocks:I

    add-int/2addr v3, v0

    new-array v3, v3, [[I

    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_map:[[I

    :cond_1
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_map:[[I

    aget-object v3, v2, v0

    if-nez v3, :cond_2

    iget v3, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_blocksize:I

    new-array v3, v3, [I

    aput-object v3, v2, v0

    :cond_2
    aput p1, v3, v1

    :goto_0
    iget p1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_firstFree:I

    if-lt p2, p1, :cond_3

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_firstFree:I

    :cond_3
    return-void
.end method

.method public setSize(I)V
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_firstFree:I

    if-le v0, p1, :cond_0

    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_firstFree:I

    :cond_0
    return-void
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->m_firstFree:I

    return p0
.end method
