.class Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;
.super Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChildTraverser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;


# direct methods
.method private constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;)V

    return-void
.end method


# virtual methods
.method public first(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getFirstChild(I)I

    move-result p0

    return p0
.end method

.method public first(II)I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_firstch(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->getNextIndexed(III)I

    move-result p1

    .line 4
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0
.end method

.method public getNextIndexed(III)I
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    invoke-virtual {v0, p3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getNamespaceID(I)I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    iget-object v1, v1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    invoke-virtual {v1, p3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getLocalNameID(I)I

    move-result p3

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v1, v0, p3, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->findElementFromIndex(III)I

    move-result v1

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-eq v2, v1, :cond_4

    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    iget-object p2, p2, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_parent:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {p2, v1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p2

    if-ne p2, p1, :cond_1

    return v1

    :cond_1
    if-ge p2, p1, :cond_2

    return v3

    :cond_2
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    iget-object v2, v2, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_parent:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v2, p2}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p2

    if-ge p2, p1, :cond_3

    return v3

    :cond_3
    if-gt p2, p1, :cond_2

    add-int/lit8 p2, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->nextNode()Z

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    iget-object v1, v1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_nextsib:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v1

    if-eq v1, v2, :cond_0

    return v3
.end method

.method public next(II)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNextSibling(I)I

    move-result p0

    return p0
.end method

.method public next(III)I
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result p1

    :goto_0
    const/4 p2, -0x1

    if-eq p2, p1, :cond_1

    .line 3
    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    iget-object p2, p2, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_exptype:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p2

    if-ne p2, p3, :cond_0

    .line 4
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result p1

    goto :goto_0

    :cond_1
    return p2
.end method
