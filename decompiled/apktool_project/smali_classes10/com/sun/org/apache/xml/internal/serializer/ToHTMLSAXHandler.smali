.class public final Lcom/sun/org/apache/xml/internal/serializer/ToHTMLSAXHandler;
.super Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;
.source "SourceFile"


# instance fields
.field private m_dtdHandled:Z

.field protected m_escapeSetting:Z


# direct methods
.method public constructor <init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;-><init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLSAXHandler;->m_dtdHandled:Z

    .line 3
    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLSAXHandler;->m_escapeSetting:Z

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLSAXHandler;->m_dtdHandled:Z

    .line 6
    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLSAXHandler;->m_escapeSetting:Z

    return-void
.end method

.method private resetToHTMLSAXHandler()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLSAXHandler;->m_escapeSetting:Z

    return-void
.end method


# virtual methods
.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public characters(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_charsBuff:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 3
    new-array v1, v1, [C

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_charsBuff:[C

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_charsBuff:[C

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 5
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_charsBuff:[C

    invoke-virtual {p0, p1, v2, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLSAXHandler;->characters([CII)V

    return-void
.end method

.method public characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLSAXHandler;->flushPending()V

    .line 7
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 8
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    .line 9
    invoke-super {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->fireCharEvent([CII)V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public closeStartTag()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_attributes:Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;

    const-string v3, ""

    invoke-interface {v1, v3, v0, v0, v2}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_attributes:Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;->clear()V

    return-void
.end method

.method public comment([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLSAXHandler;->flushPending()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v0, :cond_1

    invoke-super {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->fireCommentEvent([CII)V

    :cond_1
    return-void
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endDTD()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLSAXHandler;->flushPending()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->fireEndDoc()V

    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLSAXHandler;->flushPending()V

    .line 6
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    const-string v1, ""

    invoke-interface {v0, v1, p1, p1}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    .line 8
    invoke-super {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->fireEndElem(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLSAXHandler;->flushPending()V

    .line 2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz p1, :cond_0

    .line 4
    invoke-super {p0, p3}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->fireEndElem(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public flushPending()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_needToCallStartDocument:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->startDocumentInternal()V

    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_needToCallStartDocument:Z

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget-boolean v0, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLSAXHandler;->closeStartTag()V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    :cond_1
    return-void
.end method

.method public getOutputFormat()Ljava/util/Properties;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWriter()Ljava/io/Writer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public indent(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget-object v1, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iput-object p2, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLSAXHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLSAXHandler;->flushPending()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->fireEscapingEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public reset()Z
    .locals 1

    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->reset()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLSAXHandler;->resetToHTMLSAXHandler()V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public serialize(Lorg/w3c/dom/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    return-void
.end method

.method public setEscaping(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLSAXHandler;->m_escapeSetting:Z

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLSAXHandler;->m_escapeSetting:Z

    const-string v1, ""

    if-eqz p1, :cond_0

    const-string p1, "javax.xml.transform.enable-output-escaping"

    invoke-virtual {p0, p1, v1}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLSAXHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "javax.xml.transform.disable-output-escaping"

    invoke-virtual {p0, p1, v1}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLSAXHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0
.end method

.method public setIndent(Z)V
    .locals 0

    return-void
.end method

.method public setOutputFormat(Ljava/util/Properties;)V
    .locals 0

    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 0

    return-void
.end method

.method public setWriter(Ljava/io/Writer;)V
    .locals 0

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startElement(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0, v0, p1}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLSAXHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 5
    invoke-super {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLSAXHandler;->flushPending()V

    .line 7
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLSAXHandler;->m_dtdHandled:Z

    if-nez v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getDoctypeSystem()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getDoctypePublic()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 10
    :cond_0
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v2, :cond_1

    .line 11
    invoke-interface {v2, p3, v1, v0}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLSAXHandler;->m_dtdHandled:Z

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->push(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLSAXHandler;->flushPending()V

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 3
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 4
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLSAXHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLSAXHandler;->flushPending()V

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
