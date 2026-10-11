.class public final Lnet/sf/saxon/om/NoNamespaceName;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/NodeName;


# instance fields
.field public final e:Ljava/lang/String;

.field public f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lnet/sf/saxon/om/NoNamespaceName;->f:I

    .line 3
    iput-object p1, p0, Lnet/sf/saxon/om/NoNamespaceName;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lnet/sf/saxon/om/NoNamespaceName;->e:Ljava/lang/String;

    .line 6
    iput p2, p0, Lnet/sf/saxon/om/NoNamespaceName;->f:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/om/NodeName;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/om/NodeName;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/om/NoNamespaceName;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ""

    invoke-interface {p1, p0}, Lnet/sf/saxon/om/NodeName;->hasURI(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/NoNamespaceName;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getFingerprint()I
    .locals 1

    iget p0, p0, Lnet/sf/saxon/om/NoNamespaceName;->f:I

    const v0, 0xfffff

    and-int/2addr p0, v0

    return p0
.end method

.method public getLocalPart()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/NoNamespaceName;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getNamespaceBinding()Lnet/sf/saxon/om/NamespaceBinding;
    .locals 0

    sget-object p0, Lnet/sf/saxon/om/NamespaceBinding;->DEFAULT_UNDECLARATION:Lnet/sf/saxon/om/NamespaceBinding;

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getStructuredQName()Lnet/sf/saxon/om/StructuredQName;
    .locals 2

    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    const-string v1, ""

    invoke-virtual {p0}, Lnet/sf/saxon/om/NoNamespaceName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v1, p0}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public hasFingerprint()Z
    .locals 1

    iget p0, p0, Lnet/sf/saxon/om/NoNamespaceName;->f:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasURI(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 1

    const-string v0, ""

    iget-object p0, p0, Lnet/sf/saxon/om/NoNamespaceName;->e:Ljava/lang/String;

    invoke-static {v0, p0}, Lnet/sf/saxon/om/StructuredQName;->computeHashCode(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result p0

    return p0
.end method

.method public identityHashCode()I
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/om/NoNamespaceName;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lnet/sf/saxon/om/NoNamespaceName;->getPrefix()Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/NoNamespaceName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    check-cast p1, Lnet/sf/saxon/om/NodeName;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

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
    .locals 2

    iget v0, p0, Lnet/sf/saxon/om/NoNamespaceName;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lnet/sf/saxon/om/NoNamespaceName;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/om/NamePool;->allocateFingerprint(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lnet/sf/saxon/om/NoNamespaceName;->f:I

    return p1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/NoNamespaceName;->e:Ljava/lang/String;

    return-object p0
.end method
