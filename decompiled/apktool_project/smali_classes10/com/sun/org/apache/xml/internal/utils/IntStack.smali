.class public Lcom/sun/org/apache/xml/internal/utils/IntStack;
.super Lcom/sun/org/apache/xml/internal/utils/IntVector;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/utils/IntVector;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/IntVector;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/utils/IntStack;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/IntVector;-><init>(Lcom/sun/org/apache/xml/internal/utils/IntVector;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/utils/IntVector;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xml/internal/utils/IntStack;

    return-object p0
.end method

.method public empty()Z
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_firstFree:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final peek()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_map:[I

    iget p0, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_firstFree:I

    add-int/lit8 p0, p0, -0x1

    aget p0, v0, p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 2
    :catch_0
    new-instance p0, Ljava/util/EmptyStackException;

    invoke-direct {p0}, Ljava/util/EmptyStackException;-><init>()V

    throw p0
.end method

.method public peek(I)I
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_map:[I

    iget p0, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_firstFree:I

    add-int/lit8 p1, p1, 0x1

    sub-int/2addr p0, p1

    aget p0, v0, p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 4
    :catch_0
    new-instance p0, Ljava/util/EmptyStackException;

    invoke-direct {p0}, Ljava/util/EmptyStackException;-><init>()V

    throw p0
.end method

.method public final pop()I
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_map:[I

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_firstFree:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_firstFree:I

    aget p0, v0, v1

    return p0
.end method

.method public push(I)I
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_firstFree:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_mapSize:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_blocksize:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_mapSize:I

    new-array v1, v2, [I

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_map:[I

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_map:[I

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_map:[I

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_firstFree:I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_firstFree:I

    return p1
.end method

.method public final quickPop(I)V
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_firstFree:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_firstFree:I

    return-void
.end method

.method public search(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/IntVector;->lastIndexOf(I)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/IntVector;->size()I

    move-result p0

    sub-int/2addr p0, p1

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public setTop(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_map:[I

    iget p0, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_firstFree:I

    add-int/lit8 p0, p0, -0x1

    aput p1, v0, p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p0, Ljava/util/EmptyStackException;

    invoke-direct {p0}, Ljava/util/EmptyStackException;-><init>()V

    throw p0
.end method
