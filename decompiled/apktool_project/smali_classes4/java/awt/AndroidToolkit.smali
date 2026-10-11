.class public Ljava/awt/AndroidToolkit;
.super Ljava/awt/Toolkit;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/awt/Toolkit;-><init>()V

    return-void
.end method


# virtual methods
.method public beep()V
    .locals 0

    return-void
.end method

.method public checkImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public createImage(Ljava/awt/image/ImageProducer;)Ljava/awt/Image;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public createImage(Ljava/lang/String;)Ljava/awt/Image;
    .locals 0

    .line 2
    const/4 p0, 0x0

    return-object p0
.end method

.method public createImage(Ljava/net/URL;)Ljava/awt/Image;
    .locals 0

    .line 3
    const/4 p0, 0x0

    return-object p0
.end method

.method public createImage([BII)Ljava/awt/Image;
    .locals 0

    .line 4
    const/4 p0, 0x0

    return-object p0
.end method

.method public getColorModel()Ljava/awt/image/ColorModel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/HeadlessException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    invoke-static {}, Lcom/onyx/common/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getFontList()[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getFontMetrics(Ljava/awt/Font;)Ljava/awt/FontMetrics;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFontPeer(Ljava/lang/String;I)Ljava/awt/peer/FontPeer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getImage(Ljava/lang/String;)Ljava/awt/Image;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getImage(Ljava/net/URL;)Ljava/awt/Image;
    .locals 0

    .line 2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getScreenResolution()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/HeadlessException;
        }
    .end annotation

    const/16 p0, 0x60

    return p0
.end method

.method public getScreenSize()Ljava/awt/Dimension;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/HeadlessException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/awt/AndroidToolkit;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    new-instance v0, Ljava/awt/Dimension;

    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v0, v1, p0}, Ljava/awt/Dimension;-><init>(II)V

    return-object v0
.end method

.method public mapInputMethodHighlight(Ljava/awt/im/InputMethodHighlight;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/im/InputMethodHighlight;",
            ")",
            "Ljava/util/Map<",
            "Ljava/awt/font/TextAttribute;",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/HeadlessException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public prepareImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public sync()V
    .locals 0

    return-void
.end method
