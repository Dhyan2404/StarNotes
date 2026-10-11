.class public Lnet/sf/saxon/regex/OpUnambiguousRepeat;
.super Lnet/sf/saxon/regex/OpRepeat;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lnet/sf/saxon/regex/Operation;II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lnet/sf/saxon/regex/OpRepeat;-><init>(Lnet/sf/saxon/regex/Operation;IIZ)V

    return-void
.end method


# virtual methods
.method public getMatchLength()I
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/regex/OpRepeat;->op:Lnet/sf/saxon/regex/Operation;

    invoke-virtual {v0}, Lnet/sf/saxon/regex/Operation;->getMatchLength()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lnet/sf/saxon/regex/OpRepeat;->min:I

    iget v2, p0, Lnet/sf/saxon/regex/OpRepeat;->max:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/regex/OpRepeat;->op:Lnet/sf/saxon/regex/Operation;

    invoke-virtual {v0}, Lnet/sf/saxon/regex/Operation;->getMatchLength()I

    move-result v0

    iget p0, p0, Lnet/sf/saxon/regex/OpRepeat;->min:I

    mul-int/2addr v0, p0

    return v0

    :cond_0
    return v1
.end method

.method public iterateMatches(Lnet/sf/saxon/regex/REMatcher;I)Lnet/sf/saxon/z/IntIterator;
    .locals 4

    iget-object v0, p1, Lnet/sf/saxon/regex/REMatcher;->b:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lnet/sf/saxon/regex/OpRepeat;->max:I

    if-ge v1, v2, :cond_0

    if-gt p2, v0, :cond_0

    iget-object v2, p0, Lnet/sf/saxon/regex/OpRepeat;->op:Lnet/sf/saxon/regex/Operation;

    invoke-virtual {v2, p1, p2}, Lnet/sf/saxon/regex/Operation;->iterateMatches(Lnet/sf/saxon/regex/REMatcher;I)Lnet/sf/saxon/z/IntIterator;

    move-result-object v2

    invoke-interface {v2}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v2}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result p2

    goto :goto_0

    :cond_0
    iget p0, p0, Lnet/sf/saxon/regex/OpRepeat;->min:I

    if-ge v1, p0, :cond_1

    invoke-static {}, Lnet/sf/saxon/expr/sort/EmptyIntIterator;->getInstance()Lnet/sf/saxon/expr/sort/EmptyIntIterator;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lnet/sf/saxon/z/IntSingletonIterator;

    invoke-direct {p0, p2}, Lnet/sf/saxon/z/IntSingletonIterator;-><init>(I)V

    return-object p0
.end method

.method public matchesEmptyString()I
    .locals 1

    iget v0, p0, Lnet/sf/saxon/regex/OpRepeat;->min:I

    if-nez v0, :cond_0

    const/4 p0, 0x7

    return p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/regex/OpRepeat;->op:Lnet/sf/saxon/regex/Operation;

    invoke-virtual {p0}, Lnet/sf/saxon/regex/Operation;->matchesEmptyString()I

    move-result p0

    return p0
.end method

.method public optimize(Lnet/sf/saxon/regex/REProgram;Lnet/sf/saxon/regex/REFlags;)Lnet/sf/saxon/regex/Operation;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/regex/OpRepeat;->op:Lnet/sf/saxon/regex/Operation;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/regex/Operation;->optimize(Lnet/sf/saxon/regex/REProgram;Lnet/sf/saxon/regex/REFlags;)Lnet/sf/saxon/regex/Operation;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/regex/OpRepeat;->op:Lnet/sf/saxon/regex/Operation;

    return-object p0
.end method
