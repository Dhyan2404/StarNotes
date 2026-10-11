.class public Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hwmf/record/HwmfRecord;
.implements Lorg/apache/poi/hwmf/usermodel/HwmfCharsetAware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwmf/record/HwmfText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WmfExtTextOut"
.end annotation


# instance fields
.field protected final bounds:Ljava/awt/geom/Rectangle2D;

.field protected charsetProvider:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field

.field protected final dx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final options:Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;

.field protected rawTextBytes:[B

.field protected final reference:Ljava/awt/geom/Point2D;

.field protected stringLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;

    invoke-direct {v0}, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;-><init>(Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/awt/geom/Point2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Point2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->reference:Ljava/awt/geom/Point2D;

    .line 4
    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->bounds:Ljava/awt/geom/Rectangle2D;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->dx:Ljava/util/List;

    .line 6
    new-instance v0, Lcom/sunia/HTREnginev2/w9i;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/w9i;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->charsetProvider:Ljava/util/function/Supplier;

    .line 7
    iput-object p1, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->options:Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;

    return-void
.end method

.method public static synthetic a()Ljava/nio/charset/Charset;
    .locals 1

    invoke-static {}, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->lambda$new$0()Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->getGenericText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getGenericText()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->isUnicode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->charsetProvider:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->getText(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->dx:Ljava/util/List;

    return-object p0
.end method

.method private static synthetic lambda$new$0()Ljava/nio/charset/Charset;
    .locals 1

    sget-object v0, Lorg/apache/poi/util/LocaleUtil;->CHARSET_1252:Ljava/nio/charset/Charset;

    return-object v0
.end method


# virtual methods
.method public draw(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
    .locals 10

    iget-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->charsetProvider:Ljava/util/function/Supplier;

    invoke-virtual {p1, v0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->setCharsetProvider(Ljava/util/function/Supplier;)V

    iget-object v2, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->rawTextBytes:[B

    iget v3, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->stringLength:I

    iget-object v4, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->reference:Ljava/awt/geom/Point2D;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->bounds:Ljava/awt/geom/Rectangle2D;

    iget-object v7, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->options:Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;

    iget-object v8, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->dx:Ljava/util/List;

    const/4 v9, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v9}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->drawString([BILjava/awt/geom/Point2D;Ljava/awt/geom/Dimension2D;Ljava/awt/geom/Rectangle2D;Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;Ljava/util/List;Z)V

    return-void
.end method

.method public getBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->bounds:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "reference"

    new-instance v1, Lcom/sunia/HTREnginev2/x9i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/x9i;-><init>(Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;)V

    const-string v2, "bounds"

    new-instance v3, Lcom/sunia/HTREnginev2/y9i;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/y9i;-><init>(Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;)V

    const-string v4, "options"

    new-instance v5, Lcom/sunia/HTREnginev2/z9i;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/z9i;-><init>(Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;)V

    const-string v6, "text"

    new-instance v7, Lcom/sunia/HTREnginev2/aai;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/aai;-><init>(Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;)V

    const-string v8, "dx"

    new-instance v9, Lcom/sunia/HTREnginev2/bai;

    invoke-direct {v9, p0}, Lcom/sunia/HTREnginev2/bai;-><init>(Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;)V

    invoke-static/range {v0 .. v9}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getOptions()Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->options:Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;

    return-object p0
.end method

.method public getReference()Ljava/awt/geom/Point2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->reference:Ljava/awt/geom/Point2D;

    return-object p0
.end method

.method public getText(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->rawTextBytes:[B

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->stringLength:I

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 p1, 0x0

    invoke-virtual {v1, p1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWmfRecordType()Lorg/apache/poi/hwmf/record/HwmfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfRecordType;->extTextOut:Lorg/apache/poi/hwmf/record/HwmfRecordType;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x6

    sub-long/2addr p2, v0

    long-to-int p2, p2

    iget-object p3, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->reference:Ljava/awt/geom/Point2D;

    invoke-static {p1, p3}, Lorg/apache/poi/hwmf/record/HwmfDraw;->readPointS(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Point2D;)I

    move-result p3

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result p4

    iput p4, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->stringLength:I

    add-int/lit8 p3, p3, 0x2

    iget-object p4, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->options:Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;

    invoke-virtual {p4, p1}, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;->init(Lorg/apache/poi/util/LittleEndianInputStream;)I

    move-result p4

    add-int/2addr p3, p4

    iget-object p4, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->options:Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;

    invoke-virtual {p4}, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;->isOpaque()Z

    move-result p4

    if-nez p4, :cond_0

    iget-object p4, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->options:Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;

    invoke-virtual {p4}, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;->isClipped()Z

    move-result p4

    if-eqz p4, :cond_1

    :cond_0
    add-int/lit8 p4, p3, 0x8

    if-gt p4, p2, :cond_1

    iget-object p4, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-static {p1, p4}, Lorg/apache/poi/hwmf/record/HwmfDraw;->readRectS(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)I

    move-result p4

    add-int/2addr p3, p4

    :cond_1
    iget p4, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->stringLength:I

    int-to-long v0, p4

    and-int/lit8 p4, p4, 0x1

    int-to-long v2, p4

    add-long/2addr v0, v2

    invoke-static {}, Lorg/apache/poi/hwmf/record/HwmfText;->access$000()I

    move-result p4

    invoke-static {v0, v1, p4}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object p4

    iput-object p4, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->rawTextBytes:[B

    invoke-virtual {p1, p4}, Lorg/apache/poi/util/LittleEndianInputStream;->readFully([B)V

    iget-object p4, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->rawTextBytes:[B

    array-length p4, p4

    add-int/2addr p3, p4

    if-lt p3, p2, :cond_2

    invoke-static {}, Lorg/apache/poi/hwmf/record/HwmfText;->access$100()Lorg/apache/logging/log4j/Logger;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atInfo()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p1, "META_EXTTEXTOUT doesn\'t contain character tracking info"

    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    return p3

    :cond_2
    iget p4, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->stringLength:I

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget p4, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->stringLength:I

    if-ge p2, p4, :cond_3

    invoke-static {}, Lorg/apache/poi/hwmf/record/HwmfText;->access$100()Lorg/apache/logging/log4j/Logger;

    move-result-object p4

    invoke-interface {p4}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p4

    const-string v0, "META_EXTTEXTOUT tracking info doesn\'t cover all characters"

    invoke-interface {p4, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    :cond_3
    const/4 p4, 0x0

    :goto_0
    if-ge p4, p2, :cond_4

    iget-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->dx:Ljava/util/List;

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x2

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_4
    return p3
.end method

.method public isUnicode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setCharsetProvider(Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/nio/charset/Charset;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;->charsetProvider:Ljava/util/function/Supplier;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
