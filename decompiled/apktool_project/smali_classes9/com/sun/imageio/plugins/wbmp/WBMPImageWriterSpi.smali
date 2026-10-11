.class public Lcom/sun/imageio/plugins/wbmp/WBMPImageWriterSpi;
.super Ljavax/imageio/spi/ImageWriterSpi;
.source "SourceFile"


# static fields
.field private static entensions:[Ljava/lang/String;

.field private static formatNames:[Ljava/lang/String;

.field private static mimeType:[Ljava/lang/String;

.field private static readerSpiNames:[Ljava/lang/String;


# instance fields
.field private registered:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "com.sun.imageio.plugins.wbmp.WBMPImageReaderSpi"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriterSpi;->readerSpiNames:[Ljava/lang/String;

    const-string v0, "WBMP"

    const-string v1, "wbmp"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriterSpi;->formatNames:[Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriterSpi;->entensions:[Ljava/lang/String;

    const-string v0, "image/vnd.wap.wbmp"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriterSpi;->mimeType:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "Oracle Corporation"

    const-string v2, "1.0"

    sget-object v3, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriterSpi;->formatNames:[Ljava/lang/String;

    sget-object v4, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriterSpi;->entensions:[Ljava/lang/String;

    sget-object v5, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriterSpi;->mimeType:[Ljava/lang/String;

    const-string v6, "com.sun.imageio.plugins.wbmp.WBMPImageWriter"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    move-object v7, v8

    const-class v9, Ljavax/imageio/stream/ImageOutputStream;

    const/4 v15, 0x0

    aput-object v9, v8, v15

    sget-object v8, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriterSpi;->readerSpiNames:[Ljava/lang/String;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v16, 0x0

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v0 .. v18}, Ljavax/imageio/spi/ImageWriterSpi;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriterSpi;->registered:Z

    return-void
.end method


# virtual methods
.method public canEncodeImage(Ljavax/imageio/ImageTypeSpecifier;)Z
    .locals 1

    invoke-virtual {p1}, Ljavax/imageio/ImageTypeSpecifier;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object p0

    instance-of p1, p0, Ljava/awt/image/MultiPixelPackedSampleModel;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/awt/image/SampleModel;->getSampleSize(I)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    return v0

    :cond_1
    return p1
.end method

.method public createWriterInstance(Ljava/lang/Object;)Ljavax/imageio/ImageWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    new-instance p1, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriter;

    invoke-direct {p1, p0}, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriter;-><init>(Ljavax/imageio/spi/ImageWriterSpi;)V

    return-object p1
.end method

.method public getDescription(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    const-string p0, "Standard WBMP Image Writer"

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

    iget-boolean p1, p0, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriterSpi;->registered:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriterSpi;->registered:Z

    return-void
.end method
