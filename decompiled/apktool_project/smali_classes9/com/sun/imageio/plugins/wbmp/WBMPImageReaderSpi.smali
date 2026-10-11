.class public Lcom/sun/imageio/plugins/wbmp/WBMPImageReaderSpi;
.super Ljavax/imageio/spi/ImageReaderSpi;
.source "SourceFile"


# static fields
.field private static final MAX_WBMP_HEIGHT:I = 0x300

.field private static final MAX_WBMP_WIDTH:I = 0x400

.field private static entensions:[Ljava/lang/String;

.field private static formatNames:[Ljava/lang/String;

.field private static mimeType:[Ljava/lang/String;

.field private static writerSpiNames:[Ljava/lang/String;


# instance fields
.field private registered:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "com.sun.imageio.plugins.wbmp.WBMPImageWriterSpi"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/wbmp/WBMPImageReaderSpi;->writerSpiNames:[Ljava/lang/String;

    const-string v0, "WBMP"

    const-string v1, "wbmp"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/wbmp/WBMPImageReaderSpi;->formatNames:[Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/wbmp/WBMPImageReaderSpi;->entensions:[Ljava/lang/String;

    const-string v0, "image/vnd.wap.wbmp"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/wbmp/WBMPImageReaderSpi;->mimeType:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "Oracle Corporation"

    const-string v2, "1.0"

    sget-object v3, Lcom/sun/imageio/plugins/wbmp/WBMPImageReaderSpi;->formatNames:[Ljava/lang/String;

    sget-object v4, Lcom/sun/imageio/plugins/wbmp/WBMPImageReaderSpi;->entensions:[Ljava/lang/String;

    sget-object v5, Lcom/sun/imageio/plugins/wbmp/WBMPImageReaderSpi;->mimeType:[Ljava/lang/String;

    const-string v6, "com.sun.imageio.plugins.wbmp.WBMPImageReader"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    move-object v7, v8

    const-class v9, Ljavax/imageio/stream/ImageInputStream;

    const/4 v15, 0x0

    aput-object v9, v8, v15

    sget-object v8, Lcom/sun/imageio/plugins/wbmp/WBMPImageReaderSpi;->writerSpiNames:[Ljava/lang/String;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const-string v16, "javax_imageio_wbmp_1.0"

    move-object/from16 v15, v16

    const-string v16, "com.sun.imageio.plugins.wbmp.WBMPMetadataFormat"

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v0 .. v18}, Ljavax/imageio/spi/ImageReaderSpi;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sun/imageio/plugins/wbmp/WBMPImageReaderSpi;->registered:Z

    return-void
.end method


# virtual methods
.method public canDecodeInput(Ljava/lang/Object;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of p0, p1, Ljavax/imageio/stream/ImageInputStream;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    check-cast p1, Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->mark()V

    :try_start_0
    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->readByte()B

    move-result p0

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->readByte()B

    move-result v1

    if-nez p0, :cond_8

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {p1}, Lcom/sun/imageio/plugins/common/ReaderUtil;->readMultiByteInteger(Ljavax/imageio/stream/ImageInputStream;)I

    move-result p0

    invoke-static {p1}, Lcom/sun/imageio/plugins/common/ReaderUtil;->readMultiByteInteger(Ljavax/imageio/stream/ImageInputStream;)I

    move-result v1

    if-lez p0, :cond_7

    if-gtz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->length()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    const/4 v5, 0x1

    if-nez v4, :cond_4

    const/16 v2, 0x400

    if-ge p0, v2, :cond_3

    const/16 p0, 0x300

    if-ge v1, p0, :cond_3

    move v0, v5

    :cond_3
    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    return v0

    :cond_4
    :try_start_1
    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v6

    sub-long/2addr v2, v6

    div-int/lit8 v4, p0, 0x8

    rem-int/lit8 p0, p0, 0x8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_5

    move p0, v0

    goto :goto_0

    :cond_5
    move p0, v5

    :goto_0
    add-int/2addr v4, p0

    int-to-long v6, v4

    int-to-long v8, v1

    mul-long/2addr v6, v8

    cmp-long p0, v2, v6

    if-nez p0, :cond_6

    move v0, v5

    :cond_6
    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    return v0

    :cond_7
    :goto_1
    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    return v0

    :cond_8
    :goto_2
    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    return v0

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    throw p0
.end method

.method public createReaderInstance(Ljava/lang/Object;)Ljavax/imageio/ImageReader;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    new-instance p1, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;

    invoke-direct {p1, p0}, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;-><init>(Ljavax/imageio/spi/ImageReaderSpi;)V

    return-object p1
.end method

.method public getDescription(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    const-string p0, "Standard WBMP Image Reader"

    return-object p0
.end method

.method public onRegistration(Ljavax/imageio/spi/ServiceRegistry;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/imageio/spi/ServiceRegistry;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iget-boolean p1, p0, Lcom/sun/imageio/plugins/wbmp/WBMPImageReaderSpi;->registered:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/imageio/plugins/wbmp/WBMPImageReaderSpi;->registered:Z

    return-void
.end method
