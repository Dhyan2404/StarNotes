.class public Lorg/apache/xerces/dom/ElementDefinitionImpl;
.super Lorg/apache/xerces/dom/ParentNode;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x7436093334741c3aL


# instance fields
.field protected attributes:Lorg/apache/xerces/dom/NamedNodeMapImpl;

.field protected name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xerces/dom/ParentNode;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;)V

    iput-object p2, p0, Lorg/apache/xerces/dom/ElementDefinitionImpl;->name:Ljava/lang/String;

    new-instance p2, Lorg/apache/xerces/dom/NamedNodeMapImpl;

    invoke-direct {p2, p1}, Lorg/apache/xerces/dom/NamedNodeMapImpl;-><init>(Lorg/apache/xerces/dom/NodeImpl;)V

    iput-object p2, p0, Lorg/apache/xerces/dom/ElementDefinitionImpl;->attributes:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    return-void
.end method


# virtual methods
.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/xerces/dom/ParentNode;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/apache/xerces/dom/ElementDefinitionImpl;

    iget-object p0, p0, Lorg/apache/xerces/dom/ElementDefinitionImpl;->attributes:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->cloneMap(Lorg/apache/xerces/dom/NodeImpl;)Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-result-object p0

    iput-object p0, p1, Lorg/apache/xerces/dom/ElementDefinitionImpl;->attributes:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    return-object p1
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/dom/ElementDefinitionImpl;->attributes:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    return-object p0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/dom/NodeImpl;->synchronizeData()V

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/dom/ElementDefinitionImpl;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getNodeType()S
    .locals 0

    const/16 p0, 0x15

    return p0
.end method
