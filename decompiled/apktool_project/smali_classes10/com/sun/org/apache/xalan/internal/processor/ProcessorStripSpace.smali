.class Lcom/sun/org/apache/xalan/internal/processor/ProcessorStripSpace;
.super Lcom/sun/org/apache/xalan/internal/processor/ProcessorPreserveSpace;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x4da3a1ec5b269f47L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorPreserveSpace;-><init>()V

    return-void
.end method


# virtual methods
.method public startElement(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getStylesheet()Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    move-result-object p2

    new-instance p3, Lcom/sun/org/apache/xalan/internal/processor/WhitespaceInfoPaths;

    invoke-direct {p3, p2}, Lcom/sun/org/apache/xalan/internal/processor/WhitespaceInfoPaths;-><init>(Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;)V

    invoke-virtual {p0, p1, p4, p5, p3}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;->setPropertiesFromAttributes(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    invoke-virtual {p3}, Lcom/sun/org/apache/xalan/internal/processor/WhitespaceInfoPaths;->getElements()Ljava/util/Vector;

    move-result-object p0

    const/4 p4, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p5

    if-ge p4, p5, :cond_0

    new-instance p5, Lcom/sun/org/apache/xalan/internal/templates/WhiteSpaceInfo;

    invoke-virtual {p0, p4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xpath/internal/XPath;

    const/4 v1, 0x1

    invoke-direct {p5, v0, v1, p2}, Lcom/sun/org/apache/xalan/internal/templates/WhiteSpaceInfo;-><init>(Lcom/sun/org/apache/xpath/internal/XPath;ZLcom/sun/org/apache/xalan/internal/templates/Stylesheet;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->nextUid()I

    move-result v0

    invoke-virtual {p5, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->setUid(I)V

    invoke-virtual {p2, p5}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->setStripSpaces(Lcom/sun/org/apache/xalan/internal/templates/WhiteSpaceInfo;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/sun/org/apache/xalan/internal/processor/WhitespaceInfoPaths;->clearElements()V

    return-void
.end method
