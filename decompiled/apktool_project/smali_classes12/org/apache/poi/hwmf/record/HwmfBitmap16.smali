.class public Lorg/apache/poi/hwmf/record/HwmfBitmap16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private bitmap:[B

.field private bitsPixel:I

.field private height:I

.field private final isPartial:Z

.field private planes:I

.field private type:I

.field private width:I

.field private widthBytes:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/poi/hwmf/record/HwmfBitmap16;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lorg/apache/poi/hwmf/record/HwmfBitmap16;->isPartial:Z

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hwmf/record/HwmfBitmap16;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfBitmap16;->lambda$getGenericProperties$5()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hwmf/record/HwmfBitmap16;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfBitmap16;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hwmf/record/HwmfBitmap16;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfBitmap16;->lambda$getGenericProperties$7()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/poi/hwmf/record/HwmfBitmap16;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfBitmap16;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/apache/poi/hwmf/record/HwmfBitmap16;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfBitmap16;->lambda$getGenericProperties$6()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lorg/apache/poi/hwmf/record/HwmfBitmap16;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfBitmap16;->lambda$getGenericProperties$4()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lorg/apache/poi/hwmf/record/HwmfBitmap16;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfBitmap16;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lorg/apache/poi/hwmf/record/HwmfBitmap16;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfBitmap16;->lambda$getGenericProperties$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmap16;->isPartial:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmap16;->type:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmap16;->width:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$3()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmap16;->height:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$4()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmap16;->widthBytes:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$5()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmap16;->planes:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$6()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmap16;->bitsPixel:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$7()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmap16;->bitmap:[B

    return-object p0
.end method


# virtual methods
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

    new-instance v1, Lcom/sunia/HTREnginev2/e1i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/e1i;-><init>(Lorg/apache/poi/hwmf/record/HwmfBitmap16;)V

    const-string v2, "isPartial"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/f1i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/f1i;-><init>(Lorg/apache/poi/hwmf/record/HwmfBitmap16;)V

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/g1i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/g1i;-><init>(Lorg/apache/poi/hwmf/record/HwmfBitmap16;)V

    const-string v2, "width"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/h1i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/h1i;-><init>(Lorg/apache/poi/hwmf/record/HwmfBitmap16;)V

    const-string v2, "height"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/i1i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/i1i;-><init>(Lorg/apache/poi/hwmf/record/HwmfBitmap16;)V

    const-string v2, "widthBytes"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/j1i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/j1i;-><init>(Lorg/apache/poi/hwmf/record/HwmfBitmap16;)V

    const-string v2, "planes"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/k1i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/k1i;-><init>(Lorg/apache/poi/hwmf/record/HwmfBitmap16;)V

    const-string v2, "bitsPixel"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/l1i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/l1i;-><init>(Lorg/apache/poi/hwmf/record/HwmfBitmap16;)V

    const-string p0, "bitmap"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getImage()Ljava/awt/image/BufferedImage;
    .locals 3

    new-instance v0, Ljava/awt/image/BufferedImage;

    iget v1, p0, Lorg/apache/poi/hwmf/record/HwmfBitmap16;->width:I

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmap16;->height:I

    const/4 v2, 0x6

    invoke-direct {v0, v1, p0, v2}, Ljava/awt/image/BufferedImage;-><init>(III)V

    return-object v0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmap16;->type:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmap16;->width:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmap16;->height:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmap16;->widthBytes:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmap16;->planes:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmap16;->bitsPixel:I

    iget-boolean v0, p0, Lorg/apache/poi/hwmf/record/HwmfBitmap16;->isPartial:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x4

    invoke-virtual {p1, v0, v1}, Ljava/io/InputStream;->skip(J)J

    const-wide/16 v0, 0x12

    invoke-virtual {p1, v0, v1}, Ljava/io/InputStream;->skip(J)J

    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    :goto_0
    iget v1, p0, Lorg/apache/poi/hwmf/record/HwmfBitmap16;->width:I

    iget v2, p0, Lorg/apache/poi/hwmf/record/HwmfBitmap16;->bitsPixel:I

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, 0xf

    shr-int/lit8 v1, v1, 0x4

    shl-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/apache/poi/hwmf/record/HwmfBitmap16;->height:I

    mul-int/2addr v1, v2

    invoke-static {p1, v1}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;I)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hwmf/record/HwmfBitmap16;->bitmap:[B

    return v0
.end method
