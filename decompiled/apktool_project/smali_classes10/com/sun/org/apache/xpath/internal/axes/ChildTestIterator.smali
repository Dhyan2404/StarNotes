.class public Lcom/sun/org/apache/xpath/internal/axes/ChildTestIterator;
.super Lcom/sun/org/apache/xpath/internal/axes/BasicTestIterator;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x6e254e40aacb86baL


# instance fields
.field protected transient m_traverser:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/BasicTestIterator;-><init>(Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V

    .line 3
    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/ChildTestIterator;->m_traverser:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xpath/internal/axes/BasicTestIterator;-><init>(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;II)V

    return-void
.end method


# virtual methods
.method public cloneWithReset()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/sun/org/apache/xpath/internal/axes/BasicTestIterator;->cloneWithReset()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xpath/internal/axes/ChildTestIterator;

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/ChildTestIterator;->m_traverser:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;

    iput-object p0, v0, Lcom/sun/org/apache/xpath/internal/axes/ChildTestIterator;->m_traverser:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;

    return-object v0
.end method

.method public detach()V
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_allowDetach:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/ChildTestIterator;->m_traverser:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;

    invoke-super {p0}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->detach()V

    :cond_0
    return-void
.end method

.method public getAxis()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getNextNode()I
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_lastFetched:I

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/ChildTestIterator;->m_traverser:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;

    iget v1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_context:I

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;->first(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/axes/ChildTestIterator;->m_traverser:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;

    iget v2, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_context:I

    invoke-virtual {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;->next(II)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_lastFetched:I

    return v0
.end method

.method public setRoot(ILjava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->setRoot(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/LocPathIterator;->m_cdtm:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    const/4 p2, 0x3

    invoke-interface {p1, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getAxisTraverser(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/axes/ChildTestIterator;->m_traverser:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;

    return-void
.end method
