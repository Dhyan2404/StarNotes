.class public Lcom/sun/org/apache/xalan/internal/processor/ProcessorCharacters;
.super Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x77ce38d16b3ae8daL


# instance fields
.field private m_accumulator:Ljava/lang/StringBuffer;

.field protected m_firstBackPointer:Lorg/w3c/dom/Node;

.field private m_xslTextElement:Lcom/sun/org/apache/xalan/internal/templates/ElemText;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/ProcessorCharacters;->m_firstBackPointer:Lorg/w3c/dom/Node;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/ProcessorCharacters;->m_accumulator:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public characters(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;[CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/ProcessorCharacters;->m_accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2, p3, p4}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/processor/ProcessorCharacters;->m_firstBackPointer:Lorg/w3c/dom/Node;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    move-result-object p2

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/processor/ProcessorCharacters;->m_firstBackPointer:Lorg/w3c/dom/Node;

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getCurrentProcessor()Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;

    move-result-object p2

    if-eq p0, p2, :cond_1

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->pushProcessor(Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;)V

    :cond_1
    return-void
.end method

.method public endElement(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorCharacters;->startNonText(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getCurrentProcessor()Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;->endElement(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->popProcessor()Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;

    return-void
.end method

.method public setXslTextElement(Lcom/sun/org/apache/xalan/internal/templates/ElemText;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/processor/ProcessorCharacters;->m_xslTextElement:Lcom/sun/org/apache/xalan/internal/templates/ElemText;

    return-void
.end method

.method public startNonText(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getCurrentProcessor()Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->popProcessor()Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/ProcessorCharacters;->m_accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/processor/ProcessorCharacters;->m_xslTextElement:Lcom/sun/org/apache/xalan/internal/templates/ElemText;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/processor/ProcessorCharacters;->m_accumulator:Ljava/lang/StringBuffer;

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/utils/XMLCharacterRecognizer;->isWhiteSpace(Ljava/lang/StringBuffer;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->isSpacePreserve()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    new-instance v2, Lcom/sun/org/apache/xalan/internal/templates/ElemTextLiteral;

    invoke-direct {v2}, Lcom/sun/org/apache/xalan/internal/templates/ElemTextLiteral;-><init>()V

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/processor/ProcessorCharacters;->m_firstBackPointer:Lorg/w3c/dom/Node;

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getLocator()Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/processor/ProcessorCharacters;->m_xslTextElement:Lcom/sun/org/apache/xalan/internal/templates/ElemText;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/templates/ElemText;->getDisableOutputEscaping()Z

    move-result v3

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_0
    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xalan/internal/templates/ElemTextLiteral;->setDisableOutputEscaping(Z)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xalan/internal/templates/ElemTextLiteral;->setPreserveSpace(Z)V

    new-array v3, v0, [C

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/processor/ProcessorCharacters;->m_accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v1, v0, v3, v1}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xalan/internal/templates/ElemTextLiteral;->setChars([C)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getElemTemplateElement()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->appendChild(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/processor/ProcessorCharacters;->m_accumulator:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/processor/ProcessorCharacters;->m_firstBackPointer:Lorg/w3c/dom/Node;

    return-void
.end method
