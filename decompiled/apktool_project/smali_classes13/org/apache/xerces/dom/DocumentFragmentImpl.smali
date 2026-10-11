.class public Lorg/apache/xerces/dom/DocumentFragmentImpl;
.super Lorg/apache/xerces/dom/ParentNode;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/DocumentFragment;


# static fields
.field static final serialVersionUID:J = -0x696c02ff5db4e68aL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/xerces/dom/ParentNode;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/dom/CoreDocumentImpl;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/xerces/dom/ParentNode;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;)V

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

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->isNormalized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    :cond_1
    iget-object v0, p0, Lorg/apache/xerces/dom/ParentNode;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    :goto_0
    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/xerces/dom/NodeImpl;->isNormalized(Z)V

    return-void

    :cond_2
    iget-object v1, v0, Lorg/apache/xerces/dom/ChildNode;->nextSibling:Lorg/apache/xerces/dom/ChildNode;

    invoke-virtual {v0}, Lorg/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v2

    if-ne v2, v3, :cond_3

    move-object v2, v0

    check-cast v2, Lorg/w3c/dom/Text;

    invoke-virtual {v1}, Lorg/apache/xerces/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/CharacterData;->appendData(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/apache/xerces/dom/ParentNode;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object v1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lorg/apache/xerces/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lorg/apache/xerces/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    invoke-virtual {p0, v0}, Lorg/apache/xerces/dom/ParentNode;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_5
    :goto_1
    invoke-virtual {v0}, Lorg/apache/xerces/dom/NodeImpl;->normalize()V

    move-object v0, v1

    goto :goto_0
.end method
