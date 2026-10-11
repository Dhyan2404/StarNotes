.class public Lcom/sun/org/apache/xpath/internal/objects/XNodeSetForDOM;
.super Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x748542f81fc72280L


# instance fields
.field m_origObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;)V
    .locals 1

    .line 7
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;-><init>(Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;)V

    .line 8
    instance-of v0, p1, Lcom/sun/org/apache/xpath/internal/objects/XNodeSetForDOM;

    if-eqz v0, :cond_0

    .line 9
    check-cast p1, Lcom/sun/org/apache/xpath/internal/objects/XNodeSetForDOM;

    iget-object p1, p1, Lcom/sun/org/apache/xpath/internal/objects/XNodeSetForDOM;->m_origObj:Ljava/lang/Object;

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/objects/XNodeSetForDOM;->m_origObj:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;Lcom/sun/org/apache/xml/internal/dtm/DTMManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_dtmMgr:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    .line 3
    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/objects/XNodeSetForDOM;->m_origObj:Ljava/lang/Object;

    .line 4
    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result p1

    .line 5
    new-instance v0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;

    invoke-direct {v0, p2}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;)V

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;->m_obj:Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->addNode(I)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/NodeList;Lcom/sun/org/apache/xpath/internal/XPathContext;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;-><init>()V

    .line 11
    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_dtmMgr:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    .line 12
    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/objects/XNodeSetForDOM;->m_origObj:Ljava/lang/Object;

    .line 13
    new-instance v0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;

    invoke-direct {v0, p1, p2}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;-><init>(Lorg/w3c/dom/NodeList;Lcom/sun/org/apache/xpath/internal/XPathContext;)V

    .line 14
    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->getLength()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_last:I

    .line 15
    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;->m_obj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/traversal/NodeIterator;Lcom/sun/org/apache/xpath/internal/XPathContext;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;-><init>()V

    .line 17
    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_dtmMgr:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    .line 18
    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/objects/XNodeSetForDOM;->m_origObj:Ljava/lang/Object;

    .line 19
    new-instance v0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;

    invoke-direct {v0, p1, p2}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;-><init>(Lorg/w3c/dom/traversal/NodeIterator;Lcom/sun/org/apache/xpath/internal/XPathContext;)V

    .line 20
    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->getLength()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_last:I

    .line 21
    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;->m_obj:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public nodelist()Lorg/w3c/dom/NodeList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XNodeSetForDOM;->m_origObj:Ljava/lang/Object;

    instance-of v1, v0, Lorg/w3c/dom/NodeList;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/w3c/dom/NodeList;

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->nodelist()Lorg/w3c/dom/NodeList;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public nodeset()Lorg/w3c/dom/traversal/NodeIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XNodeSetForDOM;->m_origObj:Ljava/lang/Object;

    instance-of v1, v0, Lorg/w3c/dom/traversal/NodeIterator;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/w3c/dom/traversal/NodeIterator;

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->nodeset()Lorg/w3c/dom/traversal/NodeIterator;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public object()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XNodeSetForDOM;->m_origObj:Ljava/lang/Object;

    return-object p0
.end method
