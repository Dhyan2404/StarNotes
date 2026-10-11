.class public Lorg/apache/poi/text/Selection;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private displayRectangle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/awt/geom/Rectangle2D;",
            ">;"
        }
    .end annotation
.end field

.field private endPosition:I

.field private leftText:Ljava/lang/String;

.field private rightText:Ljava/lang/String;

.field private startPosition:I

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/text/Selection;->text:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/text/Selection;->displayRectangle:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDisplayRectangle()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/awt/geom/Rectangle2D;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/text/Selection;->displayRectangle:Ljava/util/List;

    return-object p0
.end method

.method public getEndPosition()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/text/Selection;->endPosition:I

    return p0
.end method

.method public getLeftText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/text/Selection;->leftText:Ljava/lang/String;

    return-object p0
.end method

.method public getRightText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/text/Selection;->rightText:Ljava/lang/String;

    return-object p0
.end method

.method public getStartPosition()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/text/Selection;->startPosition:I

    return p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/text/Selection;->text:Ljava/lang/String;

    return-object p0
.end method

.method public setDisplayRectangle(Ljava/util/List;)Lorg/apache/poi/text/Selection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/awt/geom/Rectangle2D;",
            ">;)",
            "Lorg/apache/poi/text/Selection;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/text/Selection;->displayRectangle:Ljava/util/List;

    return-object p0
.end method

.method public setEndPosition(I)Lorg/apache/poi/text/Selection;
    .locals 0

    iput p1, p0, Lorg/apache/poi/text/Selection;->endPosition:I

    return-object p0
.end method

.method public setLeftText(Ljava/lang/String;)Lorg/apache/poi/text/Selection;
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/text/Selection;->leftText:Ljava/lang/String;

    return-object p0
.end method

.method public setRightText(Ljava/lang/String;)Lorg/apache/poi/text/Selection;
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/text/Selection;->rightText:Ljava/lang/String;

    return-object p0
.end method

.method public setStartPosition(I)Lorg/apache/poi/text/Selection;
    .locals 0

    iput p1, p0, Lorg/apache/poi/text/Selection;->startPosition:I

    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lorg/apache/poi/text/Selection;
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/text/Selection;->text:Ljava/lang/String;

    return-object p0
.end method
