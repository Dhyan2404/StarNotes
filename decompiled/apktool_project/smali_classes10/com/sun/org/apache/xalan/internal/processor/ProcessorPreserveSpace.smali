.class Lcom/sun/org/apache/xalan/internal/processor/ProcessorPreserveSpace;
.super Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x4d0fa3596d3c0356L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;-><init>()V

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

    move p5, p4

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p5, v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xalan/internal/templates/WhiteSpaceInfo;

    invoke-virtual {p0, p5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-direct {v0, v1, p4, p2}, Lcom/sun/org/apache/xalan/internal/templates/WhiteSpaceInfo;-><init>(Lcom/sun/org/apache/xpath/internal/XPath;ZLcom/sun/org/apache/xalan/internal/templates/Stylesheet;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->nextUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->setUid(I)V

    invoke-virtual {p2, v0}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->setPreserveSpaces(Lcom/sun/org/apache/xalan/internal/templates/WhiteSpaceInfo;)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/sun/org/apache/xalan/internal/processor/WhitespaceInfoPaths;->clearElements()V

    return-void
.end method
