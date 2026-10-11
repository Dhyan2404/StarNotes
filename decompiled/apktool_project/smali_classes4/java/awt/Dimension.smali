.class public Ljava/awt/Dimension;
.super Ljava/awt/geom/Dimension2D;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x418ed9d7ac5f4414L


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Ljava/awt/Dimension;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/awt/geom/Dimension2D;-><init>()V

    .line 4
    iput p1, p0, Ljava/awt/Dimension;->width:I

    .line 5
    iput p2, p0, Ljava/awt/Dimension;->height:I

    return-void
.end method

.method public constructor <init>(Ljava/awt/Dimension;)V
    .locals 1

    .line 2
    iget v0, p1, Ljava/awt/Dimension;->width:I

    iget p1, p1, Ljava/awt/Dimension;->height:I

    invoke-direct {p0, v0, p1}, Ljava/awt/Dimension;-><init>(II)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/awt/Dimension;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/awt/Dimension;

    iget v0, p0, Ljava/awt/Dimension;->width:I

    iget v2, p1, Ljava/awt/Dimension;->width:I

    if-ne v0, v2, :cond_0

    iget p0, p0, Ljava/awt/Dimension;->height:I

    iget p1, p1, Ljava/awt/Dimension;->height:I

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getHeight()D
    .locals 2

    iget p0, p0, Ljava/awt/Dimension;->height:I

    int-to-double v0, p0

    return-wide v0
.end method

.method public getSize()Ljava/awt/Dimension;
    .locals 2

    new-instance v0, Ljava/awt/Dimension;

    iget v1, p0, Ljava/awt/Dimension;->width:I

    iget p0, p0, Ljava/awt/Dimension;->height:I

    invoke-direct {v0, v1, p0}, Ljava/awt/Dimension;-><init>(II)V

    return-object v0
.end method

.method public getWidth()D
    .locals 2

    iget p0, p0, Ljava/awt/Dimension;->width:I

    int-to-double v0, p0

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Ljava/awt/Dimension;->width:I

    iget p0, p0, Ljava/awt/Dimension;->height:I

    add-int/2addr p0, v0

    add-int/lit8 v1, p0, 0x1

    mul-int/2addr p0, v1

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p0, v0

    return p0
.end method

.method public setSize(DD)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Ljava/awt/Dimension;->width:I

    .line 2
    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Ljava/awt/Dimension;->height:I

    return-void
.end method

.method public setSize(II)V
    .locals 0

    .line 4
    iput p1, p0, Ljava/awt/Dimension;->width:I

    .line 5
    iput p2, p0, Ljava/awt/Dimension;->height:I

    return-void
.end method

.method public setSize(Ljava/awt/Dimension;)V
    .locals 1

    .line 3
    iget v0, p1, Ljava/awt/Dimension;->width:I

    iget p1, p1, Ljava/awt/Dimension;->height:I

    invoke-virtual {p0, v0, p1}, Ljava/awt/Dimension;->setSize(II)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/awt/Dimension;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ljava/awt/Dimension;->height:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
