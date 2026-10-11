.class public Lcom/sun/org/apache/xpath/internal/jaxp/XPathExpressionImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/xpath/XPathExpression;


# static fields
.field static d:Lorg/w3c/dom/Document;

.field static db:Ljavax/xml/parsers/DocumentBuilder;

.field static dbf:Ljavax/xml/parsers/DocumentBuilderFactory;


# instance fields
.field private featureSecureProcessing:Z

.field private functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

.field private prefixResolver:Lcom/sun/org/apache/xpath/internal/jaxp/JAXPPrefixResolver;

.field private variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

.field private xpath:Lcom/sun/org/apache/xpath/internal/XPath;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathExpressionImpl;->featureSecureProcessing:Z

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/XPath;Lcom/sun/org/apache/xpath/internal/jaxp/JAXPPrefixResolver;Ljavax/xml/xpath/XPathFunctionResolver;Ljavax/xml/xpath/XPathVariableResolver;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathExpressionImpl;->xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    .line 5
    iput-object p2, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathExpressionImpl;->prefixResolver:Lcom/sun/org/apache/xpath/internal/jaxp/JAXPPrefixResolver;

    .line 6
    iput-object p3, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathExpressionImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    .line 7
    iput-object p4, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathExpressionImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathExpressionImpl;->featureSecureProcessing:Z

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/XPath;Lcom/sun/org/apache/xpath/internal/jaxp/JAXPPrefixResolver;Ljavax/xml/xpath/XPathFunctionResolver;Ljavax/xml/xpath/XPathVariableResolver;Z)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathExpressionImpl;->xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    .line 11
    iput-object p2, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathExpressionImpl;->prefixResolver:Lcom/sun/org/apache/xpath/internal/jaxp/JAXPPrefixResolver;

    .line 12
    iput-object p3, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathExpressionImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    .line 13
    iput-object p4, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathExpressionImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    .line 14
    iput-boolean p5, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathExpressionImpl;->featureSecureProcessing:Z

    return-void
.end method

.method private eval(Ljava/lang/Object;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathExpressionImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Lcom/sun/org/apache/xpath/internal/jaxp/JAXPExtensionsProvider;

    iget-boolean v2, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathExpressionImpl;->featureSecureProcessing:Z

    invoke-direct {v1, v0, v2}, Lcom/sun/org/apache/xpath/internal/jaxp/JAXPExtensionsProvider;-><init>(Ljavax/xml/xpath/XPathFunctionResolver;Z)V

    .line 5
    new-instance v0, Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xpath/internal/XPathContext;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-direct {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;-><init>()V

    .line 7
    :goto_0
    new-instance v1, Lcom/sun/org/apache/xpath/internal/jaxp/JAXPVariableStack;

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathExpressionImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    invoke-direct {v1, v2}, Lcom/sun/org/apache/xpath/internal/jaxp/JAXPVariableStack;-><init>(Ljavax/xml/xpath/XPathVariableResolver;)V

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->setVarStack(Lcom/sun/org/apache/xpath/internal/VariableStack;)V

    .line 8
    check-cast p1, Lorg/w3c/dom/Node;

    if-nez p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathExpressionImpl;->xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    const/4 v1, -0x1

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathExpressionImpl;->prefixResolver:Lcom/sun/org/apache/xpath/internal/jaxp/JAXPPrefixResolver;

    invoke-virtual {p1, v0, v1, p0}, Lcom/sun/org/apache/xpath/internal/XPath;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p0

    goto :goto_1

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathExpressionImpl;->xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathExpressionImpl;->prefixResolver:Lcom/sun/org/apache/xpath/internal/jaxp/JAXPPrefixResolver;

    invoke-virtual {v1, v0, p1, p0}, Lcom/sun/org/apache/xpath/internal/XPath;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;Lorg/w3c/dom/Node;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p0

    :goto_1
    return-object p0
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
.method public eval(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/jaxp/XPathExpressionImpl;->eval(Ljava/lang/Object;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/jaxp/XPathExpressionImpl;->getResultAsType(Lcom/sun/org/apache/xpath/internal/objects/XObject;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 1
    invoke-direct {p0, p2}, Lcom/sun/org/apache/xpath/internal/jaxp/XPathExpressionImpl;->isSupported(Ljavax/xml/namespace/QName;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/jaxp/XPathExpressionImpl;->eval(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object p1

    .line 4
    instance-of p2, p1, Ljavax/xml/xpath/XPathFunctionException;

    if-eqz p2, :cond_0

    .line 5
    check-cast p1, Ljavax/xml/xpath/XPathFunctionException;

    throw p1

    .line 6
    :cond_0
    new-instance p1, Ljavax/xml/xpath/XPathExpressionException;

    invoke-direct {p1, p0}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 7
    new-instance p1, Ljavax/xml/xpath/XPathExpressionException;

    invoke-direct {p1, p0}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 8
    :cond_1
    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "ER_UNSUPPORTED_RETURN_TYPE"

    invoke-static {p1, p0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string p0, "returnType"

    .line 10
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "ER_ARG_CANNOT_BE_NULL"

    invoke-static {p1, p0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 11
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public evaluate(Lorg/xml/sax/InputSource;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 13
    invoke-direct {p0, p2}, Lcom/sun/org/apache/xpath/internal/jaxp/XPathExpressionImpl;->isSupported(Ljavax/xml/namespace/QName;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    :try_start_0
    sget-object v0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    if-nez v0, :cond_0

    .line 15
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 17
    sget-object v0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    .line 18
    :cond_0
    sget-object v0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathExpressionImpl;->db:Ljavax/xml/parsers/DocumentBuilder;

    .line 19
    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p1

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/jaxp/XPathExpressionImpl;->eval(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 21
    new-instance p1, Ljavax/xml/xpath/XPathExpressionException;

    invoke-direct {p1, p0}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 22
    :cond_1
    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "ER_UNSUPPORTED_RETURN_TYPE"

    invoke-static {p1, p0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string p0, "ER_SOURCE_RETURN_TYPE_CANNOT_BE_NULL"

    const/4 p1, 0x0

    .line 24
    invoke-static {p0, p1}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 25
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public evaluate(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .line 12
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xpath/internal/jaxp/XPathExpressionImpl;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public evaluate(Lorg/xml/sax/InputSource;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .line 26
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xpath/internal/jaxp/XPathExpressionImpl;->evaluate(Lorg/xml/sax/InputSource;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public setXPath(Lcom/sun/org/apache/xpath/internal/XPath;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/jaxp/XPathExpressionImpl;->xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    return-void
.end method
