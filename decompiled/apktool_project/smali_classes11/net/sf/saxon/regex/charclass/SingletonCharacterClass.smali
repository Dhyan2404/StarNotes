.class public Lnet/sf/saxon/regex/charclass/SingletonCharacterClass;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/regex/charclass/CharacterClass;


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/sf/saxon/regex/charclass/SingletonCharacterClass;->a:I

    return-void
.end method


# virtual methods
.method public getCodepoint()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/regex/charclass/SingletonCharacterClass;->a:I

    return p0
.end method

.method public getIntSet()Lnet/sf/saxon/z/IntSet;
    .locals 1

    new-instance v0, Lnet/sf/saxon/z/IntSingletonSet;

    iget p0, p0, Lnet/sf/saxon/regex/charclass/SingletonCharacterClass;->a:I

    invoke-direct {v0, p0}, Lnet/sf/saxon/z/IntSingletonSet;-><init>(I)V

    return-object v0
.end method

.method public isDisjoint(Lnet/sf/saxon/regex/charclass/CharacterClass;)Z
    .locals 0

    iget p0, p0, Lnet/sf/saxon/regex/charclass/SingletonCharacterClass;->a:I

    invoke-interface {p1, p0}, Lnet/sf/saxon/regex/charclass/CharacterClass;->test(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public test(I)Z
    .locals 0

    iget p0, p0, Lnet/sf/saxon/regex/charclass/SingletonCharacterClass;->a:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
