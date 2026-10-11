.class public Lorg/apache/poi/sl/draw/DrawTextFragment2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/Drawable;


# instance fields
.field private anchor:Ljava/awt/geom/Rectangle2D;

.field private height:F

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/sl/draw/DrawTextPart;",
            ">;"
        }
    .end annotation
.end field

.field private maxPart:Lorg/apache/poi/sl/draw/DrawTextPart;

.field private x:D

.field private y:D


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextFragment2;->list:Ljava/util/List;

    return-void
.end method

.method private calculateLineData()V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextFragment2;->maxPart:Lorg/apache/poi/sl/draw/DrawTextPart;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextFragment2;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextFragment2;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/sl/draw/DrawTextPart;

    invoke-virtual {v1}, Lorg/apache/poi/sl/draw/DrawTextPart;->getHeight()F

    move-result v2

    iget v3, p0, Lorg/apache/poi/sl/draw/DrawTextFragment2;->height:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/sl/draw/DrawTextPart;->getHeight()F

    move-result v2

    iput v2, p0, Lorg/apache/poi/sl/draw/DrawTextFragment2;->height:F

    iput-object v1, p0, Lorg/apache/poi/sl/draw/DrawTextFragment2;->maxPart:Lorg/apache/poi/sl/draw/DrawTextPart;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setMathPartPosition(Lorg/apache/poi/sl/draw/DrawMathPart;D)V
    .locals 6

    sget-object v0, Lorg/apache/poi/sl/draw/DrawTextFragment2$1;->$SwitchMap$org$apache$poi$common$MathJc:[I

    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/DrawMathPart;->getMathJc()Lorg/apache/poi/common/MathJc;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    if-eq v0, v1, :cond_2

    const/4 p2, 0x2

    if-eq v0, p2, :cond_1

    const/4 p2, 0x3

    if-eq v0, p2, :cond_0

    const/4 p2, 0x4

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/apache/poi/sl/draw/DrawTextFragment2;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getCenterX()D

    move-result-wide p2

    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/DrawMathPart;->getWidth()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, v2

    sub-double/2addr p2, v0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawTextFragment2;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getCenterY()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/DrawMathPart;->getHeight()F

    move-result p0

    float-to-double v4, p0

    mul-double/2addr v4, v2

    sub-double/2addr v0, v4

    invoke-virtual {p1, p2, p3, v0, v1}, Lorg/apache/poi/sl/draw/DrawTextPart;->setPosition(DD)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/apache/poi/sl/draw/DrawTextFragment2;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getMaxX()D

    move-result-wide p2

    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/DrawMathPart;->getWidth()F

    move-result v0

    float-to-double v0, v0

    sub-double/2addr p2, v0

    iget-wide v0, p0, Lorg/apache/poi/sl/draw/DrawTextFragment2;->y:D

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawTextFragment2;->maxPart:Lorg/apache/poi/sl/draw/DrawTextPart;

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTextPart;->getHeight()F

    move-result p0

    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/DrawMathPart;->getHeight()F

    move-result v4

    sub-float/2addr p0, v4

    float-to-double v4, p0

    mul-double/2addr v4, v2

    add-double/2addr v0, v4

    invoke-virtual {p1, p2, p3, v0, v1}, Lorg/apache/poi/sl/draw/DrawTextPart;->setPosition(DD)V

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lorg/apache/poi/sl/draw/DrawTextFragment2;->y:D

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawTextFragment2;->maxPart:Lorg/apache/poi/sl/draw/DrawTextPart;

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTextPart;->getHeight()F

    move-result p0

    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/DrawMathPart;->getHeight()F

    move-result v4

    sub-float/2addr p0, v4

    float-to-double v4, p0

    mul-double/2addr v4, v2

    add-double/2addr v0, v4

    invoke-virtual {p1, p2, p3, v0, v1}, Lorg/apache/poi/sl/draw/DrawTextPart;->setPosition(DD)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addPart(Lorg/apache/poi/sl/draw/DrawTextPart;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawTextFragment2;->list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public applyTransform(Ljava/awt/Graphics2D;)V
    .locals 0

    return-void
.end method

.method public draw(Ljava/awt/Graphics2D;)V
    .locals 6

    invoke-direct {p0}, Lorg/apache/poi/sl/draw/DrawTextFragment2;->calculateLineData()V

    iget-wide v0, p0, Lorg/apache/poi/sl/draw/DrawTextFragment2;->x:D

    iget-object v2, p0, Lorg/apache/poi/sl/draw/DrawTextFragment2;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/sl/draw/DrawTextPart;

    instance-of v4, v3, Lorg/apache/poi/sl/draw/DrawMathPart;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lorg/apache/poi/sl/draw/DrawMathPart;

    invoke-direct {p0, v4, v0, v1}, Lorg/apache/poi/sl/draw/DrawTextFragment2;->setMathPartPosition(Lorg/apache/poi/sl/draw/DrawMathPart;D)V

    goto :goto_1

    :cond_0
    iget-wide v4, p0, Lorg/apache/poi/sl/draw/DrawTextFragment2;->y:D

    invoke-virtual {v3, v0, v1, v4, v5}, Lorg/apache/poi/sl/draw/DrawTextPart;->setPosition(DD)V

    :goto_1
    invoke-virtual {v3, p1}, Lorg/apache/poi/sl/draw/DrawTextPart;->draw(Ljava/awt/Graphics2D;)V

    invoke-virtual {v3}, Lorg/apache/poi/sl/draw/DrawTextPart;->getWidth()F

    move-result v3

    float-to-double v3, v3

    add-double/2addr v0, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method public drawContent(Ljava/awt/Graphics2D;)V
    .locals 0

    return-void
.end method

.method public getAscent()F
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/sl/draw/DrawTextFragment2;->calculateLineData()V

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawTextFragment2;->maxPart:Lorg/apache/poi/sl/draw/DrawTextPart;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTextPart;->getAscent()F

    move-result p0

    :goto_0
    return p0
.end method

.method public getAttributedString()Ljava/text/AttributedString;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/sl/draw/DrawTextFragment2;->calculateLineData()V

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawTextFragment2;->maxPart:Lorg/apache/poi/sl/draw/DrawTextPart;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTextPart;->getAttributedString()Ljava/text/AttributedString;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getDescent()F
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/sl/draw/DrawTextFragment2;->calculateLineData()V

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawTextFragment2;->maxPart:Lorg/apache/poi/sl/draw/DrawTextPart;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTextPart;->getDescent()F

    move-result p0

    :goto_0
    return p0
.end method

.method public getHeight()F
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/sl/draw/DrawTextFragment2;->calculateLineData()V

    iget p0, p0, Lorg/apache/poi/sl/draw/DrawTextFragment2;->height:F

    return p0
.end method

.method public getLeading()F
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/sl/draw/DrawTextFragment2;->calculateLineData()V

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawTextFragment2;->maxPart:Lorg/apache/poi/sl/draw/DrawTextPart;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTextPart;->getLeading()F

    move-result p0

    :goto_0
    return p0
.end method

.method public getPartList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/sl/draw/DrawTextPart;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawTextFragment2;->list:Ljava/util/List;

    return-object p0
.end method

.method public getWidth()F
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawTextFragment2;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/sl/draw/DrawTextPart;

    invoke-virtual {v1}, Lorg/apache/poi/sl/draw/DrawTextPart;->getWidth()F

    move-result v1

    add-float/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public setAnchor(Ljava/awt/geom/Rectangle2D;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/DrawTextFragment2;->anchor:Ljava/awt/geom/Rectangle2D;

    return-void
.end method

.method public setPosition(DD)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/sl/draw/DrawTextFragment2;->x:D

    iput-wide p3, p0, Lorg/apache/poi/sl/draw/DrawTextFragment2;->y:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawTextFragment2;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/sl/draw/DrawTextPart;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/sl/draw/DrawTextPart;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
