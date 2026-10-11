.class public Lcom/sun/org/apache/xalan/internal/processor/ProcessorText;
.super Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x47c058296f0c4383L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;-><init>()V

    return-void
.end method


# virtual methods
.method public appendAndPush(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string p0, "text()"

    const-string v0, "text"

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p0, v0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getProcessorFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/processor/ProcessorCharacters;

    move-object v0, p2

    check-cast v0, Lcom/sun/org/apache/xalan/internal/templates/ElemText;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorCharacters;->setXslTextElement(Lcom/sun/org/apache/xalan/internal/templates/ElemText;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getElemTemplateElement()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->appendChild(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public endElement(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string p0, "text()"

    const-string p2, "text"

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p0, p2}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getProcessorFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/processor/ProcessorCharacters;

    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorCharacters;->setXslTextElement(Lcom/sun/org/apache/xalan/internal/templates/ElemText;)V

    return-void
.end method
