.class public Lcom/sun/org/apache/xalan/internal/transformer/KeyRefIterator;
.super Lcom/sun/org/apache/xpath/internal/axes/ChildTestIterator;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x3541624fa2310c5eL


# instance fields
.field protected m_keyDeclarations:Ljava/util/Vector;

.field m_keysNodes:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

.field protected m_name:Lcom/sun/org/apache/xml/internal/utils/QName;

.field protected m_ref:Lcom/sun/org/apache/xml/internal/utils/XMLString;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/utils/QName;Lcom/sun/org/apache/xml/internal/utils/XMLString;Ljava/util/Vector;Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/ChildTestIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/KeyRefIterator;->m_name:Lcom/sun/org/apache/xml/internal/utils/QName;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/transformer/KeyRefIterator;->m_ref:Lcom/sun/org/apache/xml/internal/utils/XMLString;

    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/transformer/KeyRefIterator;->m_keyDeclarations:Ljava/util/Vector;

    iput-object p4, p0, Lcom/sun/org/apache/xalan/internal/transformer/KeyRefIterator;->m_keysNodes:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;->setWhatToShow(I)V

    return-void
.end method


# virtual methods
.method public filterNode(I)S
    .locals 11

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/KeyRefIterator;->m_keyDeclarations:Ljava/util/Vector;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/KeyRefIterator;->m_name:Lcom/sun/org/apache/xml/internal/utils/QName;

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/KeyRefIterator;->m_keysNodes:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    check-cast v2, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->getContainedIter()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/transformer/KeyIterator;

    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const-string v5, "xctxt can not be null here!"

    invoke-virtual {p0, v4, v5}, Lcom/sun/org/apache/xpath/internal/Expression;->assertion(ZLjava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/transformer/KeyRefIterator;->m_ref:Lcom/sun/org/apache/xml/internal/utils/XMLString;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v6

    move v7, v4

    :goto_0
    if-ge v4, v6, :cond_5

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/org/apache/xalan/internal/templates/KeyDeclaration;

    invoke-virtual {v8}, Lcom/sun/org/apache/xalan/internal/templates/KeyDeclaration;->getName()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/sun/org/apache/xml/internal/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Lcom/sun/org/apache/xalan/internal/templates/KeyDeclaration;->getUse()Lcom/sun/org/apache/xpath/internal/XPath;

    move-result-object v7

    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->getPrefixResolver()Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    move-result-object v8

    invoke-virtual {v7, v3, p1, v8}, Lcom/sun/org/apache/xpath/internal/XPath;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getType()I

    move-result v8

    const/4 v9, 0x4

    const/4 v10, 0x1

    if-eq v8, v9, :cond_2

    invoke-virtual {v7}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->xstr()Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object v7

    invoke-interface {v5, v7}, Lcom/sun/org/apache/xml/internal/utils/XMLString;->equals(Lcom/sun/org/apache/xml/internal/utils/XMLString;)Z

    move-result v7

    if-eqz v7, :cond_4

    return v10

    :cond_2
    check-cast v7, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-virtual {v7}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->iterRaw()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->nextNode()I

    move-result v8

    const/4 v9, -0x1

    if-eq v9, v8, :cond_4

    invoke-virtual {p0, v8}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v9

    invoke-interface {v9, v8}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getStringValue(I)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-interface {v5, v8}, Lcom/sun/org/apache/xml/internal/utils/XMLString;->equals(Lcom/sun/org/apache/xml/internal/utils/XMLString;)Z

    move-result v8
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_3

    return v10

    :cond_4
    move v7, v10

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    if-eqz v7, :cond_6

    const/4 p0, 0x2

    return p0

    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/QName;->getLocalName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ER_NO_XSLKEY_DECLARATION"

    invoke-static {v0, p1}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public getNextNode()I
    .locals 3

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/KeyRefIterator;->m_keysNodes:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->nextNode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/transformer/KeyRefIterator;->filterNode(I)S

    move-result v2

    if-ne v1, v2, :cond_0

    :cond_1
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_lastFetched:I

    return v0
.end method
