.class public Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/ranges/Range;


# static fields
.field static final CLONE_CONTENTS:I = 0x2

.field static final DELETE_CONTENTS:I = 0x3

.field static final EXTRACT_CONTENTS:I = 0x1


# instance fields
.field fDeleteNode:Lorg/w3c/dom/Node;

.field fDetach:Z

.field fDocument:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

.field fEndContainer:Lorg/w3c/dom/Node;

.field fEndOffset:I

.field fInsertNode:Lorg/w3c/dom/Node;

.field fInsertedFromRange:Z

.field fIsCollapsed:Z

.field fRemoveChild:Lorg/w3c/dom/Node;

.field fSplitNode:Lorg/w3c/dom/Node;

.field fStartContainer:Lorg/w3c/dom/Node;

.field fStartOffset:I


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fInsertNode:Lorg/w3c/dom/Node;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDeleteNode:Lorg/w3c/dom/Node;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fSplitNode:Lorg/w3c/dom/Node;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fInsertedFromRange:Z

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fRemoveChild:Lorg/w3c/dom/Node;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDetach:Z

    return-void
.end method

.method private getRootContainer(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private getSelectedNode(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;
    .locals 1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    return-object p1

    :cond_0
    if-gez p2, :cond_1

    return-object p1

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    if-lez p2, :cond_2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    return-object p1
.end method

.method private hasLegalRootContainer(Lorg/w3c/dom/Node;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->getRootContainer(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/16 p1, 0x9

    if-eq p0, p1, :cond_1

    const/16 p1, 0xb

    if-eq p0, p1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isLegalContainedNode(Lorg/w3c/dom/Node;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method private isLegalContainer(Lorg/w3c/dom/Node;)Z
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    :cond_1
    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private traverseCommonAncestors(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;I)Lorg/w3c/dom/DocumentFragment;
    .locals 5

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->createDocumentFragment()Lorg/w3c/dom/DocumentFragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->traverseLeftBoundary(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->indexOf(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)I

    move-result v2

    invoke-virtual {p0, p2, v1}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->indexOf(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)I

    move-result v1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    :goto_1
    if-lez v1, :cond_3

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-direct {p0, v2, p3}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->traverseFullySelected(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v0, :cond_2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_2
    add-int/lit8 v1, v1, -0x1

    move-object v2, v4

    goto :goto_1

    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->traverseRightBoundary(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    move-result-object p2

    if-eqz v0, :cond_4

    invoke-interface {v0, p2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_4
    const/4 p2, 0x2

    if-eq p3, p2, :cond_5

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->setStartAfter(Lorg/w3c/dom/Node;)V

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->collapse(Z)V

    :cond_5
    return-object v0
.end method

.method private traverseCommonEndContainer(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/DocumentFragment;
    .locals 5

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->createDocumentFragment()Lorg/w3c/dom/DocumentFragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->traverseLeftBoundary(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    invoke-virtual {p0, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->indexOf(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iget v3, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    sub-int/2addr v3, v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    :goto_1
    if-lez v3, :cond_3

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-direct {p0, v1, p2}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->traverseFullySelected(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_2
    add-int/lit8 v3, v3, -0x1

    move-object v1, v4

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    if-eq p2, v1, :cond_4

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->setStartAfter(Lorg/w3c/dom/Node;)V

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->collapse(Z)V

    :cond_4
    return-object v0
.end method

.method private traverseCommonStartContainer(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/DocumentFragment;
    .locals 7

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->createDocumentFragment()Lorg/w3c/dom/DocumentFragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->traverseRightBoundary(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    invoke-virtual {p0, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->indexOf(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)I

    move-result v1

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-gtz v1, :cond_3

    if-eq p2, v3, :cond_2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->setEndBefore(Lorg/w3c/dom/Node;)V

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->collapse(Z)V

    :cond_2
    return-object v0

    :cond_3
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    :goto_1
    if-lez v1, :cond_5

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-direct {p0, v4, p2}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->traverseFullySelected(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_4
    add-int/lit8 v1, v1, -0x1

    move-object v4, v5

    goto :goto_1

    :cond_5
    if-eq p2, v3, :cond_6

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->setEndBefore(Lorg/w3c/dom/Node;)V

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->collapse(Z)V

    :cond_6
    return-object v0
.end method

.method private traverseContents(I)Lorg/w3c/dom/DocumentFragment;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-boolean v3, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDetach:Z

    if-nez v3, :cond_9

    if-ne v0, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->traverseSameContainer(I)Lorg/w3c/dom/DocumentFragment;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    if-ne v2, v4, :cond_2

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->traverseCommonStartContainer(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/DocumentFragment;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    move v5, v1

    move-object v1, v0

    move-object v0, v2

    move v2, v5

    :goto_1
    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    if-ne v0, v4, :cond_4

    invoke-direct {p0, v1, p1}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->traverseCommonEndContainer(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/DocumentFragment;

    move-result-object p0

    return-object p0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    :cond_5
    sub-int/2addr v2, v3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    :goto_2
    if-lez v2, :cond_6

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    :goto_3
    if-gez v2, :cond_7

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v5, v1

    move-object v1, v0

    move-object v0, v2

    move-object v2, v5

    :goto_4
    if-eq v0, v3, :cond_8

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_4

    :cond_8
    invoke-direct {p0, v1, v2, p1}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->traverseCommonAncestors(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;I)Lorg/w3c/dom/DocumentFragment;

    move-result-object p0

    return-object p0

    :cond_9
    new-instance p0, Lorg/w3c/dom/DOMException;

    const-string p1, "http://www.w3.org/dom/DOMTR"

    const-string v0, "INVALID_STATE_ERR"

    invoke-static {p1, v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_a
    :goto_5
    return-object v1
.end method

.method private traverseFullySelected(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;
    .locals 3

    const/4 p0, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_2

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    if-eq p2, p0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object v1

    :cond_1
    invoke-interface {p1, v0}, Lorg/w3c/dom/Node;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p2

    const/16 v0, 0xa

    if-eq p2, v0, :cond_3

    return-object p1

    :cond_3
    new-instance p1, Lorg/w3c/dom/DOMException;

    const-string p2, "http://www.w3.org/dom/DOMTR"

    const-string v0, "HIERARCHY_REQUEST_ERR"

    invoke-static {p2, v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method private traverseLeftBoundary(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;
    .locals 8

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->getStartContainer()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->getStartOffset()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->getSelectedNode(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->getStartContainer()Lorg/w3c/dom/Node;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-ne v0, p1, :cond_1

    invoke-direct {p0, v0, v1, v3, p2}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->traverseNode(Lorg/w3c/dom/Node;ZZI)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-direct {p0, v4, v2, v3, p2}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->traverseNode(Lorg/w3c/dom/Node;ZZI)Lorg/w3c/dom/Node;

    move-result-object v5

    :goto_1
    if-eqz v4, :cond_6

    :goto_2
    const/4 v6, 0x3

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-direct {p0, v0, v1, v3, p2}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->traverseNode(Lorg/w3c/dom/Node;ZZI)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eq p2, v6, :cond_2

    invoke-interface {v5, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_2
    move v1, v3

    move-object v0, v7

    goto :goto_2

    :cond_3
    if-ne v4, p1, :cond_4

    return-object v5

    :cond_4
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-direct {p0, v4, v2, v3, p2}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->traverseNode(Lorg/w3c/dom/Node;ZZI)Lorg/w3c/dom/Node;

    move-result-object v7

    if-eq p2, v6, :cond_5

    invoke-interface {v7, v5}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_5
    move-object v5, v7

    goto :goto_1

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method private traverseNode(Lorg/w3c/dom/Node;ZZI)Lorg/w3c/dom/Node;
    .locals 1

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p4}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->traverseFullySelected(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    invoke-direct {p0, p1, p3, p4}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->traverseTextNode(Lorg/w3c/dom/Node;ZI)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-direct {p0, p1, p4}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->traversePartiallySelected(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method private traversePartiallySelected(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;
    .locals 0

    const/4 p0, 0x1

    if-eq p2, p0, :cond_0

    const/4 p0, 0x2

    if-eq p2, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lorg/w3c/dom/Node;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method private traverseRightBoundary(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;
    .locals 8

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->getSelectedNode(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-ne v0, p1, :cond_1

    invoke-direct {p0, v0, v1, v3, p2}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->traverseNode(Lorg/w3c/dom/Node;ZZI)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-direct {p0, v4, v3, v3, p2}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->traverseNode(Lorg/w3c/dom/Node;ZZI)Lorg/w3c/dom/Node;

    move-result-object v5

    :goto_1
    if-eqz v4, :cond_6

    :goto_2
    const/4 v6, 0x3

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-direct {p0, v0, v1, v3, p2}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->traverseNode(Lorg/w3c/dom/Node;ZZI)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eq p2, v6, :cond_2

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_2
    move v1, v2

    move-object v0, v7

    goto :goto_2

    :cond_3
    if-ne v4, p1, :cond_4

    return-object v5

    :cond_4
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-direct {p0, v4, v3, v3, p2}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->traverseNode(Lorg/w3c/dom/Node;ZZI)Lorg/w3c/dom/Node;

    move-result-object v7

    if-eq p2, v6, :cond_5

    invoke-interface {v7, v5}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_5
    move-object v5, v7

    goto :goto_1

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method private traverseSameContainer(I)Lorg/w3c/dom/DocumentFragment;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->createDocumentFragment()Lorg/w3c/dom/DocumentFragment;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    iget v3, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    iget v4, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    if-ne v3, v4, :cond_1

    return-object v2

    :cond_1
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v3, v1, :cond_4

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    iget v6, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    iget v7, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    if-eq p1, v5, :cond_2

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    check-cast v5, Lcom/sun/org/apache/xerces/internal/dom/TextImpl;

    iget v6, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    iget v7, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    sub-int/2addr v7, v6

    invoke-virtual {v5, v6, v7}, Lcom/sun/org/apache/xerces/internal/dom/CharacterDataImpl;->deleteData(II)V

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->collapse(Z)V

    :cond_2
    if-ne p1, v1, :cond_3

    return-object v0

    :cond_3
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p0

    invoke-interface {v2, p0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object v2

    :cond_4
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->getSelectedNode(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    move-result-object v0

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    iget v3, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    sub-int/2addr v1, v3

    :goto_1
    if-lez v1, :cond_6

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->traverseFullySelected(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v2, :cond_5

    invoke-interface {v2, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_5
    add-int/lit8 v1, v1, -0x1

    move-object v0, v3

    goto :goto_1

    :cond_6
    if-eq p1, v5, :cond_7

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->collapse(Z)V

    :cond_7
    return-object v2
.end method

.method private traverseTextNode(Lorg/w3c/dom/Node;ZI)Lorg/w3c/dom/Node;
    .locals 2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->getStartOffset()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->getEndOffset()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    invoke-interface {p1, p0}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x3

    if-ne p3, p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-interface {p1, v1}, Lorg/w3c/dom/Node;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0, p2}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public checkIndex(Lorg/w3c/dom/Node;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const/4 p0, 0x0

    const-string v0, "INDEX_SIZE_ERR"

    const-string v1, "http://www.w3.org/dom/DOMTR"

    const/4 v2, 0x1

    if-ltz p2, :cond_4

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p1

    if-gt p2, p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-static {v1, v0, p0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gt p2, p1, :cond_3

    :goto_1
    return-void

    :cond_3
    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-static {v1, v0, p0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-static {v1, v0, p0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public cloneContents()Lorg/w3c/dom/DocumentFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->traverseContents(I)Lorg/w3c/dom/DocumentFragment;

    move-result-object p0

    return-object p0
.end method

.method public cloneRange()Lorg/w3c/dom/ranges/Range;
    .locals 3

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDetach:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->createRange()Lorg/w3c/dom/ranges/Range;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/ranges/Range;->setStart(Lorg/w3c/dom/Node;I)V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    invoke-interface {v0, v1, p0}, Lorg/w3c/dom/ranges/Range;->setEnd(Lorg/w3c/dom/Node;I)V

    return-object v0

    :cond_0
    new-instance p0, Lorg/w3c/dom/DOMException;

    const-string v0, "INVALID_STATE_ERR"

    const/4 v1, 0x0

    const-string v2, "http://www.w3.org/dom/DOMTR"

    invoke-static {v2, v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    invoke-direct {p0, v1, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public collapse(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDetach:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    :goto_0
    return-void

    :cond_1
    new-instance p0, Lorg/w3c/dom/DOMException;

    const-string p1, "INVALID_STATE_ERR"

    const/4 v0, 0x0

    const-string v1, "http://www.w3.org/dom/DOMTR"

    invoke-static {v1, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public compareBoundaryPoints(SLorg/w3c/dom/ranges/Range;)S
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    iget-boolean v1, v0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDetach:Z

    const/4 v2, 0x0

    const-string v3, "http://www.w3.org/dom/DOMTR"

    if-nez v1, :cond_2

    invoke-interface {p2}, Lorg/w3c/dom/ranges/Range;->getStartContainer()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    invoke-interface {p2}, Lorg/w3c/dom/ranges/Range;->getStartContainer()Lorg/w3c/dom/Node;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-interface {p2}, Lorg/w3c/dom/ranges/Range;->getStartContainer()Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    invoke-interface {p2}, Lorg/w3c/dom/ranges/Range;->getEndContainer()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    invoke-interface {p2}, Lorg/w3c/dom/ranges/Range;->getEndContainer()Lorg/w3c/dom/Node;

    move-result-object v1

    if-eq v0, v1, :cond_3

    invoke-interface {p2}, Lorg/w3c/dom/ranges/Range;->getStartContainer()Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/w3c/dom/DOMException;

    const-string p1, "WRONG_DOCUMENT_ERR"

    invoke-static {v3, p1, v2}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    invoke-direct {p0, p2, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/w3c/dom/DOMException;

    const-string p1, "INVALID_STATE_ERR"

    invoke-static {v3, p1, v2}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xb

    invoke-direct {p0, p2, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    const/4 v0, 0x1

    if-nez p1, :cond_4

    invoke-interface {p2}, Lorg/w3c/dom/ranges/Range;->getStartContainer()Lorg/w3c/dom/Node;

    move-result-object p1

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    invoke-interface {p2}, Lorg/w3c/dom/ranges/Range;->getStartOffset()I

    move-result p2

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    goto :goto_1

    :cond_4
    if-ne p1, v0, :cond_5

    invoke-interface {p2}, Lorg/w3c/dom/ranges/Range;->getStartContainer()Lorg/w3c/dom/Node;

    move-result-object p1

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    invoke-interface {p2}, Lorg/w3c/dom/ranges/Range;->getStartOffset()I

    move-result p2

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    goto :goto_1

    :cond_5
    const/4 v1, 0x3

    if-ne p1, v1, :cond_6

    invoke-interface {p2}, Lorg/w3c/dom/ranges/Range;->getEndContainer()Lorg/w3c/dom/Node;

    move-result-object p1

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    invoke-interface {p2}, Lorg/w3c/dom/ranges/Range;->getEndOffset()I

    move-result p2

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    goto :goto_1

    :cond_6
    invoke-interface {p2}, Lorg/w3c/dom/ranges/Range;->getEndContainer()Lorg/w3c/dom/Node;

    move-result-object p1

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    invoke-interface {p2}, Lorg/w3c/dom/ranges/Range;->getEndOffset()I

    move-result p2

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    :goto_1
    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne p1, v1, :cond_9

    if-ge p2, v2, :cond_7

    return v0

    :cond_7
    if-ne p2, v2, :cond_8

    return v3

    :cond_8
    return v4

    :cond_9
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v6, v1

    :goto_2
    if-eqz v5, :cond_c

    if-ne v5, p1, :cond_b

    invoke-virtual {p0, v6, p1}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->indexOf(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)I

    move-result p0

    if-gt p2, p0, :cond_a

    return v0

    :cond_a
    return v4

    :cond_b
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v7, v6

    move-object v6, v5

    move-object v5, v7

    goto :goto_2

    :cond_c
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p2

    move-object v5, p1

    :goto_3
    if-eqz p2, :cond_f

    if-ne p2, v1, :cond_e

    invoke-virtual {p0, v5, v1}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->indexOf(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)I

    move-result p0

    if-ge p0, v2, :cond_d

    return v0

    :cond_d
    return v4

    :cond_e
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v7, v5

    move-object v5, p2

    move-object p2, v7

    goto :goto_3

    :cond_f
    move-object p0, p1

    :goto_4
    if-eqz p0, :cond_10

    add-int/lit8 v3, v3, 0x1

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_4

    :cond_10
    move-object p0, v1

    :goto_5
    if-eqz p0, :cond_11

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_5

    :cond_11
    :goto_6
    if-lez v3, :cond_12

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    :cond_12
    :goto_7
    if-gez v3, :cond_13

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_13
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p2

    :goto_8
    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    move-object v8, v1

    move-object v1, p2

    move-object p2, v8

    if-eq p1, v1, :cond_14

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p2

    goto :goto_8

    :cond_14
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    :goto_9
    if-eqz p0, :cond_16

    if-ne p0, p2, :cond_15

    return v0

    :cond_15
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_9

    :cond_16
    return v4
.end method

.method public deleteContents()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->traverseContents(I)Lorg/w3c/dom/DocumentFragment;

    return-void
.end method

.method public deleteData(Lorg/w3c/dom/CharacterData;II)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDeleteNode:Lorg/w3c/dom/Node;

    invoke-interface {p1, p2, p3}, Lorg/w3c/dom/CharacterData;->deleteData(II)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDeleteNode:Lorg/w3c/dom/Node;

    return-void
.end method

.method public detach()V
    .locals 3

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDetach:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDetach:Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->removeRange(Lorg/w3c/dom/ranges/Range;)V

    return-void

    :cond_0
    new-instance p0, Lorg/w3c/dom/DOMException;

    const-string v0, "INVALID_STATE_ERR"

    const/4 v1, 0x0

    const-string v2, "http://www.w3.org/dom/DOMTR"

    invoke-static {v2, v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    invoke-direct {p0, v1, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public extractContents()Lorg/w3c/dom/DocumentFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->traverseContents(I)Lorg/w3c/dom/DocumentFragment;

    move-result-object p0

    return-object p0
.end method

.method public getCollapsed()Z
    .locals 3

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDetach:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Lorg/w3c/dom/DOMException;

    const-string v0, "INVALID_STATE_ERR"

    const/4 v1, 0x0

    const-string v2, "http://www.w3.org/dom/DOMTR"

    invoke-static {v2, v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    invoke-direct {p0, v1, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public getCommonAncestorContainer()Lorg/w3c/dom/Node;
    .locals 6

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDetach:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    :goto_1
    if-eqz p0, :cond_1

    invoke-virtual {v2, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_2
    if-ltz p0, :cond_2

    if-ltz v3, :cond_2

    invoke-virtual {v0, p0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_2

    invoke-virtual {v0, p0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 p0, p0, -0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_2
    check-cast v1, Lorg/w3c/dom/Node;

    return-object v1

    :cond_3
    new-instance p0, Lorg/w3c/dom/DOMException;

    const-string v0, "http://www.w3.org/dom/DOMTR"

    const-string v2, "INVALID_STATE_ERR"

    invoke-static {v0, v2, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    invoke-direct {p0, v1, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public getEndContainer()Lorg/w3c/dom/Node;
    .locals 3

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDetach:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    return-object p0

    :cond_0
    new-instance p0, Lorg/w3c/dom/DOMException;

    const-string v0, "INVALID_STATE_ERR"

    const/4 v1, 0x0

    const-string v2, "http://www.w3.org/dom/DOMTR"

    invoke-static {v2, v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    invoke-direct {p0, v1, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public getEndOffset()I
    .locals 3

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDetach:Z

    if-nez v0, :cond_0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    return p0

    :cond_0
    new-instance p0, Lorg/w3c/dom/DOMException;

    const-string v0, "INVALID_STATE_ERR"

    const/4 v1, 0x0

    const-string v2, "http://www.w3.org/dom/DOMTR"

    invoke-static {v2, v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    invoke-direct {p0, v1, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public getStartContainer()Lorg/w3c/dom/Node;
    .locals 3

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDetach:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    return-object p0

    :cond_0
    new-instance p0, Lorg/w3c/dom/DOMException;

    const-string v0, "INVALID_STATE_ERR"

    const/4 v1, 0x0

    const-string v2, "http://www.w3.org/dom/DOMTR"

    invoke-static {v2, v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    invoke-direct {p0, v1, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public getStartOffset()I
    .locals 3

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDetach:Z

    if-nez v0, :cond_0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    return p0

    :cond_0
    new-instance p0, Lorg/w3c/dom/DOMException;

    const-string v0, "INVALID_STATE_ERR"

    const/4 v1, 0x0

    const-string v2, "http://www.w3.org/dom/DOMTR"

    invoke-static {v2, v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    invoke-direct {p0, v1, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public indexOf(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)I
    .locals 0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p0

    if-eq p0, p2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    const/4 p2, 0x0

    :goto_0
    if-eq p0, p1, :cond_1

    add-int/lit8 p2, p2, 0x1

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_0

    :cond_1
    return p2
.end method

.method public insertData(Lorg/w3c/dom/CharacterData;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fInsertNode:Lorg/w3c/dom/Node;

    invoke-interface {p1, p2, p3}, Lorg/w3c/dom/CharacterData;->insertData(ILjava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fInsertNode:Lorg/w3c/dom/Node;

    return-void
.end method

.method public insertNode(Lorg/w3c/dom/Node;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;,
            Lorg/w3c/dom/ranges/RangeException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    iget-boolean v2, v1, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDetach:Z

    const/4 v3, 0x0

    const-string v4, "http://www.w3.org/dom/DOMTR"

    if-nez v2, :cond_3

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    const/16 v2, 0xc

    if-eq v0, v2, :cond_1

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/sun/org/apache/xerces/internal/dom/RangeExceptionImpl;

    const-string p1, "INVALID_NODE_TYPE_ERR"

    invoke-static {v4, p1, v3}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/sun/org/apache/xerces/internal/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/w3c/dom/DOMException;

    const-string p1, "WRONG_DOCUMENT_ERR"

    invoke-static {v4, p1, v3}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lorg/w3c/dom/DOMException;

    const-string p1, "INVALID_STATE_ERR"

    invoke-static {v4, p1, v3}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fInsertedFromRange:Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    invoke-interface {v3, v2}, Lorg/w3c/dom/Node;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/sun/org/apache/xerces/internal/dom/TextImpl;

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/xerces/internal/dom/CharacterDataImpl;->setNodeValueInternal(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    move-object v5, v4

    check-cast v5, Lcom/sun/org/apache/xerces/internal/dom/TextImpl;

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    iget v6, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/sun/org/apache/xerces/internal/dom/CharacterDataImpl;->setNodeValueInternal(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v0, p1, v4}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v0, v3, v4}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    :cond_5
    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v0, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :goto_1
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    if-ne p1, v4, :cond_6

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    goto :goto_2

    :cond_6
    if-ne p1, v0, :cond_7

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    invoke-virtual {p0, p1, v3, v0}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->signalSplitData(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;I)V

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    if-ne v0, v1, :cond_9

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    goto :goto_3

    :cond_9
    move v0, v2

    :goto_3
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    move v3, v2

    :goto_4
    iget v4, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    if-ge v3, v4, :cond_a

    if-eqz v1, :cond_a

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_a
    if-eqz v1, :cond_b

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    invoke-interface {v3, p1, v1}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_5

    :cond_b
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    invoke-interface {v1, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :goto_5
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    if-ne p1, v1, :cond_c

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    if-eqz v1, :cond_c

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p1

    sub-int/2addr p1, v0

    add-int/2addr v1, p1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    :cond_c
    :goto_6
    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fInsertedFromRange:Z

    return-void
.end method

.method public insertedNodeFromDOM(Lorg/w3c/dom/Node;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fInsertNode:Lorg/w3c/dom/Node;

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fInsertedFromRange:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->indexOf(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)I

    move-result v1

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    if-ge v1, v2, :cond_3

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    :cond_3
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    if-ne v0, v1, :cond_4

    invoke-virtual {p0, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->indexOf(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)I

    move-result p1

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    if-ge p1, v0, :cond_4

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    :cond_4
    return-void
.end method

.method public isAncestorOf(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z
    .locals 0

    :goto_0
    if-eqz p2, :cond_1

    if-ne p2, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public nextNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p2

    if-eqz p2, :cond_1

    return-object p2

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p2

    if-eqz p2, :cond_2

    return-object p2

    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    if-eq p1, p2, :cond_4

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p2

    if-eqz p2, :cond_3

    return-object p2

    :cond_3
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public receiveDeletedText(Lorg/w3c/dom/Node;II)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDeleteNode:Lorg/w3c/dom/Node;

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    const/4 v1, 0x3

    if-ne p1, v0, :cond_3

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    add-int v2, p2, p3

    if-le v0, v2, :cond_2

    sub-int/2addr v0, v2

    add-int/2addr v0, p2

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    goto :goto_0

    :cond_2
    if-le v0, p2, :cond_3

    iput p2, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    if-ne p1, v0, :cond_5

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    if-ne p1, v1, :cond_5

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    add-int/2addr p3, p2

    if-le p1, p3, :cond_4

    sub-int/2addr p1, p3

    add-int/2addr p2, p1

    iput p2, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    goto :goto_1

    :cond_4
    if-le p1, p2, :cond_5

    iput p2, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    :cond_5
    :goto_1
    return-void
.end method

.method public receiveInsertedText(Lorg/w3c/dom/Node;II)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fInsertNode:Lorg/w3c/dom/Node;

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    const/4 v1, 0x3

    if-ne p1, v0, :cond_2

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    if-ge p2, v0, :cond_2

    add-int/2addr v0, p3

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    if-ne p1, v0, :cond_3

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    if-ne p1, v1, :cond_3

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    if-ge p2, p1, :cond_3

    add-int/2addr p1, p3

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    :cond_3
    return-void
.end method

.method public receiveReplacedText(Lorg/w3c/dom/Node;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p1, v0, :cond_1

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v2, :cond_1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    if-ne p1, v0, :cond_2

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    if-ne p1, v2, :cond_2

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    :cond_2
    return-void
.end method

.method public receiveSplitData(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;I)V
    .locals 2

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fSplitNode:Lorg/w3c/dom/Node;

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    const/4 v1, 0x3

    if-ne p1, v0, :cond_2

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    if-le v0, p3, :cond_2

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    if-ne p1, v0, :cond_3

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    if-ne p1, v1, :cond_3

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    if-le p1, p3, :cond_3

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    :cond_3
    :goto_0
    return-void
.end method

.method public removeChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fRemoveChild:Lorg/w3c/dom/Node;

    invoke-interface {p1, p2}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fRemoveChild:Lorg/w3c/dom/Node;

    return-object p1
.end method

.method public removeNode(Lorg/w3c/dom/Node;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fRemoveChild:Lorg/w3c/dom/Node;

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->indexOf(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)I

    move-result v1

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    if-ge v1, v2, :cond_2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    :cond_2
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->indexOf(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)I

    move-result v1

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    if-ge v1, v2, :cond_3

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    :cond_3
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    if-ne v0, v1, :cond_4

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    if-eq v0, v2, :cond_6

    :cond_4
    invoke-virtual {p0, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->isAncestorOf(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v1

    if-eqz v1, :cond_5

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->indexOf(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)I

    move-result v1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    :cond_5
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    invoke-virtual {p0, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->isAncestorOf(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v1

    if-eqz v1, :cond_6

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->indexOf(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    :cond_6
    return-void
.end method

.method public selectNode(Lorg/w3c/dom/Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/ranges/RangeException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    iget-boolean v0, v0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDetach:Z

    const/4 v1, 0x0

    const-string v2, "http://www.w3.org/dom/DOMTR"

    if-nez v0, :cond_2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->isLegalContainer(Lorg/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->isLegalContainedNode(Lorg/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/w3c/dom/DOMException;

    const-string p1, "WRONG_DOCUMENT_ERR"

    invoke-static {v2, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/sun/org/apache/xerces/internal/dom/RangeExceptionImpl;

    const-string p1, "INVALID_NODE_TYPE_ERR"

    invoke-static {v2, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/w3c/dom/DOMException;

    const-string p1, "INVALID_STATE_ERR"

    invoke-static {v2, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_5

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    const/4 v0, 0x0

    :goto_1
    if-eqz p1, :cond_4

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    :cond_5
    return-void
.end method

.method public selectNodeContents(Lorg/w3c/dom/Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/ranges/RangeException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    iget-boolean v0, v0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDetach:Z

    const/4 v1, 0x0

    const-string v2, "http://www.w3.org/dom/DOMTR"

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->isLegalContainer(Lorg/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/w3c/dom/DOMException;

    const-string p1, "WRONG_DOCUMENT_ERR"

    invoke-static {v2, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/sun/org/apache/xerces/internal/dom/RangeExceptionImpl;

    const-string p1, "INVALID_NODE_TYPE_ERR"

    invoke-static {v2, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/w3c/dom/DOMException;

    const-string p1, "INVALID_STATE_ERR"

    invoke-static {v2, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    if-nez p1, :cond_4

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    goto :goto_2

    :cond_4
    :goto_1
    if-eqz p1, :cond_5

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_1

    :cond_5
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    :goto_2
    return-void
.end method

.method public setEnd(Lorg/w3c/dom/Node;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/ranges/RangeException;,
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    iget-boolean v0, v0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDetach:Z

    const/4 v1, 0x0

    const-string v2, "http://www.w3.org/dom/DOMTR"

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->isLegalContainer(Lorg/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/w3c/dom/DOMException;

    const-string p1, "WRONG_DOCUMENT_ERR"

    invoke-static {v2, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    invoke-direct {p0, p2, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/sun/org/apache/xerces/internal/dom/RangeExceptionImpl;

    const-string p1, "INVALID_NODE_TYPE_ERR"

    invoke-static {v2, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lcom/sun/org/apache/xerces/internal/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/w3c/dom/DOMException;

    const-string p1, "INVALID_STATE_ERR"

    invoke-static {v2, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xb

    invoke-direct {p0, p2, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->checkIndex(Lorg/w3c/dom/Node;I)V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    iput p2, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->getCommonAncestorContainer()Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    if-ne p1, p2, :cond_5

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    iget p2, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    if-ge p1, p2, :cond_5

    :cond_4
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->collapse(Z)V

    :cond_5
    return-void
.end method

.method public setEndAfter(Lorg/w3c/dom/Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/ranges/RangeException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    iget-boolean v0, v0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDetach:Z

    const/4 v1, 0x0

    const-string v2, "http://www.w3.org/dom/DOMTR"

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->hasLegalRootContainer(Lorg/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->isLegalContainedNode(Lorg/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/w3c/dom/DOMException;

    const-string p1, "WRONG_DOCUMENT_ERR"

    invoke-static {v2, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/sun/org/apache/xerces/internal/dom/RangeExceptionImpl;

    const-string p1, "INVALID_NODE_TYPE_ERR"

    invoke-static {v2, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/w3c/dom/DOMException;

    const-string p1, "INVALID_STATE_ERR"

    invoke-static {v2, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-eqz p1, :cond_4

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_1

    :cond_4
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->getCommonAncestorContainer()Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    if-ne p1, v1, :cond_6

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    if-ge p1, v1, :cond_6

    :cond_5
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->collapse(Z)V

    :cond_6
    return-void
.end method

.method public setEndBefore(Lorg/w3c/dom/Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/ranges/RangeException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    iget-boolean v0, v0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDetach:Z

    const/4 v1, 0x0

    const-string v2, "http://www.w3.org/dom/DOMTR"

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->hasLegalRootContainer(Lorg/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->isLegalContainedNode(Lorg/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/w3c/dom/DOMException;

    const-string p1, "WRONG_DOCUMENT_ERR"

    invoke-static {v2, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/sun/org/apache/xerces/internal/dom/RangeExceptionImpl;

    const-string p1, "INVALID_NODE_TYPE_ERR"

    invoke-static {v2, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/w3c/dom/DOMException;

    const-string p1, "INVALID_STATE_ERR"

    invoke-static {v2, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-eqz p1, :cond_4

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->getCommonAncestorContainer()Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    if-ne p1, v1, :cond_6

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    if-ge p1, v1, :cond_6

    :cond_5
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->collapse(Z)V

    :cond_6
    return-void
.end method

.method public setStart(Lorg/w3c/dom/Node;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/ranges/RangeException;,
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    iget-boolean v0, v0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDetach:Z

    const/4 v1, 0x0

    const-string v2, "http://www.w3.org/dom/DOMTR"

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->isLegalContainer(Lorg/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/w3c/dom/DOMException;

    const-string p1, "WRONG_DOCUMENT_ERR"

    invoke-static {v2, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    invoke-direct {p0, p2, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/sun/org/apache/xerces/internal/dom/RangeExceptionImpl;

    const-string p1, "INVALID_NODE_TYPE_ERR"

    invoke-static {v2, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lcom/sun/org/apache/xerces/internal/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/w3c/dom/DOMException;

    const-string p1, "INVALID_STATE_ERR"

    invoke-static {v2, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xb

    invoke-direct {p0, p2, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->checkIndex(Lorg/w3c/dom/Node;I)V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    iput p2, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->getCommonAncestorContainer()Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    if-ne p1, p2, :cond_5

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    iget p2, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    if-ge p1, p2, :cond_5

    :cond_4
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->collapse(Z)V

    :cond_5
    return-void
.end method

.method public setStartAfter(Lorg/w3c/dom/Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/ranges/RangeException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    iget-boolean v0, v0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDetach:Z

    const/4 v1, 0x0

    const-string v2, "http://www.w3.org/dom/DOMTR"

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->hasLegalRootContainer(Lorg/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->isLegalContainedNode(Lorg/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/w3c/dom/DOMException;

    const-string p1, "WRONG_DOCUMENT_ERR"

    invoke-static {v2, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/sun/org/apache/xerces/internal/dom/RangeExceptionImpl;

    const-string p1, "INVALID_NODE_TYPE_ERR"

    invoke-static {v2, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/w3c/dom/DOMException;

    const-string p1, "INVALID_STATE_ERR"

    invoke-static {v2, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    const/4 v0, 0x0

    :goto_1
    if-eqz p1, :cond_4

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_1

    :cond_4
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->getCommonAncestorContainer()Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    if-ne p1, v0, :cond_6

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    if-ge p1, v0, :cond_6

    :cond_5
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->collapse(Z)V

    :cond_6
    return-void
.end method

.method public setStartBefore(Lorg/w3c/dom/Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/ranges/RangeException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    iget-boolean v0, v0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDetach:Z

    const/4 v1, 0x0

    const-string v2, "http://www.w3.org/dom/DOMTR"

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->hasLegalRootContainer(Lorg/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->isLegalContainedNode(Lorg/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/w3c/dom/DOMException;

    const-string p1, "WRONG_DOCUMENT_ERR"

    invoke-static {v2, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/sun/org/apache/xerces/internal/dom/RangeExceptionImpl;

    const-string p1, "INVALID_NODE_TYPE_ERR"

    invoke-static {v2, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/w3c/dom/DOMException;

    const-string p1, "INVALID_STATE_ERR"

    invoke-static {v2, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    const/4 v0, 0x0

    :goto_1
    if-eqz p1, :cond_4

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->getCommonAncestorContainer()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    if-ge v0, v1, :cond_6

    :cond_5
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->collapse(Z)V

    :cond_6
    return-void
.end method

.method public signalSplitData(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;I)V
    .locals 1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fSplitNode:Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->splitData(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fSplitNode:Lorg/w3c/dom/Node;

    return-void
.end method

.method public surroundContents(Lorg/w3c/dom/Node;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;,
            Lorg/w3c/dom/ranges/RangeException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    iget-boolean v1, v1, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    const/4 v2, 0x0

    const-string v3, "http://www.w3.org/dom/DOMTR"

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDetach:Z

    const/16 v4, 0xb

    if-nez v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v5, 0x6

    if-eq v0, v5, :cond_1

    const/16 v5, 0xc

    if-eq v0, v5, :cond_1

    const/16 v5, 0xa

    if-eq v0, v5, :cond_1

    const/16 v5, 0x9

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/sun/org/apache/xerces/internal/dom/RangeExceptionImpl;

    const-string p1, "INVALID_NODE_TYPE_ERR"

    invoke-static {v3, p1, v2}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/sun/org/apache/xerces/internal/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/w3c/dom/DOMException;

    const-string p1, "INVALID_STATE_ERR"

    invoke-static {v3, p1, v2}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    :cond_4
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-ne v4, v5, :cond_5

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    :cond_5
    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->extractContents()Lorg/w3c/dom/DocumentFragment;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->insertNode(Lorg/w3c/dom/Node;)V

    invoke-interface {p1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->selectNode(Lorg/w3c/dom/Node;)V

    return-void

    :cond_6
    new-instance p0, Lcom/sun/org/apache/xerces/internal/dom/RangeExceptionImpl;

    const-string p1, "BAD_BOUNDARYPOINTS_ERR"

    invoke-static {v3, p1, v2}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fDetach:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x3

    if-eq v3, v7, :cond_2

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-ne v3, v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    iget v3, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    if-lez v3, :cond_1

    move v3, v5

    :goto_0
    iget v8, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    if-ge v3, v8, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    invoke-virtual {p0, v0, v5}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->nextNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    iget-object v8, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    if-ne v3, v8, :cond_3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    iget v8, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fStartOffset:I

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0, v4}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->nextNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v0

    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-eq v3, v7, :cond_7

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-eq v3, v6, :cond_7

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    :goto_3
    if-lez v1, :cond_5

    if-eqz v3, :cond_5

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v3

    goto :goto_3

    :cond_5
    if-nez v3, :cond_6

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    invoke-virtual {p0, v1, v5}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->nextNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_4

    :cond_6
    move-object v1, v3

    :cond_7
    :goto_4
    if-eq v0, v1, :cond_b

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-eq v3, v7, :cond_9

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-ne v3, v6, :cond_a

    :cond_9
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    invoke-virtual {p0, v0, v4}, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->nextNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_4

    :cond_b
    :goto_5
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-eq v0, v7, :cond_c

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v6, :cond_d

    :cond_c
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/dom/RangeImpl;->fEndOffset:I

    invoke-virtual {v0, v5, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_d
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    new-instance p0, Lorg/w3c/dom/DOMException;

    const-string v0, "INVALID_STATE_ERR"

    const/4 v1, 0x0

    const-string v2, "http://www.w3.org/dom/DOMTR"

    invoke-static {v2, v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    invoke-direct {p0, v1, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method
