.class Lcom/sun/org/apache/xpath/internal/domapi/XPathExpressionImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/xpath/XPathExpression;


# instance fields
.field private final m_doc:Lorg/w3c/dom/Document;

.field private final m_xpath:Lcom/sun/org/apache/xpath/internal/XPath;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/XPath;Lorg/w3c/dom/Document;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathExpressionImpl;->m_xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    iput-object p2, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathExpressionImpl;->m_doc:Lorg/w3c/dom/Document;

    return-void
.end method


# virtual methods
.method public evaluate(Lorg/w3c/dom/Node;SLjava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/xpath/XPathException;,
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object p3, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathExpressionImpl;->m_doc:Lorg/w3c/dom/Document;

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p3, :cond_3

    const/4 v3, 0x4

    if-eq p1, p3, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p3

    iget-object v4, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathExpressionImpl;->m_doc:Lorg/w3c/dom/Document;

    invoke-virtual {p3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "ER_WRONG_DOCUMENT"

    invoke-static {p0, v2}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v3, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p3

    const/16 v4, 0x9

    if-eq p3, v4, :cond_3

    if-eq p3, v0, :cond_3

    if-eq p3, v1, :cond_3

    const/4 v5, 0x3

    if-eq p3, v5, :cond_3

    if-eq p3, v3, :cond_3

    const/16 v3, 0x8

    if-eq p3, v3, :cond_3

    const/4 v3, 0x7

    if-eq p3, v3, :cond_3

    const/16 v3, 0xd

    if-ne p3, v3, :cond_2

    goto :goto_1

    :cond_2
    const-string p0, "ER_WRONG_NODETYPE"

    invoke-static {p0, v2}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v4, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    invoke-static {p2}, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->isValidType(S)Z

    move-result p3

    if-eqz p3, :cond_5

    new-instance p3, Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-direct {p3}, Lcom/sun/org/apache/xpath/internal/XPathContext;-><init>()V

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathExpressionImpl;->m_doc:Lorg/w3c/dom/Document;

    if-eqz v1, :cond_4

    invoke-virtual {p3, v1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathExpressionImpl;->m_xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-virtual {v1, p3, p1, v2}, Lcom/sun/org/apache/xpath/internal/XPath;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;Lorg/w3c/dom/Node;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p3
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathExpressionImpl;->m_xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-direct {v0, p2, p3, p1, p0}, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;-><init>(SLcom/sun/org/apache/xpath/internal/objects/XObject;Lorg/w3c/dom/Node;Lcom/sun/org/apache/xpath/internal/XPath;)V

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/w3c/dom/xpath/XPathException;

    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->getMessageAndLocation()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/xpath/XPathException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_5
    new-instance p0, Ljava/lang/Integer;

    invoke-direct {p0, p2}, Ljava/lang/Integer;-><init>(I)V

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "ER_INVALID_XPATH_TYPE"

    invoke-static {p1, p0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/xpath/XPathException;

    invoke-direct {p1, v1, p0}, Lorg/w3c/dom/xpath/XPathException;-><init>(SLjava/lang/String;)V

    throw p1
.end method
