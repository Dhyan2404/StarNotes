.class public Lnet/sf/saxon/regex/charclass/Categories$Category;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/regex/charclass/CharacterClass;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/regex/charclass/Categories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Category"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lnet/sf/saxon/z/IntPredicateProxy;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/sf/saxon/z/IntPredicateProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/regex/charclass/Categories$Category;->a:Ljava/lang/String;

    iput-object p2, p0, Lnet/sf/saxon/regex/charclass/Categories$Category;->b:Lnet/sf/saxon/z/IntPredicateProxy;

    return-void
.end method

.method public static c(Lnet/sf/saxon/z/IntPredicateProxy;)Lnet/sf/saxon/z/IntSet;
    .locals 1

    instance-of v0, p0, Lnet/sf/saxon/z/IntSetPredicate;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/z/IntSetPredicate;

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntSetPredicate;->getIntSet()Lnet/sf/saxon/z/IntSet;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getIntSet()Lnet/sf/saxon/z/IntSet;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/regex/charclass/Categories$Category;->b:Lnet/sf/saxon/z/IntPredicateProxy;

    invoke-static {p0}, Lnet/sf/saxon/regex/charclass/Categories$Category;->c(Lnet/sf/saxon/z/IntPredicateProxy;)Lnet/sf/saxon/z/IntSet;

    move-result-object p0

    return-object p0
.end method

.method public isDisjoint(Lnet/sf/saxon/regex/charclass/CharacterClass;)Z
    .locals 4

    instance-of v0, p1, Lnet/sf/saxon/regex/charclass/Categories$Category;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/regex/charclass/Categories$Category;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    check-cast p1, Lnet/sf/saxon/regex/charclass/Categories$Category;

    iget-object p1, p1, Lnet/sf/saxon/regex/charclass/Categories$Category;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/regex/charclass/Categories$Category;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/regex/charclass/Categories$Category;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    instance-of v0, p1, Lnet/sf/saxon/regex/charclass/InverseCharacterClass;

    if-eqz v0, :cond_3

    invoke-interface {p1, p0}, Lnet/sf/saxon/regex/charclass/CharacterClass;->isDisjoint(Lnet/sf/saxon/regex/charclass/CharacterClass;)Z

    move-result p0

    return p0

    :cond_3
    instance-of v0, p1, Lnet/sf/saxon/regex/charclass/SingletonCharacterClass;

    if-eqz v0, :cond_4

    check-cast p1, Lnet/sf/saxon/regex/charclass/SingletonCharacterClass;

    invoke-virtual {p1}, Lnet/sf/saxon/regex/charclass/SingletonCharacterClass;->getCodepoint()I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/regex/charclass/Categories$Category;->test(I)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_4
    instance-of v0, p1, Lnet/sf/saxon/regex/charclass/IntSetCharacterClass;

    if-eqz v0, :cond_8

    invoke-interface {p1}, Lnet/sf/saxon/regex/charclass/CharacterClass;->getIntSet()Lnet/sf/saxon/z/IntSet;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/z/IntSet;->size()I

    move-result v0

    const/16 v3, 0x64

    if-le v0, v3, :cond_5

    return v2

    :cond_5
    invoke-virtual {p1}, Lnet/sf/saxon/z/IntSet;->iterator()Lnet/sf/saxon/z/IntIterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/regex/charclass/Categories$Category;->test(I)Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    :cond_7
    return v1

    :cond_8
    return v2
.end method

.method public test(I)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/regex/charclass/Categories$Category;->b:Lnet/sf/saxon/z/IntPredicateProxy;

    invoke-interface {p0, p1}, Lnet/sf/saxon/z/IntPredicateProxy;->test(I)Z

    move-result p0

    return p0
.end method
