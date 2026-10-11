.class final Lsun/awt/geom/ChainEnd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field etag:I

.field head:Lsun/awt/geom/CurveLink;

.field partner:Lsun/awt/geom/ChainEnd;

.field tail:Lsun/awt/geom/CurveLink;


# direct methods
.method public constructor <init>(Lsun/awt/geom/CurveLink;Lsun/awt/geom/ChainEnd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/awt/geom/ChainEnd;->head:Lsun/awt/geom/CurveLink;

    iput-object p1, p0, Lsun/awt/geom/ChainEnd;->tail:Lsun/awt/geom/CurveLink;

    iput-object p2, p0, Lsun/awt/geom/ChainEnd;->partner:Lsun/awt/geom/ChainEnd;

    invoke-virtual {p1}, Lsun/awt/geom/CurveLink;->getEdgeTag()I

    move-result p1

    iput p1, p0, Lsun/awt/geom/ChainEnd;->etag:I

    return-void
.end method


# virtual methods
.method public addLink(Lsun/awt/geom/CurveLink;)V
    .locals 2

    iget v0, p0, Lsun/awt/geom/ChainEnd;->etag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lsun/awt/geom/ChainEnd;->tail:Lsun/awt/geom/CurveLink;

    invoke-virtual {v0, p1}, Lsun/awt/geom/CurveLink;->setNext(Lsun/awt/geom/CurveLink;)V

    iput-object p1, p0, Lsun/awt/geom/ChainEnd;->tail:Lsun/awt/geom/CurveLink;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lsun/awt/geom/ChainEnd;->head:Lsun/awt/geom/CurveLink;

    invoke-virtual {p1, v0}, Lsun/awt/geom/CurveLink;->setNext(Lsun/awt/geom/CurveLink;)V

    iput-object p1, p0, Lsun/awt/geom/ChainEnd;->head:Lsun/awt/geom/CurveLink;

    :goto_0
    return-void
.end method

.method public getChain()Lsun/awt/geom/CurveLink;
    .locals 0

    iget-object p0, p0, Lsun/awt/geom/ChainEnd;->head:Lsun/awt/geom/CurveLink;

    return-object p0
.end method

.method public getPartner()Lsun/awt/geom/ChainEnd;
    .locals 0

    iget-object p0, p0, Lsun/awt/geom/ChainEnd;->partner:Lsun/awt/geom/ChainEnd;

    return-object p0
.end method

.method public getX()D
    .locals 2

    iget v0, p0, Lsun/awt/geom/ChainEnd;->etag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lsun/awt/geom/ChainEnd;->tail:Lsun/awt/geom/CurveLink;

    invoke-virtual {p0}, Lsun/awt/geom/CurveLink;->getXBot()D

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object p0, p0, Lsun/awt/geom/ChainEnd;->head:Lsun/awt/geom/CurveLink;

    invoke-virtual {p0}, Lsun/awt/geom/CurveLink;->getXBot()D

    move-result-wide v0

    return-wide v0
.end method

.method public linkTo(Lsun/awt/geom/ChainEnd;)Lsun/awt/geom/CurveLink;
    .locals 5

    iget v0, p0, Lsun/awt/geom/ChainEnd;->etag:I

    if-eqz v0, :cond_4

    iget v1, p1, Lsun/awt/geom/ChainEnd;->etag:I

    if-eqz v1, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move-object v0, p0

    move-object v1, p1

    goto :goto_0

    :cond_0
    move-object v1, p0

    move-object v0, p1

    :goto_0
    const/4 v2, 0x0

    iput v2, p0, Lsun/awt/geom/ChainEnd;->etag:I

    iput v2, p1, Lsun/awt/geom/ChainEnd;->etag:I

    iget-object v2, v0, Lsun/awt/geom/ChainEnd;->tail:Lsun/awt/geom/CurveLink;

    iget-object v3, v1, Lsun/awt/geom/ChainEnd;->head:Lsun/awt/geom/CurveLink;

    invoke-virtual {v2, v3}, Lsun/awt/geom/CurveLink;->setNext(Lsun/awt/geom/CurveLink;)V

    iget-object v2, v1, Lsun/awt/geom/ChainEnd;->tail:Lsun/awt/geom/CurveLink;

    iput-object v2, v0, Lsun/awt/geom/ChainEnd;->tail:Lsun/awt/geom/CurveLink;

    iget-object p0, p0, Lsun/awt/geom/ChainEnd;->partner:Lsun/awt/geom/ChainEnd;

    if-ne p0, p1, :cond_1

    iget-object p0, v0, Lsun/awt/geom/ChainEnd;->head:Lsun/awt/geom/CurveLink;

    return-object p0

    :cond_1
    iget-object p0, v1, Lsun/awt/geom/ChainEnd;->partner:Lsun/awt/geom/ChainEnd;

    iget-object p1, v0, Lsun/awt/geom/ChainEnd;->partner:Lsun/awt/geom/ChainEnd;

    iput-object p1, p0, Lsun/awt/geom/ChainEnd;->partner:Lsun/awt/geom/ChainEnd;

    iput-object p0, p1, Lsun/awt/geom/ChainEnd;->partner:Lsun/awt/geom/ChainEnd;

    iget-object v1, v0, Lsun/awt/geom/ChainEnd;->head:Lsun/awt/geom/CurveLink;

    invoke-virtual {v1}, Lsun/awt/geom/CurveLink;->getYTop()D

    move-result-wide v1

    iget-object v3, p0, Lsun/awt/geom/ChainEnd;->head:Lsun/awt/geom/CurveLink;

    invoke-virtual {v3}, Lsun/awt/geom/CurveLink;->getYTop()D

    move-result-wide v3

    cmpg-double v1, v1, v3

    if-gez v1, :cond_2

    iget-object p1, v0, Lsun/awt/geom/ChainEnd;->tail:Lsun/awt/geom/CurveLink;

    iget-object v1, p0, Lsun/awt/geom/ChainEnd;->head:Lsun/awt/geom/CurveLink;

    invoke-virtual {p1, v1}, Lsun/awt/geom/CurveLink;->setNext(Lsun/awt/geom/CurveLink;)V

    iget-object p1, v0, Lsun/awt/geom/ChainEnd;->head:Lsun/awt/geom/CurveLink;

    iput-object p1, p0, Lsun/awt/geom/ChainEnd;->head:Lsun/awt/geom/CurveLink;

    goto :goto_1

    :cond_2
    iget-object p0, p1, Lsun/awt/geom/ChainEnd;->tail:Lsun/awt/geom/CurveLink;

    iget-object v1, v0, Lsun/awt/geom/ChainEnd;->head:Lsun/awt/geom/CurveLink;

    invoke-virtual {p0, v1}, Lsun/awt/geom/CurveLink;->setNext(Lsun/awt/geom/CurveLink;)V

    iget-object p0, v0, Lsun/awt/geom/ChainEnd;->tail:Lsun/awt/geom/CurveLink;

    iput-object p0, p1, Lsun/awt/geom/ChainEnd;->tail:Lsun/awt/geom/CurveLink;

    :goto_1
    const/4 p0, 0x0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/InternalError;

    const-string p1, "Linking chains of the same type!"

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/InternalError;

    const-string p1, "ChainEnd linked more than once!"

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOtherEnd(Lsun/awt/geom/ChainEnd;)V
    .locals 0

    iput-object p1, p0, Lsun/awt/geom/ChainEnd;->partner:Lsun/awt/geom/ChainEnd;

    return-void
.end method
