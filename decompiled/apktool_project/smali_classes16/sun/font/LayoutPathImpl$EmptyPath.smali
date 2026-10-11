.class public Lsun/font/LayoutPathImpl$EmptyPath;
.super Lsun/font/LayoutPathImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/font/LayoutPathImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmptyPath"
.end annotation


# instance fields
.field private tx:Ljava/awt/geom/AffineTransform;


# direct methods
.method public constructor <init>(Ljava/awt/geom/AffineTransform;)V
    .locals 0

    invoke-direct {p0}, Lsun/font/LayoutPathImpl;-><init>()V

    iput-object p1, p0, Lsun/font/LayoutPathImpl$EmptyPath;->tx:Ljava/awt/geom/AffineTransform;

    return-void
.end method


# virtual methods
.method public end()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public length()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public mapShape(Ljava/awt/Shape;)Ljava/awt/Shape;
    .locals 0

    iget-object p0, p0, Lsun/font/LayoutPathImpl$EmptyPath;->tx:Ljava/awt/geom/AffineTransform;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public pathToPoint(Ljava/awt/geom/Point2D;ZLjava/awt/geom/Point2D;)V
    .locals 0

    iget-object p0, p0, Lsun/font/LayoutPathImpl$EmptyPath;->tx:Ljava/awt/geom/AffineTransform;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p3}, Ljava/awt/geom/AffineTransform;->transform(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p1}, Ljava/awt/geom/Point2D;->setLocation(Ljava/awt/geom/Point2D;)V

    :goto_0
    return-void
.end method

.method public pointToPath(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Z
    .locals 2

    invoke-virtual {p2, p1}, Ljava/awt/geom/Point2D;->setLocation(Ljava/awt/geom/Point2D;)V

    iget-object p0, p0, Lsun/font/LayoutPathImpl$EmptyPath;->tx:Ljava/awt/geom/AffineTransform;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/awt/geom/AffineTransform;->inverseTransform(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;
    :try_end_0
    .catch Ljava/awt/geom/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-virtual {p2}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public start()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method
