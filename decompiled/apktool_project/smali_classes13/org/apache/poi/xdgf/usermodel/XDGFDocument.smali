.class public Lorg/apache/poi/xdgf/usermodel/XDGFDocument;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field _defaultFillStyle:J

.field _defaultGuideStyle:J

.field _defaultLineStyle:J

.field _defaultTextStyle:J

.field protected _document:Lcom/microsoft/schemas/office/visio/x2012/main/VisioDocumentType;

.field _styleSheets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/VisioDocumentType;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_styleSheets:Ljava/util/Map;

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_document:Lcom/microsoft/schemas/office/visio/x2012/main/VisioDocumentType;

    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/VisioDocumentType;->isSetDocumentSettings()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_document:Lcom/microsoft/schemas/office/visio/x2012/main/VisioDocumentType;

    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/VisioDocumentType;->getDocumentSettings()Lcom/microsoft/schemas/office/visio/x2012/main/DocumentSettingsType;

    move-result-object p1

    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/DocumentSettingsType;->isSetDefaultFillStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/DocumentSettingsType;->getDefaultFillStyle()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_defaultFillStyle:J

    :cond_0
    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/DocumentSettingsType;->isSetDefaultGuideStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/DocumentSettingsType;->getDefaultGuideStyle()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_defaultGuideStyle:J

    :cond_1
    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/DocumentSettingsType;->isSetDefaultLineStyle()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/DocumentSettingsType;->getDefaultLineStyle()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_defaultLineStyle:J

    :cond_2
    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/DocumentSettingsType;->isSetDefaultTextStyle()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/DocumentSettingsType;->getDefaultTextStyle()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_defaultTextStyle:J

    :cond_3
    iget-object p1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_document:Lcom/microsoft/schemas/office/visio/x2012/main/VisioDocumentType;

    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/VisioDocumentType;->isSetStyleSheets()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_document:Lcom/microsoft/schemas/office/visio/x2012/main/VisioDocumentType;

    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/VisioDocumentType;->getStyleSheets()Lcom/microsoft/schemas/office/visio/x2012/main/StyleSheetsType;

    move-result-object p1

    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/StyleSheetsType;->getStyleSheetArray()[Lcom/microsoft/schemas/office/visio/x2012/main/StyleSheetType;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p1, v1

    iget-object v3, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_styleSheets:Ljava/util/Map;

    invoke-interface {v2}, Lcom/microsoft/schemas/office/visio/x2012/main/StyleSheetType;->getID()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    invoke-direct {v5, v2, p0}, Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;-><init>(Lcom/microsoft/schemas/office/visio/x2012/main/StyleSheetType;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    new-instance p0, Lorg/apache/poi/ooxml/POIXMLException;

    const-string p1, "Document settings not found"

    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getDefaultFillStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_defaultFillStyle:J

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->getStyleById(J)Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/poi/ooxml/POIXMLException;

    const-string v0, "No default fill style found!"

    invoke-direct {p0, v0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDefaultGuideStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_defaultGuideStyle:J

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->getStyleById(J)Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/poi/ooxml/POIXMLException;

    const-string v0, "No default guide style found!"

    invoke-direct {p0, v0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDefaultLineStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_defaultLineStyle:J

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->getStyleById(J)Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/poi/ooxml/POIXMLException;

    const-string v0, "No default line style found!"

    invoke-direct {p0, v0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDefaultTextStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_defaultTextStyle:J

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->getStyleById(J)Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/poi/ooxml/POIXMLException;

    const-string v0, "No default text style found!"

    invoke-direct {p0, v0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getStyleById(J)Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_styleSheets:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    return-object p0
.end method

.method public getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/VisioDocumentType;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_document:Lcom/microsoft/schemas/office/visio/x2012/main/VisioDocumentType;

    return-object p0
.end method
