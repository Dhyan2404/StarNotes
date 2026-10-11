.class public abstract Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;
.super Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;
.source "SourceFile"


# instance fields
.field protected m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

.field protected m_saxHandler:Lorg/xml/sax/ContentHandler;

.field private m_shouldGenerateNSAttribute:Z

.field protected m_state:Lcom/sun/org/apache/xml/internal/serializer/TransformStateSetter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->m_shouldGenerateNSAttribute:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->m_state:Lcom/sun/org/apache/xml/internal/serializer/TransformStateSetter;

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;-><init>()V

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->m_shouldGenerateNSAttribute:Z

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->m_state:Lcom/sun/org/apache/xml/internal/serializer/TransformStateSetter;

    .line 13
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 14
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->setEncoding(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->m_shouldGenerateNSAttribute:Z

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->m_state:Lcom/sun/org/apache/xml/internal/serializer/TransformStateSetter;

    .line 7
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 8
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->setLexHandler(Lorg/xml/sax/ext/LexicalHandler;)V

    .line 9
    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->setEncoding(Ljava/lang/String;)V

    return-void
.end method

.method private resetToSAXHandler()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->m_state:Lcom/sun/org/apache/xml/internal/serializer/TransformStateSetter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->m_shouldGenerateNSAttribute:Z

    return-void
.end method


# virtual methods
.method public addUniqueAttribute(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-interface {p0, p1, v2, v0}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    return-void
.end method

.method public characters(Lorg/w3c/dom/Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->m_state:Lcom/sun/org/apache/xml/internal/serializer/TransformStateSetter;

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0, p1}, Lcom/sun/org/apache/xml/internal/serializer/TransformStateSetter;->setCurrentNode(Lorg/w3c/dom/Node;)V

    .line 8
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->characters(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public closeCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public closeStartTag()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public comment(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->flushPending()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_charsBuff:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_charsBuff:[C

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_charsBuff:[C

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_charsBuff:[C

    invoke-interface {p1, v1, v2, v0}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_charsBuff:[C

    invoke-super {p0, p1, v2, v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->fireCommentEvent([CII)V

    :cond_1
    return-void
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->error(Lorg/xml/sax/SAXParseException;)V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    instance-of v0, p0, Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/xml/sax/ErrorHandler;

    invoke-interface {p0, p1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    :cond_0
    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->fatalError(Lorg/xml/sax/SAXParseException;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_needToCallStartDocument:Z

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    instance-of v0, p0, Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/xml/sax/ErrorHandler;

    invoke-interface {p0, p1}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    :cond_0
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

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->closeStartTag()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iput-boolean v1, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    :cond_1
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->closeCDATA()V

    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_cdataTagOpen:Z

    :cond_2
    return-void
.end method

.method public getShouldOutputNSAttr()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->m_shouldGenerateNSAttribute:Z

    return p0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public reset()Z
    .locals 1

    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->reset()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->resetToSAXHandler()V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setCdataSectionElements(Ljava/util/Vector;)V
    .locals 0

    return-void
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 1

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/xml/sax/ext/LexicalHandler;

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    :cond_0
    return-void
.end method

.method public setLexHandler(Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->m_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    return-void
.end method

.method public setShouldOutputNSAttr(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->m_shouldGenerateNSAttribute:Z

    return-void
.end method

.method public setTransformState(Lcom/sun/org/apache/xml/internal/serializer/TransformStateSetter;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->m_state:Lcom/sun/org/apache/xml/internal/serializer/TransformStateSetter;

    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startDocumentInternal()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_needToCallStartDocument:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->startDocumentInternal()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_needToCallStartDocument:Z

    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->m_state:Lcom/sun/org/apache/xml/internal/serializer/TransformStateSetter;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xml/internal/serializer/TransformStateSetter;->resetState(Ljavax/xml/transform/Transformer;)V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v0, :cond_1

    .line 12
    invoke-super {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->fireStartElem(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 5
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->m_state:Lcom/sun/org/apache/xml/internal/serializer/TransformStateSetter;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sun/org/apache/xml/internal/serializer/TransformStateSetter;->resetState(Ljavax/xml/transform/Transformer;)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz p1, :cond_1

    .line 8
    invoke-super {p0, p3}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->fireStartElem(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->m_state:Lcom/sun/org/apache/xml/internal/serializer/TransformStateSetter;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sun/org/apache/xml/internal/serializer/TransformStateSetter;->resetState(Ljavax/xml/transform/Transformer;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz p1, :cond_1

    .line 4
    invoke-super {p0, p3}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->fireStartElem(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->warning(Lorg/xml/sax/SAXParseException;)V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToSAXHandler;->m_saxHandler:Lorg/xml/sax/ContentHandler;

    instance-of v0, p0, Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/xml/sax/ErrorHandler;

    invoke-interface {p0, p1}, Lorg/xml/sax/ErrorHandler;->warning(Lorg/xml/sax/SAXParseException;)V

    :cond_0
    return-void
.end method
