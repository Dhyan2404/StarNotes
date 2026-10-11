.class public Lorg/apache/poi/hwmf/record/HwmfText$WmfTextOut;
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
    name = "WmfTextOut"
.end annotation


# instance fields
.field protected charsetProvider:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field

.field private rawTextBytes:[B

.field protected reference:Ljava/awt/geom/Point2D;

.field private stringLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/awt/geom/Point2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Point2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfTextOut;->reference:Ljava/awt/geom/Point2D;

    new-instance v0, Lcom/sunia/HTREnginev2/lai;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/lai;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfTextOut;->charsetProvider:Ljava/util/function/Supplier;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hwmf/record/HwmfText$WmfTextOut;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfText$WmfTextOut;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hwmf/record/HwmfText$WmfTextOut;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfText$WmfTextOut;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c()Ljava/nio/charset/Charset;
    .locals 1

    invoke-static {}, Lorg/apache/poi/hwmf/record/HwmfText$WmfTextOut;->lambda$new$0()Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method private getTextBytes()[B
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfTextOut;->rawTextBytes:[B

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfTextOut;->stringLength:I

    invoke-static {}, Lorg/apache/poi/hwmf/record/HwmfText;->access$000()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v1}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfTextOut;->charsetProvider:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hwmf/record/HwmfText$WmfTextOut;->getText(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfTextOut;->reference:Ljava/awt/geom/Point2D;

    return-object p0
.end method

.method private static synthetic lambda$new$0()Ljava/nio/charset/Charset;
    .locals 1

    sget-object v0, Lorg/apache/poi/util/LocaleUtil;->CHARSET_1252:Ljava/nio/charset/Charset;

    return-object v0
.end method


# virtual methods
.method public draw(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfTextOut;->charsetProvider:Ljava/util/function/Supplier;

    invoke-virtual {p1, v0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->setCharsetProvider(Ljava/util/function/Supplier;)V

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfText$WmfTextOut;->getTextBytes()[B

    move-result-object v0

    iget v1, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfTextOut;->stringLength:I

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfTextOut;->reference:Ljava/awt/geom/Point2D;

    invoke-virtual {p1, v0, v1, p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->drawString([BILjava/awt/geom/Point2D;)V

    return-void
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/mai;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/mai;-><init>(Lorg/apache/poi/hwmf/record/HwmfText$WmfTextOut;)V

    new-instance v1, Lcom/sunia/HTREnginev2/nai;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/nai;-><init>(Lorg/apache/poi/hwmf/record/HwmfText$WmfTextOut;)V

    const-string p0, "text"

    const-string v2, "reference"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getText(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfText$WmfTextOut;->getTextBytes()[B

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public getWmfRecordType()Lorg/apache/poi/hwmf/record/HwmfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfRecordType;->textOut:Lorg/apache/poi/hwmf/record/HwmfRecordType;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result p2

    iput p2, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfTextOut;->stringLength:I

    int-to-long p3, p2

    and-int/lit8 p2, p2, 0x1

    int-to-long v0, p2

    add-long/2addr p3, v0

    invoke-static {}, Lorg/apache/poi/hwmf/record/HwmfText;->access$000()I

    move-result p2

    invoke-static {p3, p4, p2}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfTextOut;->rawTextBytes:[B

    invoke-virtual {p1, p2}, Lorg/apache/poi/util/LittleEndianInputStream;->readFully([B)V

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result p2

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result p1

    iget-object p3, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfTextOut;->reference:Ljava/awt/geom/Point2D;

    int-to-double v0, p1

    int-to-double p1, p2

    invoke-virtual {p3, v0, v1, p1, p2}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfTextOut;->rawTextBytes:[B

    array-length p0, p0

    add-int/lit8 p0, p0, 0x6

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

    iput-object p1, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfTextOut;->charsetProvider:Ljava/util/function/Supplier;

    return-void
.end method
