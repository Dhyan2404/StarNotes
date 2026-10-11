.class public Lorg/apache/poi/hwmf/record/HwmfBitmapDib;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;,
        Lorg/apache/poi/hwmf/record/HwmfBitmapDib$BitCount;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BMP_HEADER_SIZE:I = 0xe

.field private static final LOG:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private colorMaskB:I

.field private colorMaskG:I

.field private colorMaskR:I

.field private colorTable:[Ljava/awt/Color;

.field private headerBitCount:Lorg/apache/poi/hwmf/record/HwmfBitmapDib$BitCount;

.field private headerColorImportant:J

.field private headerColorUsed:J

.field private headerCompression:Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

.field private headerHeight:I

.field private headerImageSize:J

.field private headerPlanes:I

.field private headerSize:I

.field private headerWidth:I

.field private headerXPelsPerMeter:I

.field private headerYPelsPerMeter:I

.field private imageData:[B

.field private introSize:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerImageSize:J

    const/4 v2, -0x1

    iput v2, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerXPelsPerMeter:I

    iput v2, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerYPelsPerMeter:I

    iput-wide v0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerColorUsed:J

    iput-wide v0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerColorImportant:J

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hwmf/record/HwmfBitmapDib;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->lambda$getGenericProperties$5()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hwmf/record/HwmfBitmapDib;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->lambda$getGenericProperties$10()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hwmf/record/HwmfBitmapDib;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->lambda$getGenericProperties$4()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/poi/hwmf/record/HwmfBitmapDib;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->lambda$getGenericProperties$7()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/apache/poi/hwmf/record/HwmfBitmapDib;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->lambda$getGenericProperties$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lorg/apache/poi/hwmf/record/HwmfBitmapDib;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lorg/apache/poi/hwmf/record/HwmfBitmapDib;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lorg/apache/poi/hwmf/record/HwmfBitmapDib;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->lambda$getGenericProperties$8()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lorg/apache/poi/hwmf/record/HwmfBitmapDib;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lorg/apache/poi/hwmf/record/HwmfBitmapDib;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->lambda$getGenericProperties$6()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lorg/apache/poi/hwmf/record/HwmfBitmapDib;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->lambda$getGenericProperties$9()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerSize:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerWidth:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$10()Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerColorImportant:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerHeight:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$3()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerPlanes:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$4()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerBitCount:Lorg/apache/poi/hwmf/record/HwmfBitmapDib$BitCount;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$5()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerCompression:Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$6()Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerImageSize:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$7()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerXPelsPerMeter:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$8()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerYPelsPerMeter:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$9()Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerColorUsed:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getBMPData()[B
    .locals 6

    iget v0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerWidth:I

    if-lez v0, :cond_2

    iget v0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerHeight:I

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->imageData:[B

    if-eqz v0, :cond_1

    array-length v0, v0

    int-to-long v0, v0

    iget v2, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->introSize:I

    int-to-long v2, v2

    iget-wide v4, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerImageSize:J

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    const-wide/16 v1, 0xe

    int-to-long v3, v0

    add-long/2addr v3, v1

    invoke-static {}, Lorg/apache/poi/hwmf/usermodel/HwmfPicture;->getMaxRecordLength()I

    move-result v1

    invoke-static {v3, v4, v1}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v1

    const/16 v2, 0x42

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, 0x4d

    aput-byte v4, v1, v2

    const/4 v2, 0x2

    const/16 v4, 0xe

    add-int/2addr v0, v4

    invoke-static {v1, v2, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    const/4 v0, 0x6

    invoke-static {v1, v0, v3}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    iget v0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->introSize:I

    add-int/2addr v0, v4

    const/16 v2, 0xa

    invoke-static {v1, v2, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->imageData:[B

    array-length v0, p0

    invoke-static {p0, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_1
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    const-string v0, "used to throw exception: bitmap not initialized ... need to call init() before"

    invoke-direct {p0, v0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBMPStream()Ljava/io/InputStream;
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->getBMPData()[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
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

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Lcom/sunia/HTREnginev2/m1i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/m1i;-><init>(Lorg/apache/poi/hwmf/record/HwmfBitmapDib;)V

    const-string v2, "headerSize"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/t1i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/t1i;-><init>(Lorg/apache/poi/hwmf/record/HwmfBitmapDib;)V

    const-string v2, "width"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/u1i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/u1i;-><init>(Lorg/apache/poi/hwmf/record/HwmfBitmapDib;)V

    const-string v2, "height"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/v1i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/v1i;-><init>(Lorg/apache/poi/hwmf/record/HwmfBitmapDib;)V

    const-string v2, "planes"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/w1i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/w1i;-><init>(Lorg/apache/poi/hwmf/record/HwmfBitmapDib;)V

    const-string v2, "bitCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/x1i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/x1i;-><init>(Lorg/apache/poi/hwmf/record/HwmfBitmapDib;)V

    const-string v2, "compression"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/y1i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/y1i;-><init>(Lorg/apache/poi/hwmf/record/HwmfBitmapDib;)V

    const-string v2, "imageSize"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/n1i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/n1i;-><init>(Lorg/apache/poi/hwmf/record/HwmfBitmapDib;)V

    const-string v2, "xPelsPerMeter"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/o1i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/o1i;-><init>(Lorg/apache/poi/hwmf/record/HwmfBitmapDib;)V

    const-string v2, "yPelsPerMeter"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/p1i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/p1i;-><init>(Lorg/apache/poi/hwmf/record/HwmfBitmapDib;)V

    const-string v2, "colorUsed"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/q1i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/q1i;-><init>(Lorg/apache/poi/hwmf/record/HwmfBitmapDib;)V

    const-string v2, "colorImportant"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/r1i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/r1i;-><init>(Lorg/apache/poi/hwmf/record/HwmfBitmapDib;)V

    const-string v2, "image"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/s1i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/s1i;-><init>(Lorg/apache/poi/hwmf/record/HwmfBitmapDib;)V

    const-string p0, "bmpData"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getImage()Ljava/awt/image/BufferedImage;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v1}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->getImage(Ljava/awt/Color;Ljava/awt/Color;Z)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public getImage(Ljava/awt/Color;Ljava/awt/Color;Z)Ljava/awt/image/BufferedImage;
    .locals 11

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->getBMPStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Ljavax/imageio/ImageIO;->read(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 3
    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerBitCount:Lorg/apache/poi/hwmf/record/HwmfBitmapDib$BitCount;

    sget-object v1, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$BitCount;->BI_BITCOUNT_1:Lorg/apache/poi/hwmf/record/HwmfBitmapDib$BitCount;

    if-ne p0, v1, :cond_3

    .line 4
    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p0

    check-cast p0, Ljava/awt/image/IndexColorModel;

    .line 5
    invoke-virtual {p1}, Ljava/awt/Color;->getRGB()I

    move-result p1

    .line 6
    invoke-virtual {p2}, Ljava/awt/Color;->getRGB()I

    move-result p2

    const v1, 0xffffff

    if-eqz p3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    and-int/2addr p2, v2

    const/4 v2, 0x0

    .line 7
    invoke-virtual {p0, v2}, Ljava/awt/image/IndexColorModel;->getRGB(I)I

    move-result p0

    and-int/2addr p0, v1

    and-int/2addr v1, p2

    if-ne p0, v1, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    move p0, v2

    :goto_1
    xor-int/lit8 v9, p0, 0x1

    if-eqz p0, :cond_2

    .line 8
    filled-new-array {p2, p1}, [I

    move-result-object p0

    goto :goto_2

    :cond_2
    filled-new-array {p1, p2}, [I

    move-result-object p0

    :goto_2
    move-object v6, p0

    .line 9
    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getData()Ljava/awt/image/Raster;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/image/Raster;->getTransferType()I

    move-result v10

    .line 10
    new-instance p0, Ljava/awt/image/IndexColorModel;

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x0

    move-object v3, p0

    move v8, p3

    invoke-direct/range {v3 .. v10}, Ljava/awt/image/IndexColorModel;-><init>(II[IIZII)V

    .line 11
    new-instance p1, Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p1, p0, p2, v2, p3}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    move-object v0, p1

    :cond_3
    return-object v0

    .line 12
    :catch_0
    sget-object p1, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p1

    const-string p2, "invalid bitmap data - returning placeholder image"

    invoke-interface {p1, p2}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->getPlaceholder()Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public getPlaceholder()Ljava/awt/image/BufferedImage;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerHeight:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-lez v1, :cond_1

    iget v1, v0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerWidth:I

    if-gtz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v1, Ljava/awt/image/BufferedImage;

    iget v4, v0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerWidth:I

    iget v5, v0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerHeight:I

    invoke-direct {v1, v4, v5, v2}, Ljava/awt/image/BufferedImage;-><init>(III)V

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v4

    sget-object v5, Ljava/awt/RenderingHints;->KEY_ANTIALIASING:Ljava/awt/RenderingHints$Key;

    sget-object v6, Ljava/awt/RenderingHints;->VALUE_ANTIALIAS_ON:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    sget-object v5, Ljava/awt/RenderingHints;->KEY_RENDERING:Ljava/awt/RenderingHints$Key;

    sget-object v6, Ljava/awt/RenderingHints;->VALUE_RENDER_QUALITY:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    sget-object v5, Ljava/awt/RenderingHints;->KEY_INTERPOLATION:Ljava/awt/RenderingHints$Key;

    sget-object v6, Ljava/awt/RenderingHints;->VALUE_INTERPOLATION_BICUBIC:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    sget-object v5, Ljava/awt/RenderingHints;->KEY_FRACTIONALMETRICS:Ljava/awt/RenderingHints$Key;

    sget-object v6, Ljava/awt/RenderingHints;->VALUE_FRACTIONALMETRICS_ON:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    sget-object v5, Ljava/awt/AlphaComposite;->Clear:Ljava/awt/AlphaComposite;

    invoke-virtual {v4, v5}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    iget v5, v0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerWidth:I

    iget v6, v0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerHeight:I

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v7, v5, v6}, Ljava/awt/Graphics2D;->fillRect(IIII)V

    iget v5, v0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerWidth:I

    iget v6, v0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerHeight:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    div-int/lit8 v5, v5, 0x7

    sget-object v6, Ljava/awt/Color;->LIGHT_GRAY:Ljava/awt/Color;

    sget-object v8, Ljava/awt/Color;->GRAY:Ljava/awt/Color;

    new-instance v15, Ljava/awt/LinearGradientPaint;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x40a00000    # 5.0f

    const/high16 v13, 0x40a00000    # 5.0f

    const/4 v9, 0x3

    new-array v14, v9, [F

    fill-array-data v14, :array_0

    new-array v9, v9, [Ljava/awt/Color;

    aput-object v8, v9, v7

    aput-object v8, v9, v3

    aput-object v6, v9, v2

    sget-object v16, Ljava/awt/MultipleGradientPaint$CycleMethod;->REFLECT:Ljava/awt/MultipleGradientPaint$CycleMethod;

    move-object v2, v9

    move-object v9, v15

    move-object v6, v15

    move-object v15, v2

    invoke-direct/range {v9 .. v16}, Ljava/awt/LinearGradientPaint;-><init>(FFFF[F[Ljava/awt/Color;Ljava/awt/MultipleGradientPaint$CycleMethod;)V

    sget-object v2, Ljava/awt/AlphaComposite;->SrcOver:Ljava/awt/AlphaComposite;

    const v7, 0x3ecccccd    # 0.4f

    invoke-virtual {v2, v7}, Ljava/awt/AlphaComposite;->derive(F)Ljava/awt/AlphaComposite;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    invoke-virtual {v4, v6}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v2, v0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerWidth:I

    add-int/lit8 v9, v2, -0x1

    iget v2, v0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerHeight:I

    add-int/lit8 v10, v2, -0x1

    move-object v6, v4

    move v11, v5

    move v12, v5

    invoke-virtual/range {v6 .. v12}, Ljava/awt/Graphics2D;->fillRoundRect(IIIIII)V

    sget-object v2, Ljava/awt/Color;->DARK_GRAY:Ljava/awt/Color;

    invoke-virtual {v4, v2}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    sget-object v2, Ljava/awt/AlphaComposite;->Src:Ljava/awt/AlphaComposite;

    invoke-virtual {v4, v2}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    new-instance v2, Ljava/awt/BasicStroke;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-direct {v2, v6}, Ljava/awt/BasicStroke;-><init>(F)V

    invoke-virtual {v4, v2}, Ljava/awt/Graphics2D;->setStroke(Ljava/awt/Stroke;)V

    iget v2, v0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerWidth:I

    add-int/lit8 v9, v2, -0x1

    iget v0, v0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerHeight:I

    add-int/lit8 v10, v0, -0x1

    move-object v6, v4

    invoke-virtual/range {v6 .. v12}, Ljava/awt/Graphics2D;->drawRoundRect(IIIIII)V

    invoke-virtual {v4}, Ljava/awt/Graphics2D;->dispose()V

    return-object v1

    :cond_1
    :goto_0
    new-instance v0, Ljava/awt/image/BufferedImage;

    invoke-direct {v0, v3, v3, v2}, Ljava/awt/image/BufferedImage;-><init>(III)V

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3dcccccd    # 0.1f
        0x3dcd013b    # 0.1001f
    .end array-data
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2710

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianInputStream;->mark(I)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->readHeader(Lorg/apache/poi/util/LittleEndianInputStream;)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->introSize:I

    invoke-virtual {p0, p1}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->readColors(Lorg/apache/poi/util/LittleEndianInputStream;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->introSize:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->reset()V

    iget v0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerWidth:I

    iget v1, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerPlanes:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerBitCount:Lorg/apache/poi/hwmf/record/HwmfBitmapDib$BitCount;

    iget v1, v1, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$BitCount;->flag:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1f

    and-int/lit8 v0, v0, -0x20

    div-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerHeight:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/2addr v0, v1

    iget v1, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerSize:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerCompression:Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

    sget-object v2, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;->BI_RGB:Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

    if-eq v1, v2, :cond_1

    sget-object v2, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;->BI_BITFIELDS:Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

    if-eq v1, v2, :cond_1

    sget-object v2, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;->BI_CMYK:Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v0, p2

    invoke-static {}, Lorg/apache/poi/hwmf/usermodel/HwmfPicture;->getMaxRecordLength()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->imageData:[B

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianInputStream;->readFully([B)V

    return p2

    :cond_1
    :goto_0
    iget v1, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->introSize:I

    add-int/2addr v1, v0

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v1, v0

    invoke-static {}, Lorg/apache/poi/hwmf/usermodel/HwmfPicture;->getMaxRecordLength()I

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->imageData:[B

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->introSize:I

    invoke-virtual {p1, v1, v2, v3}, Lorg/apache/poi/util/LittleEndianInputStream;->readFully([BII)V

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lorg/apache/poi/util/LittleEndianInputStream;->skipFully(I)V

    iget-object v1, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->imageData:[B

    iget v2, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->introSize:I

    sub-int/2addr v0, v2

    invoke-virtual {p1, v1, v2, v0}, Lorg/apache/poi/util/LittleEndianInputStream;->read([BII)I

    move-result p1

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->introSize:I

    add-int/2addr p0, p2

    add-int/2addr p0, p1

    return p0
.end method

.method public isValid()Z
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->imageData:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerBitCount:Lorg/apache/poi/hwmf/record/HwmfBitmapDib$BitCount;

    sget-object v2, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$BitCount;->BI_BITCOUNT_1:Lorg/apache/poi/hwmf/record/HwmfBitmapDib$BitCount;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_4

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->colorTable:[Ljava/awt/Color;

    if-nez p0, :cond_1

    return v1

    :cond_1
    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v4, p0, v2

    sget-object v5, Ljava/awt/Color;->BLACK:Ljava/awt/Color;

    invoke-virtual {v5, v4}, Ljava/awt/Color;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    return v3
.end method

.method public readColors(Lorg/apache/poi/util/LittleEndianInputStream;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$1;->$SwitchMap$org$apache$poi$hwmf$record$HwmfBitmapDib$BitCount:[I

    iget-object v1, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerBitCount:Lorg/apache/poi/hwmf/record/HwmfBitmapDib$BitCount;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, ")."

    const-string v2, ") for bitcount ("

    const-string v3, "Invalid compression option ("

    const/16 v4, 0xc

    const/4 v5, 0x2

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    packed-switch v0, :pswitch_data_0

    return v9

    :pswitch_0
    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$1;->$SwitchMap$org$apache$poi$hwmf$record$HwmfBitmapDib$Compression:[I

    iget-object v7, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerCompression:Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v0, v0, v7

    if-eq v0, v6, :cond_1

    if-ne v0, v5, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->colorMaskB:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->colorMaskG:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->colorMaskR:I

    return v4

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerCompression:Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerBitCount:Lorg/apache/poi/hwmf/record/HwmfBitmapDib$BitCount;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/16 p1, 0xff

    iput p1, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->colorMaskR:I

    iput p1, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->colorMaskG:I

    iput p1, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->colorMaskB:I

    return v9

    :pswitch_1
    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$1;->$SwitchMap$org$apache$poi$hwmf$record$HwmfBitmapDib$Compression:[I

    iget-object v7, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerCompression:Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v0, v0, v7

    if-eq v0, v6, :cond_3

    if-ne v0, v5, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->colorMaskB:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->colorMaskG:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->colorMaskR:I

    return v4

    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerCompression:Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerBitCount:Lorg/apache/poi/hwmf/record/HwmfBitmapDib$BitCount;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/16 p1, 0x1f

    iput p1, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->colorMaskB:I

    const/16 p1, 0x3e0

    iput p1, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->colorMaskG:I

    const/16 p1, 0x7c00

    iput p1, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->colorMaskR:I

    return v9

    :pswitch_2
    iget-wide v0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerColorUsed:J

    cmp-long v2, v0, v7

    const-wide/16 v3, 0x100

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :goto_0
    long-to-int v0, v3

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->readRGBQuad(Lorg/apache/poi/util/LittleEndianInputStream;I)I

    move-result p0

    return p0

    :pswitch_3
    iget-wide v0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerColorUsed:J

    cmp-long v2, v0, v7

    const-wide/16 v3, 0x10

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :goto_1
    long-to-int v0, v3

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->readRGBQuad(Lorg/apache/poi/util/LittleEndianInputStream;I)I

    move-result p0

    return p0

    :pswitch_4
    iget-wide v0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerColorUsed:J

    cmp-long v2, v0, v7

    const-wide/16 v3, 0x2

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :goto_2
    long-to-int v0, v3

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->readRGBQuad(Lorg/apache/poi/util/LittleEndianInputStream;I)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public readHeader(Lorg/apache/poi/util/LittleEndianInputStream;)I
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerSize:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerWidth:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerHeight:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerPlanes:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result p1

    invoke-static {p1}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$BitCount;->valueOf(I)Lorg/apache/poi/hwmf/record/HwmfBitmapDib$BitCount;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerBitCount:Lorg/apache/poi/hwmf/record/HwmfBitmapDib$BitCount;

    goto :goto_0

    :cond_0
    const/16 v1, 0x28

    iput v1, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerSize:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerWidth:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerHeight:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerPlanes:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$BitCount;->valueOf(I)Lorg/apache/poi/hwmf/record/HwmfBitmapDib$BitCount;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerBitCount:Lorg/apache/poi/hwmf/record/HwmfBitmapDib$BitCount;

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-static {v0}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;->valueOf(I)Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerCompression:Lorg/apache/poi/hwmf/record/HwmfBitmapDib$Compression;

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerImageSize:J

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerXPelsPerMeter:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerYPelsPerMeter:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerColorUsed:J

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->headerColorImportant:J

    :goto_0
    return v1
.end method

.method public readRGBQuad(Lorg/apache/poi/util/LittleEndianInputStream;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-array v0, p2, [Ljava/awt/Color;

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->colorTable:[Ljava/awt/Color;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result v4

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    iget-object v5, p0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->colorTable:[Ljava/awt/Color;

    new-instance v6, Ljava/awt/Color;

    invoke-direct {v6, v4, v3, v2}, Ljava/awt/Color;-><init>(III)V

    aput-object v6, v5, v0

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
