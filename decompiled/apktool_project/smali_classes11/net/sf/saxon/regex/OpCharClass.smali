.class public Lnet/sf/saxon/regex/OpCharClass;
.super Lnet/sf/saxon/regex/Operation;
.source "SourceFile"


# instance fields
.field public final a:Lnet/sf/saxon/z/IntPredicateProxy;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/z/IntPredicateProxy;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/regex/Operation;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/regex/OpCharClass;->a:Lnet/sf/saxon/z/IntPredicateProxy;

    return-void
.end method


# virtual methods
.method public display()Ljava/lang/String;
    .locals 5

    iget-object p0, p0, Lnet/sf/saxon/regex/OpCharClass;->a:Lnet/sf/saxon/z/IntPredicateProxy;

    instance-of v0, p0, Lnet/sf/saxon/z/IntSetPredicate;

    const-string v1, "[....]"

    if-eqz v0, :cond_2

    check-cast p0, Lnet/sf/saxon/z/IntSetPredicate;

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntSetPredicate;->getIntSet()Lnet/sf/saxon/z/IntSet;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/z/IntSingletonSet;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p0, Lnet/sf/saxon/z/IntSingletonSet;

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntSingletonSet;->getMember()I

    move-result p0

    int-to-char p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/z/IntRangeSet;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    check-cast p0, Lnet/sf/saxon/z/IntRangeSet;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/z/IntRangeSet;->getNumberOfRanges()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntRangeSet;->getStartPoints()[I

    move-result-object v3

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntRangeSet;->getEndPoints()[I

    move-result-object v3

    aget v3, v3, v4

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method public getInitialCharacterClass(Z)Lnet/sf/saxon/regex/charclass/CharacterClass;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/regex/OpCharClass;->a:Lnet/sf/saxon/z/IntPredicateProxy;

    instance-of v1, v0, Lnet/sf/saxon/regex/charclass/CharacterClass;

    if-eqz v1, :cond_0

    check-cast v0, Lnet/sf/saxon/regex/charclass/CharacterClass;

    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lnet/sf/saxon/regex/Operation;->getInitialCharacterClass(Z)Lnet/sf/saxon/regex/charclass/CharacterClass;

    move-result-object p0

    return-object p0
.end method

.method public getMatchLength()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getPredicate()Lnet/sf/saxon/z/IntPredicateProxy;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/regex/OpCharClass;->a:Lnet/sf/saxon/z/IntPredicateProxy;

    return-object p0
.end method

.method public iterateMatches(Lnet/sf/saxon/regex/REMatcher;I)Lnet/sf/saxon/z/IntIterator;
    .locals 4

    iget-object p1, p1, Lnet/sf/saxon/regex/REMatcher;->b:Lnet/sf/saxon/str/UnicodeString;

    int-to-long v0, p2

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/regex/OpCharClass;->a:Lnet/sf/saxon/z/IntPredicateProxy;

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result p1

    invoke-interface {p0, p1}, Lnet/sf/saxon/z/IntPredicateProxy;->test(I)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lnet/sf/saxon/z/IntSingletonIterator;

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p2}, Lnet/sf/saxon/z/IntSingletonIterator;-><init>(I)V

    return-object p0

    :cond_0
    invoke-static {}, Lnet/sf/saxon/expr/sort/EmptyIntIterator;->getInstance()Lnet/sf/saxon/expr/sort/EmptyIntIterator;

    move-result-object p0

    return-object p0
.end method

.method public matchesEmptyString()I
    .locals 0

    const/16 p0, 0x400

    return p0
.end method
