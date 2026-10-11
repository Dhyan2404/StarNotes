.class public Lorg/apache/poi/hwpf/model/ComplexFileTable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final GRPPRL_TYPE:B = 0x1t

.field private static final TEXT_PIECE_TABLE_TYPE:B = 0x2t


# instance fields
.field private _grpprls:[Lorg/apache/poi/hwpf/sprm/SprmBuffer;

.field protected _tpt:Lorg/apache/poi/hwpf/model/TextPieceTable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/apache/poi/hwpf/model/TextPieceTable;

    invoke-direct {v0}, Lorg/apache/poi/hwpf/model/TextPieceTable;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwpf/model/ComplexFileTable;->_tpt:Lorg/apache/poi/hwpf/model/TextPieceTable;

    return-void
.end method

.method public constructor <init>([B[BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    sget-object v5, Lorg/apache/poi/util/StringUtil;->WIN_1252:Ljava/nio/charset/Charset;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/hwpf/model/ComplexFileTable;-><init>([B[BIILjava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>([B[BIILjava/nio/charset/Charset;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 5
    :goto_0
    aget-byte v1, p2, p3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    add-int/lit8 p3, p3, 0x1

    .line 6
    invoke-static {p2, p3}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v1

    add-int/2addr p3, v2

    .line 7
    invoke-static {}, Lorg/apache/poi/hwpf/HWPFDocument;->getMaxRecordLength()I

    move-result v2

    invoke-static {p2, p3, v1, v2}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object v2

    add-int/2addr p3, v1

    .line 8
    new-instance v1, Lorg/apache/poi/hwpf/sprm/SprmBuffer;

    invoke-direct {v1, v2, v3, v3}, Lorg/apache/poi/hwpf/sprm/SprmBuffer;-><init>([BZI)V

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-array v1, v3, [Lorg/apache/poi/hwpf/sprm/SprmBuffer;

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hwpf/sprm/SprmBuffer;

    iput-object v0, p0, Lorg/apache/poi/hwpf/model/ComplexFileTable;->_grpprls:[Lorg/apache/poi/hwpf/sprm/SprmBuffer;

    .line 11
    aget-byte v0, p2, p3

    if-ne v0, v2, :cond_1

    add-int/2addr p3, v4

    .line 12
    invoke-static {p2, p3}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v4

    add-int/lit8 v3, p3, 0x4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    move-object v6, p5

    .line 13
    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/hwpf/model/ComplexFileTable;->newTextPieceTable([B[BIIILjava/nio/charset/Charset;)Lorg/apache/poi/hwpf/model/TextPieceTable;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hwpf/model/ComplexFileTable;->_tpt:Lorg/apache/poi/hwpf/model/TextPieceTable;

    return-void

    .line 14
    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "The text piece table is corrupted, expected byte value 2 but had "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getGrpprls()[Lorg/apache/poi/hwpf/sprm/SprmBuffer;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/ComplexFileTable;->_grpprls:[Lorg/apache/poi/hwpf/sprm/SprmBuffer;

    return-object p0
.end method

.method public getTextPieceTable()Lorg/apache/poi/hwpf/model/TextPieceTable;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/ComplexFileTable;->_tpt:Lorg/apache/poi/hwpf/model/TextPieceTable;

    return-object p0
.end method

.method public newTextPieceTable([B[BIIILjava/nio/charset/Charset;)Lorg/apache/poi/hwpf/model/TextPieceTable;
    .locals 6

    new-instance p0, Lorg/apache/poi/hwpf/model/TextPieceTable;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/hwpf/model/TextPieceTable;-><init>([B[BIII)V

    return-object p0
.end method

.method public writeTo(Ljava/io/ByteArrayOutputStream;Ljava/io/ByteArrayOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 5
    iget-object p0, p0, Lorg/apache/poi/hwpf/model/ComplexFileTable;->_tpt:Lorg/apache/poi/hwpf/model/TextPieceTable;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hwpf/model/TextPieceTable;->writeTo(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    const/4 p1, 0x4

    new-array p1, p1, [B

    .line 6
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 7
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 8
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public writeTo(Lorg/apache/poi/hwpf/model/io/HWPFFileSystem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "WordDocument"

    .line 1
    invoke-virtual {p1, v0}, Lorg/apache/poi/hwpf/model/io/HWPFFileSystem;->getStream(Ljava/lang/String;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    const-string v1, "1Table"

    .line 2
    invoke-virtual {p1, v1}, Lorg/apache/poi/hwpf/model/io/HWPFFileSystem;->getStream(Ljava/lang/String;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    .line 3
    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/hwpf/model/ComplexFileTable;->writeTo(Ljava/io/ByteArrayOutputStream;Ljava/io/ByteArrayOutputStream;)V

    return-void
.end method
