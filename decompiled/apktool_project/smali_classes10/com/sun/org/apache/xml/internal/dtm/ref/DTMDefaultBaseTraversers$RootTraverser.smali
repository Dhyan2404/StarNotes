.class Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$RootTraverser;
.super Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RootTraverser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;


# direct methods
.method private constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$RootTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$RootTraverser;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;)V

    return-void
.end method


# virtual methods
.method public first(II)I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$RootTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getDocumentRoot(I)I

    move-result p1

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$RootTraverser;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getExpandedTypeID(I)I

    move-result p0

    if-ne p0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
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
