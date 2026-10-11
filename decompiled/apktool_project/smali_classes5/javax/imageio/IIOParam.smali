.class public abstract Ljavax/imageio/IIOParam;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected controller:Ljavax/imageio/IIOParamController;

.field protected defaultController:Ljavax/imageio/IIOParamController;

.field protected destinationOffset:Ljava/awt/Point;

.field protected destinationType:Ljavax/imageio/ImageTypeSpecifier;

.field protected sourceBands:[I

.field protected sourceRegion:Ljava/awt/Rectangle;

.field protected sourceXSubsampling:I

.field protected sourceYSubsampling:I

.field protected subsamplingXOffset:I

.field protected subsamplingYOffset:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/imageio/IIOParam;->sourceRegion:Ljava/awt/Rectangle;

    const/4 v1, 0x1

    iput v1, p0, Ljavax/imageio/IIOParam;->sourceXSubsampling:I

    iput v1, p0, Ljavax/imageio/IIOParam;->sourceYSubsampling:I

    const/4 v1, 0x0

    iput v1, p0, Ljavax/imageio/IIOParam;->subsamplingXOffset:I

    iput v1, p0, Ljavax/imageio/IIOParam;->subsamplingYOffset:I

    iput-object v0, p0, Ljavax/imageio/IIOParam;->sourceBands:[I

    iput-object v0, p0, Ljavax/imageio/IIOParam;->destinationType:Ljavax/imageio/ImageTypeSpecifier;

    new-instance v2, Ljava/awt/Point;

    invoke-direct {v2, v1, v1}, Ljava/awt/Point;-><init>(II)V

    iput-object v2, p0, Ljavax/imageio/IIOParam;->destinationOffset:Ljava/awt/Point;

    iput-object v0, p0, Ljavax/imageio/IIOParam;->defaultController:Ljavax/imageio/IIOParamController;

    iput-object v0, p0, Ljavax/imageio/IIOParam;->controller:Ljavax/imageio/IIOParamController;

    return-void
.end method


# virtual methods
.method public activateController()Z
    .locals 1

    invoke-virtual {p0}, Ljavax/imageio/IIOParam;->hasController()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/imageio/IIOParam;->getController()Ljavax/imageio/IIOParamController;

    move-result-object v0

    invoke-interface {v0, p0}, Ljavax/imageio/IIOParamController;->activate(Ljavax/imageio/IIOParam;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "hasController() == false!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getController()Ljavax/imageio/IIOParamController;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/IIOParam;->controller:Ljavax/imageio/IIOParamController;

    return-object p0
.end method

.method public getDefaultController()Ljavax/imageio/IIOParamController;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/IIOParam;->defaultController:Ljavax/imageio/IIOParamController;

    return-object p0
.end method

.method public getDestinationOffset()Ljava/awt/Point;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/IIOParam;->destinationOffset:Ljava/awt/Point;

    invoke-virtual {p0}, Ljava/awt/geom/Point2D;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/awt/Point;

    return-object p0
.end method

.method public getDestinationType()Ljavax/imageio/ImageTypeSpecifier;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/IIOParam;->destinationType:Ljavax/imageio/ImageTypeSpecifier;

    return-object p0
.end method

.method public getSourceBands()[I
    .locals 0

    iget-object p0, p0, Ljavax/imageio/IIOParam;->sourceBands:[I

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public getSourceRegion()Ljava/awt/Rectangle;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/IIOParam;->sourceRegion:Ljava/awt/Rectangle;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/awt/Rectangle;

    return-object p0
.end method

.method public getSourceXSubsampling()I
    .locals 0

    iget p0, p0, Ljavax/imageio/IIOParam;->sourceXSubsampling:I

    return p0
.end method

.method public getSourceYSubsampling()I
    .locals 0

    iget p0, p0, Ljavax/imageio/IIOParam;->sourceYSubsampling:I

    return p0
.end method

.method public getSubsamplingXOffset()I
    .locals 0

    iget p0, p0, Ljavax/imageio/IIOParam;->subsamplingXOffset:I

    return p0
.end method

.method public getSubsamplingYOffset()I
    .locals 0

    iget p0, p0, Ljavax/imageio/IIOParam;->subsamplingYOffset:I

    return p0
.end method

.method public hasController()Z
    .locals 0

    iget-object p0, p0, Ljavax/imageio/IIOParam;->controller:Ljavax/imageio/IIOParamController;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setController(Ljavax/imageio/IIOParamController;)V
    .locals 0

    iput-object p1, p0, Ljavax/imageio/IIOParam;->controller:Ljavax/imageio/IIOParamController;

    return-void
.end method

.method public setDestinationOffset(Ljava/awt/Point;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/awt/Point;

    iput-object p1, p0, Ljavax/imageio/IIOParam;->destinationOffset:Ljava/awt/Point;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "destinationOffset == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDestinationType(Ljavax/imageio/ImageTypeSpecifier;)V
    .locals 0

    iput-object p1, p0, Ljavax/imageio/IIOParam;->destinationType:Ljavax/imageio/ImageTypeSpecifier;

    return-void
.end method

.method public setSourceBands([I)V
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Ljavax/imageio/IIOParam;->sourceBands:[I

    goto :goto_1

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :cond_1
    if-ge v1, v0, :cond_4

    aget v2, p1, v1

    if-ltz v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_1

    aget v4, p1, v3

    if-eq v2, v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Duplicate band value!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Band value < 0!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Ljavax/imageio/IIOParam;->sourceBands:[I

    :goto_1
    return-void
.end method

.method public setSourceRegion(Ljava/awt/Rectangle;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Ljavax/imageio/IIOParam;->sourceRegion:Ljava/awt/Rectangle;

    return-void

    :cond_0
    iget v0, p1, Ljava/awt/Rectangle;->x:I

    if-ltz v0, :cond_6

    iget v0, p1, Ljava/awt/Rectangle;->y:I

    if-ltz v0, :cond_5

    iget v0, p1, Ljava/awt/Rectangle;->width:I

    if-lez v0, :cond_4

    iget v1, p1, Ljava/awt/Rectangle;->height:I

    if-lez v1, :cond_3

    iget v2, p0, Ljavax/imageio/IIOParam;->subsamplingXOffset:I

    if-le v0, v2, :cond_2

    iget v0, p0, Ljavax/imageio/IIOParam;->subsamplingYOffset:I

    if-le v1, v0, :cond_1

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/awt/Rectangle;

    iput-object p1, p0, Ljavax/imageio/IIOParam;->sourceRegion:Ljava/awt/Rectangle;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "sourceRegion.height <= subsamplingYOffset!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "sourceRegion.width <= subsamplingXOffset!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sourceRegion.height <= 0!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sourceRegion.width <= 0!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sourceRegion.y < 0!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sourceRegion.x < 0!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSourceSubsampling(IIII)V
    .locals 2

    if-lez p1, :cond_5

    if-lez p2, :cond_4

    if-ltz p3, :cond_3

    if-ge p3, p1, :cond_3

    if-ltz p4, :cond_2

    if-ge p4, p2, :cond_2

    iget-object v0, p0, Ljavax/imageio/IIOParam;->sourceRegion:Ljava/awt/Rectangle;

    if-eqz v0, :cond_1

    iget v1, v0, Ljava/awt/Rectangle;->width:I

    if-ge p3, v1, :cond_0

    iget v0, v0, Ljava/awt/Rectangle;->height:I

    if-ge p4, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "region contains no pixels!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput p1, p0, Ljavax/imageio/IIOParam;->sourceXSubsampling:I

    iput p2, p0, Ljavax/imageio/IIOParam;->sourceYSubsampling:I

    iput p3, p0, Ljavax/imageio/IIOParam;->subsamplingXOffset:I

    iput p4, p0, Ljavax/imageio/IIOParam;->subsamplingYOffset:I

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "subsamplingYOffset out of range!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "subsamplingXOffset out of range!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sourceYSubsampling <= 0!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sourceXSubsampling <= 0!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
