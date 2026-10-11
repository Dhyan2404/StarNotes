.class public Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;


# instance fields
.field _master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;

.field a:Ljava/lang/Double;

.field b:Ljava/lang/Double;

.field c:Ljava/lang/Double;

.field d:Ljava/lang/Double;

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

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->deleted:Ljava/lang/Boolean;

    :cond_0
    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->getCellArray()[Lcom/microsoft/schemas/office/visio/x2012/main/CellType;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_7

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
    const/4 v6, 0x5

    goto :goto_1

    :sswitch_1
    const-string v5, "X"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x4

    goto :goto_1

    :sswitch_2
    const-string v5, "D"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x3

    goto :goto_1

    :sswitch_3
    const-string v5, "C"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v6, 0x2

    goto :goto_1

    :sswitch_4
    const-string v5, "B"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    const/4 v6, 0x1

    goto :goto_1

    :sswitch_5
    const-string v5, "A"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_1

    :cond_6
    move v6, v1

    :goto_1
    packed-switch v6, :pswitch_data_0

    new-instance p0, Lorg/apache/poi/ooxml/POIXMLException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid cell \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' in RelEllipticalArcTo row"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->y:Ljava/lang/Double;

    goto :goto_2

    :pswitch_1
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->x:Ljava/lang/Double;

    goto :goto_2

    :pswitch_2
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->d:Ljava/lang/Double;

    goto :goto_2

    :pswitch_3
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->c:Ljava/lang/Double;

    goto :goto_2

    :pswitch_4
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->b:Ljava/lang/Double;

    goto :goto_2

    :pswitch_5
    invoke-static {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->parseDoubleValue(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->a:Ljava/lang/Double;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    return-void

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_5
        0x42 -> :sswitch_4
        0x43 -> :sswitch_3
        0x44 -> :sswitch_2
        0x58 -> :sswitch_1
        0x59 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addToPath(Ljava/awt/geom/Path2D$Double;Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V
    .locals 19

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->getDel()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getWidth()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getHeight()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->getX()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double v6, v4, v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->getY()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double v8, v4, v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->getA()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double v10, v4, v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->getB()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    mul-double v12, v0, v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->getC()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->getD()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    move-object/from16 v18, p1

    invoke-static/range {v6 .. v18}, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->createEllipticalArc(DDDDDDLjava/awt/geom/Path2D$Double;)V

    return-void
.end method

.method public getA()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->a:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->a:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getB()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->b:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->b:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getC()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->c:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->c:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getD()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->d:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->d:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getDel()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->deleted:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->getDel()Z

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

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->x:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->x:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getY()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->y:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->y:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public setupMaster(Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;)V
    .locals 0

    check-cast p1, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;

    return-void
.end method
