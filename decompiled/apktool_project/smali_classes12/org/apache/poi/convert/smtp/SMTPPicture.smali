.class public Lorg/apache/poi/convert/smtp/SMTPPicture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/wp/usermodel/IPicture;


# instance fields
.field private final LOG:Lorg/apache/logging/log4j/Logger;

.field private bounds:Ljava/awt/geom/Rectangle2D;

.field private content:[B

.field private contentType:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/convert/smtp/SMTPPicture;->LOG:Lorg/apache/logging/log4j/Logger;

    iput-object p1, p0, Lorg/apache/poi/convert/smtp/SMTPPicture;->content:[B

    iput-object p2, p0, Lorg/apache/poi/convert/smtp/SMTPPicture;->contentType:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/poi/convert/smtp/SMTPPicture;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public getAnchor()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/smtp/SMTPPicture;->bounds:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/smtp/SMTPPicture;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public getImage(Lorg/apache/poi/wp/draw/ImageCreator;)Ljava/awt/Image;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<IMAGE:",
            "Ljava/awt/Image;",
            ">(",
            "Lorg/apache/poi/wp/draw/ImageCreator<",
            "TIMAGE;>;)TIMAGE;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/convert/smtp/SMTPPicture;->contentType:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/apache/poi/wp/draw/ImageCreator;->getImageRenderer(Ljava/lang/String;)Lorg/apache/poi/sl/draw/ImageRenderer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/convert/smtp/SMTPPicture;->contentType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/poi/sl/draw/ImageRenderer;->canRender(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/convert/smtp/SMTPPicture;->content:[B

    iget-object v3, p0, Lorg/apache/poi/convert/smtp/SMTPPicture;->contentType:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lorg/apache/poi/sl/draw/ImageRenderer;->loadImage([BLjava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/poi/sl/draw/ImageRenderer;->getBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/convert/smtp/SMTPPicture;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-static {v1}, Lorg/apache/poi/util/RectUtils;->isEmptyImage(Ljava/awt/geom/RectangularShape;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/convert/smtp/SMTPPicture;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p1

    const-string v0, "Empty image bounds:{}"

    iget-object v1, p0, Lorg/apache/poi/convert/smtp/SMTPPicture;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-interface {p1, v0, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/convert/smtp/SMTPPicture;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v3

    double-to-int v1, v3

    iget-object v3, p0, Lorg/apache/poi/convert/smtp/SMTPPicture;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v3}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v3

    double-to-int v3, v3

    invoke-interface {p1, v1, v3}, Lorg/apache/poi/wp/draw/ImageCreator;->createImage(II)Ljava/awt/Image;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/apache/poi/wp/draw/ImageCreator;->getGraphics(Ljava/awt/Image;)Ljava/awt/Graphics2D;

    move-result-object p1

    invoke-interface {v0}, Lorg/apache/poi/sl/draw/ImageRenderer;->getImage()Ljava/awt/image/BufferedImage;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v3, v2}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    iget-object p0, p0, Lorg/apache/poi/convert/smtp/SMTPPicture;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/logging/log4j/LogBuilder;->log()V

    return-object v2
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/smtp/SMTPPicture;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPosition()Lorg/apache/poi/wp/usermodel/Position;
    .locals 0

    sget-object p0, Lorg/apache/poi/wp/usermodel/Position;->NONE:Lorg/apache/poi/wp/usermodel/Position;

    return-object p0
.end method

.method public identifier()I
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/convert/smtp/SMTPPicture;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    iget-object p0, p0, Lorg/apache/poi/convert/smtp/SMTPPicture;->contentType:Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    int-to-long v2, p0

    const-wide/16 v4, 0x25

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int p0, v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    xor-int/2addr p0, v0

    return p0
.end method
