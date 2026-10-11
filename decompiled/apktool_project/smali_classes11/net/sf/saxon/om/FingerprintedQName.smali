.class public Lnet/sf/saxon/om/FingerprintedQName;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/NodeName;


# instance fields
.field public final e:Lnet/sf/saxon/om/StructuredQName;

.field public f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lnet/sf/saxon/om/FingerprintedQName;->f:I

    .line 3
    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    invoke-direct {v0, p1, p2, p3}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/sf/saxon/om/FingerprintedQName;->e:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lnet/sf/saxon/om/FingerprintedQName;->f:I

    .line 6
    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    invoke-direct {v0, p1, p2, p3}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/sf/saxon/om/FingerprintedQName;->e:Lnet/sf/saxon/om/StructuredQName;

    .line 7
    iput p4, p0, Lnet/sf/saxon/om/FingerprintedQName;->f:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamePool;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lnet/sf/saxon/om/FingerprintedQName;->f:I

    .line 10
    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    invoke-direct {v0, p1, p2, p3}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/sf/saxon/om/FingerprintedQName;->e:Lnet/sf/saxon/om/StructuredQName;

    .line 11
    invoke-virtual {p4, p2, p3}, Lnet/sf/saxon/om/NamePool;->allocateFingerprint(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lnet/sf/saxon/om/FingerprintedQName;->f:I

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/om/StructuredQName;I)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lnet/sf/saxon/om/FingerprintedQName;->e:Lnet/sf/saxon/om/StructuredQName;

    .line 14
    iput p2, p0, Lnet/sf/saxon/om/FingerprintedQName;->f:I

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/NamePool;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lnet/sf/saxon/om/FingerprintedQName;->f:I

    .line 17
    iput-object p1, p0, Lnet/sf/saxon/om/FingerprintedQName;->e:Lnet/sf/saxon/om/StructuredQName;

    .line 18
    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lnet/sf/saxon/om/NamePool;->allocateFingerprint(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lnet/sf/saxon/om/FingerprintedQName;->f:I

    return-void
.end method

.method public static fromClarkName(Ljava/lang/String;)Lnet/sf/saxon/om/FingerprintedQName;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x7b

    const-string v2, ""

    if-ne v0, v1, :cond_2

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v0, v4, :cond_0

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing local part in Clark name"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No closing \'}\' in Clark name"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    move-object v3, v2

    :goto_0
    new-instance v0, Lnet/sf/saxon/om/FingerprintedQName;

    invoke-direct {v0, v2, v3, p0}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromEQName(Ljava/lang/String;)Lnet/sf/saxon/om/FingerprintedQName;
    .locals 4

    const-string v0, "Q{"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_2

    const/16 v0, 0x7d

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing local part in EQName"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No closing \'}\' in EQName"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    move-object v2, v1

    :goto_0
    new-instance v0, Lnet/sf/saxon/om/FingerprintedQName;

    invoke-direct {v0, v1, v2, p0}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lnet/sf/saxon/om/NodeName;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lnet/sf/saxon/om/FingerprintedQName;->f:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/om/NodeName;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeName;->hasFingerprint()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/om/FingerprintedQName;->getFingerprint()I

    move-result p0

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeName;->getFingerprint()I

    move-result p1

    if-ne p0, p1, :cond_0

    move v1, v3

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/om/FingerprintedQName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lnet/sf/saxon/om/NodeName;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/FingerprintedQName;->hasURI(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v3

    :cond_2
    return v1
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/FingerprintedQName;->e:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFingerprint()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/om/FingerprintedQName;->f:I

    return p0
.end method

.method public getLocalPart()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/FingerprintedQName;->e:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNamespaceBinding()Lnet/sf/saxon/om/NamespaceBinding;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/FingerprintedQName;->e:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getNamespaceBinding()Lnet/sf/saxon/om/NamespaceBinding;

    move-result-object p0

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/FingerprintedQName;->e:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getPrefix()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStructuredQName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/FingerprintedQName;->e:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public getURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/FingerprintedQName;->e:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasFingerprint()Z
    .locals 1

    iget p0, p0, Lnet/sf/saxon/om/FingerprintedQName;->f:I

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

    iget-object p0, p0, Lnet/sf/saxon/om/FingerprintedQName;->e:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/FingerprintedQName;->e:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->hashCode()I

    move-result p0

    return p0
.end method

.method public identityHashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isIdentical(Lnet/sf/saxon/om/IdentityComparable;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/om/NodeName;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/FingerprintedQName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/om/FingerprintedQName;->getPrefix()Ljava/lang/String;

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
    .locals 2

    iget v0, p0, Lnet/sf/saxon/om/FingerprintedQName;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/om/FingerprintedQName;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/om/FingerprintedQName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/om/NamePool;->allocateFingerprint(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lnet/sf/saxon/om/FingerprintedQName;->f:I

    :cond_0
    iget p0, p0, Lnet/sf/saxon/om/FingerprintedQName;->f:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/FingerprintedQName;->e:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
