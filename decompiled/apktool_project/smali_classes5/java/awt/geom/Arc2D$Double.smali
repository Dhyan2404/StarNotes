.class public Ljava/awt/geom/Arc2D$Double;
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
    name = "Double"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xa1b5053db93f6d1L


# instance fields
.field public extent:D

.field public height:D

.field public start:D

.field public width:D

.field public x:D

.field public y:D


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ljava/awt/geom/Arc2D;-><init>(I)V

    return-void
.end method

.method public constructor <init>(DDDDDDI)V
    .locals 0

    .line 3
    invoke-direct {p0, p13}, Ljava/awt/geom/Arc2D;-><init>(I)V

    .line 4
    iput-wide p1, p0, Ljava/awt/geom/Arc2D$Double;->x:D

    .line 5
    iput-wide p3, p0, Ljava/awt/geom/Arc2D$Double;->y:D

    .line 6
    iput-wide p5, p0, Ljava/awt/geom/Arc2D$Double;->width:D

    .line 7
    iput-wide p7, p0, Ljava/awt/geom/Arc2D$Double;->height:D

    .line 8
    iput-wide p9, p0, Ljava/awt/geom/Arc2D$Double;->start:D

    .line 9
    iput-wide p11, p0, Ljava/awt/geom/Arc2D$Double;->extent:D

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/awt/geom/Arc2D;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/geom/Rectangle2D;DDI)V
    .locals 2

    .line 10
    invoke-direct {p0, p6}, Ljava/awt/geom/Arc2D;-><init>(I)V

    .line 11
    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    iput-wide v0, p0, Ljava/awt/geom/Arc2D$Double;->x:D

    .line 12
    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v0

    iput-wide v0, p0, Ljava/awt/geom/Arc2D$Double;->y:D

    .line 13
    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    iput-wide v0, p0, Ljava/awt/geom/Arc2D$Double;->width:D

    .line 14
    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v0

    iput-wide v0, p0, Ljava/awt/geom/Arc2D$Double;->height:D

    .line 15
    iput-wide p2, p0, Ljava/awt/geom/Arc2D$Double;->start:D

    .line 16
    iput-wide p4, p0, Ljava/awt/geom/Arc2D$Double;->extent:D

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

    iget-wide v0, p0, Ljava/awt/geom/Arc2D$Double;->extent:D

    return-wide v0
.end method

.method public getAngleStart()D
    .locals 2

    iget-wide v0, p0, Ljava/awt/geom/Arc2D$Double;->start:D

    return-wide v0
.end method

.method public getHeight()D
    .locals 2

    iget-wide v0, p0, Ljava/awt/geom/Arc2D$Double;->height:D

    return-wide v0
.end method

.method public getWidth()D
    .locals 2

    iget-wide v0, p0, Ljava/awt/geom/Arc2D$Double;->width:D

    return-wide v0
.end method

.method public getX()D
    .locals 2

    iget-wide v0, p0, Ljava/awt/geom/Arc2D$Double;->x:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    iget-wide v0, p0, Ljava/awt/geom/Arc2D$Double;->y:D

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 4

    iget-wide v0, p0, Ljava/awt/geom/Arc2D$Double;->width:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, p0, Ljava/awt/geom/Arc2D$Double;->height:D

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
    .locals 10

    new-instance v9, Ljava/awt/geom/Rectangle2D$Double;

    move-object v0, v9

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object v9
.end method

.method public setAngleExtent(D)V
    .locals 0

    iput-wide p1, p0, Ljava/awt/geom/Arc2D$Double;->extent:D

    return-void
.end method

.method public setAngleStart(D)V
    .locals 0

    iput-wide p1, p0, Ljava/awt/geom/Arc2D$Double;->start:D

    return-void
.end method

.method public setArc(DDDDDDI)V
    .locals 0

    invoke-virtual {p0, p13}, Ljava/awt/geom/Arc2D;->setArcType(I)V

    iput-wide p1, p0, Ljava/awt/geom/Arc2D$Double;->x:D

    iput-wide p3, p0, Ljava/awt/geom/Arc2D$Double;->y:D

    iput-wide p5, p0, Ljava/awt/geom/Arc2D$Double;->width:D

    iput-wide p7, p0, Ljava/awt/geom/Arc2D$Double;->height:D

    iput-wide p9, p0, Ljava/awt/geom/Arc2D$Double;->start:D

    iput-wide p11, p0, Ljava/awt/geom/Arc2D$Double;->extent:D

    return-void
.end method
