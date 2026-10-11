.class abstract Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;
.super Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "IndexedDTMAxisTraverser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;


# direct methods
.method private constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;)V

    return-void
.end method


# virtual methods
.method public abstract axisHasBeenProcessed(I)Z
.end method

.method public getNextIndexed(III)I
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    invoke-virtual {v0, p3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getNamespaceID(I)I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    iget-object v1, v1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    invoke-virtual {v1, p3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getLocalNameID(I)I

    move-result p3

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v1, v0, p3, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->findElementFromIndex(III)I

    move-result v1

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-eq v2, v1, :cond_1

    invoke-virtual {p0, p1, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;->isAfterAxis(II)Z

    move-result p0

    if-eqz p0, :cond_0

    return v3

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;->axisHasBeenProcessed(I)Z

    move-result v1

    if-eqz v1, :cond_2

    return v3

    :cond_2
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->nextNode()Z

    goto :goto_0
.end method

.method public abstract isAfterAxis(II)Z
.end method

.method public final isIndexed(I)Z
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_indexing:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getType(I)S

    move-result p0

    const/4 p1, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
