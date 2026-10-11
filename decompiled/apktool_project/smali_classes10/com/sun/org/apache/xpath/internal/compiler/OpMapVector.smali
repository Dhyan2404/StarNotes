.class public Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected m_blocksize:I

.field protected m_lengthPos:I

.field protected m_map:[I

.field protected m_mapSize:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;->m_blocksize:I

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;->m_mapSize:I

    iput p3, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;->m_lengthPos:I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;->m_map:[I

    return-void
.end method


# virtual methods
.method public final elementAt(I)I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;->m_map:[I

    aget p0, p0, p1

    return p0
.end method

.method public final setElementAt(II)V
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;->m_mapSize:I

    if-lt p2, v0, :cond_0

    iget v1, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;->m_blocksize:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;->m_mapSize:I

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;->m_map:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;->m_map:[I

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;->m_map:[I

    aput p1, p0, p2

    return-void
.end method

.method public final setToSize(I)V
    .locals 4

    new-array v0, p1, [I

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;->m_map:[I

    iget v2, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;->m_lengthPos:I

    aget v2, v1, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;->m_mapSize:I

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/compiler/OpMapVector;->m_map:[I

    return-void
.end method
