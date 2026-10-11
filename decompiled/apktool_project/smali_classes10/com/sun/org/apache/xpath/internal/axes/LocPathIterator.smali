.class public abstract Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;
.super Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
.implements Ljava/io/Serializable;
.implements Lcom/sun/org/apache/xpath/internal/axes/PathComponent;


# static fields
.field static final serialVersionUID:J = -0x3fdf47dcaa1dfdfaL


# instance fields
.field protected m_allowDetach:Z

.field protected transient m_cdtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

.field protected transient m_clones:Lcom/sun/org/apache/xpath/internal/axes/IteratorPool;

.field protected transient m_context:I

.field protected transient m_currentContextNode:I

.field protected transient m_execContext:Lcom/sun/org/apache/xpath/internal/XPathContext;

.field private m_isTopLevel:Z

.field public transient m_lastFetched:I

.field protected transient m_length:I

.field protected transient m_pos:I

.field private m_prefixResolver:Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

.field transient m_stackFrame:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_allowDetach:Z

    .line 3
    new-instance v0, Lcom/sun/org/apache/xpath/internal/axes/IteratorPool;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xpath/internal/axes/IteratorPool;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_clones:Lcom/sun/org/apache/xpath/internal/axes/IteratorPool;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_stackFrame:I

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_isTopLevel:Z

    .line 6
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_lastFetched:I

    .line 7
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_context:I

    .line 8
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_currentContextNode:I

    .line 9
    iput v1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_pos:I

    .line 10
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_length:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;-><init>()V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_allowDetach:Z

    .line 13
    new-instance v0, Lcom/sun/org/apache/xpath/internal/axes/IteratorPool;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xpath/internal/axes/IteratorPool;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_clones:Lcom/sun/org/apache/xpath/internal/axes/IteratorPool;

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_stackFrame:I

    const/4 v1, 0x0

    .line 15
    iput-boolean v1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_isTopLevel:Z

    .line 16
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_lastFetched:I

    .line 17
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_context:I

    .line 18
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_currentContextNode:I

    .line 19
    iput v1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_pos:I

    .line 20
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_length:I

    .line 21
    invoke-virtual {p0, p0}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->setLocPathIterator(Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;)V

    .line 22
    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_prefixResolver:Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 23
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;-><init>(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;IIZ)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;-><init>()V

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_allowDetach:Z

    .line 26
    new-instance p1, Lcom/sun/org/apache/xpath/internal/axes/IteratorPool;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xpath/internal/axes/IteratorPool;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_clones:Lcom/sun/org/apache/xpath/internal/axes/IteratorPool;

    const/4 p1, -0x1

    .line 27
    iput p1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_stackFrame:I

    const/4 p2, 0x0

    .line 28
    iput-boolean p2, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_isTopLevel:Z

    .line 29
    iput p1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_lastFetched:I

    .line 30
    iput p1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_context:I

    .line 31
    iput p1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_currentContextNode:I

    .line 32
    iput p2, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_pos:I

    .line 33
    iput p1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_length:I

    .line 34
    invoke-virtual {p0, p0}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->setLocPathIterator(Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    new-instance p1, Lcom/sun/org/apache/xpath/internal/axes/IteratorPool;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xpath/internal/axes/IteratorPool;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_clones:Lcom/sun/org/apache/xpath/internal/axes/IteratorPool;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public allowDetachToRelease(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_allowDetach:Z

    return-void
.end method

.method public asIterator(Lcom/sun/org/apache/xpath/internal/XPathContext;I)Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_clones:Lcom/sun/org/apache/xpath/internal/axes/IteratorPool;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/IteratorPool;->getInstance()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    invoke-virtual {v0, p2, p1}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->setRoot(ILjava/lang/Object;)V

    return-object v0
.end method

.method public asNode(Lcom/sun/org/apache/xpath/internal/XPathContext;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_clones:Lcom/sun/org/apache/xpath/internal/axes/IteratorPool;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/IteratorPool;->getInstance()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentNode()I

    move-result v0

    invoke-interface {p0, v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->setRoot(ILjava/lang/Object;)V

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->nextNode()I

    move-result p1

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->detach()V

    return p1
.end method

.method public bool(Lcom/sun/org/apache/xpath/internal/XPathContext;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->asNode(Lcom/sun/org/apache/xpath/internal/XPathContext;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V
    .locals 1

    invoke-virtual {p2, p1, p0}, Lcom/sun/org/apache/xpath/internal/XPathVisitor;->visitLocationPath(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1, p0}, Lcom/sun/org/apache/xpath/internal/XPathVisitor;->visitStep(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/patterns/NodeTest;)Z

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->callPredicateVisitors(Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V

    :cond_0
    return-void
.end method

.method public cloneWithReset()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_clones:Lcom/sun/org/apache/xpath/internal/axes/IteratorPool;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/axes/IteratorPool;->getInstanceOrThrow()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_execContext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    iput-object v1, v0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_execContext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_cdtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iput-object v1, v0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_cdtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iget v1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_context:I

    iput v1, v0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_context:I

    iget v1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_currentContextNode:I

    iput v1, v0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_currentContextNode:I

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_stackFrame:I

    iput p0, v0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_stackFrame:I

    return-object v0
.end method

.method public detach()V
    .locals 2

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_allowDetach:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_execContext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_cdtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_length:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_pos:I

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_lastFetched:I

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_context:I

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_currentContextNode:I

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_clones:Lcom/sun/org/apache/xpath/internal/axes/IteratorPool;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xpath/internal/axes/IteratorPool;->freeInstance(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    :cond_0
    return-void
.end method

.method public execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_clones:Lcom/sun/org/apache/xpath/internal/axes/IteratorPool;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/IteratorPool;->getInstance()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentNode()I

    move-result p0

    invoke-virtual {v0, p0, p1}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->setRoot(ILjava/lang/Object;)V

    return-object v0
.end method

.method public executeCharsToContentHandler(Lcom/sun/org/apache/xpath/internal/XPathContext;Lorg/xml/sax/ContentHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_clones:Lcom/sun/org/apache/xpath/internal/axes/IteratorPool;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/IteratorPool;->getInstance()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentNode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->setRoot(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->nextNode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->detach()V

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    invoke-interface {v0, p1, p2, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V

    :cond_0
    return-void
.end method

.method public getAnalysisBits()I
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->getAxis()I

    move-result p0

    invoke-static {p0}, Lcom/sun/org/apache/xpath/internal/axes/WalkerFactory;->getAnalysisBitFromAxes(I)I

    move-result p0

    return p0
.end method

.method public getAxis()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final getContext()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_context:I

    return p0
.end method

.method public final getCurrentContextNode()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_currentContextNode:I

    return p0
.end method

.method public getCurrentNode()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_lastFetched:I

    return p0
.end method

.method public final getCurrentPos()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_pos:I

    return p0
.end method

.method public getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_execContext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p0

    return-object p0
.end method

.method public getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_execContext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object p0

    return-object p0
.end method

.method public getExpandEntityReferences()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getFilter()Lcom/sun/org/apache/xml/internal/dtm/DTMFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFoundLast()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_foundLast:Z

    return p0
.end method

.method public getIsTopLevel()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_isTopLevel:Z

    return p0
.end method

.method public getLastPos(Lcom/sun/org/apache/xpath/internal/XPathContext;)I
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->getLength()I

    move-result p0

    return p0
.end method

.method public getLength()I
    .locals 6

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_execContext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getSubContextList()Lcom/sun/org/apache/xpath/internal/axes/SubContextList;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->getPredicateCount()I

    move-result v2

    iget v3, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_length:I

    const/4 v4, -0x1

    if-eq v4, v3, :cond_1

    if-eqz v0, :cond_1

    iget v5, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predicateIndex:I

    if-ge v5, v1, :cond_1

    return v3

    :cond_1
    iget-boolean v3, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_foundLast:Z

    if-eqz v3, :cond_2

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_pos:I

    return p0

    :cond_2
    iget v3, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predicateIndex:I

    if-ltz v3, :cond_3

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->getProximityPosition()I

    move-result v3

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_pos:I

    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v2, :cond_4

    if-eqz v0, :cond_4

    iget v2, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predicateIndex:I

    iput v2, v5, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predCount:I

    :cond_4
    :goto_2
    invoke-virtual {v5}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->nextNode()I

    move-result v2

    if-eq v4, v2, :cond_5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_predicateIndex:I

    if-ge v0, v1, :cond_6

    iput v3, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_length:I

    :cond_6
    return v3

    :catch_0
    return v4
.end method

.method public final getPrefixResolver()Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_prefixResolver:Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/Expression;->getExpressionOwner()Lcom/sun/org/apache/xpath/internal/ExpressionNode;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_prefixResolver:Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_prefixResolver:Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    return-object p0
.end method

.method public getRoot()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_context:I

    return p0
.end method

.method public getWhatToShow()I
    .locals 0

    const/16 p0, -0x11

    return p0
.end method

.method public final getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_execContext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    return-object p0
.end method

.method public incrementCurrentPos()V
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_pos:I

    return-void
.end method

.method public isDocOrdered()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isFresh()Z
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_pos:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMutable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNodesetExpr()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public item(I)I
    .locals 1

    const-string p1, "item(int index) not supported by this iterator!"

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->assertion(ZLjava/lang/String;)V

    return v0
.end method

.method public abstract nextNode()I
.end method

.method public previousNode()I
    .locals 2

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "ER_NODESETDTM_CANNOT_ITERATE"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "This iterator can not reset!"

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xpath/internal/Expression;->assertion(ZLjava/lang/String;)V

    return-void
.end method

.method public returnNextNode(I)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq v1, p1, :cond_0

    iget v2, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_pos:I

    :cond_0
    iput p1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_lastFetched:I

    if-ne v1, p1, :cond_1

    iput-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_foundLast:Z

    :cond_1
    return p1
.end method

.method public runTo(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_foundLast:Z

    if-nez v0, :cond_2

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->getCurrentPos()I

    move-result v0

    if-gt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    if-ne v0, p1, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->nextNode()I

    move-result p1

    if-eq v0, p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->nextNode()I

    move-result v1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->getCurrentPos()I

    move-result v1

    if-lt v1, p1, :cond_1

    :cond_2
    :goto_1
    return-void
.end method

.method public final setCurrentContextNode(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_currentContextNode:I

    return-void
.end method

.method public setCurrentPos(I)V
    .locals 1

    const/4 p1, 0x0

    const-string v0, "setCurrentPos not supported by this iterator!"

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xpath/internal/Expression;->assertion(ZLjava/lang/String;)V

    return-void
.end method

.method public setEnvironment(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setIsTopLevel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_isTopLevel:Z

    return-void
.end method

.method public setItem(II)V
    .locals 0

    const/4 p1, 0x0

    const-string p2, "setItem not supported by this iterator!"

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/Expression;->assertion(ZLjava/lang/String;)V

    return-void
.end method

.method public setNextPosition(I)V
    .locals 1

    const/4 p1, 0x0

    const-string v0, "setNextPosition not supported in this iterator!"

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xpath/internal/Expression;->assertion(ZLjava/lang/String;)V

    return-void
.end method

.method public setRoot(ILjava/lang/Object;)V
    .locals 1

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_context:I

    check-cast p2, Lcom/sun/org/apache/xpath/internal/XPathContext;

    iput-object p2, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_execContext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_cdtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_currentContextNode:I

    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_prefixResolver:Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getNamespaceContext()Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_prefixResolver:Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_lastFetched:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/axes/PredicatedNodeTest;->m_foundLast:Z

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_pos:I

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_length:I

    iget-boolean p1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_isTopLevel:Z

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getVarStack()Lcom/sun/org/apache/xpath/internal/VariableStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/VariableStack;->getStackFrame()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_stackFrame:I

    :cond_1
    return-void
.end method

.method public setShouldCacheNodes(Z)V
    .locals 1

    const/4 p1, 0x0

    const-string v0, "setShouldCacheNodes not supported by this iterater!"

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xpath/internal/Expression;->assertion(ZLjava/lang/String;)V

    return-void
.end method

.method public size()I
    .locals 2

    const-string v0, "size() not supported by this iterator!"

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/sun/org/apache/xpath/internal/Expression;->assertion(ZLjava/lang/String;)V

    return v1
.end method
