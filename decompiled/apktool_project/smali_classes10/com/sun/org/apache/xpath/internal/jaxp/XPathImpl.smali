.class public Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/xpath/XPath;


# static fields
.field private static d:Lorg/w3c/dom/Document;


# instance fields
.field private featureSecureProcessing:Z

.field private functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

.field private namespaceContext:Ljavax/xml/namespace/NamespaceContext;

.field private origFunctionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

.field private origVariableResolver:Ljavax/xml/xpath/XPathVariableResolver;

.field private prefixResolver:Lcom/sun/org/apache/xpath/internal/jaxp/JAXPPrefixResolver;

.field private variableResolver:Ljavax/xml/xpath/XPathVariableResolver;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljavax/xml/xpath/XPathVariableResolver;Ljavax/xml/xpath/XPathFunctionResolver;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->namespaceContext:Ljavax/xml/namespace/NamespaceContext;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->featureSecureProcessing:Z

    .line 4
    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->origVariableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    .line 5
    iput-object p2, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    iput-object p2, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->origFunctionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    return-void
.end method

.method public constructor <init>(Ljavax/xml/xpath/XPathVariableResolver;Ljavax/xml/xpath/XPathFunctionResolver;Z)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->namespaceContext:Ljavax/xml/namespace/NamespaceContext;

    .line 8
    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->origVariableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    .line 9
    iput-object p2, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    iput-object p2, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->origFunctionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    .line 10
    iput-boolean p3, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->featureSecureProcessing:Z

    return-void
.end method

.method private eval(Ljava/lang/String;Ljava/lang/Object;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xpath/internal/XPath;

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->prefixResolver:Lcom/sun/org/apache/xpath/internal/jaxp/JAXPPrefixResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3, v1, v2}, Lcom/sun/org/apache/xpath/internal/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;I)V

    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    if-eqz p1, :cond_0

    new-instance v1, Lcom/sun/org/apache/xpath/internal/jaxp/JAXPExtensionsProvider;

    iget-boolean v2, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->featureSecureProcessing:Z

    invoke-direct {v1, p1, v2}, Lcom/sun/org/apache/xpath/internal/jaxp/JAXPExtensionsProvider;-><init>(Ljavax/xml/xpath/XPathFunctionResolver;Z)V

    new-instance p1, Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-direct {p1, v1}, Lcom/sun/org/apache/xpath/internal/XPathContext;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-direct {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;-><init>()V

    :goto_0
    new-instance v1, Lcom/sun/org/apache/xpath/internal/jaxp/JAXPVariableStack;

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    invoke-direct {v1, v2}, Lcom/sun/org/apache/xpath/internal/jaxp/JAXPVariableStack;-><init>(Ljavax/xml/xpath/XPathVariableResolver;)V

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->setVarStack(Lcom/sun/org/apache/xpath/internal/VariableStack;)V

    instance-of v1, p2, Lorg/w3c/dom/Node;

    if-eqz v1, :cond_1

    check-cast p2, Lorg/w3c/dom/Node;

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->prefixResolver:Lcom/sun/org/apache/xpath/internal/jaxp/JAXPPrefixResolver;

    invoke-virtual {v0, p1, p2, p0}, Lcom/sun/org/apache/xpath/internal/XPath;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;Lorg/w3c/dom/Node;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p2, -0x1

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->prefixResolver:Lcom/sun/org/apache/xpath/internal/jaxp/JAXPPrefixResolver;

    invoke-virtual {v0, p1, p2, p0}, Lcom/sun/org/apache/xpath/internal/XPath;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private static getDummyDocument()Lorg/w3c/dom/Document;
    .locals 4

    sget-object v0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->d:Lorg/w3c/dom/Document;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->getParser()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v0

    const-string v1, "dummyroot"

    const/4 v2, 0x0

    const-string v3, "http://java.sun.com/jaxp/xpath"

    invoke-interface {v0, v3, v1, v2}, Lorg/w3c/dom/DOMImplementation;->createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->d:Lorg/w3c/dom/Document;

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->d:Lorg/w3c/dom/Document;

    return-object v0
.end method

.method private static getParser()Ljavax/xml/parsers/DocumentBuilder;
    .locals 2

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getResultAsType(Lcom/sun/org/apache/xpath/internal/objects/XObject;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    sget-object p0, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-virtual {p2, p0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->str()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ljavax/xml/xpath/XPathConstants;->NUMBER:Ljavax/xml/namespace/QName;

    invoke-virtual {p2, p0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/Double;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->num()D

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    return-object p0

    :cond_1
    sget-object p0, Ljavax/xml/xpath/XPathConstants;->BOOLEAN:Ljavax/xml/namespace/QName;

    invoke-virtual {p2, p0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->bool()Z

    move-result p1

    invoke-direct {p0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p0

    :cond_2
    sget-object p0, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-virtual {p2, p0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->nodelist()Lorg/w3c/dom/NodeList;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object p0, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-virtual {p2, p0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->nodeset()Lorg/w3c/dom/traversal/NodeIterator;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/traversal/NodeIterator;->nextNode()Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "ER_UNSUPPORTED_RETURN_TYPE"

    invoke-static {p1, p0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isSupported(Ljavax/xml/namespace/QName;)Z
    .locals 0

    sget-object p0, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-virtual {p1, p0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Ljavax/xml/xpath/XPathConstants;->NUMBER:Ljavax/xml/namespace/QName;

    invoke-virtual {p1, p0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Ljavax/xml/xpath/XPathConstants;->BOOLEAN:Ljavax/xml/namespace/QName;

    invoke-virtual {p1, p0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-virtual {p1, p0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-virtual {p1, p0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Lcom/sun/org/apache/xpath/internal/XPath;

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->prefixResolver:Lcom/sun/org/apache/xpath/internal/jaxp/JAXPPrefixResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v3, v0, v2}, Lcom/sun/org/apache/xpath/internal/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;I)V

    new-instance p1, Lcom/sun/org/apache/xpath/internal/jaxp/XPathExpressionImpl;

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->prefixResolver:Lcom/sun/org/apache/xpath/internal/jaxp/JAXPPrefixResolver;

    iget-object v3, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    iget-object v4, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    iget-boolean v5, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->featureSecureProcessing:Z

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xpath/internal/jaxp/XPathExpressionImpl;-><init>(Lcom/sun/org/apache/xpath/internal/XPath;Lcom/sun/org/apache/xpath/internal/jaxp/JAXPPrefixResolver;Ljavax/xml/xpath/XPathFunctionResolver;Ljavax/xml/xpath/XPathVariableResolver;Z)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/xml/xpath/XPathExpressionException;

    invoke-direct {p1, p0}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    const-string p0, "XPath expression"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "ER_ARG_CANNOT_BE_NULL"

    invoke-static {p1, p0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    const-string v0, "ER_ARG_CANNOT_BE_NULL"

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    .line 1
    invoke-direct {p0, p3}, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->isSupported(Ljavax/xml/namespace/QName;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->eval(Ljava/lang/String;Ljava/lang/Object;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1, p3}, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->getResultAsType(Lcom/sun/org/apache/xpath/internal/objects/XObject;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object p1

    .line 5
    instance-of p2, p1, Ljavax/xml/xpath/XPathFunctionException;

    if-eqz p2, :cond_0

    .line 6
    check-cast p1, Ljavax/xml/xpath/XPathFunctionException;

    throw p1

    .line 7
    :cond_0
    new-instance p1, Ljavax/xml/xpath/XPathExpressionException;

    invoke-direct {p1, p0}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 8
    new-instance p1, Ljavax/xml/xpath/XPathExpressionException;

    invoke-direct {p1, p0}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 9
    :cond_1
    invoke-virtual {p3}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "ER_UNSUPPORTED_RETURN_TYPE"

    invoke-static {p1, p0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string p0, "returnType"

    .line 11
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 12
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string p0, "XPath expression"

    .line 13
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 14
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public evaluate(Ljava/lang/String;Lorg/xml/sax/InputSource;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    const-string v0, "ER_ARG_CANNOT_BE_NULL"

    if-eqz p2, :cond_4

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    .line 16
    invoke-direct {p0, p3}, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->isSupported(Ljavax/xml/namespace/QName;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    :try_start_0
    invoke-static {}, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->getParser()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p2

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->eval(Ljava/lang/String;Ljava/lang/Object;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p1

    .line 19
    invoke-direct {p0, p1, p3}, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->getResultAsType(Lcom/sun/org/apache/xpath/internal/objects/XObject;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 20
    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object p1

    .line 21
    instance-of p2, p1, Ljavax/xml/xpath/XPathFunctionException;

    if-eqz p2, :cond_0

    .line 22
    check-cast p1, Ljavax/xml/xpath/XPathFunctionException;

    throw p1

    .line 23
    :cond_0
    new-instance p1, Ljavax/xml/xpath/XPathExpressionException;

    invoke-direct {p1, p0}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 24
    new-instance p1, Ljavax/xml/xpath/XPathExpressionException;

    invoke-direct {p1, p0}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    .line 25
    new-instance p1, Ljavax/xml/xpath/XPathExpressionException;

    invoke-direct {p1, p0}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 26
    :cond_1
    invoke-virtual {p3}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "ER_UNSUPPORTED_RETURN_TYPE"

    invoke-static {p1, p0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string p0, "returnType"

    .line 28
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 29
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string p0, "XPath expression"

    .line 30
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 31
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string p0, "source"

    .line 32
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 33
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public evaluate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .line 15
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public evaluate(Ljava/lang/String;Lorg/xml/sax/InputSource;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .line 34
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->evaluate(Ljava/lang/String;Lorg/xml/sax/InputSource;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->namespaceContext:Ljavax/xml/namespace/NamespaceContext;

    return-object p0
.end method

.method public getXPathFunctionResolver()Ljavax/xml/xpath/XPathFunctionResolver;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    return-object p0
.end method

.method public getXPathVariableResolver()Ljavax/xml/xpath/XPathVariableResolver;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    return-object p0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->origVariableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->origFunctionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->namespaceContext:Ljavax/xml/namespace/NamespaceContext;

    return-void
.end method

.method public setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->namespaceContext:Ljavax/xml/namespace/NamespaceContext;

    new-instance v0, Lcom/sun/org/apache/xpath/internal/jaxp/JAXPPrefixResolver;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/xpath/internal/jaxp/JAXPPrefixResolver;-><init>(Ljavax/xml/namespace/NamespaceContext;)V

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->prefixResolver:Lcom/sun/org/apache/xpath/internal/jaxp/JAXPPrefixResolver;

    return-void

    :cond_0
    const-string p0, "NamespaceContext"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "ER_ARG_CANNOT_BE_NULL"

    invoke-static {p1, p0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setXPathFunctionResolver(Ljavax/xml/xpath/XPathFunctionResolver;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    return-void

    :cond_0
    const-string p0, "XPathFunctionResolver"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "ER_ARG_CANNOT_BE_NULL"

    invoke-static {p1, p0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setXPathVariableResolver(Ljavax/xml/xpath/XPathVariableResolver;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    return-void

    :cond_0
    const-string p0, "XPathVariableResolver"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "ER_ARG_CANNOT_BE_NULL"

    invoke-static {p1, p0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
