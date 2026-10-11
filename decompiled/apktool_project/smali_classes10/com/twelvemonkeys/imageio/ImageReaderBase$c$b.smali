.class public Lcom/twelvemonkeys/imageio/ImageReaderBase$c$b;
.super Ljavax/swing/TransferHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twelvemonkeys/imageio/ImageReaderBase$c;-><init>(Ljava/awt/image/BufferedImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/twelvemonkeys/imageio/ImageReaderBase$c;


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/imageio/ImageReaderBase$c;)V
    .locals 0

    iput-object p1, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$b;->a:Lcom/twelvemonkeys/imageio/ImageReaderBase$c;

    invoke-direct {p0}, Ljavax/swing/TransferHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljavax/swing/JComponent;[Ljava/awt/datatransfer/DataFlavor;)Z
    .locals 3

    array-length p0, p2

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    if-ge v0, p0, :cond_1

    aget-object v1, p2, v0

    sget-object v2, Ljava/awt/datatransfer/DataFlavor;->imageFlavor:Ljava/awt/datatransfer/DataFlavor;

    invoke-virtual {v1, v2}, Ljava/awt/datatransfer/DataFlavor;->equals(Ljava/awt/datatransfer/DataFlavor;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method public b(Ljavax/swing/JComponent;)Ljava/awt/datatransfer/Transferable;
    .locals 0

    new-instance p1, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$e;

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$b;->a:Lcom/twelvemonkeys/imageio/ImageReaderBase$c;

    invoke-static {p0}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->a(Lcom/twelvemonkeys/imageio/ImageReaderBase$c;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$e;-><init>(Ljava/awt/image/BufferedImage;)V

    return-object p1
.end method

.method public c(Ljavax/swing/JComponent;)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public d(Ljavax/swing/JComponent;Ljava/awt/datatransfer/Transferable;)Z
    .locals 1

    invoke-interface {p2}, Ljava/awt/datatransfer/Transferable;->getTransferDataFlavors()[Ljava/awt/datatransfer/DataFlavor;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$b;->a(Ljavax/swing/JComponent;[Ljava/awt/datatransfer/DataFlavor;)Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    sget-object p1, Ljava/awt/datatransfer/DataFlavor;->imageFlavor:Ljava/awt/datatransfer/DataFlavor;

    invoke-interface {p2, p1}, Ljava/awt/datatransfer/Transferable;->getTransferData(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/awt/Image;

    iget-object p2, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$b;->a:Lcom/twelvemonkeys/imageio/ImageReaderBase$c;

    invoke-static {p1}, Lcom/twelvemonkeys/image/ImageUtil;->toBuffered(Ljava/awt/Image;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->b(Lcom/twelvemonkeys/imageio/ImageReaderBase$c;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$b;->a:Lcom/twelvemonkeys/imageio/ImageReaderBase$c;

    new-instance p1, Lcom/twelvemonkeys/image/BufferedImageIcon;

    invoke-static {p0}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->a(Lcom/twelvemonkeys/imageio/ImageReaderBase$c;)Ljava/awt/image/BufferedImage;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/twelvemonkeys/image/BufferedImageIcon;-><init>(Ljava/awt/image/BufferedImage;)V

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->setIcon(Ljavax/swing/Icon;)V
    :try_end_0
    .catch Ljava/awt/datatransfer/UnsupportedFlavorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method
