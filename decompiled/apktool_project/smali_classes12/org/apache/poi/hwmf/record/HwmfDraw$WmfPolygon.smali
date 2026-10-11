.class public Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolygon;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hwmf/record/HwmfRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwmf/record/HwmfDraw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WmfPolygon"
.end annotation


# instance fields
.field protected poly:Ljava/awt/geom/Path2D;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addClose()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public draw(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolygon;->poly:Ljava/awt/geom/Path2D;

    invoke-virtual {v0}, Ljava/awt/geom/Path2D;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/geom/Path2D;

    invoke-virtual {p1}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getProperties()Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getWindingRule()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/awt/geom/Path2D;->setWindingRule(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolygon;->getFillDrawStyle()Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;

    move-result-object p0

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;->handler:Ljava/util/function/BiConsumer;

    invoke-interface {p0, p1, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public getFillDrawStyle()Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;
    .locals 0

    sget-object p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;->FILL:Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/m2i;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/m2i;-><init>(Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolygon;)V

    const-string p0, "poly"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getPoly()Ljava/awt/geom/Path2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolygon;->poly:Ljava/awt/geom/Path2D;

    return-object p0
.end method

.method public getWmfRecordType()Lorg/apache/poi/hwmf/record/HwmfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfRecordType;->polygon:Lorg/apache/poi/hwmf/record/HwmfRecordType;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result p2

    new-instance p3, Ljava/awt/geom/Path2D$Double;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p2}, Ljava/awt/geom/Path2D$Double;-><init>(II)V

    iput-object p3, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolygon;->poly:Ljava/awt/geom/Path2D;

    :goto_0
    if-ge p4, p2, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result p3

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result v0

    if-nez p4, :cond_0

    iget-object v1, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolygon;->poly:Ljava/awt/geom/Path2D;

    int-to-double v2, p3

    int-to-double v4, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/awt/geom/Path2D;->moveTo(DD)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolygon;->poly:Ljava/awt/geom/Path2D;

    int-to-double v2, p3

    int-to-double v4, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/awt/geom/Path2D;->lineTo(DD)V

    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    if-lez p2, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolygon;->addClose()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolygon;->poly:Ljava/awt/geom/Path2D;

    invoke-virtual {p0}, Ljava/awt/geom/Path2D;->closePath()V

    :cond_2
    mul-int/lit8 p2, p2, 0x4

    add-int/lit8 p2, p2, 0x2

    return p2
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
