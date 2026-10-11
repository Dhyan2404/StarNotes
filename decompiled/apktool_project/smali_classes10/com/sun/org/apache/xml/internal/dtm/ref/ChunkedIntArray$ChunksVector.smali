.class Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChunksVector"
.end annotation


# instance fields
.field final BLOCKSIZE:I

.field m_map:[[I

.field m_mapSize:I

.field pos:I

.field final synthetic this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;)V
    .locals 1

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x40

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;->BLOCKSIZE:I

    new-array v0, p1, [[I

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;->m_map:[[I

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;->m_mapSize:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;->pos:I

    return-void
.end method


# virtual methods
.method public addElement([I)V
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;->pos:I

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;->m_mapSize:I

    if-lt v0, v1, :cond_1

    :goto_0
    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;->pos:I

    iget v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;->m_mapSize:I

    if-lt v0, v2, :cond_0

    add-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;->m_mapSize:I

    goto :goto_0

    :cond_0
    new-array v0, v2, [[I

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;->m_map:[[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;->m_map:[[I

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;->m_map:[[I

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;->pos:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;->pos:I

    return-void
.end method

.method public final elementAt(I)[I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;->m_map:[[I

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray$ChunksVector;->pos:I

    return p0
.end method
