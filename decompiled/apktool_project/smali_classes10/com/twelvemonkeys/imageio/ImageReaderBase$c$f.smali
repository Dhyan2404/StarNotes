.class public Lcom/twelvemonkeys/imageio/ImageReaderBase$c$f;
.super Ljavax/swing/AbstractAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/imageio/ImageReaderBase$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final a:D

.field public final synthetic b:Lcom/twelvemonkeys/imageio/ImageReaderBase$c;


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/imageio/ImageReaderBase$c;Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$f;-><init>(Lcom/twelvemonkeys/imageio/ImageReaderBase$c;Ljava/lang/String;D)V

    return-void
.end method

.method public constructor <init>(Lcom/twelvemonkeys/imageio/ImageReaderBase$c;Ljava/lang/String;D)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$f;->b:Lcom/twelvemonkeys/imageio/ImageReaderBase$c;

    .line 2
    invoke-direct {p0, p2}, Ljavax/swing/AbstractAction;-><init>(Ljava/lang/String;)V

    .line 3
    iput-wide p3, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$f;->a:D

    return-void
.end method


# virtual methods
.method public a(Ljava/awt/event/ActionEvent;)V
    .locals 7

    iget-wide v0, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$f;->a:D

    const-wide/16 v2, 0x0

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$f;->b:Lcom/twelvemonkeys/imageio/ImageReaderBase$c;

    new-instance p1, Lcom/twelvemonkeys/image/BufferedImageIcon;

    invoke-static {p0}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->a(Lcom/twelvemonkeys/imageio/ImageReaderBase$c;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/twelvemonkeys/image/BufferedImageIcon;-><init>(Ljava/awt/image/BufferedImage;)V

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->setIcon(Ljavax/swing/Icon;)V

    goto/16 :goto_2

    :cond_0
    iget-object p1, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$f;->b:Lcom/twelvemonkeys/imageio/ImageReaderBase$c;

    invoke-virtual {p1}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->getIcon()Ljavax/swing/Icon;

    move-result-object p1

    invoke-interface {p1}, Ljavax/swing/Icon;->getIconWidth()I

    move-result v0

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$f;->a:D

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$f;->b:Lcom/twelvemonkeys/imageio/ImageReaderBase$c;

    invoke-static {v2}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->a(Lcom/twelvemonkeys/imageio/ImageReaderBase$c;)Ljava/awt/image/BufferedImage;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iget-object v2, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$f;->b:Lcom/twelvemonkeys/imageio/ImageReaderBase$c;

    invoke-static {v2}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->a(Lcom/twelvemonkeys/imageio/ImageReaderBase$c;)Ljava/awt/image/BufferedImage;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x10

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-interface {p1}, Ljavax/swing/Icon;->getIconHeight()I

    move-result p1

    int-to-double v1, p1

    iget-wide v3, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$f;->a:D

    mul-double/2addr v1, v3

    iget-object p1, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$f;->b:Lcom/twelvemonkeys/imageio/ImageReaderBase$c;

    invoke-static {p1}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->a(Lcom/twelvemonkeys/imageio/ImageReaderBase$c;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p1

    mul-int/lit8 p1, p1, 0x10

    int-to-double v3, p1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    iget-object p1, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$f;->b:Lcom/twelvemonkeys/imageio/ImageReaderBase$c;

    invoke-static {p1}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->a(Lcom/twelvemonkeys/imageio/ImageReaderBase$c;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x10

    int-to-double v3, p1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    double-to-int p1, v1

    iget-object v1, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$f;->b:Lcom/twelvemonkeys/imageio/ImageReaderBase$c;

    new-instance v2, Lcom/twelvemonkeys/image/BufferedImageIcon;

    invoke-static {v1}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->a(Lcom/twelvemonkeys/imageio/ImageReaderBase$c;)Ljava/awt/image/BufferedImage;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v6, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$f;->b:Lcom/twelvemonkeys/imageio/ImageReaderBase$c;

    invoke-static {v6}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->a(Lcom/twelvemonkeys/imageio/ImageReaderBase$c;)Ljava/awt/image/BufferedImage;

    move-result-object v6

    invoke-virtual {v6}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v6

    if-gt v0, v6, :cond_2

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$f;->b:Lcom/twelvemonkeys/imageio/ImageReaderBase$c;

    invoke-static {p0}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->a(Lcom/twelvemonkeys/imageio/ImageReaderBase$c;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p0

    if-le p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-direct {v2, v3, v5, v4, p0}, Lcom/twelvemonkeys/image/BufferedImageIcon;-><init>(Ljava/awt/image/BufferedImage;IIZ)V

    invoke-virtual {v1, v2}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->setIcon(Ljavax/swing/Icon;)V

    :goto_2
    return-void
.end method
