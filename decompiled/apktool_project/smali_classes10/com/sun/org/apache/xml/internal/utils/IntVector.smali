.class public Lcom/sun/org/apache/xml/internal/utils/IntVector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected m_blocksize:I

.field protected m_firstFree:I

.field protected m_map:[I

.field protected m_mapSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_firstFree:I

    const/16 v0, 0x20

    .line 3
    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_blocksize:I

    .line 4
    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_mapSize:I

    new-array v0, v0, [I

    .line 5
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_map:[I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_firstFree:I

    .line 8
    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_blocksize:I

    .line 9
    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_mapSize:I

    .line 10
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_map:[I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_firstFree:I

    .line 13
    iput p2, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_blocksize:I

    .line 14
    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_mapSize:I

    .line 15
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_map:[I

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/utils/IntVector;)V
    .locals 4

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_firstFree:I

    .line 18
    iget v1, p1, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_mapSize:I

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_map:[I

    .line 19
    iput v1, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_mapSize:I

    .line 20
    iget v1, p1, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_firstFree:I

    iput v1, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_firstFree:I

    .line 21
    iget v3, p1, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_blocksize:I

    iput v3, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_blocksize:I

    .line 22
    iget-object p0, p1, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_map:[I

    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public final addElement(I)V
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

    return-void
.end method

.method public final addElements(I)V
    .locals 4

    .line 8
    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_firstFree:I

    add-int v1, v0, p1

    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_mapSize:I

    if-lt v1, v2, :cond_0

    .line 9
    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_blocksize:I

    add-int/2addr v1, p1

    add-int/2addr v2, v1

    iput v2, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_mapSize:I

    .line 10
    new-array v1, v2, [I

    .line 11
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_map:[I

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_map:[I

    .line 13
    :cond_0
    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_firstFree:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_firstFree:I

    return-void
.end method

.method public final addElements(II)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_firstFree:I

    add-int v1, v0, p2

    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_mapSize:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    .line 2
    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_blocksize:I

    add-int/2addr v1, p2

    add-int/2addr v2, v1

    iput v2, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_mapSize:I

    .line 3
    new-array v1, v2, [I

    .line 4
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_map:[I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_map:[I

    :cond_0
    :goto_0
    if-ge v3, p2, :cond_1

    .line 6
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_map:[I

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_firstFree:I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 7
    iput v1, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_firstFree:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/IntVector;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/utils/IntVector;-><init>(Lcom/sun/org/apache/xml/internal/utils/IntVector;)V

    return-object v0
.end method

.method public final contains(I)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_firstFree:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_map:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final elementAt(I)I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_map:[I

    aget p0, p0, p1

    return p0
.end method

.method public final indexOf(I)I
    .locals 2

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_firstFree:I

    if-ge v0, v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_map:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/high16 p0, -0x80000000

    return p0
.end method

.method public final indexOf(II)I
    .locals 1

    .line 1
    :goto_0
    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_firstFree:I

    if-ge p2, v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_map:[I

    aget v0, v0, p2

    if-ne v0, p1, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/high16 p0, -0x80000000

    return p0
.end method

.method public final insertElementAt(II)V
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
    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_firstFree:I

    add-int/lit8 v1, v0, -0x1

    if-gt p2, v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_map:[I

    add-int/lit8 v2, p2, 0x1

    sub-int/2addr v0, p2

    invoke-static {v1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_map:[I

    aput p1, v0, p2

    iget p1, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_firstFree:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_firstFree:I

    return-void
.end method

.method public final lastIndexOf(I)I
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_firstFree:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_map:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/high16 p0, -0x80000000

    return p0
.end method

.method public final removeAllElements()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_firstFree:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_map:[I

    const/high16 v3, -0x80000000

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_firstFree:I

    return-void
.end method

.method public final removeElement(I)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_firstFree:I

    if-ge v1, v2, :cond_2

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_map:[I

    aget v4, v3, v1

    if-ne v4, p1, :cond_1

    add-int/lit8 p1, v1, 0x1

    if-ge p1, v2, :cond_0

    add-int/lit8 v0, v1, -0x1

    sub-int/2addr v2, v1

    invoke-static {v3, p1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_0
    const/high16 p1, -0x80000000

    aput p1, v3, v1

    :goto_1
    iget p1, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_firstFree:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_firstFree:I

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final removeElementAt(I)V
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_firstFree:I

    if-le p1, v0, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_map:[I

    add-int/lit8 v2, p1, 0x1

    invoke-static {v1, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_map:[I

    const/high16 v1, -0x80000000

    aput v1, v0, p1

    :goto_0
    iget p1, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_firstFree:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_firstFree:I

    return-void
.end method

.method public final setElementAt(II)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_map:[I

    aput p1, p0, p2

    return-void
.end method

.method public final setSize(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_firstFree:I

    return-void
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/utils/IntVector;->m_firstFree:I

    return p0
.end method
