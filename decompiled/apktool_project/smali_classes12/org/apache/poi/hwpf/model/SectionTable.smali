.class public Lorg/apache/poi/hwpf/model/SectionTable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final LOG:Lorg/apache/logging/log4j/Logger;

.field private static final SED_SIZE:I = 0xc


# instance fields
.field protected _sections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hwpf/model/SEPX;",
            ">;"
        }
    .end annotation
.end field

.field protected _text:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hwpf/model/TextPiece;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hwpf/model/SectionTable;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwpf/model/SectionTable;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwpf/model/SectionTable;->_sections:Ljava/util/List;

    return-void
.end method

.method public constructor <init>([B[BIIILorg/apache/poi/hwpf/model/TextPieceTable;I)V
    .locals 5

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    iput-object p5, p0, Lorg/apache/poi/hwpf/model/SectionTable;->_sections:Ljava/util/List;

    .line 5
    new-instance p5, Lorg/apache/poi/hwpf/model/PlexOfCps;

    const/16 v0, 0xc

    invoke-direct {p5, p2, p3, p4, v0}, Lorg/apache/poi/hwpf/model/PlexOfCps;-><init>([BIII)V

    .line 6
    invoke-virtual {p6}, Lorg/apache/poi/hwpf/model/TextPieceTable;->getTextPieces()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hwpf/model/SectionTable;->_text:Ljava/util/List;

    .line 7
    invoke-virtual {p5}, Lorg/apache/poi/hwpf/model/PlexOfCps;->length()I

    move-result p2

    const/4 p3, 0x0

    move p4, p3

    :goto_0
    if-ge p4, p2, :cond_1

    .line 8
    invoke-virtual {p5, p4}, Lorg/apache/poi/hwpf/model/PlexOfCps;->getProperty(I)Lorg/apache/poi/hwpf/model/GenericPropertyNode;

    move-result-object p6

    .line 9
    new-instance v0, Lorg/apache/poi/hwpf/model/SectionDescriptor;

    invoke-virtual {p6}, Lorg/apache/poi/hwpf/model/GenericPropertyNode;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lorg/apache/poi/hwpf/model/SectionDescriptor;-><init>([BI)V

    .line 10
    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/SectionDescriptor;->getFc()I

    move-result v1

    .line 11
    invoke-virtual {p6}, Lorg/apache/poi/hwpf/model/PropertyNode;->getStart()I

    move-result v2

    .line 12
    invoke-virtual {p6}, Lorg/apache/poi/hwpf/model/PropertyNode;->getEnd()I

    move-result p6

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 13
    iget-object v1, p0, Lorg/apache/poi/hwpf/model/SectionTable;->_sections:Ljava/util/List;

    new-instance v3, Lorg/apache/poi/hwpf/model/SEPX;

    new-array v4, p3, [B

    invoke-direct {v3, v0, v2, p6, v4}, Lorg/apache/poi/hwpf/model/SEPX;-><init>(Lorg/apache/poi/hwpf/model/SectionDescriptor;II[B)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_0
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v3

    add-int/lit8 v1, v1, 0x2

    .line 15
    invoke-static {}, Lorg/apache/poi/hwpf/HWPFDocument;->getMaxRecordLength()I

    move-result v4

    invoke-static {p1, v1, v3, v4}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object v1

    .line 16
    iget-object v3, p0, Lorg/apache/poi/hwpf/model/SectionTable;->_sections:Ljava/util/List;

    new-instance v4, Lorg/apache/poi/hwpf/model/SEPX;

    invoke-direct {v4, v0, v2, p6, v1}, Lorg/apache/poi/hwpf/model/SEPX;-><init>(Lorg/apache/poi/hwpf/model/SectionDescriptor;II[B)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 17
    :cond_1
    iget-object p1, p0, Lorg/apache/poi/hwpf/model/SectionTable;->_sections:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move p2, p3

    move p4, p2

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lorg/apache/poi/hwpf/model/SEPX;

    .line 18
    invoke-virtual {p6}, Lorg/apache/poi/hwpf/model/PropertyNode;->getEnd()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, p7, :cond_3

    move p2, v1

    goto :goto_2

    .line 19
    :cond_3
    invoke-virtual {p6}, Lorg/apache/poi/hwpf/model/PropertyNode;->getEnd()I

    move-result v0

    if-eq v0, p7, :cond_4

    invoke-virtual {p6}, Lorg/apache/poi/hwpf/model/PropertyNode;->getEnd()I

    move-result p6

    add-int/lit8 v0, p7, -0x1

    if-ne p6, v0, :cond_2

    :cond_4
    move p4, v1

    goto :goto_2

    :cond_5
    if-nez p2, :cond_6

    if-eqz p4, :cond_6

    .line 20
    sget-object p1, Lorg/apache/poi/hwpf/model/SectionTable;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p1

    const-string p2, "Your document seemed to be mostly unicode, but the section definition was in bytes! Trying anyway, but things may well go wrong!"

    invoke-interface {p1, p2}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    .line 21
    :goto_3
    iget-object p1, p0, Lorg/apache/poi/hwpf/model/SectionTable;->_sections:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p3, p1, :cond_6

    .line 22
    iget-object p1, p0, Lorg/apache/poi/hwpf/model/SectionTable;->_sections:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hwpf/model/SEPX;

    .line 23
    invoke-virtual {p5, p3}, Lorg/apache/poi/hwpf/model/PlexOfCps;->getProperty(I)Lorg/apache/poi/hwpf/model/GenericPropertyNode;

    move-result-object p2

    .line 24
    invoke-virtual {p2}, Lorg/apache/poi/hwpf/model/PropertyNode;->getStart()I

    move-result p4

    .line 25
    invoke-virtual {p2}, Lorg/apache/poi/hwpf/model/PropertyNode;->getEnd()I

    move-result p2

    .line 26
    invoke-virtual {p1, p4}, Lorg/apache/poi/hwpf/model/PropertyNode;->setStart(I)V

    .line 27
    invoke-virtual {p1, p2}, Lorg/apache/poi/hwpf/model/PropertyNode;->setEnd(I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 28
    :cond_6
    iget-object p0, p0, Lorg/apache/poi/hwpf/model/SectionTable;->_sections:Ljava/util/List;

    sget-object p1, Lorg/apache/poi/hwpf/model/PropertyNode;->StartComparator:Ljava/util/Comparator;

    invoke-interface {p0, p1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public adjustForInsert(II)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hwpf/model/SectionTable;->_sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/hwpf/model/SectionTable;->_sections:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hwpf/model/SEPX;

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/PropertyNode;->getEnd()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hwpf/model/PropertyNode;->setEnd(I)V

    :goto_0
    add-int/lit8 p1, p1, 0x1

    if-ge p1, v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/hwpf/model/SectionTable;->_sections:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hwpf/model/SEPX;

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/PropertyNode;->getStart()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hwpf/model/PropertyNode;->setStart(I)V

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/PropertyNode;->getEnd()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hwpf/model/PropertyNode;->setEnd(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getSections()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hwpf/model/SEPX;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/SectionTable;->_sections:Ljava/util/List;

    return-object p0
.end method

.method public writeTo(Ljava/io/ByteArrayOutputStream;Ljava/io/ByteArrayOutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    .line 5
    new-instance v1, Lorg/apache/poi/hwpf/model/PlexOfCps;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lorg/apache/poi/hwpf/model/PlexOfCps;-><init>(I)V

    .line 6
    iget-object p0, p0, Lorg/apache/poi/hwpf/model/SectionTable;->_sections:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hwpf/model/SEPX;

    .line 7
    invoke-virtual {v2}, Lorg/apache/poi/hwpf/model/SEPX;->getGrpprl()[B

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [B

    .line 8
    array-length v5, v3

    int-to-short v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 9
    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 10
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 11
    invoke-virtual {v2}, Lorg/apache/poi/hwpf/model/SEPX;->getSectionDescriptor()Lorg/apache/poi/hwpf/model/SectionDescriptor;

    move-result-object v3

    .line 12
    invoke-virtual {v3, v0}, Lorg/apache/poi/hwpf/model/SectionDescriptor;->setFc(I)V

    .line 13
    new-instance v0, Lorg/apache/poi/hwpf/model/GenericPropertyNode;

    .line 14
    invoke-virtual {v2}, Lorg/apache/poi/hwpf/model/PropertyNode;->getStart()I

    move-result v4

    invoke-virtual {v2}, Lorg/apache/poi/hwpf/model/PropertyNode;->getEnd()I

    move-result v2

    invoke-virtual {v3}, Lorg/apache/poi/hwpf/model/SectionDescriptor;->toByteArray()[B

    move-result-object v3

    invoke-direct {v0, v4, v2, v3}, Lorg/apache/poi/hwpf/model/GenericPropertyNode;-><init>(II[B)V

    .line 15
    invoke-virtual {v1, v0}, Lorg/apache/poi/hwpf/model/PlexOfCps;->addProperty(Lorg/apache/poi/hwpf/model/GenericPropertyNode;)V

    .line 16
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/PlexOfCps;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public writeTo(Lorg/apache/poi/hwpf/model/io/HWPFFileSystem;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string p2, "WordDocument"

    .line 1
    invoke-virtual {p1, p2}, Lorg/apache/poi/hwpf/model/io/HWPFFileSystem;->getStream(Ljava/lang/String;)Ljava/io/ByteArrayOutputStream;

    move-result-object p2

    const-string v0, "1Table"

    .line 2
    invoke-virtual {p1, v0}, Lorg/apache/poi/hwpf/model/io/HWPFFileSystem;->getStream(Ljava/lang/String;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p2, p1}, Lorg/apache/poi/hwpf/model/SectionTable;->writeTo(Ljava/io/ByteArrayOutputStream;Ljava/io/ByteArrayOutputStream;)V

    return-void
.end method
