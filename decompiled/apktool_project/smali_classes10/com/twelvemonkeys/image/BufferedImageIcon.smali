.class public Lcom/twelvemonkeys/image/BufferedImageIcon;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/swing/Icon;


# instance fields
.field public final a:Ljava/awt/image/BufferedImage;

.field public b:I

.field public c:I

.field public final d:Z


# direct methods
.method public constructor <init>(Ljava/awt/image/BufferedImage;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v0

    :cond_1
    invoke-direct {p0, p1, v1, v0}, Lcom/twelvemonkeys/image/BufferedImageIcon;-><init>(Ljava/awt/image/BufferedImage;II)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/image/BufferedImage;II)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    if-ne v0, p2, :cond_0

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v0

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/twelvemonkeys/image/BufferedImageIcon;-><init>(Ljava/awt/image/BufferedImage;IIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/image/BufferedImage;IIZ)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "image"

    .line 4
    invoke-static {p1, v0}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/awt/image/BufferedImage;

    iput-object p1, p0, Lcom/twelvemonkeys/image/BufferedImageIcon;->a:Ljava/awt/image/BufferedImage;

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-lez p2, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 5
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v2, "width must be positive: %d"

    invoke-static {v1, p2, v2}, Lcom/twelvemonkeys/lang/Validate;->isTrue(ZLjava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/twelvemonkeys/image/BufferedImageIcon;->b:I

    if-lez p3, :cond_1

    goto :goto_1

    :cond_1
    move p1, v0

    .line 6
    :goto_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "height must be positive: %d"

    invoke-static {p1, p2, p3}, Lcom/twelvemonkeys/lang/Validate;->isTrue(ZLjava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/twelvemonkeys/image/BufferedImageIcon;->c:I

    .line 7
    iput-boolean p4, p0, Lcom/twelvemonkeys/image/BufferedImageIcon;->d:Z

    return-void
.end method


# virtual methods
.method public getIconHeight()I
    .locals 0

    iget p0, p0, Lcom/twelvemonkeys/image/BufferedImageIcon;->c:I

    return p0
.end method

.method public getIconWidth()I
    .locals 0

    iget p0, p0, Lcom/twelvemonkeys/image/BufferedImageIcon;->b:I

    return p0
.end method

.method public paintIcon(Ljava/awt/Component;Ljava/awt/Graphics;II)V
    .locals 7

    iget-boolean p1, p0, Lcom/twelvemonkeys/image/BufferedImageIcon;->d:Z

    if-nez p1, :cond_1

    instance-of p1, p2, Ljava/awt/Graphics2D;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p2, Ljava/awt/Graphics2D;

    int-to-double v0, p3

    int-to-double p3, p4

    invoke-static {v0, v1, p3, p4}, Ljava/awt/geom/AffineTransform;->getTranslateInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object p1

    iget p3, p0, Lcom/twelvemonkeys/image/BufferedImageIcon;->b:I

    int-to-double p3, p3

    iget-object v0, p0, Lcom/twelvemonkeys/image/BufferedImageIcon;->a:Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr p3, v0

    iget v0, p0, Lcom/twelvemonkeys/image/BufferedImageIcon;->c:I

    int-to-double v0, v0

    iget-object v2, p0, Lcom/twelvemonkeys/image/BufferedImageIcon;->a:Ljava/awt/image/BufferedImage;

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-virtual {p1, p3, p4, v0, v1}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    sget-object p3, Ljava/awt/RenderingHints;->KEY_INTERPOLATION:Ljava/awt/RenderingHints$Key;

    sget-object p4, Ljava/awt/RenderingHints;->VALUE_INTERPOLATION_BILINEAR:Ljava/lang/Object;

    invoke-virtual {p2, p3, p4}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/twelvemonkeys/image/BufferedImageIcon;->a:Ljava/awt/image/BufferedImage;

    const/4 p3, 0x0

    invoke-virtual {p2, p0, p1, p3}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/image/ImageObserver;)Z

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/twelvemonkeys/image/BufferedImageIcon;->a:Ljava/awt/image/BufferedImage;

    iget v4, p0, Lcom/twelvemonkeys/image/BufferedImageIcon;->b:I

    iget v5, p0, Lcom/twelvemonkeys/image/BufferedImageIcon;->c:I

    const/4 v6, 0x0

    move-object v0, p2

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v6}, Ljava/awt/Graphics;->drawImage(Ljava/awt/Image;IIIILjava/awt/image/ImageObserver;)Z

    :goto_1
    return-void
.end method
