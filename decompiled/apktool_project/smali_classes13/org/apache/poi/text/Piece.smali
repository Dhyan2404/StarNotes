.class public Lorg/apache/poi/text/Piece;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private degree:J

.field private endPos:I

.field private index:I

.field private lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/text/Line;",
            ">;"
        }
    .end annotation
.end field

.field private rectangle:Ljava/awt/geom/Rectangle2D;

.field private startPos:I

.field private transform:Ljava/awt/geom/AffineTransform;


# direct methods
.method public constructor <init>(Ljava/awt/geom/AffineTransform;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/text/Piece;->transform:Ljava/awt/geom/AffineTransform;

    iput-wide p2, p0, Lorg/apache/poi/text/Piece;->degree:J

    iput p4, p0, Lorg/apache/poi/text/Piece;->startPos:I

    iput p4, p0, Lorg/apache/poi/text/Piece;->endPos:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/text/Piece;->lines:Ljava/util/List;

    new-instance p1, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {p1}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/text/Piece;->rectangle:Ljava/awt/geom/Rectangle2D;

    return-void
.end method

.method private combineSearch(Lorg/apache/poi/text/SearchOptions;Lorg/apache/poi/text/Selection;)V
    .locals 11

    invoke-virtual {p2}, Lorg/apache/poi/text/Selection;->getDisplayRectangle()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/text/SearchOptions;->getRectangleList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/text/SearchOptions;->getContentLength()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/text/SearchOptions;->getSearchText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p1}, Lorg/apache/poi/text/SearchOptions;->getStartLineIndex()I

    move-result v5

    invoke-virtual {p1}, Lorg/apache/poi/text/SearchOptions;->getStartWordIndex()I

    move-result v6

    move-object v2, p0

    move-object v3, v0

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Lorg/apache/poi/text/Piece;->combineLeftText(Ljava/lang/StringBuilder;Ljava/util/List;III)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p1}, Lorg/apache/poi/text/SearchOptions;->getStartLineIndex()I

    move-result v5

    invoke-virtual {p1}, Lorg/apache/poi/text/SearchOptions;->getEndLineIndex()I

    move-result v6

    invoke-virtual {p1}, Lorg/apache/poi/text/SearchOptions;->getStartWordIndex()I

    move-result v7

    invoke-virtual {p1}, Lorg/apache/poi/text/SearchOptions;->getEndWordIndex()I

    move-result v8

    invoke-virtual/range {v2 .. v8}, Lorg/apache/poi/text/Piece;->combineSelectText(Ljava/lang/StringBuilder;Ljava/util/List;IIII)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p1}, Lorg/apache/poi/text/SearchOptions;->getEndLineIndex()I

    move-result v5

    invoke-virtual {p1}, Lorg/apache/poi/text/SearchOptions;->getEndWordIndex()I

    move-result v2

    add-int/lit8 v6, v2, 0x1

    move-object v2, p0

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Lorg/apache/poi/text/Piece;->combineRightText(Ljava/lang/StringBuilder;Ljava/util/List;III)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/text/SearchOptions;->getSearchText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/text/SearchOptions;->getSearchText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {v8, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2}, Lorg/apache/poi/text/Selection;->setLeftText(Ljava/lang/String;)Lorg/apache/poi/text/Selection;

    invoke-virtual {p2, v0}, Lorg/apache/poi/text/Selection;->setRightText(Ljava/lang/String;)Lorg/apache/poi/text/Selection;

    invoke-virtual {p1}, Lorg/apache/poi/text/SearchOptions;->getStartLineIndex()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/text/SearchOptions;->getStartWordIndex()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/text/Piece;->getPosition(II)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/apache/poi/text/Selection;->setStartPosition(I)Lorg/apache/poi/text/Selection;

    invoke-virtual {p1}, Lorg/apache/poi/text/SearchOptions;->getEndLineIndex()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/text/SearchOptions;->getEndWordIndex()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/text/Piece;->getPosition(II)I

    move-result p0

    invoke-virtual {p2, p0}, Lorg/apache/poi/text/Selection;->setEndPosition(I)Lorg/apache/poi/text/Selection;

    :cond_0
    return-void
.end method

.method private combineSelectTextImpl(Ljava/lang/StringBuilder;Ljava/util/List;IIII)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/awt/geom/Rectangle2D;",
            ">;IIII)V"
        }
    .end annotation

    move v0, p3

    :goto_0
    if-gt v0, p4, :cond_4

    iget-object v1, p0, Lorg/apache/poi/text/Piece;->lines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/text/Line;

    if-ne v0, p3, :cond_0

    if-ne v0, p4, :cond_0

    add-int/lit8 v2, p6, 0x1

    invoke-virtual {v1, p1, p2, p5, v2}, Lorg/apache/poi/text/Line;->combineSelectText(Ljava/lang/StringBuilder;Ljava/util/List;II)V

    goto :goto_1

    :cond_0
    if-ne v0, p3, :cond_1

    invoke-virtual {v1}, Lorg/apache/poi/text/Line;->size()I

    move-result v2

    invoke-virtual {v1, p1, p2, p5, v2}, Lorg/apache/poi/text/Line;->combineSelectText(Ljava/lang/StringBuilder;Ljava/util/List;II)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    if-ne v0, p4, :cond_2

    add-int/lit8 v3, p6, 0x1

    invoke-virtual {v1, p1, p2, v2, v3}, Lorg/apache/poi/text/Line;->combineSelectText(Ljava/lang/StringBuilder;Ljava/util/List;II)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lorg/apache/poi/text/Line;->size()I

    move-result v3

    invoke-virtual {v1, p1, p2, v2, v3}, Lorg/apache/poi/text/Line;->combineSelectText(Ljava/lang/StringBuilder;Ljava/util/List;II)V

    :goto_1
    invoke-virtual {v1}, Lorg/apache/poi/text/Line;->isParagraphEnd()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eq v0, p4, :cond_3

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public addLine(Lorg/apache/poi/text/Line;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/text/Piece;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/text/Line;->setIndex(I)V

    iget-object v0, p0, Lorg/apache/poi/text/Piece;->lines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/poi/text/Piece;->rectangle:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p1}, Lorg/apache/poi/text/Line;->getRectangle()Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/poi/text/Utils;->union(Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;)V

    iget v0, p0, Lorg/apache/poi/text/Piece;->endPos:I

    invoke-virtual {p1}, Lorg/apache/poi/text/Line;->size()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/poi/text/Piece;->endPos:I

    return-void
.end method

.method public combineLeftText(Ljava/lang/StringBuilder;Ljava/util/List;III)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/awt/geom/Rectangle2D;",
            ">;III)V"
        }
    .end annotation

    if-gtz p5, :cond_0

    return-void

    :cond_0
    move v4, p5

    move p5, p3

    :goto_0
    if-ltz p5, :cond_4

    iget-object v0, p0, Lorg/apache/poi/text/Piece;->lines:Ljava/util/List;

    invoke-interface {v0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/text/Line;

    if-eq p5, p3, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/text/Line;->isParagraphEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    if-ne p5, p3, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    move v5, v1

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/text/Line;->combineLeftText(Ljava/lang/StringBuilder;Ljava/util/List;IIZ)I

    move-result v4

    if-gtz v4, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 p5, p5, -0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public combineRightText(Ljava/lang/StringBuilder;Ljava/util/List;III)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/awt/geom/Rectangle2D;",
            ">;III)V"
        }
    .end annotation

    if-gtz p5, :cond_0

    return-void

    :cond_0
    move v4, p5

    move p5, p3

    :goto_0
    iget-object v0, p0, Lorg/apache/poi/text/Piece;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p5, v0, :cond_3

    iget-object v0, p0, Lorg/apache/poi/text/Piece;->lines:Ljava/util/List;

    invoke-interface {v0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/apache/poi/text/Line;

    if-ne p5, p3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move v5, v0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/text/Line;->combineRightText(Ljava/lang/StringBuilder;Ljava/util/List;IIZ)I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v6}, Lorg/apache/poi/text/Line;->isParagraphEnd()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public combineSelectText(Ljava/lang/StringBuilder;Ljava/util/List;IIII)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/awt/geom/Rectangle2D;",
            ">;IIII)V"
        }
    .end annotation

    if-le p3, p4, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p3

    move v5, p6

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/text/Piece;->combineSelectTextImpl(Ljava/lang/StringBuilder;Ljava/util/List;IIII)V

    goto :goto_0

    :cond_0
    if-ne p3, p4, :cond_1

    if-le p5, p6, :cond_1

    iget-object p0, p0, Lorg/apache/poi/text/Piece;->lines:Ljava/util/List;

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/text/Line;

    add-int/lit8 p5, p5, 0x1

    invoke-virtual {p0, p1, p2, p6, p5}, Lorg/apache/poi/text/Line;->combineSelectText(Ljava/lang/StringBuilder;Ljava/util/List;II)V

    goto :goto_0

    :cond_1
    invoke-direct/range {p0 .. p6}, Lorg/apache/poi/text/Piece;->combineSelectTextImpl(Ljava/lang/StringBuilder;Ljava/util/List;IIII)V

    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lorg/apache/poi/text/Piece;

    iget-wide v2, p0, Lorg/apache/poi/text/Piece;->degree:J

    iget-wide v4, p1, Lorg/apache/poi/text/Piece;->degree:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lorg/apache/poi/text/Piece;->index:I

    iget v3, p1, Lorg/apache/poi/text/Piece;->index:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lorg/apache/poi/text/Piece;->startPos:I

    iget v3, p1, Lorg/apache/poi/text/Piece;->startPos:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lorg/apache/poi/text/Piece;->endPos:I

    iget v3, p1, Lorg/apache/poi/text/Piece;->endPos:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/apache/poi/text/Piece;->rectangle:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v2, v2}, Ljava/awt/geom/Rectangle2D;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/poi/text/Piece;->transform:Ljava/awt/geom/AffineTransform;

    iget-object v3, p1, Lorg/apache/poi/text/Piece;->transform:Ljava/awt/geom/AffineTransform;

    invoke-static {v2, v3}, Lorg/apache/poi/text/Utils;->transformEquals(Ljava/awt/geom/AffineTransform;Ljava/awt/geom/AffineTransform;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lorg/apache/poi/text/Piece;->lines:Ljava/util/List;

    iget-object p1, p1, Lorg/apache/poi/text/Piece;->lines:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getDegree()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/text/Piece;->degree:J

    return-wide v0
.end method

.method public getEndPos()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/text/Piece;->endPos:I

    return p0
.end method

.method public getIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/text/Piece;->index:I

    return p0
.end method

.method public getLine(I)Lorg/apache/poi/text/Line;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/text/Piece;->lines:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/text/Line;

    return-object p0
.end method

.method public getLineByPos(I)Lorg/apache/poi/text/Line;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/text/Piece;->lines:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/text/Line;

    invoke-virtual {v0}, Lorg/apache/poi/text/Line;->getStartPos()I

    move-result v1

    if-gt v1, p1, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/text/Line;->getEndPos()I

    move-result v1

    if-le v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLineIndex(Ljava/awt/geom/Point2D;)I
    .locals 9

    iget-object v0, p0, Lorg/apache/poi/text/Piece;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/text/Piece;->isHorizontal()Z

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/text/Piece;->lines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/text/Piece;->isReverse()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    add-int/lit8 v1, v1, -0x2

    :goto_0
    if-ltz v1, :cond_5

    iget-object v2, p0, Lorg/apache/poi/text/Piece;->lines:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/text/Line;

    invoke-virtual {v2}, Lorg/apache/poi/text/Line;->getRectangle()Ljava/awt/geom/Rectangle2D;

    move-result-object v2

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v4

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v6

    invoke-virtual {v2, v4, v5, v6, v7}, Ljava/awt/geom/Rectangle2D;->contains(DD)Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v4

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_3

    :cond_2
    if-nez v0, :cond_4

    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v4

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v6

    cmpl-double v2, v4, v6

    if-lez v2, :cond_4

    :cond_3
    add-int/2addr v1, v3

    return v1

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    return p0

    :cond_6
    move v2, v3

    :goto_1
    if-ge v2, v1, :cond_b

    iget-object v4, p0, Lorg/apache/poi/text/Piece;->lines:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/text/Line;

    invoke-virtual {v4}, Lorg/apache/poi/text/Line;->getRectangle()Ljava/awt/geom/Rectangle2D;

    move-result-object v4

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v5

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v7

    invoke-virtual {v4, v5, v6, v7, v8}, Ljava/awt/geom/Rectangle2D;->contains(DD)Z

    move-result v5

    if-eqz v5, :cond_7

    return v2

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v4}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v5

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v7

    cmpl-double v5, v5, v7

    if-gtz v5, :cond_9

    :cond_8
    if-nez v0, :cond_a

    invoke-virtual {v4}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v4

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_a

    :cond_9
    sub-int/2addr v2, v3

    return v2

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_b
    sub-int/2addr v1, v3

    return v1
.end method

.method public getLineIndexExact(Ljava/awt/geom/Point2D;I)I
    .locals 9

    iget-object v0, p0, Lorg/apache/poi/text/Piece;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/text/Piece;->isHorizontal()Z

    move-result v0

    iget-object v2, p0, Lorg/apache/poi/text/Piece;->lines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/text/Piece;->isReverse()Z

    move-result v3

    if-eqz v3, :cond_c

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_17

    iget-object v3, p0, Lorg/apache/poi/text/Piece;->lines:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/text/Line;

    invoke-virtual {v3}, Lorg/apache/poi/text/Line;->getRectangle()Ljava/awt/geom/Rectangle2D;

    move-result-object v3

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v4

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Ljava/awt/geom/Rectangle2D;->contains(DD)Z

    move-result v4

    if-eqz v4, :cond_1

    return v2

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v3}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v4

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_7

    invoke-virtual {v3}, Ljava/awt/geom/RectangularShape;->getMaxX()D

    move-result-wide v4

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_7

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {v3}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v4

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_7

    invoke-virtual {v3}, Ljava/awt/geom/RectangularShape;->getMaxY()D

    move-result-wide v4

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_3

    goto :goto_3

    :cond_3
    if-lez v2, :cond_8

    iget-object v4, p0, Lorg/apache/poi/text/Piece;->lines:Ljava/util/List;

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/text/Line;

    invoke-virtual {v4}, Lorg/apache/poi/text/Line;->getRectangle()Ljava/awt/geom/Rectangle2D;

    move-result-object v4

    if-eqz v0, :cond_5

    invoke-virtual {v4}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v4

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_7

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide p0

    invoke-virtual {v3}, Ljava/awt/geom/RectangularShape;->getMaxY()D

    move-result-wide v3

    sub-double/2addr p0, v3

    int-to-double v3, p2

    cmpl-double p0, p0, v3

    if-lez p0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    return v1

    :cond_5
    invoke-virtual {v4}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v4

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_7

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide p0

    invoke-virtual {v3}, Ljava/awt/geom/RectangularShape;->getMaxX()D

    move-result-wide v3

    sub-double/2addr p0, v3

    int-to-double v3, p2

    cmpl-double p0, p0, v3

    if-lez p0, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    return v1

    :cond_7
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v4

    invoke-virtual {v3}, Ljava/awt/geom/RectangularShape;->getMaxY()D

    move-result-wide v6

    sub-double/2addr v4, v6

    int-to-double v6, p2

    cmpg-double p0, v4, v6

    if-lez p0, :cond_a

    :cond_9
    if-nez v0, :cond_b

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide p0

    invoke-virtual {v3}, Ljava/awt/geom/RectangularShape;->getMaxX()D

    move-result-wide v3

    sub-double/2addr p0, v3

    int-to-double v3, p2

    cmpg-double p0, p0, v3

    if-gtz p0, :cond_b

    :cond_a
    return v2

    :cond_b
    return v1

    :cond_c
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_17

    iget-object v4, p0, Lorg/apache/poi/text/Piece;->lines:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/text/Line;

    invoke-virtual {v4}, Lorg/apache/poi/text/Line;->getRectangle()Ljava/awt/geom/Rectangle2D;

    move-result-object v4

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v5

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v7

    invoke-virtual {v4, v5, v6, v7, v8}, Ljava/awt/geom/Rectangle2D;->contains(DD)Z

    move-result v5

    if-eqz v5, :cond_d

    return v3

    :cond_d
    if-eqz v0, :cond_e

    invoke-virtual {v4}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v5

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v7

    cmpl-double v5, v5, v7

    if-gtz v5, :cond_13

    invoke-virtual {v4}, Ljava/awt/geom/RectangularShape;->getMaxX()D

    move-result-wide v5

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v7

    cmpg-double v5, v5, v7

    if-ltz v5, :cond_13

    :cond_e
    if-nez v0, :cond_f

    invoke-virtual {v4}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v5

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v7

    cmpl-double v5, v5, v7

    if-gtz v5, :cond_13

    invoke-virtual {v4}, Ljava/awt/geom/RectangularShape;->getMaxY()D

    move-result-wide v5

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v7

    cmpg-double v5, v5, v7

    if-gez v5, :cond_f

    goto :goto_7

    :cond_f
    add-int/lit8 v5, v2, -0x1

    if-ge v3, v5, :cond_14

    iget-object v5, p0, Lorg/apache/poi/text/Piece;->lines:Ljava/util/List;

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/text/Line;

    invoke-virtual {v5}, Lorg/apache/poi/text/Line;->getRectangle()Ljava/awt/geom/Rectangle2D;

    move-result-object v5

    if-eqz v0, :cond_11

    invoke-virtual {v5}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v5

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v7

    cmpl-double v5, v5, v7

    if-lez v5, :cond_13

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide p0

    invoke-virtual {v4}, Ljava/awt/geom/RectangularShape;->getMaxY()D

    move-result-wide v4

    sub-double/2addr p0, v4

    int-to-double v4, p2

    cmpl-double p0, p0, v4

    if-lez p0, :cond_10

    goto :goto_5

    :cond_10
    move v1, v3

    :goto_5
    return v1

    :cond_11
    invoke-virtual {v5}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v5

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v7

    cmpl-double v5, v5, v7

    if-lez v5, :cond_13

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide p0

    invoke-virtual {v4}, Ljava/awt/geom/RectangularShape;->getMaxX()D

    move-result-wide v4

    sub-double/2addr p0, v4

    int-to-double v4, p2

    cmpl-double p0, p0, v4

    if-lez p0, :cond_12

    goto :goto_6

    :cond_12
    move v1, v3

    :goto_6
    return v1

    :cond_13
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    :cond_14
    if-eqz v0, :cond_15

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v5

    invoke-virtual {v4}, Ljava/awt/geom/RectangularShape;->getMaxY()D

    move-result-wide v7

    sub-double/2addr v5, v7

    int-to-double v7, p2

    cmpg-double p0, v5, v7

    if-lez p0, :cond_16

    :cond_15
    if-nez v0, :cond_17

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide p0

    invoke-virtual {v4}, Ljava/awt/geom/RectangularShape;->getMaxX()D

    move-result-wide v4

    sub-double/2addr p0, v4

    int-to-double v4, p2

    cmpg-double p0, p0, v4

    if-gtz p0, :cond_17

    :cond_16
    return v3

    :cond_17
    return v1
.end method

.method public getLines()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/text/Line;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/text/Piece;->lines:Ljava/util/List;

    return-object p0
.end method

.method public getPosition(II)I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/text/Piece;->lines:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/text/Line;

    invoke-virtual {p0, p2}, Lorg/apache/poi/text/Line;->getPostion(I)I

    move-result p0

    return p0
.end method

.method public getRectangle()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/text/Piece;->rectangle:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public getStartPos()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/text/Piece;->startPos:I

    return p0
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/text/Piece;->lines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/text/Line;

    invoke-virtual {v2}, Lorg/apache/poi/text/Line;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/apache/poi/text/Line;->isParagraphEnd()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lorg/apache/poi/text/Line;->getIndex()I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/text/Piece;->lines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTransform()Ljava/awt/geom/AffineTransform;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/text/Piece;->transform:Ljava/awt/geom/AffineTransform;

    return-object p0
.end method

.method public getWordLength()I
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/text/Piece;->lines:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/text/Line;

    invoke-virtual {v1}, Lorg/apache/poi/text/Line;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/text/Piece;->lines:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/poi/text/Piece;->rectangle:Ljava/awt/geom/Rectangle2D;

    iget-object v2, p0, Lorg/apache/poi/text/Piece;->transform:Ljava/awt/geom/AffineTransform;

    iget-wide v3, p0, Lorg/apache/poi/text/Piece;->degree:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v4, p0, Lorg/apache/poi/text/Piece;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lorg/apache/poi/text/Piece;->startPos:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget p0, p0, Lorg/apache/poi/text/Piece;->endPos:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/text/Piece;->lines:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public isHorizontal()Z
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/text/Piece;->degree:J

    invoke-static {v0, v1}, Lorg/apache/poi/text/Utils;->isHorizontal(J)Z

    move-result p0

    return p0
.end method

.method public isReverse()Z
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/text/Piece;->lines:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/text/Piece;->lines:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/text/Line;

    invoke-virtual {p0}, Lorg/apache/poi/text/Piece;->isHorizontal()Z

    move-result v2

    invoke-virtual {v0}, Lorg/apache/poi/text/Line;->getRectangle()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/text/Piece;->lines:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/text/Line;

    invoke-virtual {p0}, Lorg/apache/poi/text/Line;->getRectangle()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v2

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v5

    cmpl-double p0, v2, v5

    if-lez p0, :cond_1

    move v1, v4

    :cond_1
    return v1

    :cond_2
    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v2

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v5

    cmpl-double p0, v2, v5

    if-lez p0, :cond_3

    move v1, v4

    :cond_3
    :goto_0
    return v1
.end method

.method public search(Lorg/apache/poi/text/SearchOptions;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/text/SearchOptions;",
            "Ljava/util/List<",
            "Lorg/apache/poi/text/Selection;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/text/SearchOptions;->getSearchText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/apache/poi/text/Selection;

    invoke-virtual {p1}, Lorg/apache/poi/text/SearchOptions;->getSearchText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/text/Selection;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/text/Piece;->lines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/apache/poi/text/Piece;->lines:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/text/Line;

    invoke-virtual {v2, p1, v1}, Lorg/apache/poi/text/Line;->search(Lorg/apache/poi/text/SearchOptions;I)V

    invoke-virtual {p1}, Lorg/apache/poi/text/SearchOptions;->searchSucess()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/text/Piece;->combineSearch(Lorg/apache/poi/text/SearchOptions;Lorg/apache/poi/text/Selection;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/poi/text/Selection;

    invoke-virtual {p1}, Lorg/apache/poi/text/SearchOptions;->getSearchText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/poi/text/Selection;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/text/SearchOptions;->searchNext()V

    add-int/lit8 v1, v1, -0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/text/Piece;->index:I

    return-void
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/text/Piece;->lines:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Piece{degree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/poi/text/Piece;->degree:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/text/Piece;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/text/Piece;->startPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/text/Piece;->endPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/text/Piece;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
