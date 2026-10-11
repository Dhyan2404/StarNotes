.class Lcom/sun/org/apache/xalan/internal/processor/ProcessorGlobalParamDecl;
.super Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x1a5fc1ffd7b78096L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;-><init>()V

    return-void
.end method


# virtual methods
.method public appendAndPush(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->pushElemTemplateElement(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    return-void
.end method

.method public endElement(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getElemTemplateElement()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/templates/ElemParam;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getStylesheet()Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->appendChild(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getStylesheet()Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->setParam(Lcom/sun/org/apache/xalan/internal/templates/ElemParam;)V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;->endElement(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
