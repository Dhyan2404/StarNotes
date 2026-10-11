.class public Lnet/sf/saxon/trans/SymbolicName$F;
.super Lnet/sf/saxon/trans/SymbolicName;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/trans/SymbolicName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F"
.end annotation


# instance fields
.field public c:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/StructuredQName;I)V
    .locals 1

    const/16 v0, 0xa0

    invoke-direct {p0, v0, p1}, Lnet/sf/saxon/trans/SymbolicName;-><init>(ILnet/sf/saxon/om/StructuredQName;)V

    iput p2, p0, Lnet/sf/saxon/trans/SymbolicName$F;->c:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/trans/SymbolicName$F;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lnet/sf/saxon/trans/SymbolicName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/trans/SymbolicName$F;

    iget p1, p1, Lnet/sf/saxon/trans/SymbolicName$F;->c:I

    iget p0, p0, Lnet/sf/saxon/trans/SymbolicName$F;->c:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getArity()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/trans/SymbolicName$F;->c:I

    return p0
.end method

.method public getShortName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lnet/sf/saxon/trans/SymbolicName;->getShortName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lnet/sf/saxon/trans/SymbolicName$F;->c:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Lnet/sf/saxon/trans/SymbolicName;->hashCode()I

    move-result v0

    iget p0, p0, Lnet/sf/saxon/trans/SymbolicName$F;->c:I

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lnet/sf/saxon/trans/SymbolicName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lnet/sf/saxon/trans/SymbolicName$F;->c:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
