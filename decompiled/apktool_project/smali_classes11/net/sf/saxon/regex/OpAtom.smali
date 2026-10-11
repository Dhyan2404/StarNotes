.class public Lnet/sf/saxon/regex/OpAtom;
.super Lnet/sf/saxon/regex/Operation;
.source "SourceFile"


# instance fields
.field public final a:Lnet/sf/saxon/str/UnicodeString;

.field public final b:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/str/UnicodeString;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/regex/Operation;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/regex/OpAtom;->a:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result p1

    iput p1, p0, Lnet/sf/saxon/regex/OpAtom;->b:I

    return-void
.end method


# virtual methods
.method public a()Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/regex/OpAtom;->a:Lnet/sf/saxon/str/UnicodeString;

    return-object p0
.end method

.method public display()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/regex/OpAtom;->a:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInitialCharacterClass(Z)Lnet/sf/saxon/regex/charclass/CharacterClass;
    .locals 4

    iget v0, p0, Lnet/sf/saxon/regex/OpAtom;->b:I

    if-nez v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/regex/charclass/EmptyCharacterClass;->getInstance()Lnet/sf/saxon/regex/charclass/EmptyCharacterClass;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lnet/sf/saxon/regex/OpAtom;->a:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result p1

    invoke-static {p1}, Lnet/sf/saxon/regex/CaseVariants;->getCaseVariants(I)[I

    move-result-object v2

    array-length v3, v2

    if-lez v3, :cond_2

    new-instance p0, Lnet/sf/saxon/z/IntHashSet;

    array-length v0, v2

    invoke-direct {p0, v0}, Lnet/sf/saxon/z/IntHashSet;-><init>(I)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    array-length p1, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget v1, v2, v0

    invoke-virtual {p0, v1}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lnet/sf/saxon/regex/charclass/IntSetCharacterClass;

    invoke-direct {p1, p0}, Lnet/sf/saxon/regex/charclass/IntSetCharacterClass;-><init>(Lnet/sf/saxon/z/IntSet;)V

    return-object p1

    :cond_2
    new-instance p1, Lnet/sf/saxon/regex/charclass/SingletonCharacterClass;

    iget-object p0, p0, Lnet/sf/saxon/regex/OpAtom;->a:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/regex/charclass/SingletonCharacterClass;-><init>(I)V

    return-object p1
.end method

.method public getMatchLength()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/regex/OpAtom;->b:I

    return p0
.end method

.method public iterateMatches(Lnet/sf/saxon/regex/REMatcher;I)Lnet/sf/saxon/z/IntIterator;
    .locals 6

    iget-object v0, p1, Lnet/sf/saxon/regex/REMatcher;->b:Lnet/sf/saxon/str/UnicodeString;

    iget v1, p0, Lnet/sf/saxon/regex/OpAtom;->b:I

    add-int/2addr v1, p2

    int-to-long v1, v1

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    invoke-static {}, Lnet/sf/saxon/expr/sort/EmptyIntIterator;->getInstance()Lnet/sf/saxon/expr/sort/EmptyIntIterator;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v1, p1, Lnet/sf/saxon/regex/REMatcher;->a:Lnet/sf/saxon/regex/REProgram;

    iget-object v1, v1, Lnet/sf/saxon/regex/REProgram;->flags:Lnet/sf/saxon/regex/REFlags;

    invoke-virtual {v1}, Lnet/sf/saxon/regex/REFlags;->isCaseIndependent()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    :goto_0
    iget v1, p0, Lnet/sf/saxon/regex/OpAtom;->b:I

    if-ge v2, v1, :cond_4

    add-int v1, p2, v2

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v1

    iget-object v3, p0, Lnet/sf/saxon/regex/OpAtom;->a:Lnet/sf/saxon/str/UnicodeString;

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v3

    invoke-virtual {p1, v1, v3}, Lnet/sf/saxon/regex/REMatcher;->b(II)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lnet/sf/saxon/expr/sort/EmptyIntIterator;->getInstance()Lnet/sf/saxon/expr/sort/EmptyIntIterator;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget p1, p0, Lnet/sf/saxon/regex/OpAtom;->b:I

    if-ge v2, p1, :cond_4

    add-int p1, p2, v2

    int-to-long v3, p1

    invoke-virtual {v0, v3, v4}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result p1

    iget-object v1, p0, Lnet/sf/saxon/regex/OpAtom;->a:Lnet/sf/saxon/str/UnicodeString;

    int-to-long v3, v2

    invoke-virtual {v1, v3, v4}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v1

    if-eq p1, v1, :cond_3

    invoke-static {}, Lnet/sf/saxon/expr/sort/EmptyIntIterator;->getInstance()Lnet/sf/saxon/expr/sort/EmptyIntIterator;

    move-result-object p0

    return-object p0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    new-instance p1, Lnet/sf/saxon/z/IntSingletonIterator;

    iget p0, p0, Lnet/sf/saxon/regex/OpAtom;->b:I

    add-int/2addr p2, p0

    invoke-direct {p1, p2}, Lnet/sf/saxon/z/IntSingletonIterator;-><init>(I)V

    return-object p1
.end method

.method public matchesEmptyString()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/regex/OpAtom;->b:I

    if-nez p0, :cond_0

    const/4 p0, 0x7

    goto :goto_0

    :cond_0
    const/16 p0, 0x400

    :goto_0
    return p0
.end method
