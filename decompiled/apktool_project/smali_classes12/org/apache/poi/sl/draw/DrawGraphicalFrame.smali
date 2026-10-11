.class public Lorg/apache/poi/sl/draw/DrawGraphicalFrame;
.super Lorg/apache/poi/sl/draw/DrawShape;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/usermodel/GraphicalFrame;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/GraphicalFrame<",
            "**>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawShape;-><init>(Lorg/apache/poi/sl/usermodel/Shape;)V

    return-void
.end method

.method private drawChart(Lorg/apache/poi/sl/usermodel/GraphicalFrame;Ljava/awt/Graphics2D;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/GraphicalFrame<",
            "**>;",
            "Ljava/awt/Graphics2D;",
            ")V"
        }
    .end annotation

    const-class p0, Lorg/apache/poi/sl/draw/DrawGraphicalFrameChart;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/draw/DrawGraphicalFrameChart;

    invoke-interface {v0, p1}, Lorg/apache/poi/sl/draw/DrawGraphicalFrameChart;->canDraw(Lorg/apache/poi/sl/usermodel/GraphicalFrame;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1, p2}, Lorg/apache/poi/sl/draw/DrawGraphicalFrameChart;->draw(Lorg/apache/poi/sl/usermodel/GraphicalFrame;Ljava/awt/Graphics2D;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Ljava/awt/Graphics2D;)V
    .locals 1

    invoke-interface {p0, p1}, Lorg/apache/poi/sl/draw/Drawable;->disableDraw(Ljava/awt/Graphics2D;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawShape;->getShape()Lorg/apache/poi/sl/usermodel/Shape;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/usermodel/GraphicalFrame;

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/sl/draw/DrawGraphicalFrame;->drawChart(Lorg/apache/poi/sl/usermodel/GraphicalFrame;Ljava/awt/Graphics2D;)V

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawShape;->getShape()Lorg/apache/poi/sl/usermodel/Shape;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/usermodel/GraphicalFrame;

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/GraphicalFrame;->getFallbackPicture()Lorg/apache/poi/sl/usermodel/PictureShape;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/PictureShape;)Lorg/apache/poi/sl/draw/DrawPictureShape;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/DrawPictureShape;->draw(Ljava/awt/Graphics2D;)V

    return-void
.end method
