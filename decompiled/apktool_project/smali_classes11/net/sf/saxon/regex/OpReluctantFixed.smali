.class public Lnet/sf/saxon/regex/OpReluctantFixed;
.super Lnet/sf/saxon/regex/OpRepeat;
.source "SourceFile"


# instance fields
.field public final b:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/regex/Operation;III)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lnet/sf/saxon/regex/OpRepeat;-><init>(Lnet/sf/saxon/regex/Operation;IIZ)V

    iput p4, p0, Lnet/sf/saxon/regex/OpReluctantFixed;->b:I

    return-void
.end method


# virtual methods
.method public getMatchLength()I
    .locals 2

    iget v0, p0, Lnet/sf/saxon/regex/OpRepeat;->min:I

    iget v1, p0, Lnet/sf/saxon/regex/OpRepeat;->max:I

    if-ne v0, v1, :cond_0

    iget p0, p0, Lnet/sf/saxon/regex/OpReluctantFixed;->b:I

    mul-int/2addr v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public iterateMatches(Lnet/sf/saxon/regex/REMatcher;I)Lnet/sf/saxon/z/IntIterator;
    .locals 1

    new-instance v0, Lnet/sf/saxon/regex/OpReluctantFixed$a;

    invoke-direct {v0, p0, p2, p1}, Lnet/sf/saxon/regex/OpReluctantFixed$a;-><init>(Lnet/sf/saxon/regex/OpReluctantFixed;ILnet/sf/saxon/regex/REMatcher;)V

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

    iget-object v0, p0, Lnet/sf/saxon/regex/OpRepeat;->op:Lnet/sf/saxon/regex/Operation;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/regex/Operation;->optimize(Lnet/sf/saxon/regex/REProgram;Lnet/sf/saxon/regex/REFlags;)Lnet/sf/saxon/regex/Operation;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/regex/OpRepeat;->op:Lnet/sf/saxon/regex/Operation;

    return-object p0
.end method
