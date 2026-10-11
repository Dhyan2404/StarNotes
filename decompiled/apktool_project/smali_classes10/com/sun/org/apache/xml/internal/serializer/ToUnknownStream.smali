.class public final Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;
.super Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;
.source "SourceFile"


# static fields
.field private static final EMPTYSTRING:Ljava/lang/String; = ""


# instance fields
.field private m_firstElementLocalName:Ljava/lang/String;

.field private m_firstElementName:Ljava/lang/String;

.field private m_firstElementPrefix:Ljava/lang/String;

.field private m_firstElementURI:Ljava/lang/String;

.field private m_firstTagNotEmitted:Z

.field private m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

.field private m_namespacePrefix:Ljava/util/Vector;

.field private m_namespaceURI:Ljava/util/Vector;

.field private m_needToCallStartDocument:Z

.field private m_setDoctypePublic_called:Z

.field private m_setDoctypeSystem_called:Z

.field private m_setMediaType_called:Z

.field private m_setVersion_called:Z

.field private m_wrapped_handler_not_initialized:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_wrapped_handler_not_initialized:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_firstElementLocalName:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_namespaceURI:Ljava/util/Vector;

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_needToCallStartDocument:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_setVersion_called:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_setDoctypeSystem_called:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_setDoctypePublic_called:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_setMediaType_called:Z

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ToXMLStream;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/serializer/ToXMLStream;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    return-void
.end method

.method private emitFirstTag()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_firstElementName:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_wrapped_handler_not_initialized:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->initStreamOutput()V

    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_wrapped_handler_not_initialized:Z

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_firstElementName:Ljava/lang/String;

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_attributes:Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;

    const/4 v5, 0x0

    invoke-interface {v0, v2, v5, v3, v4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    iput-object v5, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_attributes:Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_namespaceURI:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {v6, v3, v4, v1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput-object v5, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    iput-object v5, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_namespaceURI:Ljava/util/Vector;

    :cond_2
    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    :cond_3
    return-void
.end method

.method private flush()V
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->emitFirstTag()V

    :cond_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_needToCallStartDocument:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_needToCallStartDocument:Z
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getLocalNameUnknown(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/16 p0, 0x3a

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    if-ltz p0, :cond_0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/16 p0, 0x40

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    if-ltz p0, :cond_1

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private getPrefixPartUnknown(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 p0, 0x3a

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private initStreamOutput()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->isFirstElemHTML()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    const-string v1, "html"

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->getDefaultMethodProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/serializer/SerializerFactory;->getSerializer(Ljava/util/Properties;)Lcom/sun/org/apache/xml/internal/serializer/Serializer;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/serializer/Serializer;->getWriter()Ljava/io/Writer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {v2, v1}, Lcom/sun/org/apache/xml/internal/serializer/Serializer;->setWriter(Ljava/io/Writer;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/serializer/Serializer;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {v2, v1}, Lcom/sun/org/apache/xml/internal/serializer/Serializer;->setOutputStream(Ljava/io/OutputStream;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/serializer/XSLOutputAttributes;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setVersion(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/serializer/XSLOutputAttributes;->getDoctypeSystem()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setDoctypeSystem(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/serializer/XSLOutputAttributes;->getDoctypePublic()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setDoctypePublic(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/serializer/XSLOutputAttributes;->getMediaType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setMediaType(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setTransformer(Ljavax/xml/transform/Transformer;)V

    :cond_2
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_needToCallStartDocument:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_needToCallStartDocument:Z

    :cond_3
    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_wrapped_handler_not_initialized:Z

    return-void
.end method

.method private isFirstElemHTML()Z
    .locals 8

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_firstElementName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->getLocalNameUnknown(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v2

    :cond_0
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_namespaceURI:Ljava/util/Vector;

    invoke-virtual {v6, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_firstElementPrefix:Ljava/lang/String;

    if-eqz v7, :cond_1

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_1
    return v2
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->flush()V

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->flush()V

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public addAttributes(Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/ExtendedContentHandler;->addAttributes(Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public addUniqueAttribute(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->flush()V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/serializer/ExtendedContentHandler;->addUniqueAttribute(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public asContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-object p0
.end method

.method public asDOMSerializer()Lcom/sun/org/apache/xml/internal/serializer/DOMSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/serializer/Serializer;->asDOMSerializer()Lcom/sun/org/apache/xml/internal/serializer/DOMSerializer;

    move-result-object p0

    return-object p0
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/xml/sax/ext/DeclHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-virtual {p0, p1, v2, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->characters([CII)V

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
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->flush()V

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    return-void
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->close()V

    return-void
.end method

.method public comment(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_firstElementName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->emitFirstTag()V

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_needToCallStartDocument:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_needToCallStartDocument:Z

    .line 6
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->comment(Ljava/lang/String;)V

    return-void
.end method

.method public comment([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 7
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->flush()V

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    return-void
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->emitFirstTag()V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ext/DeclHandler;->elementDecl(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public endCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    return-void
.end method

.method public endDTD()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->flush()V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    return-void
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->flush()V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->endElement(Ljava/lang/String;)V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 4
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->flush()V

    if-nez p1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    if-nez p2, :cond_1

    .line 7
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_firstElementLocalName:Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object p2, v0

    .line 8
    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->emitFirstTag()V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    return-void
.end method

.method public entityReference(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->entityReference(Ljava/lang/String;)V

    return-void
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->flush()V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ext/DeclHandler;->externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public firePseudoElement(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    array-length v0, p1

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-interface {p0, v1, p1, v2, v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;->fireGenerateEvent(I[CII)V

    :cond_0
    return-void
.end method

.method public flushPending()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->flush()V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->flushPending()V

    return-void
.end method

.method public getDoctypePublic()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/serializer/XSLOutputAttributes;->getDoctypePublic()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDoctypeSystem()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/serializer/XSLOutputAttributes;->getDoctypeSystem()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->getEncoding()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIndent()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/serializer/XSLOutputAttributes;->getIndent()Z

    move-result p0

    return p0
.end method

.method public getIndentAmount()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/serializer/XSLOutputAttributes;->getIndentAmount()I

    move-result p0

    return p0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/serializer/XSLOutputAttributes;->getMediaType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNamespaceMappings()Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->getNamespaceMappings()Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getNamespaceURI(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/serializer/ExtendedContentHandler;->getNamespaceURI(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNamespaceURIFromPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->getNamespaceURIFromPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOmitXMLDeclaration()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/serializer/XSLOutputAttributes;->getOmitXMLDeclaration()Z

    move-result p0

    return p0
.end method

.method public getOutputFormat()Ljava/util/Properties;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/serializer/Serializer;->getOutputFormat()Ljava/util/Properties;

    move-result-object p0

    return-object p0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/serializer/Serializer;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStandalone()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/serializer/XSLOutputAttributes;->getStandalone()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTransformer()Ljavax/xml/transform/Transformer;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object p0

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/serializer/XSLOutputAttributes;->getVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWriter()Ljava/io/Writer;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/serializer/Serializer;->getWriter()Ljava/io/Writer;

    move-result-object p0

    return-object p0
.end method

.method public ignorableWhitespace([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->flush()V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->flush()V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ext/DeclHandler;->internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_firstElementName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->flush()V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reset()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/serializer/Serializer;->reset()Z

    move-result p0

    return p0
.end method

.method public serialize(Lorg/w3c/dom/Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->flush()V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->serialize(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public setCdataSectionElements(Ljava/util/Vector;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setCdataSectionElements(Ljava/util/Vector;)V

    return-void
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    return-void
.end method

.method public setDoctype(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {v0, p2}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setDoctypePublic(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setDoctypeSystem(Ljava/lang/String;)V

    return-void
.end method

.method public setDoctypePublic(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setDoctypePublic(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_setDoctypePublic_called:Z

    return-void
.end method

.method public setDoctypeSystem(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setDoctypeSystem(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_setDoctypeSystem_called:Z

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setEncoding(Ljava/lang/String;)V

    return-void
.end method

.method public setEscaping(Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setEscaping(Z)Z

    move-result p0

    return p0
.end method

.method public setIndent(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setIndent(Z)V

    return-void
.end method

.method public setIndentAmount(I)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setIndentAmount(I)V

    return-void
.end method

.method public setMediaType(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setMediaType(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_setMediaType_called:Z

    return-void
.end method

.method public setOmitXMLDeclaration(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setOmitXMLDeclaration(Z)V

    return-void
.end method

.method public setOutputFormat(Ljava/util/Properties;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/Serializer;->setOutputFormat(Ljava/util/Properties;)V

    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/Serializer;->setOutputStream(Ljava/io/OutputStream;)V

    return-void
.end method

.method public setSourceLocator(Ljavax/xml/transform/SourceLocator;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setSourceLocator(Ljavax/xml/transform/SourceLocator;)V

    return-void
.end method

.method public setStandalone(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setStandalone(Ljava/lang/String;)V

    return-void
.end method

.method public setTransformer(Ljavax/xml/transform/Transformer;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setTransformer(Ljavax/xml/transform/Transformer;)V

    instance-of v0, p1, Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;->hasTraceListeners()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    :goto_0
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setVersion(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_setVersion_called:Z

    return-void
.end method

.method public setWriter(Ljava/io/Writer;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/Serializer;->setWriter(Ljava/io/Writer;)V

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    return-void
.end method

.method public startCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_needToCallStartDocument:Z

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

    .line 1
    invoke-virtual {p0, v0, v0, p1, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_needToCallSetDocumentInfo:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->setDocumentInfo()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_needToCallSetDocumentInfo:Z

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_4

    .line 7
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_firstElementName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 8
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->flush()V

    .line 9
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_wrapped_handler_not_initialized:Z

    .line 11
    iput-object p3, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_firstElementName:Ljava/lang/String;

    .line 12
    invoke-direct {p0, p3}, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->getPrefixPartUnknown(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_firstElementPrefix:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_firstElementLocalName:Ljava/lang/String;

    .line 15
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz p1, :cond_2

    .line 16
    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->firePseudoElement(Ljava/lang/String;)V

    :cond_2
    if-eqz p4, :cond_3

    .line 17
    invoke-super {p0, p4}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->addAttributes(Lorg/xml/sax/Attributes;)V

    :cond_3
    if-eqz p4, :cond_5

    .line 18
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->flush()V

    goto :goto_0

    .line 19
    :cond_4
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

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

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_firstElementName:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->flush()V

    .line 5
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    goto :goto_0

    .line 6
    :cond_0
    iget-object p3, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    if-nez p3, :cond_1

    .line 7
    new-instance p3, Ljava/util/Vector;

    invoke-direct {p3}, Ljava/util/Vector;-><init>()V

    iput-object p3, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    .line 8
    new-instance p3, Ljava/util/Vector;

    invoke-direct {p3}, Ljava/util/Vector;-><init>()V

    iput-object p3, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_namespaceURI:Ljava/util/Vector;

    .line 9
    :cond_1
    iget-object p3, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    invoke-virtual {p3, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 10
    iget-object p3, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_namespaceURI:Ljava/util/Vector;

    invoke-virtual {p3, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 11
    iget-object p3, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    if-nez p3, :cond_2

    .line 12
    iget-object p3, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_firstElementPrefix:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    :cond_2
    const/4 p0, 0x0

    goto :goto_0

    .line 14
    :cond_3
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;->m_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    :goto_0
    return p0
.end method
