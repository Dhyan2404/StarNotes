.class public abstract Lorg/apache/poi/xdgf/usermodel/XDGFSheet;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected _cells:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xdgf/usermodel/XDGFCell;",
            ">;"
        }
    .end annotation
.end field

.field protected _character:Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;

.field protected _document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

.field protected _geometry:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Long;",
            "Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;",
            ">;"
        }
    .end annotation
.end field

.field protected _sections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;",
            ">;"
        }
    .end annotation
.end field

.field protected _sheet:Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;


# direct methods
.method public constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_sections:Ljava/util/Map;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_geometry:Ljava/util/SortedMap;

    :try_start_0
    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_sheet:Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;

    iput-object p2, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;->getCellArray()[Lcom/microsoft/schemas/office/visio/x2012/main/CellType;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    iget-object v4, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    invoke-interface {v3}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getN()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    invoke-interface {v3}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getN()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/apache/poi/xdgf/usermodel/XDGFCell;

    invoke-direct {v6, v3}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;-><init>(Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/poi/ooxml/POIXMLException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected duplicate cell "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/microsoft/schemas/office/visio/x2012/main/CellType;->getN()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;->getSectionArray()[Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;

    move-result-object p1

    array-length p2, p1

    :goto_1
    if-ge v1, p2, :cond_4

    aget-object v0, p1, v1

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;->getN()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Geometry"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_geometry:Ljava/util/SortedMap;

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;->getIX()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;

    invoke-direct {v4, v0, p0}, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;-><init>(Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;Lorg/apache/poi/xdgf/usermodel/XDGFSheet;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const-string v3, "Character"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v2, Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;

    invoke-direct {v2, v0, p0}, Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;-><init>(Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;Lorg/apache/poi/xdgf/usermodel/XDGFSheet;)V

    iput-object v2, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_character:Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_sections:Ljava/util/Map;

    invoke-static {v0, p0}, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;->load(Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;Lorg/apache/poi/xdgf/usermodel/XDGFSheet;)Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/poi/ooxml/POIXMLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->wrap(Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLException;)Lorg/apache/poi/ooxml/POIXMLException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public getCell(Ljava/lang/String;)Lorg/apache/poi/xdgf/usermodel/XDGFCell;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xdgf/usermodel/XDGFCell;

    return-object p0
.end method

.method public getDocument()Lorg/apache/poi/xdgf/usermodel/XDGFDocument;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    return-object p0
.end method

.method public getFillStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_sheet:Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;->isSetFillStyle()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_sheet:Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;

    invoke-interface {p0}, Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;->getFillStyle()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->getStyleById(J)Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object p0

    return-object p0
.end method

.method public getFontColor()Ljava/awt/Color;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_character:Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;->getFontColor()Ljava/awt/Color;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getTextStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getFontColor()Ljava/awt/Color;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFontSize()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_character:Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/section/CharacterSection;->getFontSize()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getTextStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getFontSize()Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLineCap()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "LineCap"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetInteger(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getLineStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getLineCap()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLineColor()Ljava/awt/Color;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "LineColor"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/awt/Color;->decode(Ljava/lang/String;)Ljava/awt/Color;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getLineStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getLineColor()Ljava/awt/Color;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLinePattern()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "LinePattern"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetInteger(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getLineStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getLinePattern()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLineStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_sheet:Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;->isSetLineStyle()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_sheet:Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;

    invoke-interface {p0}, Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;->getLineStyle()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->getStyleById(J)Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object p0

    return-object p0
.end method

.method public getLineWeight()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "LineWeight"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getLineStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getLineWeight()Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSection(Ljava/lang/String;)Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_sections:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;

    return-object p0
.end method

.method public getTextStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_sheet:Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;->isSetTextStyle()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_sheet:Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;

    invoke-interface {p0}, Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;->getTextStyle()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->getStyleById(J)Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object p0

    return-object p0
.end method

.method public abstract getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;
.end method
