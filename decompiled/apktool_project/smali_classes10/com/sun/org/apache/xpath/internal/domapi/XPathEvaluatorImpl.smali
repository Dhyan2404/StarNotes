.class public final Lcom/sun/org/apache/xpath/internal/domapi/XPathEvaluatorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/xpath/XPathEvaluator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xpath/internal/domapi/XPathEvaluatorImpl$DummyPrefixResolver;
    }
.end annotation


# instance fields
.field private final m_doc:Lorg/w3c/dom/Document;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathEvaluatorImpl;->m_doc:Lorg/w3c/dom/Document;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathEvaluatorImpl;->m_doc:Lorg/w3c/dom/Document;

    return-void
.end method


# virtual methods
.method public createExpression(Ljava/lang/String;Lorg/w3c/dom/xpath/XPathNSResolver;)Lorg/w3c/dom/xpath/XPathExpression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/xpath/XPathException;,
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/sun/org/apache/xpath/internal/XPath;

    if-nez p2, :cond_0

    new-instance p2, Lcom/sun/org/apache/xpath/internal/domapi/XPathEvaluatorImpl$DummyPrefixResolver;

    invoke-direct {p2, p0}, Lcom/sun/org/apache/xpath/internal/domapi/XPathEvaluatorImpl$DummyPrefixResolver;-><init>(Lcom/sun/org/apache/xpath/internal/domapi/XPathEvaluatorImpl;)V

    goto :goto_0

    :cond_0
    check-cast p2, Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, p2, v1}, Lcom/sun/org/apache/xpath/internal/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;I)V

    new-instance p1, Lcom/sun/org/apache/xpath/internal/domapi/XPathExpressionImpl;

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathEvaluatorImpl;->m_doc:Lorg/w3c/dom/Document;

    invoke-direct {p1, v0, p0}, Lcom/sun/org/apache/xpath/internal/domapi/XPathExpressionImpl;-><init>(Lcom/sun/org/apache/xpath/internal/XPath;Lorg/w3c/dom/Document;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    instance-of p1, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathStylesheetDOM3Exception;

    if-eqz p1, :cond_1

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/16 p2, 0xe

    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->getMessageAndLocation()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/w3c/dom/xpath/XPathException;

    const/4 p2, 0x1

    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->getMessageAndLocation()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/xpath/XPathException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public createNSResolver(Lorg/w3c/dom/Node;)Lorg/w3c/dom/xpath/XPathNSResolver;
    .locals 2

    new-instance p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathNSResolverImpl;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    check-cast p1, Lorg/w3c/dom/Document;

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/domapi/XPathNSResolverImpl;-><init>(Lorg/w3c/dom/Node;)V

    return-object p0
.end method

.method public evaluate(Ljava/lang/String;Lorg/w3c/dom/Node;Lorg/w3c/dom/xpath/XPathNSResolver;SLjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/xpath/XPathException;,
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0, p1, p3}, Lcom/sun/org/apache/xpath/internal/domapi/XPathEvaluatorImpl;->createExpression(Ljava/lang/String;Lorg/w3c/dom/xpath/XPathNSResolver;)Lorg/w3c/dom/xpath/XPathExpression;

    move-result-object p0

    invoke-interface {p0, p2, p4, p5}, Lorg/w3c/dom/xpath/XPathExpression;->evaluate(Lorg/w3c/dom/Node;SLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
