.class public Lnet/sf/saxon/regex/charclass/IntSetCharacterClass;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/regex/charclass/CharacterClass;


# instance fields
.field public final a:Lnet/sf/saxon/z/IntSet;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/z/IntSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/regex/charclass/IntSetCharacterClass;->a:Lnet/sf/saxon/z/IntSet;

    return-void
.end method


# virtual methods
.method public getIntSet()Lnet/sf/saxon/z/IntSet;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/regex/charclass/IntSetCharacterClass;->a:Lnet/sf/saxon/z/IntSet;

    return-object p0
.end method

.method public isDisjoint(Lnet/sf/saxon/regex/charclass/CharacterClass;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/regex/charclass/IntSetCharacterClass;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/regex/charclass/IntSetCharacterClass;->a:Lnet/sf/saxon/z/IntSet;

    check-cast p1, Lnet/sf/saxon/regex/charclass/IntSetCharacterClass;

    iget-object p1, p1, Lnet/sf/saxon/regex/charclass/IntSetCharacterClass;->a:Lnet/sf/saxon/z/IntSet;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntSet;->intersect(Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/z/IntSet;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntSet;->isEmpty()Z

    move-result p0

    return p0

    :cond_0
    instance-of v0, p1, Lnet/sf/saxon/regex/charclass/InverseCharacterClass;

    if-eqz v0, :cond_1

    invoke-interface {p1, p0}, Lnet/sf/saxon/regex/charclass/CharacterClass;->isDisjoint(Lnet/sf/saxon/regex/charclass/CharacterClass;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public test(I)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/regex/charclass/IntSetCharacterClass;->a:Lnet/sf/saxon/z/IntSet;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntSet;->contains(I)Z

    move-result p0

    return p0
.end method
