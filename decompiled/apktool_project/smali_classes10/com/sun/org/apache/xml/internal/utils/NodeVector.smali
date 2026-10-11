.class public Lcom/sun/org/apache/xml/internal/utils/NodeVector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field static final serialVersionUID:J = -0x9e6c3ff496c94deL


# instance fields
.field private m_blocksize:I

.field protected m_firstFree:I

.field private m_map:[I

.field private m_mapSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    const/16 v1, 0x20

    .line 3
    iput v1, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_blocksize:I

    .line 4
    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_mapSize:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    .line 7
    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_blocksize:I

    .line 8
    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_mapSize:I

    return-void
.end method


# virtual methods
.method public RemoveAllNoClear()V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    return-void
.end method

.method public addElement(I)V
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_mapSize:I

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    if-nez v1, :cond_0

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_blocksize:I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_mapSize:I

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_blocksize:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_mapSize:I

    new-array v2, v2, [I

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    return-void
.end method

.method public appendNodes(Lcom/sun/org/apache/xml/internal/utils/NodeVector;)V
    .locals 6

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_blocksize:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_mapSize:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    add-int v4, v3, v0

    iget v5, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_mapSize:I

    if-lt v4, v5, :cond_1

    iget v4, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_blocksize:I

    add-int/2addr v4, v0

    add-int/2addr v5, v4

    iput v5, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_mapSize:I

    new-array v4, v5, [I

    add-int/2addr v3, v0

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    iget v3, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    invoke-static {p1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    if-ne v1, v2, :cond_0

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method public contains(I)Z
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public elementAt(I)I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    aget p0, p0, p1

    return p0
.end method

.method public indexOf(I)I
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    if-ge v0, v2, :cond_2

    .line 6
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public indexOf(II)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    :goto_0
    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    if-ge p2, v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    aget v0, v0, p2

    if-ne v0, p1, :cond_1

    return p2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public insertElementAt(II)V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_blocksize:I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_mapSize:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_mapSize:I

    if-lt v2, v3, :cond_1

    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_blocksize:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_mapSize:I

    new-array v2, v3, [I

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    :cond_1
    :goto_0
    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v1, v0, -0x1

    if-gt p2, v1, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    add-int/lit8 v2, p2, 0x1

    sub-int/2addr v0, p2

    invoke-static {v1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    aput p1, v0, p2

    iget p1, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    return-void
.end method

.method public insertInOrder(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    aget v1, v1, v0

    if-ge p1, v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->insertElementAt(II)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->addElement(I)V

    return-void
.end method

.method public final peepOrNull()I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    if-lez p0, :cond_0

    add-int/lit8 p0, p0, -0x1

    aget p0, v0, p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final peepTail()I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    iget p0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    add-int/lit8 p0, p0, -0x1

    aget p0, v0, p0

    return p0
.end method

.method public final peepTailSub1()I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    iget p0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    add-int/lit8 p0, p0, -0x2

    aget p0, v0, p0

    return p0
.end method

.method public final pop()I
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    aget v1, p0, v0

    const/4 v2, -0x1

    aput v2, p0, v0

    return v1
.end method

.method public final popAndTop()I
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    const/4 v1, -0x1

    aput v1, p0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    aget v1, p0, v0

    :goto_0
    return v1
.end method

.method public final popPair()V
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    const/4 v1, -0x1

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    aput v1, p0, v0

    return-void
.end method

.method public final popQuick()V
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    const/4 v1, -0x1

    aput v1, p0, v0

    return-void
.end method

.method public final push(I)V
    .locals 5

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_mapSize:I

    if-lt v1, v2, :cond_1

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    if-nez v3, :cond_0

    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_blocksize:I

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    iput v2, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_mapSize:I

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_blocksize:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_mapSize:I

    new-array v2, v2, [I

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    aput p1, v2, v0

    iput v1, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    return-void
.end method

.method public final pushPair(II)V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_blocksize:I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_mapSize:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v2, v1, 0x2

    iget v3, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_mapSize:I

    if-lt v2, v3, :cond_1

    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_blocksize:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_mapSize:I

    new-array v2, v3, [I

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    aput p1, v0, v1

    add-int/lit8 p1, v1, 0x1

    aput p2, v0, p1

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    return-void
.end method

.method public removeAllElements()V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    return-void
.end method

.method public removeElement(I)Z
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    if-ge v0, v2, :cond_3

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    aget v4, v3, v0

    if-ne v4, p1, :cond_2

    if-le v0, v2, :cond_1

    add-int/lit8 p1, v0, 0x1

    add-int/lit8 v1, v0, -0x1

    sub-int/2addr v2, v0

    invoke-static {v3, p1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    aput p1, v3, v0

    :goto_1
    iget p1, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public removeElementAt(I)V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget p0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    if-le p1, p0, :cond_1

    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, p1, -0x1

    sub-int/2addr p0, p1

    invoke-static {v0, v1, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    aput p0, v0, p1

    :goto_0
    return-void
.end method

.method public setElementAt(II)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_blocksize:I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_mapSize:I

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->addElement(I)V

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    aput p1, p0, p2

    return-void
.end method

.method public final setTail(I)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    iget p0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    add-int/lit8 p0, p0, -0x1

    aput p1, v0, p0

    return-void
.end method

.method public final setTailSub1(I)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    iget p0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    add-int/lit8 p0, p0, -0x2

    aput p1, v0, p0

    return-void
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    return p0
.end method

.method public sort()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_map:[I

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->sort([III)V

    return-void
.end method

.method public sort([III)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-lt p2, p3, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, p3, -0x1

    if-ne p2, v0, :cond_2

    .line 1
    aget p0, p1, p2

    aget v0, p1, p3

    if-le p0, v0, :cond_1

    .line 2
    aput v0, p1, p2

    .line 3
    aput p0, p1, p3

    :cond_1
    return-void

    :cond_2
    add-int v0, p2, p3

    .line 4
    div-int/lit8 v0, v0, 0x2

    aget v1, p1, v0

    .line 5
    aget v2, p1, p3

    aput v2, p1, v0

    .line 6
    aput v1, p1, p3

    move v0, p2

    move v2, p3

    :cond_3
    :goto_0
    if-ge v0, v2, :cond_6

    .line 7
    :goto_1
    aget v3, p1, v0

    if-gt v3, v1, :cond_4

    if-ge v0, v2, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8
    :cond_4
    :goto_2
    aget v3, p1, v2

    if-gt v1, v3, :cond_5

    if-ge v0, v2, :cond_5

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_5
    if-ge v0, v2, :cond_3

    .line 9
    aget v4, p1, v0

    .line 10
    aput v3, p1, v0

    .line 11
    aput v4, p1, v2

    goto :goto_0

    .line 12
    :cond_6
    aget v3, p1, v2

    aput v3, p1, p3

    .line 13
    aput v1, p1, v2

    add-int/lit8 v0, v0, -0x1

    .line 14
    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->sort([III)V

    add-int/lit8 v2, v2, 0x1

    .line 15
    invoke-virtual {p0, p1, v2, p3}, Lcom/sun/org/apache/xml/internal/utils/NodeVector;->sort([III)V

    return-void
.end method
