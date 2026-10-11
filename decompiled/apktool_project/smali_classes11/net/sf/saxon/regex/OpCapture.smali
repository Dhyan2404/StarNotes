.class public Lnet/sf/saxon/regex/OpCapture;
.super Lnet/sf/saxon/regex/Operation;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Lnet/sf/saxon/regex/Operation;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/regex/Operation;I)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/regex/Operation;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/regex/OpCapture;->b:Lnet/sf/saxon/regex/Operation;

    iput p2, p0, Lnet/sf/saxon/regex/OpCapture;->a:I

    return-void
.end method


# virtual methods
.method public display()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/regex/OpCapture;->b:Lnet/sf/saxon/regex/Operation;

    invoke-virtual {p0}, Lnet/sf/saxon/regex/Operation;->display()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMatchLength()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/regex/OpCapture;->b:Lnet/sf/saxon/regex/Operation;

    invoke-virtual {p0}, Lnet/sf/saxon/regex/Operation;->getMatchLength()I

    move-result p0

    return p0
.end method

.method public getMinimumMatchLength()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/regex/OpCapture;->b:Lnet/sf/saxon/regex/Operation;

    invoke-virtual {p0}, Lnet/sf/saxon/regex/Operation;->getMinimumMatchLength()I

    move-result p0

    return p0
.end method

.method public iterateMatches(Lnet/sf/saxon/regex/REMatcher;I)Lnet/sf/saxon/z/IntIterator;
    .locals 2

    iget-object v0, p1, Lnet/sf/saxon/regex/REMatcher;->a:Lnet/sf/saxon/regex/REProgram;

    iget v0, v0, Lnet/sf/saxon/regex/REProgram;->optimizationFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p1, Lnet/sf/saxon/regex/REMatcher;->f:[I

    iget v1, p0, Lnet/sf/saxon/regex/OpCapture;->a:I

    aput p2, v0, v1

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/regex/OpCapture;->b:Lnet/sf/saxon/regex/Operation;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/regex/Operation;->iterateMatches(Lnet/sf/saxon/regex/REMatcher;I)Lnet/sf/saxon/z/IntIterator;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/regex/OpCapture$a;

    invoke-direct {v1, p0, v0, p1, p2}, Lnet/sf/saxon/regex/OpCapture$a;-><init>(Lnet/sf/saxon/regex/OpCapture;Lnet/sf/saxon/z/IntIterator;Lnet/sf/saxon/regex/REMatcher;I)V

    return-object v1
.end method

.method public matchesEmptyString()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/regex/OpCapture;->b:Lnet/sf/saxon/regex/Operation;

    invoke-virtual {p0}, Lnet/sf/saxon/regex/Operation;->matchesEmptyString()I

    move-result p0

    return p0
.end method

.method public optimize(Lnet/sf/saxon/regex/REProgram;Lnet/sf/saxon/regex/REFlags;)Lnet/sf/saxon/regex/Operation;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/regex/OpCapture;->b:Lnet/sf/saxon/regex/Operation;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/regex/Operation;->optimize(Lnet/sf/saxon/regex/REProgram;Lnet/sf/saxon/regex/REFlags;)Lnet/sf/saxon/regex/Operation;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/regex/OpCapture;->b:Lnet/sf/saxon/regex/Operation;

    return-object p0
.end method
