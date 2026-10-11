.class public abstract Lcom/sun/org/apache/xerces/internal/dom/ChildNode;
.super Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x54d3ce1bf89da1b2L


# instance fields
.field transient fBufferStr:Ljava/lang/StringBuffer;

.field protected nextSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

.field protected previousSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->fBufferStr:Ljava/lang/StringBuffer;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->fBufferStr:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 0

    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->previousSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->nextSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isFirstChild(Z)V

    return-object p0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->nextSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    return-object p0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isOwned()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isFirstChild()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->previousSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    :goto_0
    return-object p0
.end method

.method public final parentNode()Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isOwned()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final previousSibling()Lcom/sun/org/apache/xerces/internal/dom/ChildNode;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isFirstChild()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->previousSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    :goto_0
    return-object p0
.end method
