.class public Lnet/sf/saxon/regex/OpGreedyFixed;
.super Lnet/sf/saxon/regex/OpRepeat;
.source "SourceFile"


# instance fields
.field public final b:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/regex/Operation;III)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lnet/sf/saxon/regex/OpRepeat;-><init>(Lnet/sf/saxon/regex/Operation;IIZ)V

    iput p4, p0, Lnet/sf/saxon/regex/OpGreedyFixed;->b:I

    return-void
.end method


# virtual methods
.method public getMatchLength()I
    .locals 2

    iget v0, p0, Lnet/sf/saxon/regex/OpRepeat;->min:I

    iget v1, p0, Lnet/sf/saxon/regex/OpRepeat;->max:I

    if-ne v0, v1, :cond_0

    iget p0, p0, Lnet/sf/saxon/regex/OpGreedyFixed;->b:I

    mul-int/2addr v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public iterateMatches(Lnet/sf/saxon/regex/REMatcher;I)Lnet/sf/saxon/z/IntIterator;
    .locals 6

    iget-object v0, p1, Lnet/sf/saxon/regex/REMatcher;->b:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v0

    iget v1, p0, Lnet/sf/saxon/regex/OpRepeat;->max:I

    const v2, 0x7fffffff

    if-ge v1, v2, :cond_0

    iget v2, p0, Lnet/sf/saxon/regex/OpGreedyFixed;->b:I

    mul-int/2addr v2, v1

    add-int/2addr v2, p2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    if-lt p2, v0, :cond_1

    iget v1, p0, Lnet/sf/saxon/regex/OpRepeat;->min:I

    if-lez v1, :cond_1

    invoke-static {}, Lnet/sf/saxon/expr/sort/EmptyIntIterator;->getInstance()Lnet/sf/saxon/expr/sort/EmptyIntIterator;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v1, 0x0

    move v2, p2

    move v3, v1

    :cond_2
    if-gt v2, v0, :cond_4

    iget-object v4, p0, Lnet/sf/saxon/regex/OpRepeat;->op:Lnet/sf/saxon/regex/Operation;

    invoke-virtual {v4, p1, v2}, Lnet/sf/saxon/regex/Operation;->iterateMatches(Lnet/sf/saxon/regex/REMatcher;I)Lnet/sf/saxon/z/IntIterator;

    move-result-object v4

    invoke-interface {v4}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Lnet/sf/saxon/z/IntIterator;->next()I

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    move v4, v1

    :goto_0
    if-eqz v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lnet/sf/saxon/regex/OpGreedyFixed;->b:I

    add-int/2addr v2, v4

    iget v4, p0, Lnet/sf/saxon/regex/OpRepeat;->max:I

    if-ne v3, v4, :cond_2

    :cond_4
    iget p1, p0, Lnet/sf/saxon/regex/OpRepeat;->min:I

    if-ge v3, p1, :cond_5

    invoke-static {}, Lnet/sf/saxon/expr/sort/EmptyIntIterator;->getInstance()Lnet/sf/saxon/expr/sort/EmptyIntIterator;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance v0, Lnet/sf/saxon/z/IntStepIterator;

    iget p0, p0, Lnet/sf/saxon/regex/OpGreedyFixed;->b:I

    neg-int v1, p0

    mul-int/2addr p0, p1

    add-int/2addr p2, p0

    invoke-direct {v0, v2, v1, p2}, Lnet/sf/saxon/z/IntStepIterator;-><init>(III)V

    return-object v0
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

    iget v0, p0, Lnet/sf/saxon/regex/OpRepeat;->max:I

    if-nez v0, :cond_0

    new-instance p0, Lnet/sf/saxon/regex/OpNothing;

    invoke-direct {p0}, Lnet/sf/saxon/regex/OpNothing;-><init>()V

    return-object p0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/regex/OpRepeat;->op:Lnet/sf/saxon/regex/Operation;

    invoke-virtual {v0}, Lnet/sf/saxon/regex/Operation;->getMatchLength()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/regex/OpRepeat;->op:Lnet/sf/saxon/regex/Operation;

    return-object p0

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/regex/OpRepeat;->op:Lnet/sf/saxon/regex/Operation;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/regex/Operation;->optimize(Lnet/sf/saxon/regex/REProgram;Lnet/sf/saxon/regex/REFlags;)Lnet/sf/saxon/regex/Operation;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/regex/OpRepeat;->op:Lnet/sf/saxon/regex/Operation;

    return-object p0
.end method
