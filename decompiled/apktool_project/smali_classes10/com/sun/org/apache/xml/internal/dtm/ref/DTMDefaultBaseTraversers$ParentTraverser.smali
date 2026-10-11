.class Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;
.super Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParentTraverser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;


# direct methods
.method private constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;)V

    return-void
.end method


# virtual methods
.method public first(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getParent(I)I

    move-result p0

    return p0
.end method

.method public first(II)I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_parent:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq v0, p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_exptype:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 5
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public next(II)I
    .locals 0

    .line 1
    const/4 p0, -0x1

    return p0
.end method

.method public next(III)I
    .locals 0

    .line 2
    const/4 p0, -0x1

    return p0
.end method
