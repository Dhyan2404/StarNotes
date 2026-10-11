.class public final Lsun/font/DelegatingShape;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/Shape;


# instance fields
.field delegate:Ljava/awt/Shape;


# direct methods
.method public constructor <init>(Ljava/awt/Shape;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/font/DelegatingShape;->delegate:Ljava/awt/Shape;

    return-void
.end method


# virtual methods
.method public contains(DD)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lsun/font/DelegatingShape;->delegate:Ljava/awt/Shape;

    invoke-interface {p0, p1, p2, p3, p4}, Ljava/awt/Shape;->contains(DD)Z

    move-result p0

    return p0
.end method

.method public contains(DDDD)Z
    .locals 9

    move-object v0, p0

    .line 3
    iget-object v0, v0, Lsun/font/DelegatingShape;->delegate:Ljava/awt/Shape;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-interface/range {v0 .. v8}, Ljava/awt/Shape;->contains(DDDD)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/awt/geom/Point2D;)Z
    .locals 0

    .line 2
    iget-object p0, p0, Lsun/font/DelegatingShape;->delegate:Ljava/awt/Shape;

    invoke-interface {p0, p1}, Ljava/awt/Shape;->contains(Ljava/awt/geom/Point2D;)Z

    move-result p0

    return p0
.end method

.method public contains(Ljava/awt/geom/Rectangle2D;)Z
    .locals 0

    .line 4
    iget-object p0, p0, Lsun/font/DelegatingShape;->delegate:Ljava/awt/Shape;

    invoke-interface {p0, p1}, Ljava/awt/Shape;->contains(Ljava/awt/geom/Rectangle2D;)Z

    move-result p0

    return p0
.end method

.method public getBounds()Ljava/awt/Rectangle;
    .locals 0

    iget-object p0, p0, Lsun/font/DelegatingShape;->delegate:Ljava/awt/Shape;

    invoke-interface {p0}, Ljava/awt/Shape;->getBounds()Ljava/awt/Rectangle;

    move-result-object p0

    return-object p0
.end method

.method public getBounds2D()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lsun/font/DelegatingShape;->delegate:Ljava/awt/Shape;

    invoke-interface {p0}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public getPathIterator(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/PathIterator;
    .locals 0

    .line 1
    iget-object p0, p0, Lsun/font/DelegatingShape;->delegate:Ljava/awt/Shape;

    invoke-interface {p0, p1}, Ljava/awt/Shape;->getPathIterator(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/PathIterator;

    move-result-object p0

    return-object p0
.end method

.method public getPathIterator(Ljava/awt/geom/AffineTransform;D)Ljava/awt/geom/PathIterator;
    .locals 0

    .line 2
    iget-object p0, p0, Lsun/font/DelegatingShape;->delegate:Ljava/awt/Shape;

    invoke-interface {p0, p1, p2, p3}, Ljava/awt/Shape;->getPathIterator(Ljava/awt/geom/AffineTransform;D)Ljava/awt/geom/PathIterator;

    move-result-object p0

    return-object p0
.end method

.method public intersects(DDDD)Z
    .locals 9

    move-object v0, p0

    .line 1
    iget-object v0, v0, Lsun/font/DelegatingShape;->delegate:Ljava/awt/Shape;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-interface/range {v0 .. v8}, Ljava/awt/Shape;->intersects(DDDD)Z

    move-result v0

    return v0
.end method

.method public intersects(Ljava/awt/geom/Rectangle2D;)Z
    .locals 0

    .line 2
    iget-object p0, p0, Lsun/font/DelegatingShape;->delegate:Ljava/awt/Shape;

    invoke-interface {p0, p1}, Ljava/awt/Shape;->intersects(Ljava/awt/geom/Rectangle2D;)Z

    move-result p0

    return p0
.end method
