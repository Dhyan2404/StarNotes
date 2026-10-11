.class public interface abstract Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xml/internal/serializer/ExtendedContentHandler;
.implements Lcom/sun/org/apache/xml/internal/serializer/ExtendedLexicalHandler;
.implements Lcom/sun/org/apache/xml/internal/serializer/XSLOutputAttributes;
.implements Lorg/xml/sax/ext/DeclHandler;
.implements Lorg/xml/sax/DTDHandler;
.implements Lorg/xml/sax/ErrorHandler;
.implements Lcom/sun/org/apache/xml/internal/serializer/DOMSerializer;
.implements Lcom/sun/org/apache/xml/internal/serializer/Serializer;


# virtual methods
.method public abstract synthetic addAttribute(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract synthetic addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract synthetic characters(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract close()V
.end method

.method public abstract synthetic comment(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract synthetic endElement(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract synthetic entityReference(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract flushPending()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract synthetic getEncoding()Ljava/lang/String;
.end method

.method public abstract synthetic getNamespaceMappings()Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;
.end method

.method public abstract synthetic getNamespaceURIFromPrefix(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract synthetic getPrefix(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getTransformer()Ljavax/xml/transform/Transformer;
.end method

.method public abstract synthetic namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract serialize(Lorg/w3c/dom/Node;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract synthetic setCdataSectionElements(Ljava/util/Vector;)V
.end method

.method public abstract setContentHandler(Lorg/xml/sax/ContentHandler;)V
.end method

.method public abstract setDTDEntityExpansion(Z)V
.end method

.method public abstract synthetic setDoctype(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract synthetic setDoctypePublic(Ljava/lang/String;)V
.end method

.method public abstract synthetic setDoctypeSystem(Ljava/lang/String;)V
.end method

.method public abstract synthetic setEncoding(Ljava/lang/String;)V
.end method

.method public abstract setEscaping(Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract synthetic setIndent(Z)V
.end method

.method public abstract setIndentAmount(I)V
.end method

.method public abstract synthetic setMediaType(Ljava/lang/String;)V
.end method

.method public abstract setNamespaceMappings(Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;)V
.end method

.method public abstract synthetic setOmitXMLDeclaration(Z)V
.end method

.method public abstract synthetic setSourceLocator(Ljavax/xml/transform/SourceLocator;)V
.end method

.method public abstract synthetic setStandalone(Ljava/lang/String;)V
.end method

.method public abstract setTransformer(Ljavax/xml/transform/Transformer;)V
.end method

.method public abstract synthetic setVersion(Ljava/lang/String;)V
.end method

.method public abstract synthetic startElement(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract synthetic startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract synthetic startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method
