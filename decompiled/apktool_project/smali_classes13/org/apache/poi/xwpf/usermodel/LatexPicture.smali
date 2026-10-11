.class public Lorg/apache/poi/xwpf/usermodel/LatexPicture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/wp/usermodel/IPicture;
.implements Lorg/apache/poi/xwpf/usermodel/IRunPart;


# static fields
.field public static final LATEX_PICTURE_NAME:Ljava/lang/String; = "latex_image"


# instance fields
.field private final LOG:Lorg/apache/logging/log4j/Logger;

.field private anchor:Ljava/awt/geom/Rectangle2D;

.field private latex:Lorg/apache/poi/latex/Latex;


# direct methods
.method public constructor <init>(Lorg/apache/poi/latex/Latex;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/LatexPicture;->LOG:Lorg/apache/logging/log4j/Logger;

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/LatexPicture;->latex:Lorg/apache/poi/latex/Latex;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public getAnchor()Ljava/awt/geom/Rectangle2D;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/LatexPicture;->anchor:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public getAnchor(Lorg/apache/poi/wp/draw/ImageCreator;)Ljava/awt/geom/Rectangle2D;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<IMAGE:",
            "Ljava/awt/Image;",
            ">(",
            "Lorg/apache/poi/wp/draw/ImageCreator<",
            "TIMAGE;>;)",
            "Ljava/awt/geom/Rectangle2D;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/LatexPicture;->anchor:Ljava/awt/geom/Rectangle2D;

    if-nez v0, :cond_2

    const-string v0, "image/latex"

    .line 3
    invoke-interface {p1, v0}, Lorg/apache/poi/wp/draw/ImageCreator;->getImageRenderer(Ljava/lang/String;)Lorg/apache/poi/sl/draw/ImageRenderer;

    move-result-object p1

    .line 4
    invoke-interface {p1, v0}, Lorg/apache/poi/sl/draw/ImageRenderer;->canRender(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lorg/apache/poi/latex/LatexRender;

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    check-cast p1, Lorg/apache/poi/latex/LatexRender;

    .line 6
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/LatexPicture;->latex:Lorg/apache/poi/latex/Latex;

    invoke-virtual {p1, v0, v1}, Lorg/apache/poi/latex/LatexRender;->loadImage(Lorg/apache/poi/latex/Latex;Ljava/awt/geom/Rectangle2D;)V

    .line 7
    invoke-virtual {p1}, Lorg/apache/poi/latex/LatexRender;->getBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/LatexPicture;->anchor:Ljava/awt/geom/Rectangle2D;

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/latex/LatexRender;->close()V

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    new-instance p1, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {p1}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/LatexPicture;->anchor:Ljava/awt/geom/Rectangle2D;

    return-object v1

    .line 10
    :cond_2
    :goto_1
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/LatexPicture;->anchor:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 0

    const-string p0, "image/latex"

    return-object p0
.end method

.method public getImage(Lorg/apache/poi/wp/draw/ImageCreator;)Ljava/awt/Image;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<IMAGE:",
            "Ljava/awt/Image;",
            ">(",
            "Lorg/apache/poi/wp/draw/ImageCreator<",
            "TIMAGE;>;)TIMAGE;"
        }
    .end annotation

    const-string v0, "image/latex"

    invoke-interface {p1, v0}, Lorg/apache/poi/wp/draw/ImageCreator;->getImageRenderer(Ljava/lang/String;)Lorg/apache/poi/sl/draw/ImageRenderer;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/poi/sl/draw/ImageRenderer;->canRender(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    instance-of v0, v1, Lorg/apache/poi/latex/LatexRender;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast v1, Lorg/apache/poi/latex/LatexRender;

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/LatexPicture;->latex:Lorg/apache/poi/latex/Latex;

    invoke-virtual {v1, v0, v2}, Lorg/apache/poi/latex/LatexRender;->loadImage(Lorg/apache/poi/latex/Latex;Ljava/awt/geom/Rectangle2D;)V

    invoke-virtual {v1}, Lorg/apache/poi/latex/LatexRender;->getBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/LatexPicture;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-static {v0}, Lorg/apache/poi/util/RectUtils;->isEmptyImage(Ljava/awt/geom/RectangularShape;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lorg/apache/poi/latex/LatexRender;->close()V

    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/LatexPicture;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/LatexPicture;->latex:Lorg/apache/poi/latex/Latex;

    iget-object v0, v0, Lorg/apache/poi/latex/Latex;->content:Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/LatexPicture;->anchor:Ljava/awt/geom/Rectangle2D;

    const-string v1, "Empty image[{}] anchor:{}"

    invoke-interface {p1, v1, v0, p0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_1
    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/LatexPicture;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v2

    invoke-interface {p1}, Lorg/apache/poi/wp/draw/ImageCreator;->getScale()F

    move-result v8

    float-to-double v8, v8

    mul-double/2addr v8, v2

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/LatexPicture;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v2

    invoke-interface {p1}, Lorg/apache/poi/wp/draw/ImageCreator;->getScale()F

    move-result p0

    float-to-double v10, p0

    mul-double/2addr v10, v2

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v2

    double-to-int p0, v2

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v2

    double-to-int v0, v2

    invoke-interface {p1, p0, v0}, Lorg/apache/poi/wp/draw/ImageCreator;->createImage(II)Ljava/awt/Image;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/apache/poi/wp/draw/ImageCreator;->getGraphics(Ljava/awt/Image;)Ljava/awt/Graphics2D;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/poi/wp/draw/ImageCreator;->getScale()F

    move-result p1

    invoke-virtual {v1, v0, p1}, Lorg/apache/poi/latex/LatexRender;->drawImage(Ljava/awt/Graphics2D;F)Z

    invoke-virtual {v1}, Lorg/apache/poi/latex/LatexRender;->close()V

    return-object p0

    :cond_2
    :goto_0
    new-instance p1, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {p1}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/LatexPicture;->anchor:Ljava/awt/geom/Rectangle2D;

    return-object v2
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "latex_image"

    return-object p0
.end method

.method public getPosition()Lorg/apache/poi/wp/usermodel/Position;
    .locals 0

    sget-object p0, Lorg/apache/poi/wp/usermodel/Position;->MIDDLE:Lorg/apache/poi/wp/usermodel/Position;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LatexPicture{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/LatexPicture;->latex:Lorg/apache/poi/latex/Latex;

    iget-object p0, p0, Lorg/apache/poi/latex/Latex;->content:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public identifier()I
    .locals 6

    const v0, -0xd4e692

    int-to-long v0, v0

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/LatexPicture;->latex:Lorg/apache/poi/latex/Latex;

    iget-object v2, v2, Lorg/apache/poi/latex/Latex;->content:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x25

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/LatexPicture;->latex:Lorg/apache/poi/latex/Latex;

    iget v2, p0, Lorg/apache/poi/latex/Latex;->fontSize:F

    const/high16 v3, 0x422c0000    # 43.0f

    mul-float/2addr v2, v3

    float-to-long v2, v2

    add-long/2addr v0, v2

    iget-object p0, p0, Lorg/apache/poi/latex/Latex;->insets:Ljava/awt/Insets;

    invoke-virtual {p0}, Ljava/awt/Insets;->hashCode()I

    move-result p0

    int-to-long v2, p0

    const-wide/16 v4, 0x35

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int p0, v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    xor-int/2addr p0, v0

    return p0
.end method
