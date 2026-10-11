.class public Lorg/apache/poi/xdgf/usermodel/XDGFPageSheet;
.super Lorg/apache/poi/xdgf/usermodel/XDGFSheet;
.source "SourceFile"


# instance fields
.field _pageSheet:Lcom/microsoft/schemas/office/visio/x2012/main/PageSheetType;


# direct methods
.method public constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/PageSheetType;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;-><init>(Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPageSheet;->_pageSheet:Lcom/microsoft/schemas/office/visio/x2012/main/PageSheetType;

    return-void
.end method


# virtual methods
.method public getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/PageSheetType;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPageSheet;->_pageSheet:Lcom/microsoft/schemas/office/visio/x2012/main/PageSheetType;

    return-object p0
.end method

.method public bridge synthetic getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFPageSheet;->getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/PageSheetType;

    move-result-object p0

    return-object p0
.end method
