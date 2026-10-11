.class public Lcom/sun/org/apache/xalan/internal/lib/Extensions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xalan/internal/lib/Extensions$DocumentHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkEnvironment(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)Lorg/w3c/dom/Node;
    .locals 3

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p0, v0}, Lcom/sun/org/apache/xalan/internal/lib/Extensions;->checkEnvironmentUsingWhich(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Node;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;-><init>()V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->getEnvironmentHash()Ljava/util/Hashtable;

    move-result-object v1

    const-string v2, "checkEnvironmentExtension"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->appendEnvironmentReport(Lorg/w3c/dom/Node;Lorg/w3c/dom/Document;Ljava/util/Hashtable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method private static checkEnvironmentUsingWhich(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Node;
    .locals 7

    const/4 p0, 0x3

    new-array v0, p0, [Ljava/lang/Class;

    const-class v1, Ljava/util/Hashtable;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-class v3, Ljava/lang/String;

    aput-object v3, v0, v1

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const/4 v3, 0x0

    :try_start_0
    const-string v5, "org.apache.env.Which"

    invoke-static {}, Lcom/sun/org/apache/xalan/internal/lib/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/sun/org/apache/xalan/internal/lib/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v5

    if-nez v5, :cond_0

    return-object v3

    :cond_0
    const-string v6, "which"

    invoke-virtual {v5, v6, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    new-array p0, p0, [Ljava/lang/Object;

    aput-object v5, p0, v2

    const-string v2, "XmlCommons;Xalan;Xerces;Crimson;Ant"

    aput-object v2, p0, v1

    const-string v1, ""

    aput-object v1, p0, v4

    invoke-virtual {v0, v3, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "checkEnvironmentExtension"

    invoke-interface {p1, p0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    const-string v0, "whichReport"

    invoke-static {v5, v0, p0, p1}, Lcom/sun/org/apache/xml/internal/utils/Hashtree2Node;->appendHashToNode(Ljava/util/Hashtable;Ljava/lang/String;Lorg/w3c/dom/Node;Lorg/w3c/dom/Document;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object v3
.end method

.method public static difference(Lorg/w3c/dom/NodeList;Lorg/w3c/dom/NodeList;)Lorg/w3c/dom/NodeList;
    .locals 0

    invoke-static {p0, p1}, Lcom/sun/org/apache/xalan/internal/lib/ExsltSets;->difference(Lorg/w3c/dom/NodeList;Lorg/w3c/dom/NodeList;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    return-object p0
.end method

.method public static distinct(Lorg/w3c/dom/NodeList;)Lorg/w3c/dom/NodeList;
    .locals 0

    invoke-static {p0}, Lcom/sun/org/apache/xalan/internal/lib/ExsltSets;->distinct(Lorg/w3c/dom/NodeList;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    return-object p0
.end method

.method public static evaluate(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;Ljava/lang/String;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sun/org/apache/xalan/internal/lib/ExsltDynamic;->evaluate(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;Ljava/lang/String;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p0

    return-object p0
.end method

.method public static hasSameNodes(Lorg/w3c/dom/NodeList;Lorg/w3c/dom/NodeList;)Z
    .locals 3

    new-instance v0, Lcom/sun/org/apache/xpath/internal/NodeSet;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xpath/internal/NodeSet;-><init>(Lorg/w3c/dom/NodeList;)V

    new-instance p0, Lcom/sun/org/apache/xpath/internal/NodeSet;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/NodeSet;-><init>(Lorg/w3c/dom/NodeList;)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/NodeSet;->getLength()I

    move-result p1

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/NodeSet;->getLength()I

    move-result v1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_0

    return v2

    :cond_0
    move p1, v2

    :goto_0
    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/NodeSet;->getLength()I

    move-result v1

    if-ge p1, v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xpath/internal/NodeSet;->elementAt(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xpath/internal/NodeSet;->contains(Lorg/w3c/dom/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static intersection(Lorg/w3c/dom/NodeList;Lorg/w3c/dom/NodeList;)Lorg/w3c/dom/NodeList;
    .locals 0

    invoke-static {p0, p1}, Lcom/sun/org/apache/xalan/internal/lib/ExsltSets;->intersection(Lorg/w3c/dom/NodeList;Lorg/w3c/dom/NodeList;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    return-object p0
.end method

.method public static nodeset(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;Ljava/lang/Object;)Lcom/sun/org/apache/xpath/internal/NodeSet;
    .locals 2

    instance-of p0, p1, Lorg/w3c/dom/traversal/NodeIterator;

    if-eqz p0, :cond_0

    new-instance p0, Lcom/sun/org/apache/xpath/internal/NodeSet;

    check-cast p1, Lorg/w3c/dom/traversal/NodeIterator;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/NodeSet;-><init>(Lorg/w3c/dom/traversal/NodeIterator;)V

    return-object p0

    :cond_0
    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    instance-of p0, p1, Ljava/lang/Boolean;

    if-eqz p0, :cond_2

    new-instance p0, Lcom/sun/org/apache/xpath/internal/objects/XBoolean;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/objects/XBoolean;-><init>(Z)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XBoolean;->str()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    instance-of p0, p1, Ljava/lang/Double;

    if-eqz p0, :cond_3

    new-instance p0, Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xpath/internal/objects/XNumber;-><init>(D)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XNumber;->str()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p1

    invoke-interface {p0}, Lorg/w3c/dom/Document;->createDocumentFragment()Lorg/w3c/dom/DocumentFragment;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    new-instance p1, Lcom/sun/org/apache/xpath/internal/NodeSet;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xpath/internal/NodeSet;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public static tokenize(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1

    const-string v0, " \t\n\r"

    .line 8
    invoke-static {p0, v0}, Lcom/sun/org/apache/xalan/internal/lib/Extensions;->tokenize(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    return-object p0
.end method

.method public static tokenize(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 2

    .line 1
    invoke-static {}, Lcom/sun/org/apache/xalan/internal/lib/Extensions$DocumentHolder;->access$000()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p0, Lcom/sun/org/apache/xpath/internal/NodeSet;

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/NodeSet;-><init>()V

    .line 4
    monitor-enter v0

    .line 5
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/NodeSet;->addNode(Lorg/w3c/dom/Node;)V

    goto :goto_0

    .line 7
    :cond_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
