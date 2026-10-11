.class public Lnet/sf/saxon/regex/OpBOL;
.super Lnet/sf/saxon/regex/Operation;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/regex/Operation;-><init>()V

    return-void
.end method


# virtual methods
.method public display()Ljava/lang/String;
    .locals 0

    const-string p0, "^"

    return-object p0
.end method

.method public getMatchLength()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public iterateMatches(Lnet/sf/saxon/regex/REMatcher;I)Lnet/sf/saxon/z/IntIterator;
    .locals 2

    if-eqz p2, :cond_1

    iget-object p0, p1, Lnet/sf/saxon/regex/REMatcher;->a:Lnet/sf/saxon/regex/REProgram;

    iget-object p0, p0, Lnet/sf/saxon/regex/REProgram;->flags:Lnet/sf/saxon/regex/REFlags;

    invoke-virtual {p0}, Lnet/sf/saxon/regex/REFlags;->isMultiLine()Z

    move-result p0

    if-eqz p0, :cond_0

    add-int/lit8 p0, p2, -0x1

    invoke-virtual {p1, p0}, Lnet/sf/saxon/regex/REMatcher;->c(I)Z

    move-result p0

    if-eqz p0, :cond_0

    int-to-long v0, p2

    iget-object p0, p1, Lnet/sf/saxon/regex/REMatcher;->b:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-gez p0, :cond_0

    new-instance p0, Lnet/sf/saxon/z/IntSingletonIterator;

    invoke-direct {p0, p2}, Lnet/sf/saxon/z/IntSingletonIterator;-><init>(I)V

    return-object p0

    :cond_0
    invoke-static {}, Lnet/sf/saxon/expr/sort/EmptyIntIterator;->getInstance()Lnet/sf/saxon/expr/sort/EmptyIntIterator;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lnet/sf/saxon/z/IntSingletonIterator;

    invoke-direct {p0, p2}, Lnet/sf/saxon/z/IntSingletonIterator;-><init>(I)V

    return-object p0
.end method

.method public matchesEmptyString()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
