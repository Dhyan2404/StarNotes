.class public Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolyPolygon;
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
    name = "WmfPolyPolygon"
.end annotation


# instance fields
.field protected final polyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/awt/geom/Path2D;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolyPolygon;->polyList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public draw(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolyPolygon;->getShape(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)Ljava/awt/Shape;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lorg/apache/poi/hwmf/record/HwmfDraw$1;->$SwitchMap$org$apache$poi$hwmf$draw$HwmfGraphics$FillDrawStyle:[I

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolyPolygon;->getFillDrawStyle()Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->fill(Ljava/awt/Shape;)V

    invoke-virtual {p1, v0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->draw(Ljava/awt/Shape;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->fill(Ljava/awt/Shape;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->draw(Ljava/awt/Shape;)V

    :goto_0
    return-void
.end method

.method public getFillDrawStyle()Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;
    .locals 0

    sget-object p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;->FILL_DRAW:Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;

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

    new-instance v0, Lcom/sunia/HTREnginev2/l2i;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/l2i;-><init>(Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolyPolygon;)V

    const-string p0, "polyList"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getPolyList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/awt/geom/Path2D;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolyPolygon;->polyList:Ljava/util/List;

    return-object p0
.end method

.method public getShape(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)Ljava/awt/Shape;
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getProperties()Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getWindingRule()I

    move-result p1

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolyPolygon;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolyPolygon;->polyList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/awt/geom/Path2D;

    invoke-virtual {v1}, Ljava/awt/geom/Path2D;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/awt/geom/Path2D;

    invoke-virtual {v1, p1}, Ljava/awt/geom/Path2D;->setWindingRule(I)V

    new-instance v2, Ljava/awt/geom/Area;

    invoke-direct {v2, v1}, Ljava/awt/geom/Area;-><init>(Ljava/awt/Shape;)V

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Ljava/awt/geom/Area;->exclusiveOr(Ljava/awt/geom/Area;)V

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    new-instance v0, Ljava/awt/geom/Path2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Path2D$Double;-><init>()V

    invoke-virtual {v0, p1}, Ljava/awt/geom/Path2D;->setWindingRule(I)V

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolyPolygon;->polyList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/awt/geom/Path2D;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/awt/geom/Path2D;->append(Ljava/awt/Shape;Z)V

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public getWmfRecordType()Lorg/apache/poi/hwmf/record/HwmfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfRecordType;->polyPolygon:Lorg/apache/poi/hwmf/record/HwmfRecordType;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JI)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result p2

    new-array p3, p2, [I

    const/4 p4, 0x2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result v2

    aput v2, p3, v1

    add-int/lit8 p4, p4, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    if-ge v1, p2, :cond_3

    aget v2, p3, v1

    new-instance v3, Ljava/awt/geom/Path2D$Double;

    invoke-direct {v3, v0, v2}, Ljava/awt/geom/Path2D$Double;-><init>(II)V

    move v4, v0

    :goto_2
    if-ge v4, v2, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result v5

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result v6

    add-int/lit8 p4, p4, 0x4

    if-nez v4, :cond_1

    int-to-double v7, v5

    int-to-double v5, v6

    invoke-virtual {v3, v7, v8, v5, v6}, Ljava/awt/geom/Path2D;->moveTo(DD)V

    goto :goto_3

    :cond_1
    int-to-double v7, v5

    int-to-double v5, v6

    invoke-virtual {v3, v7, v8, v5, v6}, Ljava/awt/geom/Path2D;->lineTo(DD)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/awt/geom/Path2D;->closePath()V

    iget-object v2, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolyPolygon;->polyList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return p4
.end method

.method public isClosed()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
