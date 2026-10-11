.class public Lcom/sun/org/apache/xml/internal/utils/StringToStringTableVector;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private m_blocksize:I

.field private m_firstFree:I

.field private m_map:[Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;

.field private m_mapSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTableVector;->m_firstFree:I

    const/16 v0, 0x8

    .line 3
    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTableVector;->m_blocksize:I

    .line 4
    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTableVector;->m_mapSize:I

    new-array v0, v0, [Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;

    .line 5
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTableVector;->m_map:[Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTableVector;->m_firstFree:I

    .line 8
    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTableVector;->m_blocksize:I

    .line 9
    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTableVector;->m_mapSize:I

    .line 10
    new-array p1, p1, [Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTableVector;->m_map:[Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;

    return-void
.end method


# virtual methods
.method public final addElement(Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;)V
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTableVector;->m_firstFree:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTableVector;->m_mapSize:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTableVector;->m_blocksize:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTableVector;->m_mapSize:I

    new-array v1, v2, [Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTableVector;->m_map:[Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTableVector;->m_map:[Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTableVector;->m_map:[Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTableVector;->m_firstFree:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTableVector;->m_firstFree:I

    return-void
.end method

.method public final contains(Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTableVector;->m_firstFree:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTableVector;->m_map:[Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final containsKey(Ljava/lang/String;)Z
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTableVector;->m_firstFree:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTableVector;->m_map:[Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final elementAt(I)Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTableVector;->m_map:[Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTableVector;->m_firstFree:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTableVector;->m_map:[Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getLength()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTableVector;->m_firstFree:I

    return p0
.end method

.method public final removeLastElem()V
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTableVector;->m_firstFree:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTableVector;->m_map:[Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTableVector;->m_firstFree:I

    :cond_0
    return-void
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTableVector;->m_firstFree:I

    return p0
.end method
