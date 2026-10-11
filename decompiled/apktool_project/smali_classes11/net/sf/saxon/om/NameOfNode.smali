.class public Lnet/sf/saxon/om/NameOfNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/NodeName;


# instance fields
.field public final e:Lnet/sf/saxon/om/NodeInfo;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/NodeInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/om/NameOfNode;->e:Lnet/sf/saxon/om/NodeInfo;

    return-void
.end method

.method public static makeName(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/NodeName;
    .locals 3

    instance-of v0, p0, Lnet/sf/saxon/om/MutableNodeInfo;

    if-eqz v0, :cond_0

    new-instance v0, Lnet/sf/saxon/om/FingerprintedQName;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;

    if-eqz v0, :cond_1

    new-instance v0, Lnet/sf/saxon/om/NameOfNode;

    check-cast p0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->getUnderlyingNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/om/NameOfNode;-><init>(Lnet/sf/saxon/om/NodeInfo;)V

    return-object v0

    :cond_1
    new-instance v0, Lnet/sf/saxon/om/NameOfNode;

    invoke-direct {v0, p0}, Lnet/sf/saxon/om/NameOfNode;-><init>(Lnet/sf/saxon/om/NodeInfo;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lnet/sf/saxon/om/NodeName;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lnet/sf/saxon/om/NodeName;

    iget-object v0, p0, Lnet/sf/saxon/om/NameOfNode;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->hasFingerprint()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->hasFingerprint()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/om/NameOfNode;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getFingerprint()I

    move-result p0

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getFingerprint()I

    move-result p1

    if-ne p0, p1, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lnet/sf/saxon/om/NameOfNode;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lnet/sf/saxon/om/NameOfNode;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getURI()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lnet/sf/saxon/om/NodeName;->hasURI(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/NameOfNode;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFingerprint()I
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/om/NameOfNode;->hasFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/om/NameOfNode;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getFingerprint()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getLocalPart()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/NameOfNode;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNamespaceBinding()Lnet/sf/saxon/om/NamespaceBinding;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/om/NameOfNode;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/om/NameOfNode;->getURI()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lnet/sf/saxon/om/NamespaceBinding;->makeNamespaceBinding(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lnet/sf/saxon/om/NamespaceBinding;

    move-result-object p0

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/NameOfNode;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getPrefix()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStructuredQName()Lnet/sf/saxon/om/StructuredQName;
    .locals 3

    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0}, Lnet/sf/saxon/om/NameOfNode;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/om/NameOfNode;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sf/saxon/om/NameOfNode;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/NameOfNode;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getURI()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasFingerprint()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/NameOfNode;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->hasFingerprint()Z

    move-result p0

    return p0
.end method

.method public hasURI(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/NameOfNode;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getURI()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/om/NameOfNode;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/om/NameOfNode;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lnet/sf/saxon/om/StructuredQName;->computeHashCode(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result p0

    return p0
.end method

.method public identityHashCode()I
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/om/NameOfNode;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lnet/sf/saxon/om/NameOfNode;->getPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public isIdentical(Lnet/sf/saxon/om/IdentityComparable;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/om/NodeName;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/NameOfNode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/om/NameOfNode;->getPrefix()Ljava/lang/String;

    move-result-object p0

    check-cast p1, Lnet/sf/saxon/om/NodeName;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getPrefix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public obtainFingerprint(Lnet/sf/saxon/om/NamePool;)I
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/om/NameOfNode;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->hasFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/om/NameOfNode;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getFingerprint()I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/om/NameOfNode;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getURI()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/om/NameOfNode;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/om/NamePool;->allocateFingerprint(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
