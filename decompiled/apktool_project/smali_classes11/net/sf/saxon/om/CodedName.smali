.class public Lnet/sf/saxon/om/CodedName;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/NodeName;


# instance fields
.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:Lnet/sf/saxon/om/NamePool;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lnet/sf/saxon/om/NamePool;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/sf/saxon/om/CodedName;->e:I

    iput-object p2, p0, Lnet/sf/saxon/om/CodedName;->f:Ljava/lang/String;

    iput-object p3, p0, Lnet/sf/saxon/om/CodedName;->g:Lnet/sf/saxon/om/NamePool;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lnet/sf/saxon/om/NodeName;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lnet/sf/saxon/om/NodeName;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->hasFingerprint()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/om/CodedName;->getFingerprint()I

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

    invoke-virtual {p0}, Lnet/sf/saxon/om/CodedName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/om/CodedName;->getURI()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lnet/sf/saxon/om/NodeName;->hasURI(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/om/CodedName;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/om/CodedName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/om/CodedName;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/om/CodedName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getFingerprint()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/om/CodedName;->e:I

    return p0
.end method

.method public getLocalPart()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/om/CodedName;->g:Lnet/sf/saxon/om/NamePool;

    iget p0, p0, Lnet/sf/saxon/om/CodedName;->e:I

    invoke-virtual {v0, p0}, Lnet/sf/saxon/om/NamePool;->getLocalName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNamespaceBinding()Lnet/sf/saxon/om/NamespaceBinding;
    .locals 3

    new-instance v0, Lnet/sf/saxon/om/NamespaceBinding;

    iget-object v1, p0, Lnet/sf/saxon/om/CodedName;->f:Ljava/lang/String;

    iget-object v2, p0, Lnet/sf/saxon/om/CodedName;->g:Lnet/sf/saxon/om/NamePool;

    iget p0, p0, Lnet/sf/saxon/om/CodedName;->e:I

    invoke-virtual {v2, p0}, Lnet/sf/saxon/om/NamePool;->getURI(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/om/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/CodedName;->f:Ljava/lang/String;

    return-object p0
.end method

.method public getStructuredQName()Lnet/sf/saxon/om/StructuredQName;
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/om/CodedName;->g:Lnet/sf/saxon/om/NamePool;

    iget v1, p0, Lnet/sf/saxon/om/CodedName;->e:I

    invoke-virtual {v0, v1}, Lnet/sf/saxon/om/NamePool;->getUnprefixedQName(I)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/om/CodedName;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lnet/sf/saxon/om/StructuredQName;

    iget-object p0, p0, Lnet/sf/saxon/om/CodedName;->f:Ljava/lang/String;

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v2, v0}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/om/CodedName;->g:Lnet/sf/saxon/om/NamePool;

    iget p0, p0, Lnet/sf/saxon/om/CodedName;->e:I

    invoke-virtual {v0, p0}, Lnet/sf/saxon/om/NamePool;->getURI(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasFingerprint()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public hasURI(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/om/CodedName;->getURI()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/om/CodedName;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/om/CodedName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lnet/sf/saxon/om/StructuredQName;->computeHashCode(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result p0

    return p0
.end method

.method public identityHashCode()I
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/om/CodedName;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lnet/sf/saxon/om/CodedName;->getPrefix()Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/CodedName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/om/CodedName;->getPrefix()Ljava/lang/String;

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
    .locals 0

    iget p0, p0, Lnet/sf/saxon/om/CodedName;->e:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/om/CodedName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
