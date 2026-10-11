.class public Lnet/sf/saxon/trans/SymbolicName;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/trans/SymbolicName$F;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lnet/sf/saxon/om/StructuredQName;


# direct methods
.method public constructor <init>(ILnet/sf/saxon/om/StructuredQName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/sf/saxon/trans/SymbolicName;->a:I

    iput-object p2, p0, Lnet/sf/saxon/trans/SymbolicName;->b:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lnet/sf/saxon/trans/SymbolicName;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/trans/SymbolicName;

    iget v0, p1, Lnet/sf/saxon/trans/SymbolicName;->a:I

    iget v1, p0, Lnet/sf/saxon/trans/SymbolicName;->a:I

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lnet/sf/saxon/trans/SymbolicName;->b:Lnet/sf/saxon/om/StructuredQName;

    iget-object p0, p0, Lnet/sf/saxon/trans/SymbolicName;->b:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getComponentKind()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/trans/SymbolicName;->a:I

    return p0
.end method

.method public getComponentName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/SymbolicName;->b:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public getShortName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/SymbolicName;->b:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lnet/sf/saxon/trans/SymbolicName;->a:I

    shl-int/lit8 v0, v0, 0x10

    iget-object p0, p0, Lnet/sf/saxon/trans/SymbolicName;->b:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lnet/sf/saxon/trans/SymbolicName;->a:I

    invoke-static {v1}, Lnet/sf/saxon/om/StandardNames;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/trans/SymbolicName;->b:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
