.class public Lorg/apache/poi/hwpf/model/OldTextPieceTable;
.super Lorg/apache/poi/hwpf/model/TextPieceTable;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hwpf/model/TextPieceTable;-><init>()V

    return-void
.end method

.method public constructor <init>([B[BIIILjava/nio/charset/Charset;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hwpf/model/TextPieceTable;-><init>()V

    .line 3
    new-instance v0, Lorg/apache/poi/hwpf/model/PlexOfCps;

    .line 4
    invoke-static {}, Lorg/apache/poi/hwpf/model/PieceDescriptor;->getSizeInBytes()I

    move-result v1

    invoke-direct {v0, p2, p3, p4, v1}, Lorg/apache/poi/hwpf/model/PlexOfCps;-><init>([BIII)V

    .line 5
    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/PlexOfCps;->length()I

    move-result p2

    .line 6
    new-array p3, p2, [Lorg/apache/poi/hwpf/model/PieceDescriptor;

    const/4 p4, 0x0

    move v1, p4

    :goto_0
    if-ge v1, p2, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Lorg/apache/poi/hwpf/model/PlexOfCps;->getProperty(I)Lorg/apache/poi/hwpf/model/GenericPropertyNode;

    move-result-object v2

    .line 8
    new-instance v3, Lorg/apache/poi/hwpf/model/PieceDescriptor;

    invoke-virtual {v2}, Lorg/apache/poi/hwpf/model/GenericPropertyNode;->getBytes()[B

    move-result-object v2

    invoke-direct {v3, v2, p4, p6}, Lorg/apache/poi/hwpf/model/PieceDescriptor;-><init>([BILjava/nio/charset/Charset;)V

    aput-object v3, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_0
    aget-object v1, p3, p4

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/PieceDescriptor;->getFilePosition()I

    move-result v1

    sub-int/2addr v1, p5

    iput v1, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_cpMin:I

    move v1, p4

    :goto_1
    if-ge v1, p2, :cond_2

    .line 10
    aget-object v2, p3, v1

    .line 11
    invoke-virtual {v2}, Lorg/apache/poi/hwpf/model/PieceDescriptor;->getFilePosition()I

    move-result v2

    sub-int/2addr v2, p5

    .line 12
    iget v3, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_cpMin:I

    if-ge v2, v3, :cond_1

    .line 13
    iput v2, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_cpMin:I

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge p4, p2, :cond_5

    .line 14
    aget-object p5, p3, p4

    invoke-virtual {p5}, Lorg/apache/poi/hwpf/model/PieceDescriptor;->getFilePosition()I

    move-result p5

    .line 15
    invoke-virtual {v0, p4}, Lorg/apache/poi/hwpf/model/PlexOfCps;->getProperty(I)Lorg/apache/poi/hwpf/model/GenericPropertyNode;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/PropertyNode;->getStart()I

    move-result v2

    .line 17
    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/PropertyNode;->getEnd()I

    move-result v1

    .line 18
    aget-object v3, p3, p4

    invoke-virtual {v3}, Lorg/apache/poi/hwpf/model/PieceDescriptor;->isUnicode()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz p6, :cond_3

    .line 19
    sget-object v3, Lorg/apache/poi/hwpf/util/DoubleByteUtil;->DOUBLE_BYTE_CHARSETS:Ljava/util/Set;

    .line 20
    invoke-interface {v3, p6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    const/4 v3, 0x1

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v3, 0x2

    :goto_4
    sub-int v4, v1, v2

    mul-int/2addr v4, v3

    .line 21
    invoke-static {}, Lorg/apache/poi/hwpf/model/TextPieceTable;->getMaxRecordLength()I

    move-result v3

    invoke-static {p1, p5, v4, v3}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p5

    .line 22
    aget-object v3, p3, p4

    invoke-virtual {p0, v2, v1, p5, v3}, Lorg/apache/poi/hwpf/model/OldTextPieceTable;->newTextPiece(II[BLorg/apache/poi/hwpf/model/PieceDescriptor;)Lorg/apache/poi/hwpf/model/TextPiece;

    move-result-object p5

    .line 23
    iget-object v1, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_textPieces:Ljava/util/ArrayList;

    invoke-virtual {v1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    .line 24
    :cond_5
    iget-object p1, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_textPieces:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_textPieces:Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/apache/poi/hwpf/model/TextPieceTable;->_textPiecesFCOrder:Ljava/util/ArrayList;

    .line 26
    invoke-static {}, Lorg/apache/poi/hwpf/model/TextPieceTable;->byFilePosition()Ljava/util/Comparator;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public getEncodingMultiplier(Lorg/apache/poi/hwpf/model/TextPiece;)I
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/model/TextPiece;->getPieceDescriptor()Lorg/apache/poi/hwpf/model/PieceDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/PieceDescriptor;->getCharset()Ljava/nio/charset/Charset;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Lorg/apache/poi/hwpf/util/DoubleByteUtil;->DOUBLE_BYTE_CHARSETS:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public newTextPiece(II[BLorg/apache/poi/hwpf/model/PieceDescriptor;)Lorg/apache/poi/hwpf/model/TextPiece;
    .locals 0

    new-instance p0, Lorg/apache/poi/hwpf/model/OldTextPiece;

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/hwpf/model/OldTextPiece;-><init>(II[BLorg/apache/poi/hwpf/model/PieceDescriptor;)V

    return-object p0
.end method
