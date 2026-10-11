.class public Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;


# instance fields
.field _master:Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;

.field a:Ljava/lang/Double;

.field deleted:Ljava/lang/Boolean;

.field x:Ljava/lang/Double;

.field y:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/RowType;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->isSetDel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->getDel()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->deleted:Ljava/lang/Boolean;

    :cond_0
    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->getCellArray()[Lcom/microsoft/schemas/office/visio/x2012/main/CellType;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p1, v2

    invoke-interface {v3}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, -0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "Y"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x2

    goto :goto_1

    :sswitch_1
    const-string v5, "X"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x1

    goto :goto_1

    :sswitch_2
    const-string v5, "A"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    move v6, v1

    :goto_1
    packed-switch v6, :pswitch_data_0

    new-instance p0, Lorg/apache/poi/ooxml/POIXMLException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid cell \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' in ArcTo row"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->y:Ljava/lang/Double;

    goto :goto_2

    :pswitch_1
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->x:Ljava/lang/Double;

    goto :goto_2

    :pswitch_2
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->a:Ljava/lang/Double;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_2
        0x58 -> :sswitch_1
        0x59 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addToPath(Ljava/awt/geom/Path2D$Double;Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V
    .locals 20

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->getDel()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Path2D;->getCurrentPoint()Ljava/awt/geom/Point2D;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->getX()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->getY()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->getA()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v1, v6, v8

    if-nez v1, :cond_1

    move-object/from16 v1, p1

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    return-void

    :cond_1
    move-object/from16 v1, p1

    invoke-virtual {v0}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v8

    invoke-virtual {v0}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v10

    sub-double v12, v4, v10

    sub-double v14, v8, v2

    mul-double v16, v12, v12

    mul-double v18, v14, v14

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    add-double/2addr v8, v2

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v8, v8, v18

    mul-double/2addr v12, v6

    div-double v12, v12, v16

    add-double/2addr v8, v12

    add-double/2addr v10, v4

    div-double v10, v10, v18

    mul-double/2addr v6, v14

    div-double v6, v6, v16

    add-double/2addr v10, v6

    const-wide/16 v12, 0x0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-wide v6, v8

    move-wide v8, v10

    move-wide v10, v12

    move-wide v12, v14

    move-object/from16 v14, p1

    invoke-static/range {v2 .. v14}, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->createEllipticalArc(DDDDDDLjava/awt/geom/Path2D$Double;)V

    return-void
.end method

.method public getA()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->a:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->a:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getDel()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->deleted:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->getDel()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getX()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->x:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->x:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getY()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->y:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->y:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public setupMaster(Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;)V
    .locals 0

    check-cast p1, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->x:Ljava/lang/Double;

    iget-object v2, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->y:Ljava/lang/Double;

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;->a:Ljava/lang/Double;

    filled-new-array {v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "ArcTo: x=%f; y=%f; a=%f"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
