.class public Lcom/sun/org/apache/xalan/internal/transformer/KeyTable;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private m_docKey:I

.field private m_keyDeclarations:Ljava/util/Vector;

.field private m_keyNodes:Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

.field private m_refsTable:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;Lcom/sun/org/apache/xml/internal/utils/QName;Ljava/util/Vector;Lcom/sun/org/apache/xpath/internal/XPathContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/transformer/KeyTable;->m_refsTable:Ljava/util/Hashtable;

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/KeyTable;->m_docKey:I

    iput-object p4, p0, Lcom/sun/org/apache/xalan/internal/transformer/KeyTable;->m_keyDeclarations:Ljava/util/Vector;

    new-instance p2, Lcom/sun/org/apache/xalan/internal/transformer/KeyIterator;

    invoke-direct {p2, p3, p4}, Lcom/sun/org/apache/xalan/internal/transformer/KeyIterator;-><init>(Lcom/sun/org/apache/xml/internal/utils/QName;Ljava/util/Vector;)V

    new-instance p3, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-direct {p3, p2}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/transformer/KeyTable;->m_keyNodes:Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    const/4 p2, 0x0

    invoke-virtual {p3, p2}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->allowDetachToRelease(Z)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/KeyTable;->m_keyNodes:Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-virtual {p0, p1, p5}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->setRoot(ILjava/lang/Object;)V

    return-void
.end method

.method private addValueInRefsTable(Lcom/sun/org/apache/xpath/internal/XPathContext;Lcom/sun/org/apache/xml/internal/utils/XMLString;I)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/KeyTable;->m_refsTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object p1

    invoke-direct {v0, p3, p1}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;-><init>(ILcom/sun/org/apache/xml/internal/dtm/DTMManager;)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->nextNode()I

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/KeyTable;->m_refsTable:Ljava/util/Hashtable;

    invoke-virtual {p0, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->getCurrentNode()I

    move-result p0

    if-eq p0, p3, :cond_1

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->mutableNodeset()Lcom/sun/org/apache/xpath/internal/NodeSetDTM;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->addNode(I)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->nextNode()I

    :cond_1
    :goto_0
    return-void
.end method

.method private getKeyDeclarations()Ljava/util/Vector;
    .locals 6

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/KeyTable;->m_keyDeclarations:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1, v0}, Ljava/util/Vector;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/transformer/KeyTable;->m_keyDeclarations:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xalan/internal/templates/KeyDeclaration;

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/templates/KeyDeclaration;->getName()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/KeyTable;->getKeyTableName()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/xml/internal/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private getRefsTable()Ljava/util/Hashtable;
    .locals 10

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/KeyTable;->m_refsTable:Ljava/util/Hashtable;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0x59

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/KeyTable;->m_refsTable:Ljava/util/Hashtable;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/KeyTable;->m_keyNodes:Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->getContainedIter()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/transformer/KeyIterator;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/transformer/KeyTable;->getKeyDeclarations()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/transformer/KeyTable;->m_keyNodes:Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-virtual {v4}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->reset()V

    :cond_0
    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/transformer/KeyTable;->m_keyNodes:Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-virtual {v4}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->nextNode()I

    move-result v4

    const/4 v5, -0x1

    if-eq v5, v4, :cond_3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_0

    :try_start_0
    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/org/apache/xalan/internal/templates/KeyDeclaration;

    invoke-virtual {v7}, Lcom/sun/org/apache/xalan/internal/templates/KeyDeclaration;->getUse()Lcom/sun/org/apache/xpath/internal/XPath;

    move-result-object v7

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->getPrefixResolver()Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    move-result-object v8

    invoke-virtual {v7, v1, v4, v8}, Lcom/sun/org/apache/xpath/internal/XPath;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getType()I

    move-result v8

    const/4 v9, 0x4

    if-eq v8, v9, :cond_1

    invoke-virtual {v7}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->xstr()Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object v7

    invoke-direct {p0, v1, v7, v4}, Lcom/sun/org/apache/xalan/internal/transformer/KeyTable;->addValueInRefsTable(Lcom/sun/org/apache/xpath/internal/XPathContext;Lcom/sun/org/apache/xml/internal/utils/XMLString;I)V

    goto :goto_2

    :cond_1
    check-cast v7, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-virtual {v7}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->iterRaw()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->nextNode()I

    move-result v8

    if-eq v5, v8, :cond_2

    invoke-virtual {v1, v8}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v9

    invoke-interface {v9, v8}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getStringValue(I)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object v8

    invoke-direct {p0, v1, v8, v4}, Lcom/sun/org/apache/xalan/internal/transformer/KeyTable;->addValueInRefsTable(Lcom/sun/org/apache/xpath/internal/XPathContext;Lcom/sun/org/apache/xml/internal/utils/XMLString;I)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_3
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/KeyTable;->m_refsTable:Ljava/util/Hashtable;

    return-object p0
.end method


# virtual methods
.method public getDocKey()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/KeyTable;->m_docKey:I

    return p0
.end method

.method public getKeyIterator()Lcom/sun/org/apache/xalan/internal/transformer/KeyIterator;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/KeyTable;->m_keyNodes:Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->getContainedIter()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/transformer/KeyIterator;

    return-object p0
.end method

.method public getKeyTableName()Lcom/sun/org/apache/xml/internal/utils/QName;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/KeyTable;->getKeyIterator()Lcom/sun/org/apache/xalan/internal/transformer/KeyIterator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/KeyIterator;->getName()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object p0

    return-object p0
.end method

.method public getNodeSetDTMByKey(Lcom/sun/org/apache/xml/internal/utils/QName;Lcom/sun/org/apache/xml/internal/utils/XMLString;)Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/transformer/KeyTable;->getRefsTable()Ljava/util/Hashtable;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->cloneWithReset()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :cond_0
    :goto_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/KeyTable;->m_keyNodes:Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->getContainedIter()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xalan/internal/transformer/KeyIterator;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object p1

    new-instance p2, Lcom/sun/org/apache/xalan/internal/transformer/KeyTable$1;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/sun/org/apache/xalan/internal/transformer/KeyTable$1;-><init>(Lcom/sun/org/apache/xalan/internal/transformer/KeyTable;Lcom/sun/org/apache/xml/internal/dtm/DTMManager;)V

    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->reset()V

    move-object p1, p2

    :cond_1
    return-object p1
.end method
