.class public Lnet/sf/saxon/regex/ATokenIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/iter/AtomicIterator;


# instance fields
.field public final e:Lnet/sf/saxon/str/UnicodeString;

.field public final f:Lnet/sf/saxon/regex/REMatcher;

.field public g:Lnet/sf/saxon/value/StringValue;

.field public h:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/regex/REMatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/regex/ATokenIterator;->e:Lnet/sf/saxon/str/UnicodeString;

    iput-object p2, p0, Lnet/sf/saxon/regex/ATokenIterator;->f:Lnet/sf/saxon/regex/REMatcher;

    const/4 p1, 0x0

    iput p1, p0, Lnet/sf/saxon/regex/ATokenIterator;->h:I

    return-void
.end method


# virtual methods
.method public final f()Lnet/sf/saxon/value/StringValue;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/regex/ATokenIterator;->g:Lnet/sf/saxon/value/StringValue;

    return-object p0
.end method

.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/regex/ATokenIterator;->next()Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic next()Lnet/sf/saxon/value/AtomicValue;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/regex/ATokenIterator;->next()Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/value/StringValue;
    .locals 8

    .line 3
    iget v0, p0, Lnet/sf/saxon/regex/ATokenIterator;->h:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lnet/sf/saxon/regex/ATokenIterator;->g:Lnet/sf/saxon/value/StringValue;

    return-object v0

    .line 5
    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/regex/ATokenIterator;->f:Lnet/sf/saxon/regex/REMatcher;

    iget-object v2, p0, Lnet/sf/saxon/regex/ATokenIterator;->e:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v1, v2, v0}, Lnet/sf/saxon/regex/REMatcher;->match(Lnet/sf/saxon/str/UnicodeString;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lnet/sf/saxon/regex/ATokenIterator;->f:Lnet/sf/saxon/regex/REMatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/sf/saxon/regex/REMatcher;->getParenStart(I)I

    move-result v0

    .line 7
    new-instance v2, Lnet/sf/saxon/value/StringValue;

    iget-object v3, p0, Lnet/sf/saxon/regex/ATokenIterator;->e:Lnet/sf/saxon/str/UnicodeString;

    iget v4, p0, Lnet/sf/saxon/regex/ATokenIterator;->h:I

    int-to-long v4, v4

    int-to-long v6, v0

    invoke-virtual {v3, v4, v5, v6, v7}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-direct {v2, v0}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    iput-object v2, p0, Lnet/sf/saxon/regex/ATokenIterator;->g:Lnet/sf/saxon/value/StringValue;

    .line 8
    iget-object v0, p0, Lnet/sf/saxon/regex/ATokenIterator;->f:Lnet/sf/saxon/regex/REMatcher;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/regex/REMatcher;->getParenEnd(I)I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/regex/ATokenIterator;->h:I

    goto :goto_0

    .line 9
    :cond_1
    new-instance v0, Lnet/sf/saxon/value/StringValue;

    iget-object v1, p0, Lnet/sf/saxon/regex/ATokenIterator;->e:Lnet/sf/saxon/str/UnicodeString;

    iget v2, p0, Lnet/sf/saxon/regex/ATokenIterator;->h:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lnet/sf/saxon/str/UnicodeString;->substring(J)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    iput-object v0, p0, Lnet/sf/saxon/regex/ATokenIterator;->g:Lnet/sf/saxon/value/StringValue;

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lnet/sf/saxon/regex/ATokenIterator;->h:I

    .line 11
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/regex/ATokenIterator;->f()Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method
