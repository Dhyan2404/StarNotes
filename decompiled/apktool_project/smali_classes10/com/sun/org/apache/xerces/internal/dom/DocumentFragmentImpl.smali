.class public Lcom/sun/org/apache/xerces/internal/dom/DocumentFragmentImpl;
.super Lcom/sun/org/apache/xerces/internal/dom/ParentNode;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/DocumentFragment;


# static fields
.field static final serialVersionUID:J = -0x696c02ff5db4e68aL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;-><init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;)V

    return-void
.end method


# virtual methods
.method public getNodeName()Ljava/lang/String;
    .locals 0

    const-string p0, "#document-fragment"

    return-object p0
.end method

.method public getNodeType()S
    .locals 0

    const/16 p0, 0xb

    return p0
.end method

.method public normalize()V
    .locals 4

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isNormalized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->synchronizeChildren()V

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->firstChild:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    :goto_0
    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->nextSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getNodeType()S

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getNodeType()S

    move-result v2

    if-ne v2, v3, :cond_2

    move-object v2, v0

    check-cast v2, Lorg/w3c/dom/Text;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/CharacterData;->appendData(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_4
    :goto_1
    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->normalize()V

    move-object v0, v1

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isNormalized(Z)V

    return-void
.end method
