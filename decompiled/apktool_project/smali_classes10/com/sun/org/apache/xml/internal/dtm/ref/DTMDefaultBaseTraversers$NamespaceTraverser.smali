.class Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;
.super Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NamespaceTraverser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;


# direct methods
.method private constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;)V

    return-void
.end method


# virtual methods
.method public next(II)I
    .locals 1

    const/4 v0, 0x1

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    if-ne p1, p2, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getFirstNamespaceNode(IZ)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNextNamespaceNode(IIZ)I

    move-result p0

    :goto_0
    return p0
.end method

.method public next(III)I
    .locals 2

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p2, p1, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getFirstNamespaceNode(IZ)I

    move-result p2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v1, p1, p2, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNextNamespaceNode(IIZ)I

    move-result p2

    .line 3
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v1, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getExpandedTypeID(I)I

    move-result v1

    if-ne v1, p3, :cond_2

    return p2

    .line 4
    :cond_2
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v1, p1, p2, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNextNamespaceNode(IIZ)I

    move-result p2

    const/4 v1, -0x1

    if-ne v1, p2, :cond_1

    return v1
.end method
