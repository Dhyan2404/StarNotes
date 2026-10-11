.class public Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private m_blocksize:I

.field private m_firstFree:I

.field private m_map:[Ljava/lang/String;

.field private m_mapSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;->m_firstFree:I

    const/16 v0, 0x10

    .line 3
    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;->m_blocksize:I

    .line 4
    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;->m_mapSize:I

    new-array v0, v0, [Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;->m_map:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;->m_firstFree:I

    .line 8
    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;->m_blocksize:I

    .line 9
    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;->m_mapSize:I

    .line 10
    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;->m_map:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;->m_firstFree:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;->m_map:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final containsValue(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;->m_firstFree:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;->m_map:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final elementAt(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;->m_map:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;->m_firstFree:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;->m_map:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;->m_map:[Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getByValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;->m_firstFree:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;->m_map:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;->m_map:[Ljava/lang/String;

    sub-int/2addr v1, v0

    aget-object p0, p0, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getIgnoreCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;->m_firstFree:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;->m_map:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;->m_map:[Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    aget-object p0, p0, v1

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final getLength()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;->m_firstFree:I

    return p0
.end method

.method public final put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;->m_firstFree:I

    add-int/lit8 v1, v0, 0x2

    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;->m_mapSize:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;->m_blocksize:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;->m_mapSize:I

    new-array v1, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;->m_map:[Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;->m_map:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;->m_map:[Ljava/lang/String;

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;->m_firstFree:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    aput-object p2, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;->m_firstFree:I

    return-void
.end method

.method public final remove(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;->m_firstFree:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;->m_map:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 p1, v0, 0x2

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;->m_firstFree:I

    if-ge p1, v1, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;->m_map:[Ljava/lang/String;

    sub-int/2addr v1, p1

    invoke-static {v2, p1, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget p1, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;->m_firstFree:I

    add-int/lit8 p1, p1, -0x2

    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;->m_firstFree:I

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/StringToStringTable;->m_map:[Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    aput-object v0, p0, p1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
