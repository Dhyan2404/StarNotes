.class public final Lorg/apache/poi/hslf/usermodel/HSLFComment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/Comment;


# instance fields
.field private final _comment2000:Lorg/apache/poi/hslf/record/Comment2000;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hslf/record/Comment2000;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFComment;->_comment2000:Lorg/apache/poi/hslf/record/Comment2000;

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFComment;->_comment2000:Lorg/apache/poi/hslf/record/Comment2000;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/Comment2000;->getAuthor()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAuthorInitials()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFComment;->_comment2000:Lorg/apache/poi/hslf/record/Comment2000;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/Comment2000;->getAuthorInitials()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getComment2000()Lorg/apache/poi/hslf/record/Comment2000;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFComment;->_comment2000:Lorg/apache/poi/hslf/record/Comment2000;

    return-object p0
.end method

.method public getDate()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFComment;->_comment2000:Lorg/apache/poi/hslf/record/Comment2000;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/Comment2000;->getComment2000Atom()Lorg/apache/poi/hslf/record/Comment2000Atom;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/Comment2000Atom;->getDate()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getOffset()Ljava/awt/geom/Point2D;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFComment;->_comment2000:Lorg/apache/poi/hslf/record/Comment2000;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/Comment2000;->getComment2000Atom()Lorg/apache/poi/hslf/record/Comment2000Atom;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/Comment2000Atom;->getXOffset()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/util/Units;->masterToPoints(I)D

    move-result-wide v0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFComment;->_comment2000:Lorg/apache/poi/hslf/record/Comment2000;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/Comment2000;->getComment2000Atom()Lorg/apache/poi/hslf/record/Comment2000Atom;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/Comment2000Atom;->getYOffset()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/util/Units;->masterToPoints(I)D

    move-result-wide v2

    new-instance p0, Ljava/awt/geom/Point2D$Double;

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFComment;->_comment2000:Lorg/apache/poi/hslf/record/Comment2000;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/Comment2000;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFComment;->_comment2000:Lorg/apache/poi/hslf/record/Comment2000;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/Comment2000;->setAuthor(Ljava/lang/String;)V

    return-void
.end method

.method public setAuthorInitials(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFComment;->_comment2000:Lorg/apache/poi/hslf/record/Comment2000;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/Comment2000;->setAuthorInitials(Ljava/lang/String;)V

    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFComment;->_comment2000:Lorg/apache/poi/hslf/record/Comment2000;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/Comment2000;->getComment2000Atom()Lorg/apache/poi/hslf/record/Comment2000Atom;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/Comment2000Atom;->setDate(Ljava/util/Date;)V

    return-void
.end method

.method public setOffset(Ljava/awt/geom/Point2D;)V
    .locals 3

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->pointsToMaster(D)I

    move-result v0

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->pointsToMaster(D)I

    move-result p1

    iget-object v1, p0, Lorg/apache/poi/hslf/usermodel/HSLFComment;->_comment2000:Lorg/apache/poi/hslf/record/Comment2000;

    invoke-virtual {v1}, Lorg/apache/poi/hslf/record/Comment2000;->getComment2000Atom()Lorg/apache/poi/hslf/record/Comment2000Atom;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/hslf/record/Comment2000Atom;->setXOffset(I)V

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFComment;->_comment2000:Lorg/apache/poi/hslf/record/Comment2000;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/Comment2000;->getComment2000Atom()Lorg/apache/poi/hslf/record/Comment2000Atom;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/Comment2000Atom;->setYOffset(I)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFComment;->_comment2000:Lorg/apache/poi/hslf/record/Comment2000;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/Comment2000;->setText(Ljava/lang/String;)V

    return-void
.end method
