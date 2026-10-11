.class public Ljava/awt/geom/Arc2D$Float;
.super Ljava/awt/geom/Arc2D;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/awt/geom/Arc2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Float"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7eb772d1b8844ff6L


# instance fields
.field public extent:F

.field public height:F

.field public start:F

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ljava/awt/geom/Arc2D;-><init>(I)V

    return-void
.end method

.method public constructor <init>(FFFFFFI)V
    .locals 0

    .line 3
    invoke-direct {p0, p7}, Ljava/awt/geom/Arc2D;-><init>(I)V

    .line 4
    iput p1, p0, Ljava/awt/geom/Arc2D$Float;->x:F

    .line 5
    iput p2, p0, Ljava/awt/geom/Arc2D$Float;->y:F

    .line 6
    iput p3, p0, Ljava/awt/geom/Arc2D$Float;->width:F

    .line 7
    iput p4, p0, Ljava/awt/geom/Arc2D$Float;->height:F

    .line 8
    iput p5, p0, Ljava/awt/geom/Arc2D$Float;->start:F

    .line 9
    iput p6, p0, Ljava/awt/geom/Arc2D$Float;->extent:F

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/awt/geom/Arc2D;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/geom/Rectangle2D;FFI)V
    .locals 2

    .line 10
    invoke-direct {p0, p4}, Ljava/awt/geom/Arc2D;-><init>(I)V

    .line 11
    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    double-to-float p4, v0

    iput p4, p0, Ljava/awt/geom/Arc2D$Float;->x:F

    .line 12
    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v0

    double-to-float p4, v0

    iput p4, p0, Ljava/awt/geom/Arc2D$Float;->y:F

    .line 13
    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    double-to-float p4, v0

    iput p4, p0, Ljava/awt/geom/Arc2D$Float;->width:F

    .line 14
    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Ljava/awt/geom/Arc2D$Float;->height:F

    .line 15
    iput p2, p0, Ljava/awt/geom/Arc2D$Float;->start:F

    .line 16
    iput p3, p0, Ljava/awt/geom/Arc2D$Float;->extent:F

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readByte()B

    move-result p1

    invoke-virtual {p0, p1}, Ljava/awt/geom/Arc2D;->setArcType(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/InvalidObjectException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Ljava/awt/geom/Arc2D;->getArcType()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeByte(I)V

    return-void
.end method


# virtual methods
.method public getAngleExtent()D
    .locals 2

    iget p0, p0, Ljava/awt/geom/Arc2D$Float;->extent:F

    float-to-double v0, p0

    return-wide v0
.end method

.method public getAngleStart()D
    .locals 2

    iget p0, p0, Ljava/awt/geom/Arc2D$Float;->start:F

    float-to-double v0, p0

    return-wide v0
.end method

.method public getHeight()D
    .locals 2

    iget p0, p0, Ljava/awt/geom/Arc2D$Float;->height:F

    float-to-double v0, p0

    return-wide v0
.end method

.method public getWidth()D
    .locals 2

    iget p0, p0, Ljava/awt/geom/Arc2D$Float;->width:F

    float-to-double v0, p0

    return-wide v0
.end method

.method public getX()D
    .locals 2

    iget p0, p0, Ljava/awt/geom/Arc2D$Float;->x:F

    float-to-double v0, p0

    return-wide v0
.end method

.method public getY()D
    .locals 2

    iget p0, p0, Ljava/awt/geom/Arc2D$Float;->y:F

    float-to-double v0, p0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 4

    iget v0, p0, Ljava/awt/geom/Arc2D$Float;->width:F

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-lez v0, :cond_1

    iget p0, p0, Ljava/awt/geom/Arc2D$Float;->height:F

    float-to-double v0, p0

    cmpg-double p0, v0, v2

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public makeBounds(DDDD)Ljava/awt/geom/Rectangle2D;
    .locals 0

    new-instance p0, Ljava/awt/geom/Rectangle2D$Float;

    double-to-float p1, p1

    double-to-float p2, p3

    double-to-float p3, p5

    double-to-float p4, p7

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    return-object p0
.end method

.method public setAngleExtent(D)V
    .locals 0

    double-to-float p1, p1

    iput p1, p0, Ljava/awt/geom/Arc2D$Float;->extent:F

    return-void
.end method

.method public setAngleStart(D)V
    .locals 0

    double-to-float p1, p1

    iput p1, p0, Ljava/awt/geom/Arc2D$Float;->start:F

    return-void
.end method

.method public setArc(DDDDDDI)V
    .locals 0

    invoke-virtual {p0, p13}, Ljava/awt/geom/Arc2D;->setArcType(I)V

    double-to-float p1, p1

    iput p1, p0, Ljava/awt/geom/Arc2D$Float;->x:F

    double-to-float p1, p3

    iput p1, p0, Ljava/awt/geom/Arc2D$Float;->y:F

    double-to-float p1, p5

    iput p1, p0, Ljava/awt/geom/Arc2D$Float;->width:F

    double-to-float p1, p7

    iput p1, p0, Ljava/awt/geom/Arc2D$Float;->height:F

    double-to-float p1, p9

    iput p1, p0, Ljava/awt/geom/Arc2D$Float;->start:F

    double-to-float p1, p11

    iput p1, p0, Ljava/awt/geom/Arc2D$Float;->extent:F

    return-void
.end method
