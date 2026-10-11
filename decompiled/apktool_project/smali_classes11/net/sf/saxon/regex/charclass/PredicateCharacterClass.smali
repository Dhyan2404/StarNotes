.class public Lnet/sf/saxon/regex/charclass/PredicateCharacterClass;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/regex/charclass/CharacterClass;


# instance fields
.field public final a:Ljava/util/function/IntPredicate;


# direct methods
.method public constructor <init>(Ljava/util/function/IntPredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/regex/charclass/PredicateCharacterClass;->a:Ljava/util/function/IntPredicate;

    return-void
.end method


# virtual methods
.method public getIntSet()Lnet/sf/saxon/z/IntSet;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isDisjoint(Lnet/sf/saxon/regex/charclass/CharacterClass;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/regex/charclass/InverseCharacterClass;

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Lnet/sf/saxon/regex/charclass/CharacterClass;->isDisjoint(Lnet/sf/saxon/regex/charclass/CharacterClass;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public test(I)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/regex/charclass/PredicateCharacterClass;->a:Ljava/util/function/IntPredicate;

    invoke-interface {p0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result p0

    return p0
.end method
