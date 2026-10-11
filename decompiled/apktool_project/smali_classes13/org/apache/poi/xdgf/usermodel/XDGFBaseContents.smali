.class public Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;
.super Lorg/apache/poi/xdgf/xml/XDGFXMLDocumentPart;
.source "SourceFile"


# instance fields
.field protected _connections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xdgf/usermodel/XDGFConnection;",
            ">;"
        }
    .end annotation
.end field

.field protected _pageContents:Lcom/microsoft/schemas/office/visio/x2012/main/PageContentsType;

.field protected _shapes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/apache/poi/xdgf/usermodel/XDGFShape;",
            ">;"
        }
    .end annotation
.end field

.field protected _toplevelShapes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xdgf/usermodel/XDGFShape;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xdgf/xml/XDGFXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_toplevelShapes:Ljava/util/List;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_shapes:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_connections:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addToShapeIndex(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_shapes:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getID()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getShapes()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->addToShapeIndex(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public draw(Ljava/awt/Graphics2D;)V
    .locals 1

    new-instance v0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;

    invoke-direct {v0, p1}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;-><init>(Ljava/awt/Graphics2D;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->visitShapes(Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;)V

    return-void
.end method

.method public getConnections()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xdgf/usermodel/XDGFConnection;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_connections:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getShapeById(J)Lorg/apache/poi/xdgf/usermodel/XDGFShape;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_shapes:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    return-object p0
.end method

.method public getShapes()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/poi/xdgf/usermodel/XDGFShape;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_shapes:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getShapesMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/apache/poi/xdgf/usermodel/XDGFShape;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_shapes:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getTopLevelShapes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xdgf/usermodel/XDGFShape;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_toplevelShapes:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/PageContentsType;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_pageContents:Lcom/microsoft/schemas/office/visio/x2012/main/PageContentsType;

    return-object p0
.end method

.method public onDocumentRead()V
    .locals 8

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_pageContents:Lcom/microsoft/schemas/office/visio/x2012/main/PageContentsType;

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/PageContentsType;->isSetShapes()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_pageContents:Lcom/microsoft/schemas/office/visio/x2012/main/PageContentsType;

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/PageContentsType;->getShapes()Lcom/microsoft/schemas/office/visio/x2012/main/ShapesType;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/ShapesType;->getShapeArray()[Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    new-instance v5, Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    iget-object v6, p0, Lorg/apache/poi/xdgf/xml/XDGFXMLDocumentPart;->_document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    invoke-direct {v5, v4, p0, v6}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;-><init>(Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V

    iget-object v4, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_toplevelShapes:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v5}, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->addToShapeIndex(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_pageContents:Lcom/microsoft/schemas/office/visio/x2012/main/PageContentsType;

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/PageContentsType;->isSetConnects()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_pageContents:Lcom/microsoft/schemas/office/visio/x2012/main/PageContentsType;

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/PageContentsType;->getConnects()Lcom/microsoft/schemas/office/visio/x2012/main/ConnectsType;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/ConnectsType;->getConnectArray()[Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;

    move-result-object v0

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    iget-object v4, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_shapes:Ljava/util/Map;

    invoke-interface {v3}, Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;->getFromSheet()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    iget-object v5, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_shapes:Ljava/util/Map;

    invoke-interface {v3}, Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;->getToSheet()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v4, :cond_2

    if-eqz v5, :cond_1

    iget-object v6, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_connections:Ljava/util/List;

    new-instance v7, Lorg/apache/poi/xdgf/usermodel/XDGFConnection;

    invoke-direct {v7, v3, v4, v5}, Lorg/apache/poi/xdgf/usermodel/XDGFConnection;-><init>(Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;Lorg/apache/poi/xdgf/usermodel/XDGFShape;Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/apache/poi/ooxml/POIXMLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "; Connect; Invalid to id: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;->getToSheet()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lorg/apache/poi/ooxml/POIXMLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "; Connect; Invalid from id: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;->getFromSheet()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public visitShapes(Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_toplevelShapes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    new-instance v2, Ljava/awt/geom/AffineTransform;

    invoke-direct {v2}, Ljava/awt/geom/AffineTransform;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->visitShapes(Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;Ljava/awt/geom/AffineTransform;I)V
    :try_end_0
    .catch Lorg/apache/poi/xdgf/usermodel/shape/exceptions/StopVisiting; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/poi/ooxml/POIXMLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p0, p1}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->wrap(Lorg/apache/poi/ooxml/POIXMLDocumentPart;Lorg/apache/poi/ooxml/POIXMLException;)Lorg/apache/poi/ooxml/POIXMLException;

    move-result-object p0

    throw p0

    :catch_1
    :cond_0
    return-void
.end method
