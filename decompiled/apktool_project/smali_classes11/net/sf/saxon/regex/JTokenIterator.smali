.class public Lnet/sf/saxon/regex/JTokenIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/iter/AtomicIterator;


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:Ljava/util/regex/Pattern;

.field public final g:Ljava/util/regex/Matcher;

.field public h:Ljava/lang/CharSequence;

.field public i:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/regex/JTokenIterator;->i:I

    iput-object p1, p0, Lnet/sf/saxon/regex/JTokenIterator;->e:Ljava/lang/String;

    iput-object p2, p0, Lnet/sf/saxon/regex/JTokenIterator;->f:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/regex/JTokenIterator;->g:Ljava/util/regex/Matcher;

    iput v0, p0, Lnet/sf/saxon/regex/JTokenIterator;->i:I

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/regex/JTokenIterator;->next()Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic next()Lnet/sf/saxon/value/AtomicValue;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/regex/JTokenIterator;->next()Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/value/StringValue;
    .locals 3

    .line 3
    iget v0, p0, Lnet/sf/saxon/regex/JTokenIterator;->i:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lnet/sf/saxon/regex/JTokenIterator;->h:Ljava/lang/CharSequence;

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/regex/JTokenIterator;->g:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lnet/sf/saxon/regex/JTokenIterator;->e:Ljava/lang/String;

    iget v1, p0, Lnet/sf/saxon/regex/JTokenIterator;->i:I

    iget-object v2, p0, Lnet/sf/saxon/regex/JTokenIterator;->g:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/regex/JTokenIterator;->h:Ljava/lang/CharSequence;

    .line 7
    iget-object v0, p0, Lnet/sf/saxon/regex/JTokenIterator;->g:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/regex/JTokenIterator;->i:I

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/regex/JTokenIterator;->e:Ljava/lang/String;

    iget v1, p0, Lnet/sf/saxon/regex/JTokenIterator;->i:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/regex/JTokenIterator;->h:Ljava/lang/CharSequence;

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lnet/sf/saxon/regex/JTokenIterator;->i:I

    .line 10
    :goto_0
    iget-object p0, p0, Lnet/sf/saxon/regex/JTokenIterator;->h:Ljava/lang/CharSequence;

    invoke-static {p0}, Lnet/sf/saxon/value/StringValue;->makeStringValue(Ljava/lang/CharSequence;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method
