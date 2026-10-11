.class Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;
.super Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$AllFromNodeTraverser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AllFromRootTraverser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;


# direct methods
.method private constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$AllFromNodeTraverser;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;)V

    return-void
.end method


# virtual methods
.method public first(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getDocumentRoot(I)I

    move-result p0

    return p0
.end method

.method public first(II)I
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getDocumentRoot(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getExpandedTypeID(I)I

    move-result v0

    if-ne v0, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p1, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->next(III)I

    move-result p1

    :goto_0
    return p1
.end method

.method public next(II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    .line 2
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 3
    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return v0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0
.end method

.method public next(III)I
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    .line 6
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 7
    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return v0

    :cond_0
    if-eq p2, p3, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0
.end method
