.class Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/xpath/XPathResult;
.implements Lorg/w3c/dom/events/EventListener;


# instance fields
.field private final m_contextNode:Lorg/w3c/dom/Node;

.field private m_isInvalidIteratorState:Z

.field private m_iterator:Lorg/w3c/dom/traversal/NodeIterator;

.field private m_list:Lorg/w3c/dom/NodeList;

.field private final m_resultObj:Lcom/sun/org/apache/xpath/internal/objects/XObject;

.field private final m_resultType:S

.field private final m_xpath:Lcom/sun/org/apache/xpath/internal/XPath;


# direct methods
.method public constructor <init>(SLcom/sun/org/apache/xpath/internal/objects/XObject;Lorg/w3c/dom/Node;Lcom/sun/org/apache/xpath/internal/XPath;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_isInvalidIteratorState:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_iterator:Lorg/w3c/dom/traversal/NodeIterator;

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_list:Lorg/w3c/dom/NodeList;

    invoke-static {p1}, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->isValidType(S)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_8

    if-eqz p2, :cond_7

    iput-object p2, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_resultObj:Lcom/sun/org/apache/xpath/internal/objects/XObject;

    iput-object p3, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_contextNode:Lorg/w3c/dom/Node;

    iput-object p4, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    if-nez p1, :cond_0

    invoke-direct {p0, p2}, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->getTypeFromXObject(Lcom/sun/org/apache/xpath/internal/objects/XObject;)S

    move-result p1

    iput-short p1, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_resultType:S

    goto :goto_0

    :cond_0
    iput-short p1, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_resultType:S

    :goto_0
    iget-short p1, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_resultType:S

    const/4 p3, 0x4

    const/4 p4, 0x5

    if-eq p1, p4, :cond_1

    if-ne p1, p3, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->addEventListener()V

    :cond_2
    iget-short p1, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_resultType:S

    const-string v0, "ER_INCOMPATIBLE_TYPES"

    if-eq p1, p4, :cond_5

    if-eq p1, p3, :cond_5

    const/16 p3, 0x8

    if-eq p1, p3, :cond_5

    const/16 p3, 0x9

    if-ne p1, p3, :cond_3

    goto :goto_1

    :cond_3
    const/4 p3, 0x6

    if-eq p1, p3, :cond_4

    const/4 p3, 0x7

    if-ne p1, p3, :cond_6

    :cond_4
    :try_start_0
    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->nodelist()Lorg/w3c/dom/NodeList;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_list:Lorg/w3c/dom/NodeList;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPath;->getPatternString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_resultObj:Lcom/sun/org/apache/xpath/internal/objects/XObject;

    invoke-direct {p0, p2}, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->getTypeFromXObject(Lcom/sun/org/apache/xpath/internal/objects/XObject;)S

    move-result p2

    invoke-direct {p0, p2}, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->getTypeString(I)Ljava/lang/String;

    move-result-object p2

    iget-short p3, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_resultType:S

    invoke-direct {p0, p3}, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->getTypeString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/xpath/XPathException;

    invoke-direct {p1, v2, p0}, Lorg/w3c/dom/xpath/XPathException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    :try_start_1
    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->nodeset()Lorg/w3c/dom/traversal/NodeIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_iterator:Lorg/w3c/dom/traversal/NodeIterator;
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    :goto_2
    return-void

    :catch_1
    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPath;->getPatternString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_resultObj:Lcom/sun/org/apache/xpath/internal/objects/XObject;

    invoke-direct {p0, p2}, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->getTypeFromXObject(Lcom/sun/org/apache/xpath/internal/objects/XObject;)S

    move-result p2

    invoke-direct {p0, p2}, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->getTypeString(I)Ljava/lang/String;

    move-result-object p2

    iget-short p3, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_resultType:S

    invoke-direct {p0, p3}, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->getTypeString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/xpath/XPathException;

    invoke-direct {p1, v2, p0}, Lorg/w3c/dom/xpath/XPathException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_7
    const-string p0, "ER_EMPTY_XPATH_RESULT"

    invoke-static {p0, v0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/xpath/XPathException;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/xpath/XPathException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_8
    new-instance p0, Ljava/lang/Integer;

    invoke-direct {p0, p1}, Ljava/lang/Integer;-><init>(I)V

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "ER_INVALID_XPATH_TYPE"

    invoke-static {p1, p0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/xpath/XPathException;

    invoke-direct {p1, v2, p0}, Lorg/w3c/dom/xpath/XPathException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method private addEventListener()V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_contextNode:Lorg/w3c/dom/Node;

    instance-of v1, v0, Lorg/w3c/dom/events/EventTarget;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/w3c/dom/events/EventTarget;

    const-string v1, "DOMSubtreeModified"

    const/4 v2, 0x1

    invoke-interface {v0, v1, p0, v2}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    :cond_0
    return-void
.end method

.method private getTypeFromXObject(Lcom/sun/org/apache/xpath/internal/objects/XObject;)S
    .locals 2

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getType()I

    move-result p0

    const/4 p1, 0x3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return p1

    :cond_1
    return v1

    :cond_2
    return v0

    :cond_3
    return p1
.end method

.method private getTypeString(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p0, "#UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "FIRST_ORDERED_NODE_TYPE"

    return-object p0

    :pswitch_1
    const-string p0, "ANY_UNORDERED_NODE_TYPE"

    return-object p0

    :pswitch_2
    const-string p0, "ORDERED_NODE_SNAPSHOT_TYPE"

    return-object p0

    :pswitch_3
    const-string p0, "UNORDERED_NODE_SNAPSHOT_TYPE"

    return-object p0

    :pswitch_4
    const-string p0, "ORDERED_NODE_ITERATOR_TYPE"

    return-object p0

    :pswitch_5
    const-string p0, "UNORDERED_NODE_ITERATOR_TYPE"

    return-object p0

    :pswitch_6
    const-string p0, "BOOLEAN"

    return-object p0

    :pswitch_7
    const-string p0, "STRING_TYPE"

    return-object p0

    :pswitch_8
    const-string p0, "NUMBER_TYPE"

    return-object p0

    :pswitch_9
    const-string p0, "ANY_TYPE"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isNamespaceNode(Lorg/w3c/dom/Node;)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "xmlns:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "xmlns"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidType(S)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private removeEventListener()V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_contextNode:Lorg/w3c/dom/Node;

    instance-of v1, v0, Lorg/w3c/dom/events/EventTarget;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/w3c/dom/events/EventTarget;

    const-string v1, "DOMSubtreeModified"

    const/4 v2, 0x1

    invoke-interface {v0, v1, p0, v2}, Lorg/w3c/dom/events/EventTarget;->removeEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getBooleanValue()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/xpath/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->getResultType()S

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ne v0, v1, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_resultObj:Lcom/sun/org/apache/xpath/internal/objects/XObject;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->bool()Z

    move-result p0
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/w3c/dom/xpath/XPathException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Lorg/w3c/dom/xpath/XPathException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPath;->getPatternString()Ljava/lang/String;

    move-result-object v0

    iget-short v1, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_resultType:S

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->getTypeString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "ER_CANT_CONVERT_TO_BOOLEAN"

    invoke-static {v0, p0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lorg/w3c/dom/xpath/XPathException;

    invoke-direct {v0, v2, p0}, Lorg/w3c/dom/xpath/XPathException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public getInvalidIteratorState()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_isInvalidIteratorState:Z

    return p0
.end method

.method public getNumberValue()D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/xpath/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->getResultType()S

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v1, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_resultObj:Lcom/sun/org/apache/xpath/internal/objects/XObject;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->num()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/w3c/dom/xpath/XPathException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Lorg/w3c/dom/xpath/XPathException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPath;->getPatternString()Ljava/lang/String;

    move-result-object v0

    iget-short v1, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_resultType:S

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->getTypeString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "ER_CANT_CONVERT_XPATHRESULTTYPE_TO_NUMBER"

    invoke-static {v0, p0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lorg/w3c/dom/xpath/XPathException;

    invoke-direct {v0, v2, p0}, Lorg/w3c/dom/xpath/XPathException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public getResultType()S
    .locals 0

    iget-short p0, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_resultType:S

    return p0
.end method

.method public getSingleNodeValue()Lorg/w3c/dom/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/xpath/XPathException;
        }
    .end annotation

    iget-short v0, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_resultType:S

    const/16 v1, 0x8

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPath;->getPatternString()Ljava/lang/String;

    move-result-object v0

    iget-short v1, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_resultType:S

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->getTypeString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "ER_CANT_CONVERT_TO_SINGLENODE"

    invoke-static {v0, p0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lorg/w3c/dom/xpath/XPathException;

    invoke-direct {v0, v2, p0}, Lorg/w3c/dom/xpath/XPathException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_resultObj:Lcom/sun/org/apache/xpath/internal/objects/XObject;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->nodeset()Lorg/w3c/dom/traversal/NodeIterator;

    move-result-object v0
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/traversal/NodeIterator;->nextNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->isNamespaceNode(Lorg/w3c/dom/Node;)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathNamespaceImpl;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/domapi/XPathNamespaceImpl;-><init>(Lorg/w3c/dom/Node;)V

    return-object p0

    :cond_3
    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/w3c/dom/xpath/XPathException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Lorg/w3c/dom/xpath/XPathException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public getSnapshotLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/xpath/XPathException;
        }
    .end annotation

    iget-short v0, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_resultType:S

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPath;->getPatternString()Ljava/lang/String;

    move-result-object v0

    iget-short v1, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_resultType:S

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->getTypeString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "ER_CANT_GET_SNAPSHOT_LENGTH"

    invoke-static {v0, p0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lorg/w3c/dom/xpath/XPathException;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lorg/w3c/dom/xpath/XPathException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_list:Lorg/w3c/dom/NodeList;

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p0

    return p0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/xpath/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->getResultType()S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_resultObj:Lcom/sun/org/apache/xpath/internal/objects/XObject;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->str()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/w3c/dom/xpath/XPathException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/w3c/dom/xpath/XPathException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPath;->getPatternString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_resultObj:Lcom/sun/org/apache/xpath/internal/objects/XObject;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getTypeString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "ER_CANT_CONVERT_TO_STRING"

    invoke-static {v0, p0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lorg/w3c/dom/xpath/XPathException;

    invoke-direct {v0, v1, p0}, Lorg/w3c/dom/xpath/XPathException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 1

    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DOMSubtreeModified"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_isInvalidIteratorState:Z

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->removeEventListener()V

    :cond_0
    return-void
.end method

.method public iterateNext()Lorg/w3c/dom/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/xpath/XPathException;,
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-short v0, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_resultType:S

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPath;->getPatternString()Ljava/lang/String;

    move-result-object v0

    iget-short v1, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_resultType:S

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->getTypeString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "ER_NON_ITERATOR_TYPE"

    invoke-static {v0, p0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lorg/w3c/dom/xpath/XPathException;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lorg/w3c/dom/xpath/XPathException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->getInvalidIteratorState()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_iterator:Lorg/w3c/dom/traversal/NodeIterator;

    invoke-interface {v0}, Lorg/w3c/dom/traversal/NodeIterator;->nextNode()Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->removeEventListener()V

    :cond_2
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->isNamespaceNode(Lorg/w3c/dom/Node;)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathNamespaceImpl;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/domapi/XPathNamespaceImpl;-><init>(Lorg/w3c/dom/Node;)V

    return-object p0

    :cond_3
    return-object v0

    :cond_4
    const-string p0, "ER_DOC_MUTATED"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public snapshotItem(I)Lorg/w3c/dom/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/xpath/XPathException;
        }
    .end annotation

    iget-short v0, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_resultType:S

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPath;->getPatternString()Ljava/lang/String;

    move-result-object p1

    iget-short v0, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_resultType:S

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->getTypeString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "ER_NON_SNAPSHOT_TYPE"

    invoke-static {p1, p0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/xpath/XPathException;

    const/4 v0, 0x2

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/xpath/XPathException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->m_list:Lorg/w3c/dom/NodeList;

    invoke-interface {v0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/domapi/XPathResultImpl;->isNamespaceNode(Lorg/w3c/dom/Node;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lcom/sun/org/apache/xpath/internal/domapi/XPathNamespaceImpl;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/domapi/XPathNamespaceImpl;-><init>(Lorg/w3c/dom/Node;)V

    return-object p0

    :cond_2
    return-object p1
.end method
