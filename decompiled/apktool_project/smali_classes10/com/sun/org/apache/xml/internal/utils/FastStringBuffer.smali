.class public Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CARRY_WS:I = 0x4

.field static final DEBUG_FORCE_FIXED_CHUNKSIZE:Z = true

.field static final DEBUG_FORCE_INIT_BITS:I = 0x0

.field static final SINGLE_SPACE:[C

.field public static final SUPPRESS_BOTH:I = 0x3

.field public static final SUPPRESS_LEADING_WS:I = 0x1

.field public static final SUPPRESS_TRAILING_WS:I = 0x2


# instance fields
.field m_array:[[C

.field m_chunkBits:I

.field m_chunkMask:I

.field m_chunkSize:I

.field m_firstFree:I

.field m_innerFSB:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

.field m_lastChunk:I

.field m_maxChunkBits:I

.field m_rebundleBits:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x20

    aput-char v2, v0, v1

    sput-object v0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->SINGLE_SPACE:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/16 v0, 0xf

    const/4 v1, 0x2

    const/16 v2, 0xa

    .line 14
    invoke-direct {p0, v2, v0, v1}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;-><init>(III)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/16 v0, 0xf

    const/4 v1, 0x2

    .line 13
    invoke-direct {p0, p1, v0, v1}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;-><init>(III)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x2

    .line 12
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 2
    iput p2, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_lastChunk:I

    .line 3
    iput p2, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_firstFree:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_innerFSB:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    const/16 v0, 0x10

    new-array v0, v0, [[C

    .line 5
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    .line 6
    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkBits:I

    .line 7
    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_maxChunkBits:I

    .line 8
    iput p3, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_rebundleBits:I

    const/4 p3, 0x1

    shl-int p1, p3, p1

    .line 9
    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkSize:I

    add-int/lit8 p3, p1, -0x1

    .line 10
    iput p3, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkMask:I

    .line 11
    new-array p0, p1, [C

    aput-object p0, v0, p2

    return-void
.end method

.method private constructor <init>(Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V
    .locals 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    .line 16
    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkBits:I

    .line 17
    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_maxChunkBits:I

    const/4 v0, 0x2

    .line 18
    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_rebundleBits:I

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_lastChunk:I

    .line 20
    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_firstFree:I

    const/4 v1, 0x0

    .line 21
    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_innerFSB:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    .line 22
    iget v1, p1, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkBits:I

    iput v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkBits:I

    .line 23
    iget v1, p1, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_maxChunkBits:I

    iput v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_maxChunkBits:I

    .line 24
    iget v1, p1, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_rebundleBits:I

    iput v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_rebundleBits:I

    .line 25
    iget v2, p1, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkSize:I

    iput v2, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkSize:I

    .line 26
    iget v2, p1, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkMask:I

    iput v2, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkMask:I

    .line 27
    iget-object v2, p1, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    iput-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    .line 28
    iget-object v2, p1, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_innerFSB:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    iput-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_innerFSB:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    .line 29
    iget v2, p1, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_lastChunk:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_lastChunk:I

    .line 30
    iget v2, p1, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkSize:I

    iput v2, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_firstFree:I

    const/16 v2, 0x10

    new-array v2, v2, [[C

    .line 31
    iput-object v2, p1, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    .line 32
    iput-object p0, p1, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_innerFSB:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    .line 33
    iput v3, p1, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_lastChunk:I

    .line 34
    iput v0, p1, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_firstFree:I

    .line 35
    iget p0, p1, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkBits:I

    add-int/2addr p0, v1

    iput p0, p1, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkBits:I

    shl-int p0, v3, p0

    .line 36
    iput p0, p1, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkSize:I

    sub-int/2addr p0, v3

    .line 37
    iput p0, p1, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkMask:I

    return-void
.end method

.method private getChars(II[CI)V
    .locals 0

    return-void
.end method

.method public static sendNormalizedSAXcharacters([CIILorg/xml/sax/ContentHandler;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/lit8 v3, p4, 0x4

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    and-int/lit8 v4, p4, 0x2

    add-int/2addr p2, p1

    if-eqz v0, :cond_3

    :goto_2
    if-ge p1, p2, :cond_2

    .line 9
    aget-char v0, p0, p1

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    if-ne p1, p2, :cond_3

    return p4

    :cond_3
    :goto_3
    if-ge p1, p2, :cond_8

    move p4, p1

    :goto_4
    if-ge p4, p2, :cond_4

    .line 10
    aget-char v0, p0, p4

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    move-result v0

    if-nez v0, :cond_4

    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    :cond_4
    if-eq p1, p4, :cond_6

    if-eqz v3, :cond_5

    .line 11
    sget-object v0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->SINGLE_SPACE:[C

    invoke-interface {p3, v0, v1, v2}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    move v3, v1

    :cond_5
    sub-int v0, p4, p1

    .line 12
    invoke-interface {p3, p0, p1, v0}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    :cond_6
    move p1, p4

    :goto_5
    if-ge p1, p2, :cond_7

    .line 13
    aget-char v0, p0, p1

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    move-result v0

    if-eqz v0, :cond_7

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_7
    if-eq p4, p1, :cond_3

    move v3, v2

    goto :goto_3

    :cond_8
    if-eqz v3, :cond_9

    const/4 v1, 0x4

    :cond_9
    or-int p0, v1, v4

    return p0
.end method

.method public static sendNormalizedSAXcharacters([CIILorg/xml/sax/ContentHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 14
    invoke-static {p0, p1, p2, p3, v0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->sendNormalizedSAXcharacters([CIILorg/xml/sax/ContentHandler;I)I

    return-void
.end method

.method private final setLength(ILcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V
    .locals 3

    .line 7
    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkBits:I

    ushr-int v1, p1, v0

    iput v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_lastChunk:I

    if-nez v1, :cond_0

    .line 8
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_innerFSB:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    if-eqz v2, :cond_0

    .line 9
    invoke-direct {v2, p1, p2}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->setLength(ILcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V

    goto :goto_0

    .line 10
    :cond_0
    iput v0, p2, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkBits:I

    .line 11
    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_maxChunkBits:I

    iput v0, p2, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_maxChunkBits:I

    .line 12
    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_rebundleBits:I

    iput v0, p2, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_rebundleBits:I

    .line 13
    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkSize:I

    iput v0, p2, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkSize:I

    .line 14
    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkMask:I

    iput v0, p2, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkMask:I

    .line 15
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    iput-object v0, p2, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    .line 16
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_innerFSB:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    iput-object v0, p2, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_innerFSB:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    .line 17
    iput v1, p2, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_lastChunk:I

    .line 18
    iget p0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkMask:I

    and-int/2addr p0, p1

    iput p0, p2, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_firstFree:I

    :goto_0
    return-void
.end method


# virtual methods
.method public final append(C)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_lastChunk:I

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    array-length v2, v1

    .line 2
    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_firstFree:I

    iget v3, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkSize:I

    if-ge v2, v3, :cond_0

    .line 3
    aget-object v0, v1, v0

    goto :goto_0

    .line 4
    :cond_0
    array-length v2, v1

    const/4 v3, 0x1

    add-int/2addr v0, v3

    const/4 v4, 0x0

    if-ne v0, v2, :cond_1

    add-int/lit8 v0, v2, 0x10

    .line 5
    new-array v0, v0, [[C

    .line 6
    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_lastChunk:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v0, v0, v1

    if-nez v0, :cond_3

    .line 9
    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_rebundleBits:I

    shl-int v0, v3, v0

    if-ne v1, v0, :cond_2

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkBits:I

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_maxChunkBits:I

    if-ge v0, v1, :cond_2

    .line 10
    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;-><init>(Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_innerFSB:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_lastChunk:I

    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkSize:I

    new-array v2, v2, [C

    aput-object v2, v0, v1

    move-object v0, v2

    .line 12
    :cond_3
    iput v4, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_firstFree:I

    .line 13
    :goto_0
    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_firstFree:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_firstFree:I

    aput-char p1, v0, v1

    return-void
.end method

.method public final append(Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    .line 61
    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v1, v1, v2

    .line 63
    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkSize:I

    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_firstFree:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    move v3, v2

    :cond_2
    :goto_0
    if-lez v0, :cond_9

    if-le v1, v0, :cond_3

    move v1, v0

    .line 64
    :cond_3
    iget v4, p1, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkSize:I

    add-int v5, v3, v4

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    iget v7, p1, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkBits:I

    ushr-int/2addr v5, v7

    .line 65
    iget v7, p1, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkMask:I

    and-int/2addr v7, v3

    sub-int/2addr v4, v7

    if-le v4, v1, :cond_4

    move v4, v1

    .line 66
    :cond_4
    iget-object v8, p1, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    aget-object v8, v8, v5

    iget-object v9, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    iget v10, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v9, v9, v10

    iget v10, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_firstFree:I

    invoke-static {v8, v7, v9, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eq v4, v1, :cond_5

    .line 67
    iget-object v7, p1, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    add-int/lit8 v5, v5, 0x1

    aget-object v5, v7, v5

    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    iget v8, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v7, v7, v8

    iget v8, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_firstFree:I

    add-int/2addr v8, v4

    sub-int v4, v1, v4

    invoke-static {v5, v2, v7, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    sub-int/2addr v0, v1

    add-int/2addr v3, v1

    if-lez v0, :cond_2

    .line 68
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    array-length v4, v1

    .line 69
    iget v5, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_lastChunk:I

    add-int/2addr v5, v6

    if-ne v5, v4, :cond_6

    add-int/lit8 v5, v4, 0x10

    .line 70
    new-array v5, v5, [[C

    .line 71
    invoke-static {v1, v2, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    iput-object v5, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    .line 73
    :cond_6
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    iget v4, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_lastChunk:I

    add-int/2addr v4, v6

    iput v4, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v1, v1, v4

    if-nez v1, :cond_8

    .line 74
    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_rebundleBits:I

    shl-int v1, v6, v1

    if-ne v4, v1, :cond_7

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkBits:I

    iget v4, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_maxChunkBits:I

    if-ge v1, v4, :cond_7

    .line 75
    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    invoke-direct {v1, p0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;-><init>(Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_innerFSB:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    .line 76
    :cond_7
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    iget v4, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_lastChunk:I

    iget v5, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkSize:I

    new-array v5, v5, [C

    aput-object v5, v1, v4

    .line 77
    :cond_8
    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkSize:I

    .line 78
    iput v2, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_firstFree:I

    goto :goto_0

    .line 79
    :cond_9
    iget p1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_firstFree:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_firstFree:I

    return-void
.end method

.method public final append(Ljava/lang/String;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 14
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 15
    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v1, v1, v2

    .line 16
    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkSize:I

    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_firstFree:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lez v0, :cond_7

    if-le v1, v0, :cond_2

    move v1, v0

    :cond_2
    add-int v4, v3, v1

    .line 17
    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    iget v6, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v5, v5, v6

    iget v6, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_firstFree:I

    invoke-virtual {p1, v3, v4, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    sub-int/2addr v0, v1

    if-lez v0, :cond_6

    .line 18
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    array-length v3, v1

    .line 19
    iget v5, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_lastChunk:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    if-ne v5, v3, :cond_3

    add-int/lit8 v5, v3, 0x10

    .line 20
    new-array v5, v5, [[C

    .line 21
    invoke-static {v1, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    iput-object v5, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    .line 23
    :cond_3
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    iget v3, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_lastChunk:I

    add-int/2addr v3, v6

    iput v3, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v1, v1, v3

    if-nez v1, :cond_5

    .line 24
    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_rebundleBits:I

    shl-int v1, v6, v1

    if-ne v3, v1, :cond_4

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkBits:I

    iget v3, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_maxChunkBits:I

    if-ge v1, v3, :cond_4

    .line 25
    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    invoke-direct {v1, p0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;-><init>(Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_innerFSB:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    .line 26
    :cond_4
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    iget v3, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_lastChunk:I

    iget v5, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkSize:I

    new-array v5, v5, [C

    aput-object v5, v1, v3

    .line 27
    :cond_5
    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkSize:I

    .line 28
    iput v2, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_firstFree:I

    :cond_6
    move v3, v4

    goto :goto_0

    .line 29
    :cond_7
    iget p1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_firstFree:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_firstFree:I

    return-void
.end method

.method public final append(Ljava/lang/StringBuffer;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 30
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 31
    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v1, v1, v2

    .line 32
    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkSize:I

    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_firstFree:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lez v0, :cond_7

    if-le v1, v0, :cond_2

    move v1, v0

    :cond_2
    add-int v4, v3, v1

    .line 33
    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    iget v6, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v5, v5, v6

    iget v6, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_firstFree:I

    invoke-virtual {p1, v3, v4, v5, v6}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    sub-int/2addr v0, v1

    if-lez v0, :cond_6

    .line 34
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    array-length v3, v1

    .line 35
    iget v5, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_lastChunk:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    if-ne v5, v3, :cond_3

    add-int/lit8 v5, v3, 0x10

    .line 36
    new-array v5, v5, [[C

    .line 37
    invoke-static {v1, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    iput-object v5, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    .line 39
    :cond_3
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    iget v3, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_lastChunk:I

    add-int/2addr v3, v6

    iput v3, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v1, v1, v3

    if-nez v1, :cond_5

    .line 40
    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_rebundleBits:I

    shl-int v1, v6, v1

    if-ne v3, v1, :cond_4

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkBits:I

    iget v3, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_maxChunkBits:I

    if-ge v1, v3, :cond_4

    .line 41
    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    invoke-direct {v1, p0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;-><init>(Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_innerFSB:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    .line 42
    :cond_4
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    iget v3, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_lastChunk:I

    iget v5, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkSize:I

    new-array v5, v5, [C

    aput-object v5, v1, v3

    .line 43
    :cond_5
    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkSize:I

    .line 44
    iput v2, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_firstFree:I

    :cond_6
    move v3, v4

    goto :goto_0

    .line 45
    :cond_7
    iget p1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_firstFree:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_firstFree:I

    return-void
.end method

.method public final append([CII)V
    .locals 5

    if-nez p3, :cond_0

    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v0, v0, v1

    .line 47
    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkSize:I

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_firstFree:I

    sub-int/2addr v0, v1

    :cond_1
    :goto_0
    if-lez p3, :cond_6

    if-le v0, p3, :cond_2

    move v0, p3

    .line 48
    :cond_2
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_firstFree:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    if-lez p3, :cond_1

    .line 49
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    array-length v1, v0

    .line 50
    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_lastChunk:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-ne v2, v1, :cond_3

    add-int/lit8 v2, v1, 0x10

    .line 51
    new-array v2, v2, [[C

    .line 52
    invoke-static {v0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    iput-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    .line 54
    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_lastChunk:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v0, v0, v1

    if-nez v0, :cond_5

    .line 55
    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_rebundleBits:I

    shl-int v0, v3, v0

    if-ne v1, v0, :cond_4

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkBits:I

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_maxChunkBits:I

    if-ge v0, v1, :cond_4

    .line 56
    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;-><init>(Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_innerFSB:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    .line 57
    :cond_4
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_lastChunk:I

    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkSize:I

    new-array v2, v2, [C

    aput-object v2, v0, v1

    .line 58
    :cond_5
    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkSize:I

    .line 59
    iput v4, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_firstFree:I

    goto :goto_0

    .line 60
    :cond_6
    iget p1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_firstFree:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_firstFree:I

    return-void
.end method

.method public charAt(I)C
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkBits:I

    ushr-int v0, p1, v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_innerFSB:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    if-eqz v1, :cond_0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkMask:I

    and-int/2addr p0, p1

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->charAt(I)C

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    aget-object v0, v1, v0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkMask:I

    and-int/2addr p0, p1

    aget-char p0, v0, p0

    return p0
.end method

.method public getOneChunkString(III)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    aget-object p0, p0, p1

    invoke-direct {v0, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public getString(II)Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkMask:I

    and-int v1, p1, v0

    .line 2
    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkBits:I

    ushr-int/2addr p1, v2

    add-int v2, v1, p2

    if-ge v2, v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_innerFSB:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0, p1, v1, p2}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->getOneChunkString(III)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->getString(Ljava/lang/StringBuffer;III)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getString(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;
    .locals 2

    .line 6
    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkBits:I

    ushr-int v0, p2, v0

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkMask:I

    and-int/2addr p2, v1

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->getString(Ljava/lang/StringBuffer;III)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method public getString(Ljava/lang/StringBuffer;III)Ljava/lang/StringBuffer;
    .locals 3

    .line 7
    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkBits:I

    shl-int v1, p2, v0

    add-int/2addr v1, p3

    add-int/2addr v1, p4

    ushr-int p4, v1, v0

    .line 8
    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkMask:I

    and-int/2addr v0, v1

    :goto_0
    if-ge p2, p4, :cond_1

    if-nez p2, :cond_0

    .line 9
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_innerFSB:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    if-eqz v1, :cond_0

    .line 10
    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkSize:I

    sub-int/2addr v2, p3

    invoke-virtual {v1, p1, p3, v2}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->getString(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    aget-object v1, v1, p2

    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkSize:I

    sub-int/2addr v2, p3

    invoke-virtual {p1, v1, p3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 p2, p2, 0x1

    const/4 p3, 0x0

    goto :goto_0

    :cond_1
    if-nez p4, :cond_2

    .line 12
    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_innerFSB:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    if-eqz p2, :cond_2

    sub-int/2addr v0, p3

    .line 13
    invoke-virtual {p2, p1, p3, v0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->getString(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    if-le v0, p3, :cond_3

    .line 14
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    aget-object p0, p0, p4

    sub-int/2addr v0, p3

    invoke-virtual {p1, p0, p3, v0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :cond_3
    :goto_2
    return-object p1
.end method

.method public isWhitespace(II)Z
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkBits:I

    ushr-int v0, p1, v0

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkMask:I

    and-int/2addr p1, v1

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkSize:I

    sub-int/2addr v1, p1

    :goto_0
    if-lez p2, :cond_3

    if-gt p2, v1, :cond_0

    move v1, p2

    :cond_0
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_innerFSB:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1, v1}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->isWhitespace(II)Z

    move-result p1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    aget-object v2, v2, v0

    invoke-static {v2, p1, v1}, Lcom/sun/org/apache/xml/internal/utils/XMLCharacterRecognizer;->isWhiteSpace([CII)Z

    move-result p1

    :goto_1
    const/4 v2, 0x0

    if-nez p1, :cond_2

    return v2

    :cond_2
    sub-int/2addr p2, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkSize:I

    move p1, v2

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final length()I
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_lastChunk:I

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkBits:I

    shl-int/2addr v0, v1

    iget p0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_firstFree:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final reset()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_lastChunk:I

    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_firstFree:I

    move-object v1, p0

    :goto_0
    iget-object v2, v1, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_innerFSB:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    if-eqz v2, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget v2, v1, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkBits:I

    iput v2, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkBits:I

    iget v2, v1, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkSize:I

    iput v2, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkSize:I

    iget v1, v1, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkMask:I

    iput v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkMask:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_innerFSB:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    const/16 v1, 0x10

    filled-new-array {v1, v0}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[C

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    iget p0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkSize:I

    new-array p0, p0, [C

    aput-object p0, v1, v0

    return-void
.end method

.method public sendNormalizedSAXcharacters(Lorg/xml/sax/ContentHandler;II)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    add-int/2addr p3, p2

    .line 1
    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkBits:I

    ushr-int v1, p2, v0

    .line 2
    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkMask:I

    and-int/2addr p2, v2

    ushr-int v0, p3, v0

    and-int/2addr p3, v2

    const/4 v2, 0x1

    :goto_0
    if-ge v1, v0, :cond_1

    if-nez v1, :cond_0

    .line 3
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_innerFSB:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    if-eqz v3, :cond_0

    .line 4
    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkSize:I

    sub-int/2addr v2, p2

    invoke-virtual {v3, p1, p2, v2}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->sendNormalizedSAXcharacters(Lorg/xml/sax/ContentHandler;II)I

    move-result p2

    goto :goto_1

    .line 5
    :cond_0
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    aget-object v3, v3, v1

    iget v4, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkSize:I

    sub-int/2addr v4, p2

    invoke-static {v3, p2, v4, p1, v2}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->sendNormalizedSAXcharacters([CIILorg/xml/sax/ContentHandler;I)I

    move-result p2

    :goto_1
    move v2, p2

    add-int/lit8 v1, v1, 0x1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 6
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_innerFSB:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    if-eqz v1, :cond_2

    sub-int/2addr p3, p2

    .line 7
    invoke-virtual {v1, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->sendNormalizedSAXcharacters(Lorg/xml/sax/ContentHandler;II)I

    move-result v2

    goto :goto_2

    :cond_2
    if-le p3, p2, :cond_3

    .line 8
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    aget-object p0, p0, v0

    sub-int/2addr p3, p2

    or-int/lit8 v0, v2, 0x2

    invoke-static {p0, p2, p3, p1, v0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->sendNormalizedSAXcharacters([CIILorg/xml/sax/ContentHandler;I)I

    move-result v2

    :cond_3
    :goto_2
    return v2
.end method

.method public sendSAXComment(Lorg/xml/sax/ext/LexicalHandler;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0, p2, p3}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    return-void
.end method

.method public sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkBits:I

    ushr-int v1, p2, v0

    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkMask:I

    and-int v3, p2, v2

    add-int v4, v3, p3

    if-ge v4, v2, :cond_0

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_innerFSB:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    if-nez v4, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    aget-object p0, p0, v1

    invoke-interface {p1, p0, v3, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    return-void

    :cond_0
    add-int/2addr p2, p3

    ushr-int p3, p2, v0

    and-int/2addr p2, v2

    :goto_0
    if-ge v1, p3, :cond_2

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_innerFSB:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkSize:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, p1, v3, v2}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    aget-object v0, v0, v1

    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkSize:I

    sub-int/2addr v2, v3

    invoke-interface {p1, v0, v3, v2}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    if-nez p3, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_innerFSB:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    if-eqz v0, :cond_3

    sub-int/2addr p2, v3

    invoke-virtual {v0, p1, v3, p2}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    goto :goto_2

    :cond_3
    if-le p2, v3, :cond_4

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_array:[[C

    aget-object p0, p0, p3

    sub-int/2addr p2, v3

    invoke-interface {p1, p0, v3, p2}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final setLength(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkBits:I

    ushr-int v0, p1, v0

    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_lastChunk:I

    if-nez v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_innerFSB:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {v1, p1, p0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->setLength(ILcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V

    goto :goto_0

    .line 4
    :cond_0
    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkMask:I

    and-int/2addr p1, v1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_firstFree:I

    if-nez p1, :cond_1

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 5
    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_lastChunk:I

    .line 6
    iget p1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkSize:I

    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_firstFree:I

    :cond_1
    :goto_0
    return-void
.end method

.method public final size()I
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_lastChunk:I

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkBits:I

    shl-int/2addr v0, v1

    iget p0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_firstFree:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_lastChunk:I

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_chunkBits:I

    shl-int/2addr v0, v1

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->m_firstFree:I

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2, v0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->getString(Ljava/lang/StringBuffer;III)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
