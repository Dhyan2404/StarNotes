.class public Lnet/sf/saxon/trans/ComponentTest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lnet/sf/saxon/pattern/QNameTest;

.field public final c:I


# direct methods
.method public constructor <init>(ILnet/sf/saxon/pattern/QNameTest;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/sf/saxon/trans/ComponentTest;->a:I

    iput-object p2, p0, Lnet/sf/saxon/trans/ComponentTest;->b:Lnet/sf/saxon/pattern/QNameTest;

    iput p3, p0, Lnet/sf/saxon/trans/ComponentTest;->c:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lnet/sf/saxon/trans/ComponentTest;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/trans/ComponentTest;

    iget v0, p1, Lnet/sf/saxon/trans/ComponentTest;->a:I

    iget v1, p0, Lnet/sf/saxon/trans/ComponentTest;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lnet/sf/saxon/trans/ComponentTest;->c:I

    iget v1, p0, Lnet/sf/saxon/trans/ComponentTest;->c:I

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lnet/sf/saxon/trans/ComponentTest;->b:Lnet/sf/saxon/pattern/QNameTest;

    iget-object p0, p0, Lnet/sf/saxon/trans/ComponentTest;->b:Lnet/sf/saxon/pattern/QNameTest;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getArity()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/trans/ComponentTest;->c:I

    return p0
.end method

.method public getComponentKind()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/trans/ComponentTest;->a:I

    return p0
.end method

.method public getQNameTest()Lnet/sf/saxon/pattern/QNameTest;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/ComponentTest;->b:Lnet/sf/saxon/pattern/QNameTest;

    return-object p0
.end method

.method public getSymbolicNameIfExplicit()Lnet/sf/saxon/trans/SymbolicName;
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/trans/ComponentTest;->b:Lnet/sf/saxon/pattern/QNameTest;

    instance-of v1, v0, Lnet/sf/saxon/pattern/NameTest;

    if-eqz v1, :cond_1

    iget v1, p0, Lnet/sf/saxon/trans/ComponentTest;->a:I

    const/16 v2, 0xa0

    if-ne v1, v2, :cond_0

    new-instance v1, Lnet/sf/saxon/trans/SymbolicName$F;

    check-cast v0, Lnet/sf/saxon/pattern/NameTest;

    invoke-virtual {v0}, Lnet/sf/saxon/pattern/NameTest;->getMatchingNodeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    iget p0, p0, Lnet/sf/saxon/trans/ComponentTest;->c:I

    invoke-direct {v1, v0, p0}, Lnet/sf/saxon/trans/SymbolicName$F;-><init>(Lnet/sf/saxon/om/StructuredQName;I)V

    return-object v1

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/SymbolicName;

    check-cast v0, Lnet/sf/saxon/pattern/NameTest;

    invoke-virtual {v0}, Lnet/sf/saxon/pattern/NameTest;->getMatchingNodeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lnet/sf/saxon/trans/SymbolicName;-><init>(ILnet/sf/saxon/om/StructuredQName;)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lnet/sf/saxon/trans/ComponentTest;->a:I

    iget v1, p0, Lnet/sf/saxon/trans/ComponentTest;->c:I

    xor-int/2addr v0, v1

    iget-object p0, p0, Lnet/sf/saxon/trans/ComponentTest;->b:Lnet/sf/saxon/pattern/QNameTest;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public isPartialWildcard()Z
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/trans/ComponentTest;->b:Lnet/sf/saxon/pattern/QNameTest;

    instance-of v0, p0, Lnet/sf/saxon/pattern/LocalNameTest;

    if-nez v0, :cond_1

    instance-of p0, p0, Lnet/sf/saxon/pattern/NamespaceTest;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public matches(Lnet/sf/saxon/expr/instruct/Actor;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/Actor;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/ComponentTest;->matches(Lnet/sf/saxon/trans/SymbolicName;)Z

    move-result p0

    return p0
.end method

.method public matches(Lnet/sf/saxon/trans/SymbolicName;)Z
    .locals 3

    .line 2
    iget v0, p0, Lnet/sf/saxon/trans/ComponentTest;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName;->getComponentKind()I

    move-result v0

    iget v2, p0, Lnet/sf/saxon/trans/ComponentTest;->a:I

    if-ne v0, v2, :cond_2

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/trans/ComponentTest;->b:Lnet/sf/saxon/pattern/QNameTest;

    .line 3
    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-interface {v0, v2}, Lnet/sf/saxon/pattern/QNameTest;->matches(Lnet/sf/saxon/om/StructuredQName;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lnet/sf/saxon/trans/ComponentTest;->a:I

    const/16 v2, 0xa0

    if-ne v0, v2, :cond_1

    iget p0, p0, Lnet/sf/saxon/trans/ComponentTest;->c:I

    if-eq p0, v1, :cond_1

    check-cast p1, Lnet/sf/saxon/trans/SymbolicName$F;

    .line 4
    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName$F;->getArity()I

    move-result p1

    if-ne p0, p1, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
