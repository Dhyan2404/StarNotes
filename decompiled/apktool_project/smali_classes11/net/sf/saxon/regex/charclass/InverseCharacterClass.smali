.class public Lnet/sf/saxon/regex/charclass/InverseCharacterClass;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/regex/charclass/CharacterClass;


# instance fields
.field public final a:Lnet/sf/saxon/regex/charclass/CharacterClass;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/regex/charclass/CharacterClass;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/regex/charclass/InverseCharacterClass;->a:Lnet/sf/saxon/regex/charclass/CharacterClass;

    return-void
.end method


# virtual methods
.method public getComplement()Lnet/sf/saxon/regex/charclass/CharacterClass;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/regex/charclass/InverseCharacterClass;->a:Lnet/sf/saxon/regex/charclass/CharacterClass;

    return-object p0
.end method

.method public getIntSet()Lnet/sf/saxon/z/IntSet;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/regex/charclass/InverseCharacterClass;->a:Lnet/sf/saxon/regex/charclass/CharacterClass;

    invoke-interface {v0}, Lnet/sf/saxon/regex/charclass/CharacterClass;->getIntSet()Lnet/sf/saxon/z/IntSet;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/sf/saxon/z/IntComplementSet;

    iget-object p0, p0, Lnet/sf/saxon/regex/charclass/InverseCharacterClass;->a:Lnet/sf/saxon/regex/charclass/CharacterClass;

    invoke-interface {p0}, Lnet/sf/saxon/regex/charclass/CharacterClass;->getIntSet()Lnet/sf/saxon/z/IntSet;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/z/IntComplementSet;-><init>(Lnet/sf/saxon/z/IntSet;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public isDisjoint(Lnet/sf/saxon/regex/charclass/CharacterClass;)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/regex/charclass/InverseCharacterClass;->a:Lnet/sf/saxon/regex/charclass/CharacterClass;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public test(I)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/regex/charclass/InverseCharacterClass;->a:Lnet/sf/saxon/regex/charclass/CharacterClass;

    invoke-interface {p0, p1}, Lnet/sf/saxon/regex/charclass/CharacterClass;->test(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
