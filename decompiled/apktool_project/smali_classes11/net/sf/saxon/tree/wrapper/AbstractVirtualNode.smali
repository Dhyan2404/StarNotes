.class public abstract Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/wrapper/VirtualNode;


# instance fields
.field protected docWrapper:Lnet/sf/saxon/om/TreeInfo;

.field protected node:Lnet/sf/saxon/om/NodeInfo;

.field protected parent:Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public atomize()Lnet/sf/saxon/om/AtomicSequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->atomize()Lnet/sf/saxon/om/AtomicSequence;

    move-result-object p0

    return-object p0
.end method

.method public compareOrder(Lnet/sf/saxon/om/NodeInfo;)I
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    check-cast p1, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;

    iget-object p1, p1, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0, p1}, Lnet/sf/saxon/om/NodeInfo;->compareOrder(Lnet/sf/saxon/om/NodeInfo;)I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0, p1}, Lnet/sf/saxon/om/NodeInfo;->compareOrder(Lnet/sf/saxon/om/NodeInfo;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    check-cast p1, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;

    iget-object p1, p1, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0, p1}, Lnet/sf/saxon/om/NodeInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0, p1}, Lnet/sf/saxon/om/NodeInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public generateId(Ljava/lang/StringBuilder;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0, p1}, Lnet/sf/saxon/om/NodeInfo;->generateId(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p0

    return-object p0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getBaseURI()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getColumnNumber()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getColumnNumber()I

    move-result p0

    return p0
.end method

.method public getDeclaredNamespaces([Lnet/sf/saxon/om/NamespaceBinding;)[Lnet/sf/saxon/om/NamespaceBinding;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0, p1}, Lnet/sf/saxon/om/NodeInfo;->getDeclaredNamespaces([Lnet/sf/saxon/om/NamespaceBinding;)[Lnet/sf/saxon/om/NamespaceBinding;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFingerprint()I
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->hasFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getFingerprint()I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getLineNumber()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getLineNumber()I

    move-result p0

    return p0
.end method

.method public getLocalPart()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNodeKind()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result p0

    return p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getPrefix()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRealNode()Ljava/lang/Object;
    .locals 1

    :cond_0
    check-cast p0, Lnet/sf/saxon/tree/wrapper/VirtualNode;

    invoke-interface {p0}, Lnet/sf/saxon/tree/wrapper/VirtualNode;->getUnderlyingNode()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/tree/wrapper/VirtualNode;

    if-nez v0, :cond_0

    return-object p0
.end method

.method public getRoot()Lnet/sf/saxon/om/NodeInfo;
    .locals 1

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    move-object p0, v0

    goto :goto_0
.end method

.method public getSchemaType()Lnet/sf/saxon/type/SchemaType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTreeInfo()Lnet/sf/saxon/om/TreeInfo;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->docWrapper:Lnet/sf/saxon/om/TreeInfo;

    return-object p0
.end method

.method public getURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getURI()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getUnderlyingNode()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->getUnderlyingNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public getUnderlyingNode()Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    .line 2
    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    return-object p0
.end method

.method public getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public hasChildNodes()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->hasChildNodes()Z

    move-result p0

    return p0
.end method

.method public hasFingerprint()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->hasFingerprint()Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->hashCode()I

    move-result p0

    const v0, 0x3c3c3c3c

    xor-int/2addr p0, v0

    return p0
.end method

.method public isId()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->isId()Z

    move-result p0

    return p0
.end method

.method public isIdref()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->isIdref()Z

    move-result p0

    return p0
.end method

.method public isNilled()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->isNilled()Z

    move-result p0

    return p0
.end method

.method public iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;
    .locals 1

    new-instance v0, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;

    invoke-interface {p0, p1}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Lnet/sf/saxon/tree/util/Navigator$AxisFilter;-><init>(Lnet/sf/saxon/tree/iter/AxisIterator;Lnet/sf/saxon/pattern/NodePredicate;)V

    return-object v0
.end method

.method public saveLocation()Lnet/sf/saxon/s9api/Location;
    .locals 0

    return-object p0
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0, p1}, Lnet/sf/saxon/om/NodeInfo;->setSystemId(Ljava/lang/String;)V

    return-void
.end method
