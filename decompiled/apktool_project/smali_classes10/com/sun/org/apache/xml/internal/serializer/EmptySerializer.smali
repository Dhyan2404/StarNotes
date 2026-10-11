.class public Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;


# static fields
.field protected static final ERR:Ljava/lang/String; = "EmptySerializer method not over-ridden"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aMethodIsCalled()V
    .locals 0

    return-void
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->aMethodIsCalled()V

    return-void
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowSAXException()V

    return-void
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowSAXException()V

    return-void
.end method

.method public addAttributes(Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowSAXException()V

    return-void
.end method

.method public addUniqueAttribute(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowSAXException()V

    return-void
.end method

.method public addXSLAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->aMethodIsCalled()V

    return-void
.end method

.method public asContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowIOException()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public asDOMSerializer()Lcom/sun/org/apache/xml/internal/serializer/DOMSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowIOException()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowSAXException()V

    return-void
.end method

.method public characters(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowSAXException()V

    return-void
.end method

.method public characters(Lorg/w3c/dom/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowSAXException()V

    return-void
.end method

.method public characters([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowSAXException([CII)V

    return-void
.end method

.method public close()V
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->aMethodIsCalled()V

    return-void
.end method

.method public comment(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowSAXException()V

    return-void
.end method

.method public comment([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowSAXException()V

    return-void
.end method

.method public couldThrowException()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public couldThrowIOException()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public couldThrowSAXException()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public couldThrowSAXException(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2
    return-void
.end method

.method public couldThrowSAXException([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3
    return-void
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowSAXException()V

    return-void
.end method

.method public endCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowSAXException()V

    return-void
.end method

.method public endDTD()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowSAXException()V

    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowSAXException()V

    return-void
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowSAXException()V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowSAXException()V

    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowSAXException()V

    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowSAXException()V

    return-void
.end method

.method public entityReference(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowSAXException()V

    return-void
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowSAXException()V

    return-void
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowSAXException()V

    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowSAXException()V

    return-void
.end method

.method public flushPending()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowSAXException()V

    return-void
.end method

.method public getDoctypePublic()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->aMethodIsCalled()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDoctypeSystem()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->aMethodIsCalled()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->aMethodIsCalled()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getIndent()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->aMethodIsCalled()V

    const/4 p0, 0x0

    return p0
.end method

.method public getIndentAmount()I
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->aMethodIsCalled()V

    const/4 p0, 0x0

    return p0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->aMethodIsCalled()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNamespaceMappings()Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->aMethodIsCalled()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNamespaceURI(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->aMethodIsCalled()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNamespaceURIFromPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->aMethodIsCalled()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOmitXMLDeclaration()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->aMethodIsCalled()V

    const/4 p0, 0x0

    return p0
.end method

.method public getOutputFormat()Ljava/util/Properties;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->aMethodIsCalled()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->aMethodIsCalled()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->aMethodIsCalled()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getStandalone()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->aMethodIsCalled()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTransformer()Ljavax/xml/transform/Transformer;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->aMethodIsCalled()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->aMethodIsCalled()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWriter()Ljava/io/Writer;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->aMethodIsCalled()V

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

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowSAXException()V

    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowSAXException()V

    return-void
.end method

.method public namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowSAXException()V

    return-void
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowSAXException()V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowSAXException()V

    return-void
.end method

.method public reset()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->aMethodIsCalled()V

    const/4 p0, 0x0

    return p0
.end method

.method public serialize(Lorg/w3c/dom/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowIOException()V

    return-void
.end method

.method public setCdataSectionElements(Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowException()V

    return-void
.end method

.method public setCdataSectionElements(Ljava/util/Vector;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->aMethodIsCalled()V

    return-void
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->aMethodIsCalled()V

    return-void
.end method

.method public setDTDEntityExpansion(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->aMethodIsCalled()V

    return-void
.end method

.method public setDoctype(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->aMethodIsCalled()V

    return-void
.end method

.method public setDoctypePublic(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->aMethodIsCalled()V

    return-void
.end method

.method public setDoctypeSystem(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->aMethodIsCalled()V

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->aMethodIsCalled()V

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->aMethodIsCalled()V

    return-void
.end method

.method public setEscaping(Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowSAXException()V

    const/4 p0, 0x0

    return p0
.end method

.method public setIndent(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->aMethodIsCalled()V

    return-void
.end method

.method public setIndentAmount(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->aMethodIsCalled()V

    return-void
.end method

.method public setMediaType(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->aMethodIsCalled()V

    return-void
.end method

.method public setNamespaceMappings(Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->aMethodIsCalled()V

    return-void
.end method

.method public setOmitXMLDeclaration(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->aMethodIsCalled()V

    return-void
.end method

.method public setOutputFormat(Ljava/util/Properties;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->aMethodIsCalled()V

    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->aMethodIsCalled()V

    return-void
.end method

.method public setSourceLocator(Ljavax/xml/transform/SourceLocator;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->aMethodIsCalled()V

    return-void
.end method

.method public setStandalone(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->aMethodIsCalled()V

    return-void
.end method

.method public setTransformer(Ljavax/xml/transform/Transformer;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->aMethodIsCalled()V

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->aMethodIsCalled()V

    return-void
.end method

.method public setWriter(Ljava/io/Writer;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->aMethodIsCalled()V

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowSAXException()V

    return-void
.end method

.method public startCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowSAXException()V

    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowSAXException()V

    return-void
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowSAXException()V

    return-void
.end method

.method public startElement(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowSAXException(Ljava/lang/String;)V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowSAXException(Ljava/lang/String;)V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowSAXException()V

    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowSAXException()V

    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowSAXException()V

    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowSAXException()V

    const/4 p0, 0x0

    return p0
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowSAXException()V

    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;->couldThrowSAXException()V

    return-void
.end method
