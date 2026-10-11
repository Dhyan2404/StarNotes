.class public Lorg/apache/poi/hwmf/usermodel/HwmfPicture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/poi/hwmf/record/HwmfRecord;",
        ">;",
        "Lorg/apache/poi/common/usermodel/GenericRecord;"
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_RECORD_LENGTH:I = 0x5f5e100

.field private static final LOG:Lorg/apache/logging/log4j/Logger;

.field public static MAX_RECORD_LENGTH:I = 0x5f5e100


# instance fields
.field private defaultCharset:Ljava/nio/charset/Charset;

.field final header:Lorg/apache/poi/hwmf/record/HwmfHeader;

.field final placeableHeader:Lorg/apache/poi/hwmf/record/HwmfPlaceableHeader;

.field final records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hwmf/record/HwmfRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hwmf/usermodel/HwmfPicture;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/usermodel/HwmfPicture;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwmf/usermodel/HwmfPicture;->records:Ljava/util/List;

    sget-object v0, Lorg/apache/poi/util/LocaleUtil;->CHARSET_1252:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lorg/apache/poi/hwmf/usermodel/HwmfPicture;->defaultCharset:Ljava/nio/charset/Charset;

    new-instance v0, Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-direct {v0, p1}, Lorg/apache/poi/util/LittleEndianInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-static {v0}, Lorg/apache/poi/hwmf/record/HwmfPlaceableHeader;->readHeader(Lorg/apache/poi/util/LittleEndianInputStream;)Lorg/apache/poi/hwmf/record/HwmfPlaceableHeader;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hwmf/usermodel/HwmfPicture;->placeableHeader:Lorg/apache/poi/hwmf/record/HwmfPlaceableHeader;

    new-instance p1, Lorg/apache/poi/hwmf/record/HwmfHeader;

    invoke-direct {p1, v0}, Lorg/apache/poi/hwmf/record/HwmfHeader;-><init>(Lorg/apache/poi/util/LittleEndianInputStream;)V

    iput-object p1, p0, Lorg/apache/poi/hwmf/usermodel/HwmfPicture;->header:Lorg/apache/poi/hwmf/record/HwmfHeader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v1

    const-wide/16 v3, 0x2

    mul-long/2addr v1, v3

    const-wide/32 v3, 0x7fffffff

    cmp-long p1, v1, v3

    if-gtz p1, :cond_8

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-ltz p1, :cond_7

    long-to-int p1, v1

    int-to-long v1, p1

    invoke-virtual {v0}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {p1}, Lorg/apache/poi/hwmf/record/HwmfRecordType;->getById(I)Lorg/apache/poi/hwmf/record/HwmfRecordType;

    move-result-object v3

    if-eqz v3, :cond_6

    sget-object v4, Lorg/apache/poi/hwmf/record/HwmfRecordType;->eof:Lorg/apache/poi/hwmf/record/HwmfRecordType;

    if-ne v3, v4, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v3, v3, Lorg/apache/poi/hwmf/record/HwmfRecordType;->constructor:Ljava/util/function/Supplier;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hwmf/record/HwmfRecord;

    iget-object v4, p0, Lorg/apache/poi/hwmf/usermodel/HwmfPicture;->records:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v0, v1, v2, p1}, Lorg/apache/poi/hwmf/record/HwmfRecord;->init(Lorg/apache/poi/util/LittleEndianInputStream;JI)I

    move-result p1

    add-int/lit8 p1, p1, 0x6

    int-to-long v4, p1

    sub-long v4, v1, v4

    long-to-int v4, v4

    if-ltz v4, :cond_4

    if-lez v4, :cond_3

    int-to-long v1, v4

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/IOUtils;->skipFully(Ljava/io/InputStream;J)J

    move-result-wide v5

    cmp-long p1, v5, v1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to skip "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " but skipped: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    instance-of p1, v3, Lorg/apache/poi/hwmf/usermodel/HwmfCharsetAware;

    if-eqz p1, :cond_0

    check-cast v3, Lorg/apache/poi/hwmf/usermodel/HwmfCharsetAware;

    new-instance p1, Lcom/sunia/HTREnginev2/x6i;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/x6i;-><init>(Lorg/apache/poi/hwmf/usermodel/HwmfPicture;)V

    invoke-interface {v3, p1}, Lorg/apache/poi/hwmf/usermodel/HwmfCharsetAware;->setCharsetProvider(Ljava/util/function/Supplier;)V

    goto :goto_0

    :cond_4
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read too many bytes. record size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "; comsumed size: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported record type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected record type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    :try_start_3
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    const-string p1, "record size can\'t be < 0"

    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    const-string p1, "record size can\'t be > 2147483647"

    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    :try_start_4
    sget-object p0, Lorg/apache/poi/hwmf/usermodel/HwmfPicture;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p1, "unexpected eof - wmf file was truncated"

    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1
.end method

.method public static synthetic a(Lorg/apache/poi/hwmf/usermodel/HwmfPicture;)Ljava/util/Iterator;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/usermodel/HwmfPicture;->lambda$getEmbeddings$0()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static getMaxRecordLength()I
    .locals 1

    sget v0, Lorg/apache/poi/hwmf/usermodel/HwmfPicture;->MAX_RECORD_LENGTH:I

    return v0
.end method

.method private synthetic lambda$getEmbeddings$0()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedIterator;

    invoke-direct {v0, p0}, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedIterator;-><init>(Lorg/apache/poi/hwmf/usermodel/HwmfPicture;)V

    return-object v0
.end method

.method public static setMaxRecordLength(I)V
    .locals 0

    sput p0, Lorg/apache/poi/hwmf/usermodel/HwmfPicture;->MAX_RECORD_LENGTH:I

    return-void
.end method


# virtual methods
.method public draw(Ljava/awt/Graphics2D;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hwmf/usermodel/HwmfPicture;->getSize()Ljava/awt/geom/Dimension2D;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->pointsToPixel(D)I

    move-result v1

    .line 3
    invoke-virtual {v0}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/poi/util/Units;->pointsToPixel(D)I

    move-result v0

    .line 4
    new-instance v11, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    int-to-double v7, v1

    int-to-double v9, v0

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    .line 5
    invoke-virtual {p0, p1, v11}, Lorg/apache/poi/hwmf/usermodel/HwmfPicture;->draw(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V

    return-void
.end method

.method public draw(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V
    .locals 8

    .line 6
    new-instance v0, Lorg/apache/poi/hwmf/draw/HwmfGraphicsState;

    invoke-direct {v0}, Lorg/apache/poi/hwmf/draw/HwmfGraphicsState;-><init>()V

    .line 7
    invoke-virtual {v0, p1}, Lorg/apache/poi/hwmf/draw/HwmfGraphicsState;->backup(Ljava/awt/Graphics2D;)V

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/hwmf/usermodel/HwmfPicture;->getBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lorg/apache/poi/hwmf/usermodel/HwmfPicture;->getInnnerBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 10
    :goto_0
    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getCenterX()D

    move-result-wide v2

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getCenterY()D

    move-result-wide v4

    invoke-virtual {p1, v2, v3, v4, v5}, Ljava/awt/Graphics2D;->translate(DD)V

    .line 11
    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v2

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v4

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v6

    div-double/2addr v4, v6

    invoke-virtual {p1, v2, v3, v4, v5}, Ljava/awt/Graphics2D;->scale(DD)V

    .line 12
    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getCenterX()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getCenterY()D

    move-result-wide v4

    neg-double v4, v4

    invoke-virtual {p1, v2, v3, v4, v5}, Ljava/awt/Graphics2D;->translate(DD)V

    .line 13
    new-instance p2, Lorg/apache/poi/hwmf/draw/HwmfGraphics;

    invoke-direct {p2, p1, v1}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;-><init>(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V

    .line 14
    invoke-virtual {p2}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getProperties()Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    move-result-object v2

    .line 15
    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v3

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setViewportOrg(DD)V

    .line 16
    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v3

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setViewportExt(DD)V

    .line 17
    iget-object p0, p0, Lorg/apache/poi/hwmf/usermodel/HwmfPicture;->records:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hwmf/record/HwmfRecord;

    .line 18
    invoke-virtual {p2}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getProperties()Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getClip()Ljava/awt/Shape;

    move-result-object v2

    .line 20
    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getClip()Ljava/awt/Shape;

    move-result-object v3

    .line 21
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    invoke-interface {v1, p2}, Lorg/apache/poi/hwmf/record/HwmfRecord;->draw(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 23
    :cond_1
    invoke-virtual {v0, p1}, Lorg/apache/poi/hwmf/draw/HwmfGraphicsState;->restore(Ljava/awt/Graphics2D;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hwmf/draw/HwmfGraphicsState;->restore(Ljava/awt/Graphics2D;)V

    .line 24
    throw p0
.end method

.method public getBounds()Ljava/awt/geom/Rectangle2D;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hwmf/usermodel/HwmfPicture;->placeableHeader:Lorg/apache/poi/hwmf/record/HwmfPlaceableHeader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/hwmf/record/HwmfPlaceableHeader;->getBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hwmf/usermodel/HwmfPicture;->getInnnerBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "invalid wmf file - window records are incomplete."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBoundsInPoints()Ljava/awt/geom/Rectangle2D;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hwmf/usermodel/HwmfPicture;->placeableHeader:Lorg/apache/poi/hwmf/record/HwmfPlaceableHeader;

    if-nez v0, :cond_0

    const-wide v0, 0x4096800000000000L    # 1440.0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hwmf/record/HwmfPlaceableHeader;->getUnitsPerInch()I

    move-result v0

    int-to-double v0, v0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hwmf/usermodel/HwmfPicture;->getBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    const-wide/high16 v2, 0x4052000000000000L    # 72.0

    div-double/2addr v2, v0

    invoke-static {v2, v3, v2, v3}, Ljava/awt/geom/AffineTransform;->getScaleInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p0

    invoke-interface {p0}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultCharset()Ljava/nio/charset/Charset;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/usermodel/HwmfPicture;->defaultCharset:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public getEmbeddings()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/w6i;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/w6i;-><init>(Lorg/apache/poi/hwmf/usermodel/HwmfPicture;)V

    return-object v0
.end method

.method public getGenericChildren()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/common/usermodel/GenericRecord;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/usermodel/HwmfPicture;->getRecords()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getHeader()Lorg/apache/poi/hwmf/record/HwmfHeader;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/usermodel/HwmfPicture;->header:Lorg/apache/poi/hwmf/record/HwmfHeader;

    return-object p0
.end method

.method public getInnnerBounds()Ljava/awt/geom/Rectangle2D;
    .locals 12

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/usermodel/HwmfPicture;->getRecords()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hwmf/record/HwmfRecord;

    instance-of v4, v3, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfSetWindowOrg;

    if-eqz v4, :cond_1

    move-object v1, v3

    check-cast v1, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfSetWindowOrg;

    goto :goto_0

    :cond_1
    instance-of v4, v3, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfSetWindowExt;

    if-eqz v4, :cond_2

    move-object v2, v3

    check-cast v2, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfSetWindowExt;

    :cond_2
    :goto_0
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    new-instance p0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-virtual {v1}, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfSetWindowOrg;->getX()D

    move-result-wide v4

    invoke-virtual {v1}, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfSetWindowOrg;->getY()D

    move-result-wide v6

    invoke-virtual {v2}, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfSetWindowExt;->getSize()Ljava/awt/geom/Dimension2D;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v8

    invoke-virtual {v2}, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfSetWindowExt;->getSize()Ljava/awt/geom/Dimension2D;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v10

    move-object v3, p0

    invoke-direct/range {v3 .. v11}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object p0

    :cond_3
    return-object v0
.end method

.method public getPlaceableHeader()Lorg/apache/poi/hwmf/record/HwmfPlaceableHeader;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/usermodel/HwmfPicture;->placeableHeader:Lorg/apache/poi/hwmf/record/HwmfPlaceableHeader;

    return-object p0
.end method

.method public getRecords()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hwmf/record/HwmfRecord;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hwmf/usermodel/HwmfPicture;->records:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSize()Ljava/awt/geom/Dimension2D;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/usermodel/HwmfPicture;->getBoundsInPoints()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/util/Dimension2DDouble;

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v1

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/util/Dimension2DDouble;-><init>(DD)V

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/hwmf/record/HwmfRecord;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/usermodel/HwmfPicture;->getRecords()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public setDefaultCharset(Ljava/nio/charset/Charset;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hwmf/usermodel/HwmfPicture;->defaultCharset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Lorg/apache/poi/hwmf/record/HwmfRecord;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/usermodel/HwmfPicture;->getRecords()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
