.class public Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/ls/LSSerializer;
.implements Lorg/w3c/dom/DOMConfiguration;


# static fields
.field protected static final CDATA:S = 0x8s

.field protected static final COMMENTS:S = 0x20s

.field protected static final DISCARDDEFAULT:S = 0x40s

.field protected static final DOM_ELEMENT_CONTENT_WHITESPACE:S = 0x400s

.field protected static final ENTITIES:S = 0x4s

.field protected static final INFOSET:S = 0x80s

.field protected static final NAMESPACES:S = 0x1s

.field protected static final NSDECL:S = 0x200s

.field protected static final SPLITCDATA:S = 0x10s

.field protected static final WELLFORMED:S = 0x2s

.field protected static final XMLDECL:S = 0x100s

.field private static final abort:Ljava/lang/RuntimeException;


# instance fields
.field private final fError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

.field private fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

.field private final fLocator:Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

.field private fRecognizedParameters:Lorg/w3c/dom/DOMStringList;

.field protected features:S

.field private serializer:Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;

.field private xml11Serializer:Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->abort:Ljava/lang/RuntimeException;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->features:S

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->fError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->fLocator:Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    iget-short v0, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->features:S

    or-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    or-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    or-int/lit8 v0, v0, 0x20

    int-to-short v0, v0

    or-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    or-int/lit8 v0, v0, 0x10

    int-to-short v0, v0

    or-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    or-int/lit16 v0, v0, 0x200

    int-to-short v0, v0

    or-int/lit16 v0, v0, 0x400

    int-to-short v0, v0

    or-int/lit8 v0, v0, 0x40

    int-to-short v0, v0

    or-int/lit16 v0, v0, 0x100

    int-to-short v0, v0

    iput-short v0, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->features:S

    new-instance v0, Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->serializer:Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->initSerializer(Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;)V

    return-void
.end method

.method private copySettings(Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;)V
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iput-object p0, p2, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object p0, p2, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_format:Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    iget-object v0, p1, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_format:Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->setEncoding(Ljava/lang/String;)V

    iget-object p0, p2, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_format:Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    iget-object v0, p1, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_format:Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->getLineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->setLineSeparator(Ljava/lang/String;)V

    iget-object p0, p1, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    iput-object p0, p2, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    return-void
.end method

.method private getPathWithoutEscapes(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x25

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    new-instance p0, Ljava/util/StringTokenizer;

    const-string v0, "%"

    invoke-direct {p0, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p1

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method private initSerializer(Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;)V
    .locals 0

    new-instance p0, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;-><init>()V

    iput-object p0, p1, Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;->fNSBinder:Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    new-instance p0, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;-><init>()V

    iput-object p0, p1, Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;->fLocalNSBinder:Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    new-instance p0, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;-><init>()V

    iput-object p0, p1, Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    return-void
.end method

.method private prepareForSerialization(Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;Lorg/w3c/dom/Node;)V
    .locals 6

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;->reset()Z

    iget-short v0, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->features:S

    iput-short v0, p1, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->features:S

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iput-object v1, p1, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p1, Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;->fNamespaces:Z

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p1, Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;->fNamespacePrefixes:Z

    iget-object v1, p1, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_format:Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->setOmitComments(Z)V

    iget-object p1, p1, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_format:Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    iget-short v0, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->features:S

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->setOmitXMLDeclaration(Z)V

    iget-short p1, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_a

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_4

    move-object p1, p2

    check-cast p1, Lorg/w3c/dom/Document;

    goto :goto_4

    :cond_4
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    :goto_4
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "isXMLVersionChanged()"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, p1

    :catch_0
    :cond_5
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_9

    move-object p1, p2

    :goto_5
    if-eqz p1, :cond_a

    invoke-direct {p0, p1, v3, v2}, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->verify(Lorg/w3c/dom/Node;ZZ)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    :cond_6
    :goto_6
    if-nez v1, :cond_8

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    if-ne p2, p1, :cond_7

    move-object p1, v0

    goto :goto_5

    :cond_7
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_6

    :cond_8
    move-object p1, v1

    goto :goto_5

    :cond_9
    invoke-direct {p0, p2, v3, v2}, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->verify(Lorg/w3c/dom/Node;ZZ)V

    :cond_a
    return-void
.end method

.method private verify(Lorg/w3c/dom/Node;ZZ)V
    .locals 12

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->fLocator:Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    iput-object p1, v1, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    const-string v2, "Element"

    const-string v3, "wf-invalid-character-in-node-name"

    const-string v4, "http://www.w3.org/dom/DOMTR"

    const/4 v5, 0x1

    if-eq v0, v5, :cond_7

    const/4 v5, 0x3

    if-eq v0, v5, :cond_6

    const/4 v5, 0x4

    if-eq v0, v5, :cond_5

    const/4 v6, 0x5

    if-eq v0, v6, :cond_4

    const/4 v5, 0x7

    if-eq v0, v5, :cond_1

    const/16 p2, 0x8

    if-eq v0, p2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-short p2, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 p2, p2, 0x20

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->fError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    check-cast p1, Lorg/w3c/dom/Comment;

    invoke-interface {p1}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p0, v1, p1, p3}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->isCommentWF(Lorg/w3c/dom/DOMErrorHandler;Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    goto/16 :goto_4

    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/ProcessingInstruction;

    invoke-interface {v0}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/util/XML11Char;->isXML11ValidName(Ljava/lang/String;)Z

    move-result p2

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isValidName(Ljava/lang/String;)Z

    move-result p2

    :goto_0
    if-nez p2, :cond_3

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v4, v3, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->fError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->fLocator:Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    const/4 v9, 0x3

    const-string v10, "wf-invalid-character-in-node-name"

    invoke-static/range {v5 .. v10}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->fError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->fLocator:Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    invoke-interface {v0}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p0, v0, p3}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->isXMLCharWF(Lorg/w3c/dom/DOMErrorHandler;Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    goto/16 :goto_4

    :cond_4
    if-eqz p2, :cond_c

    iget-short p0, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->features:S

    and-int/2addr p0, v5

    if-eqz p0, :cond_c

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    goto/16 :goto_4

    :cond_5
    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->fError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p0, v1, p1, p3}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->isXMLCharWF(Lorg/w3c/dom/DOMErrorHandler;Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    goto/16 :goto_4

    :cond_6
    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->fError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p0, v1, p1, p3}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->isXMLCharWF(Lorg/w3c/dom/DOMErrorHandler;Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    goto/16 :goto_4

    :cond_7
    if-eqz p2, :cond_9

    iget-short v0, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->features:S

    and-int/2addr v0, v5

    if-eqz v0, :cond_8

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->isValidQName(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_1

    :cond_8
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v0

    :goto_1
    if-nez v0, :cond_9

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_9

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->fError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->fLocator:Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    const/4 v9, 0x3

    const-string v10, "wf-invalid-character-in-node-name"

    invoke-static/range {v5 .. v10}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_9
    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    goto :goto_2

    :cond_a
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_c

    const/4 v1, 0x0

    :goto_3
    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_c

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Attr;

    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->fLocator:Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    iput-object v2, v7, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->fError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    invoke-interface {v2}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v10

    move-object v8, v0

    move-object v9, v2

    move v11, p3

    invoke-static/range {v5 .. v11}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->isAttrValueWF(Lorg/w3c/dom/DOMErrorHandler;Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;Lorg/w3c/dom/NamedNodeMap;Lorg/w3c/dom/Attr;Ljava/lang/String;Z)V

    if-eqz p2, :cond_b

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "Attr"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v3, v2}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->fError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->fLocator:Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    const/4 v9, 0x3

    const-string v10, "wf-invalid-character-in-node-name"

    invoke-static/range {v5 .. v10}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_c
    :goto_4
    return-void
.end method


# virtual methods
.method public canSetParameter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    const/4 p0, 0x1

    if-nez p2, :cond_0

    return p0

    :cond_0
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "namespaces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "split-cdata-sections"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "discard-default-content"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "xml-declaration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "well-formed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "infoset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "entities"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "cdata-sections"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "comments"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "namespace-declarations"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "canonical-form"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "validate-if-schema"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "validate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "check-character-normalization"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "datatype-normalization"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "format-pretty-print"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "element-content-whitespace"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "ignore-unknown-character-denormalizations"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_3
    return p2

    :cond_4
    :goto_0
    xor-int/2addr p0, p2

    :cond_5
    :goto_1
    return p0

    :cond_6
    const-string v0, "error-handler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    instance-of p1, p2, Lorg/w3c/dom/DOMErrorHandler;

    if-eqz p1, :cond_7

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public getDomConfig()Lorg/w3c/dom/DOMConfiguration;
    .locals 0

    return-object p0
.end method

.method public getFilter()Lorg/w3c/dom/ls/LSSerializerFilter;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->serializer:Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    return-object p0
.end method

.method public getNewLine()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->serializer:Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_format:Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->getLineSeparator()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const-string v0, "normalize-characters"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "comments"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-short p0, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p0

    :cond_2
    const-string v0, "namespaces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-short p0, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_3

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_3
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    return-object p0

    :cond_4
    const-string v0, "xml-declaration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-short p0, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->features:S

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_5

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_5
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2
    return-object p0

    :cond_6
    const-string v0, "cdata-sections"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_8

    iget-short p0, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->features:S

    and-int/2addr p0, v1

    if-eqz p0, :cond_7

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_7
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3
    return-object p0

    :cond_8
    const-string v0, "entities"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-short p0, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_9

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_4

    :cond_9
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_4
    return-object p0

    :cond_a
    const-string v0, "split-cdata-sections"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-short p0, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_b

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_5

    :cond_b
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_5
    return-object p0

    :cond_c
    const-string v0, "well-formed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-short p0, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_d

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_6

    :cond_d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_6
    return-object p0

    :cond_e
    const-string v0, "namespace-declarations"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-short p0, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->features:S

    and-int/lit16 p0, p0, 0x200

    if-eqz p0, :cond_f

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_f
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_7
    return-object p0

    :cond_10
    const-string v0, "element-content-whitespace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "ignore-unknown-character-denormalizations"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto/16 :goto_b

    :cond_11
    const-string v0, "discard-default-content"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-short p0, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_12

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_8

    :cond_12
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_8
    return-object p0

    :cond_13
    const-string v0, "infoset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-short p0, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 p1, p0, 0x4

    if-nez p1, :cond_14

    and-int/lit8 p1, p0, 0x8

    if-nez p1, :cond_14

    and-int/lit8 p1, p0, 0x1

    if-eqz p1, :cond_14

    and-int/lit16 p1, p0, 0x200

    if-eqz p1, :cond_14

    and-int/lit8 p1, p0, 0x2

    if-eqz p1, :cond_14

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_14

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_14
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_15
    const-string v0, "format-pretty-print"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "canonical-form"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "validate-if-schema"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string v2, "check-character-normalization"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string v2, "validate"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "datatype-normalization"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_a

    :cond_16
    const-string v0, "error-handler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    return-object p0

    :cond_17
    const-string p0, "resource-resolver"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    const-string v0, "http://www.w3.org/dom/DOMTR"

    if-nez p0, :cond_19

    const-string p0, "schema-location"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_19

    const-string p0, "schema-type"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_18

    goto :goto_9

    :cond_18
    const-string p0, "FEATURE_NOT_FOUND"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v1, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_19
    :goto_9
    const-string p0, "FEATURE_NOT_SUPPORTED"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/16 v0, 0x9

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1a
    :goto_a
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_1b
    :goto_b
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getParameterNames()Lorg/w3c/dom/DOMStringList;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->fRecognizedParameters:Lorg/w3c/dom/DOMStringList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const-string v1, "namespaces"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "split-cdata-sections"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "discard-default-content"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "xml-declaration"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "canonical-form"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "validate-if-schema"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "validate"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "check-character-normalization"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "datatype-normalization"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "format-pretty-print"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "well-formed"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "infoset"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "namespace-declarations"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "element-content-whitespace"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "entities"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "cdata-sections"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "comments"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "ignore-unknown-character-denormalizations"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "error-handler"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sun/org/apache/xerces/internal/dom/DOMStringListImpl;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMStringListImpl;-><init>(Ljava/util/Vector;)V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->fRecognizedParameters:Lorg/w3c/dom/DOMStringList;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->fRecognizedParameters:Lorg/w3c/dom/DOMStringList;

    return-object p0
.end method

.method public setFilter(Lorg/w3c/dom/ls/LSSerializerFilter;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->serializer:Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    return-void
.end method

.method public setNewLine(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->serializer:Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_format:Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->setLineSeparator(Ljava/lang/String;)V

    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    instance-of v0, p2, Ljava/lang/Boolean;

    const/16 v1, 0x8

    const-string v2, "FEATURE_NOT_FOUND"

    const-string v3, "FEATURE_NOT_SUPPORTED"

    const/16 v4, 0x9

    const-string v5, "http://www.w3.org/dom/DOMTR"

    if-eqz v0, :cond_19

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "infoset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1c

    iget-short p1, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 p1, p1, -0x5

    int-to-short p1, p1

    and-int/lit8 p1, p1, -0x9

    int-to-short p1, p1

    or-int/lit8 p1, p1, 0x1

    int-to-short p1, p1

    or-int/lit16 p1, p1, 0x200

    int-to-short p1, p1

    or-int/lit8 p1, p1, 0x2

    int-to-short p1, p1

    or-int/lit8 p1, p1, 0x20

    int-to-short p1, p1

    iput-short p1, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->features:S

    goto/16 :goto_c

    :cond_0
    const-string v0, "xml-declaration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-short p1, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->features:S

    if-eqz p2, :cond_1

    or-int/lit16 p1, p1, 0x100

    goto :goto_0

    :cond_1
    and-int/lit16 p1, p1, -0x101

    :goto_0
    int-to-short p1, p1

    iput-short p1, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->features:S

    goto/16 :goto_c

    :cond_2
    const-string v0, "namespaces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-short p1, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->features:S

    if-eqz p2, :cond_3

    or-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    and-int/lit8 p1, p1, -0x2

    :goto_1
    int-to-short p1, p1

    iput-short p1, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->features:S

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->serializer:Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;

    iput-boolean p2, p0, Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;->fNamespaces:Z

    goto/16 :goto_c

    :cond_4
    const-string v0, "split-cdata-sections"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-short p1, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->features:S

    if-eqz p2, :cond_5

    or-int/lit8 p1, p1, 0x10

    goto :goto_2

    :cond_5
    and-int/lit8 p1, p1, -0x11

    :goto_2
    int-to-short p1, p1

    iput-short p1, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->features:S

    goto/16 :goto_c

    :cond_6
    const-string v0, "discard-default-content"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-short p1, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->features:S

    if-eqz p2, :cond_7

    or-int/lit8 p1, p1, 0x40

    goto :goto_3

    :cond_7
    and-int/lit8 p1, p1, -0x41

    :goto_3
    int-to-short p1, p1

    iput-short p1, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->features:S

    goto/16 :goto_c

    :cond_8
    const-string v0, "well-formed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-short p1, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->features:S

    if-eqz p2, :cond_9

    or-int/lit8 p1, p1, 0x2

    goto :goto_4

    :cond_9
    and-int/lit8 p1, p1, -0x3

    :goto_4
    int-to-short p1, p1

    iput-short p1, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->features:S

    goto/16 :goto_c

    :cond_a
    const-string v0, "entities"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-short p1, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->features:S

    if-eqz p2, :cond_b

    or-int/lit8 p1, p1, 0x4

    goto :goto_5

    :cond_b
    and-int/lit8 p1, p1, -0x5

    :goto_5
    int-to-short p1, p1

    iput-short p1, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->features:S

    goto/16 :goto_c

    :cond_c
    const-string v0, "cdata-sections"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-short p1, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->features:S

    if-eqz p2, :cond_d

    or-int/2addr p1, v1

    goto :goto_6

    :cond_d
    and-int/lit8 p1, p1, -0x9

    :goto_6
    int-to-short p1, p1

    iput-short p1, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->features:S

    goto/16 :goto_c

    :cond_e
    const-string v0, "comments"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-short p1, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->features:S

    if-eqz p2, :cond_f

    or-int/lit8 p1, p1, 0x20

    goto :goto_7

    :cond_f
    and-int/lit8 p1, p1, -0x21

    :goto_7
    int-to-short p1, p1

    iput-short p1, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->features:S

    goto/16 :goto_c

    :cond_10
    const-string v0, "canonical-form"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "validate-if-schema"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "validate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "check-character-normalization"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "datatype-normalization"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "format-pretty-print"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_a

    :cond_11
    const-string v0, "namespace-declarations"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-short p1, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->features:S

    if-eqz p2, :cond_12

    or-int/lit16 p1, p1, 0x200

    goto :goto_8

    :cond_12
    and-int/lit16 p1, p1, -0x201

    :goto_8
    int-to-short p1, p1

    iput-short p1, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->features:S

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->serializer:Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;

    iput-boolean p2, p0, Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;->fNamespacePrefixes:Z

    goto :goto_c

    :cond_13
    const-string p0, "element-content-whitespace"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_15

    const-string p0, "ignore-unknown-character-denormalizations"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_14

    goto :goto_9

    :cond_14
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v5, v2, p0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v4, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_15
    :goto_9
    if-eqz p2, :cond_16

    goto :goto_c

    :cond_16
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v5, v3, p0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v4, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_17
    :goto_a
    if-nez p2, :cond_18

    goto :goto_c

    :cond_18
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v5, v3, p0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v4, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_19
    const-string v0, "error-handler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    if-eqz p2, :cond_1b

    instance-of v0, p2, Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_1a

    goto :goto_b

    :cond_1a
    const-string p0, "TYPE_MISMATCH_ERR"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v5, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/16 p2, 0x11

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1b
    :goto_b
    check-cast p2, Lorg/w3c/dom/DOMErrorHandler;

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    :cond_1c
    :goto_c
    return-void

    :cond_1d
    const-string p0, "resource-resolver"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1f

    const-string p0, "schema-location"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1f

    const-string p0, "schema-type"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1f

    const-string p0, "normalize-characters"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1e

    if-eqz p2, :cond_1e

    goto :goto_d

    :cond_1e
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v5, v2, p0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v1, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1f
    :goto_d
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v5, v3, p0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v4, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public write(Lorg/w3c/dom/Node;Lorg/w3c/dom/ls/LSOutput;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/ls/LSException;
        }
    .end annotation

    const-string v0, "no-output-specified"

    const-string v1, "http://apache.org/xml/serializer"

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    move-object v3, p1

    check-cast v3, Lorg/w3c/dom/Document;

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    :goto_0
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getXmlVersion"

    new-array v8, v2, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_2
    move-object v6, v5

    :goto_1
    if-eqz v6, :cond_4

    const-string v7, "1.1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->xml11Serializer:Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;

    if-nez v6, :cond_3

    new-instance v6, Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;

    invoke-direct {v6}, Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;-><init>()V

    iput-object v6, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->xml11Serializer:Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;

    invoke-direct {p0, v6}, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->initSerializer(Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;)V

    :cond_3
    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->serializer:Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;

    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->xml11Serializer:Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;

    invoke-direct {p0, v6, v7}, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->copySettings(Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;)V

    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->xml11Serializer:Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;

    goto :goto_2

    :cond_4
    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->serializer:Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;

    :goto_2
    invoke-interface {p2}, Lorg/w3c/dom/ls/LSOutput;->getEncoding()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "getInputEncoding"

    new-array v10, v2, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v8, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v8

    :catch_1
    :cond_5
    if-nez v7, :cond_7

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "getXmlEncoding"

    new-array v10, v2, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-virtual {v8, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v7, v3

    :catch_2
    :cond_6
    if-nez v7, :cond_7

    const-string v7, "UTF-8"

    :cond_7
    const/4 v3, 0x3

    const/16 v8, 0x52

    :try_start_3
    invoke-direct {p0, v6, p1}, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->prepareForSerialization(Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;Lorg/w3c/dom/Node;)V

    iget-object v9, v6, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_format:Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    invoke-virtual {v9, v7}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->setEncoding(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/w3c/dom/ls/LSOutput;->getByteStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-interface {p2}, Lorg/w3c/dom/ls/LSOutput;->getCharacterStream()Ljava/io/Writer;

    move-result-object v9

    invoke-interface {p2}, Lorg/w3c/dom/ls/LSOutput;->getSystemId()Ljava/lang/String;

    move-result-object p2

    const/4 v10, 0x1

    if-nez v9, :cond_f

    if-nez v7, :cond_e

    if-nez p2, :cond_9

    invoke-static {v1, v0, v5}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iget-object p1, v6, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz p1, :cond_8

    new-instance p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;-><init>()V

    iput-object v0, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    iput-object p0, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    iput-short v3, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fSeverity:S

    iget-object p2, v6, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    invoke-interface {p2, p1}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_8
    new-instance p1, Lorg/w3c/dom/ls/LSException;

    invoke-direct {p1, v8, p0}, Lorg/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_9
    invoke-static {p2, v5, v10}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/net/URL;

    if-eqz v0, :cond_a

    move-object p2, v0

    :cond_a
    invoke-direct {v7, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v9, "file"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_b

    const-string p2, "localhost"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    :cond_b
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-virtual {v7}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->getPathWithoutEscapes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/net/URLConnection;->setDoInput(Z)V

    invoke-virtual {p0, v10}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-virtual {p0, v2}, Ljava/net/URLConnection;->setUseCaches(Z)V

    instance-of p2, p0, Ljava/net/HttpURLConnection;

    if-eqz p2, :cond_d

    move-object p2, p0

    check-cast p2, Ljava/net/HttpURLConnection;

    const-string v0, "PUT"

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    :goto_3
    invoke-virtual {v6, p2}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->setOutputByteStream(Ljava/io/OutputStream;)V

    goto :goto_4

    :cond_e
    invoke-virtual {v6, v7}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->setOutputByteStream(Ljava/io/OutputStream;)V

    goto :goto_4

    :cond_f
    invoke-virtual {v6, v9}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->setOutputCharStream(Ljava/io/Writer;)V

    :goto_4
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    if-ne p0, v4, :cond_10

    check-cast p1, Lorg/w3c/dom/Document;

    invoke-virtual {v6, p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->serialize(Lorg/w3c/dom/Document;)V

    goto :goto_6

    :cond_10
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/16 p2, 0xb

    if-ne p0, p2, :cond_11

    check-cast p1, Lorg/w3c/dom/DocumentFragment;

    invoke-virtual {v6, p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->serialize(Lorg/w3c/dom/DocumentFragment;)V

    goto :goto_6

    :cond_11
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    if-ne p0, v10, :cond_12

    check-cast p1, Lorg/w3c/dom/Element;

    invoke-virtual {v6, p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->serialize(Lorg/w3c/dom/Element;)V

    goto :goto_6

    :cond_12
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    if-eq p0, v3, :cond_14

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/16 p2, 0x8

    if-eq p0, p2, :cond_14

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/4 p2, 0x5

    if-eq p0, p2, :cond_14

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/4 p2, 0x4

    if-eq p0, p2, :cond_14

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/4 p2, 0x7

    if-ne p0, p2, :cond_13

    goto :goto_5

    :cond_13
    return v2

    :cond_14
    :goto_5
    invoke-virtual {v6, p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->serialize(Lorg/w3c/dom/Node;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lorg/w3c/dom/ls/LSException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_6
    return v10

    :catch_3
    move-exception p0

    iget-object p1, v6, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz p1, :cond_15

    new-instance p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;-><init>()V

    iput-object p0, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    const/4 p2, 0x2

    iput-short p2, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fSeverity:S

    iget-object p2, v6, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    invoke-interface {p2, p1}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_15
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Lorg/w3c/dom/ls/LSException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v8, p0}, Lorg/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw p1

    :catch_4
    move-exception p0

    sget-object p1, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->abort:Ljava/lang/RuntimeException;

    if-ne p0, p1, :cond_16

    return v2

    :cond_16
    new-instance p1, Lorg/w3c/dom/ls/LSException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v8, p0}, Lorg/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw p1

    :catch_5
    move-exception p0

    throw p0

    :catch_6
    move-exception p0

    iget-object p1, v6, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    const-string p2, "unsupported-encoding"

    if-eqz p1, :cond_17

    new-instance p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;-><init>()V

    iput-object p0, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    iput-object p2, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    iput-short v3, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fSeverity:S

    iget-object p0, v6, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    invoke-interface {p0, p1}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_17
    new-instance p0, Lorg/w3c/dom/ls/LSException;

    invoke-static {v1, p2, v5}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v8, p1}, Lorg/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public writeToString(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;,
            Lorg/w3c/dom/ls/LSException;
        }
    .end annotation

    const-string v0, "unable-to-serialize-node"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    move-object v1, p1

    check-cast v1, Lorg/w3c/dom/Document;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    :goto_0
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getXmlVersion"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_1
    move-object v1, v3

    :goto_1
    if-eqz v1, :cond_3

    const-string v4, "1.1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->xml11Serializer:Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;

    if-nez v1, :cond_2

    new-instance v1, Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;

    invoke-direct {v1}, Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->xml11Serializer:Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->initSerializer(Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;)V

    :cond_2
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->serializer:Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->xml11Serializer:Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;

    invoke-direct {p0, v1, v4}, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->copySettings(Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;)V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->xml11Serializer:Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->serializer:Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;

    :goto_2
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    const/16 v5, 0x52

    :try_start_1
    invoke-direct {p0, v1, p1}, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->prepareForSerialization(Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;Lorg/w3c/dom/Node;)V

    iget-object p0, v1, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_format:Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    const-string v6, "UTF-16"

    invoke-virtual {p0, v6}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->setEncoding(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->setOutputCharStream(Ljava/io/Writer;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    if-ne p0, v2, :cond_4

    check-cast p1, Lorg/w3c/dom/Document;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->serialize(Lorg/w3c/dom/Document;)V

    goto :goto_4

    :cond_4
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/16 v2, 0xb

    if-ne p0, v2, :cond_5

    check-cast p1, Lorg/w3c/dom/DocumentFragment;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->serialize(Lorg/w3c/dom/DocumentFragment;)V

    goto :goto_4

    :cond_5
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_6

    check-cast p1, Lorg/w3c/dom/Element;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->serialize(Lorg/w3c/dom/Element;)V

    goto :goto_4

    :cond_6
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/4 v2, 0x3

    if-eq p0, v2, :cond_9

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/16 v6, 0x8

    if-eq p0, v6, :cond_9

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/4 v6, 0x5

    if-eq p0, v6, :cond_9

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/4 v6, 0x4

    if-eq p0, v6, :cond_9

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/4 v6, 0x7

    if-ne p0, v6, :cond_7

    goto :goto_3

    :cond_7
    const-string p0, "http://apache.org/xml/serializer"

    invoke-static {p0, v0, v3}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iget-object p1, v1, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz p1, :cond_8

    new-instance p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;-><init>()V

    iput-object v0, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    iput-object p0, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    iput-short v2, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fSeverity:S

    iget-object v0, v1, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    invoke-interface {v0, p1}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_8
    new-instance p1, Lorg/w3c/dom/ls/LSException;

    invoke-direct {p1, v5, p0}, Lorg/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_9
    :goto_3
    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->serialize(Lorg/w3c/dom/Node;)V
    :try_end_1
    .catch Lorg/w3c/dom/ls/LSException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "http://www.w3.org/dom/DOMTR"

    const-string v0, "STRING_TOO_LONG"

    invoke-static {p1, v0, p0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x2

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :catch_2
    move-exception p0

    sget-object p1, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->abort:Ljava/lang/RuntimeException;

    if-ne p0, p1, :cond_a

    return-object v3

    :cond_a
    new-instance p1, Lorg/w3c/dom/ls/LSException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v5, p0}, Lorg/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw p1

    :catch_3
    move-exception p0

    throw p0
.end method

.method public writeToURI(Lorg/w3c/dom/Node;Ljava/lang/String;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/ls/LSException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    move-object v1, p1

    check-cast v1, Lorg/w3c/dom/Document;

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    :goto_0
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getXmlVersion"

    new-array v6, v0, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_2
    move-object v4, v3

    :goto_1
    if-eqz v4, :cond_4

    const-string v5, "1.1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->xml11Serializer:Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;

    if-nez v4, :cond_3

    new-instance v4, Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;

    invoke-direct {v4}, Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;-><init>()V

    iput-object v4, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->xml11Serializer:Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;

    invoke-direct {p0, v4}, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->initSerializer(Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;)V

    :cond_3
    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->serializer:Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;

    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->xml11Serializer:Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;

    invoke-direct {p0, v4, v5}, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->copySettings(Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;)V

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->xml11Serializer:Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->serializer:Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;

    :goto_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getInputEncoding"

    new-array v7, v0, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    :cond_5
    move-object v5, v3

    :goto_3
    if-nez v5, :cond_7

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getXmlEncoding"

    new-array v8, v0, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v5, v1

    :catch_2
    :cond_6
    if-nez v5, :cond_7

    const-string v5, "UTF-8"

    :cond_7
    const/16 v1, 0x52

    :try_start_3
    invoke-direct {p0, v4, p1}, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->prepareForSerialization(Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;Lorg/w3c/dom/Node;)V

    iget-object v6, v4, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_format:Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    invoke-virtual {v6, v5}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->setEncoding(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-static {p2, v3, v5}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/net/URL;

    if-eqz v3, :cond_8

    move-object p2, v3

    :cond_8
    invoke-direct {v6, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string v7, "file"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_9

    const-string p2, "localhost"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    :cond_9
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-virtual {v6}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;->getPathWithoutEscapes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setDoInput(Z)V

    invoke-virtual {p0, v5}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    instance-of p2, p0, Ljava/net/HttpURLConnection;

    if-eqz p2, :cond_b

    move-object p2, p0

    check-cast p2, Ljava/net/HttpURLConnection;

    const-string v3, "PUT"

    invoke-virtual {p2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    :goto_4
    invoke-virtual {v4, p2}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->setOutputByteStream(Ljava/io/OutputStream;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    if-ne p0, v2, :cond_c

    check-cast p1, Lorg/w3c/dom/Document;

    invoke-virtual {v4, p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->serialize(Lorg/w3c/dom/Document;)V

    goto :goto_6

    :cond_c
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/16 p2, 0xb

    if-ne p0, p2, :cond_d

    check-cast p1, Lorg/w3c/dom/DocumentFragment;

    invoke-virtual {v4, p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->serialize(Lorg/w3c/dom/DocumentFragment;)V

    goto :goto_6

    :cond_d
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    if-ne p0, v5, :cond_e

    check-cast p1, Lorg/w3c/dom/Element;

    invoke-virtual {v4, p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->serialize(Lorg/w3c/dom/Element;)V

    goto :goto_6

    :cond_e
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/4 p2, 0x3

    if-eq p0, p2, :cond_10

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/16 p2, 0x8

    if-eq p0, p2, :cond_10

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/4 p2, 0x5

    if-eq p0, p2, :cond_10

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/4 p2, 0x4

    if-eq p0, p2, :cond_10

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/4 p2, 0x7

    if-ne p0, p2, :cond_f

    goto :goto_5

    :cond_f
    return v0

    :cond_10
    :goto_5
    invoke-virtual {v4, p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->serialize(Lorg/w3c/dom/Node;)V
    :try_end_3
    .catch Lorg/w3c/dom/ls/LSException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_6
    return v5

    :catch_3
    move-exception p0

    iget-object p1, v4, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz p1, :cond_11

    new-instance p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;-><init>()V

    iput-object p0, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    const/4 p2, 0x2

    iput-short p2, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fSeverity:S

    iget-object p2, v4, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    invoke-interface {p2, p1}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_11
    new-instance p1, Lorg/w3c/dom/ls/LSException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Lorg/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw p1

    :catch_4
    move-exception p0

    sget-object p1, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->abort:Ljava/lang/RuntimeException;

    if-ne p0, p1, :cond_12

    return v0

    :cond_12
    new-instance p1, Lorg/w3c/dom/ls/LSException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Lorg/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw p1

    :catch_5
    move-exception p0

    throw p0
.end method
