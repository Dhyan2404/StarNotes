.class public Lcom/sun/org/apache/xml/internal/utils/ObjectStack;
.super Lcom/sun/org/apache/xml/internal/utils/ObjectVector;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/utils/ObjectStack;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;-><init>(Lcom/sun/org/apache/xml/internal/utils/ObjectVector;)V

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

    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xml/internal/utils/ObjectStack;

    return-object p0
.end method

.method public empty()Z
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->m_firstFree:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    iget p0, p0, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->m_firstFree:I

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2
    :catch_0
    new-instance p0, Ljava/util/EmptyStackException;

    invoke-direct {p0}, Ljava/util/EmptyStackException;-><init>()V

    throw p0
.end method

.method public peek(I)Ljava/lang/Object;
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    iget p0, p0, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->m_firstFree:I

    add-int/lit8 p1, p1, 0x1

    sub-int/2addr p0, p1

    aget-object p0, v0, p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 4
    :catch_0
    new-instance p0, Ljava/util/EmptyStackException;

    invoke-direct {p0}, Ljava/util/EmptyStackException;-><init>()V

    throw p0
.end method

.method public pop()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->m_firstFree:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->m_firstFree:I

    aget-object p0, v0, v1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    return-object p0
.end method

.method public push(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->m_firstFree:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->m_mapSize:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->m_blocksize:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->m_mapSize:I

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->m_firstFree:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->m_firstFree:I

    return-object p1
.end method

.method public quickPop(I)V
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->m_firstFree:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->m_firstFree:I

    return-void
.end method

.method public search(Ljava/lang/Object;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->size()I

    move-result p0

    sub-int/2addr p0, p1

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public setTop(Ljava/lang/Object;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->m_map:[Ljava/lang/Object;

    iget p0, p0, Lcom/sun/org/apache/xml/internal/utils/ObjectVector;->m_firstFree:I

    add-int/lit8 p0, p0, -0x1

    aput-object p1, v0, p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p0, Ljava/util/EmptyStackException;

    invoke-direct {p0}, Ljava/util/EmptyStackException;-><init>()V

    throw p0
.end method
