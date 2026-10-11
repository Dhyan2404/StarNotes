.class public Lcom/twelvemonkeys/util/regex/RegExTokenIterator;
.super Lcom/twelvemonkeys/util/AbstractTokenIterator;
.source "SourceFile"


# instance fields
.field public final e:Ljava/util/regex/Matcher;

.field public f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "\\S+"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/twelvemonkeys/util/regex/RegExTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/twelvemonkeys/util/AbstractTokenIterator;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/twelvemonkeys/util/regex/RegExTokenIterator;->f:Z

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 4
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    iput-object p1, p0, Lcom/twelvemonkeys/util/regex/RegExTokenIterator;->e:Ljava/util/regex/Matcher;

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "pattern == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "string == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-boolean v0, p0, Lcom/twelvemonkeys/util/regex/RegExTokenIterator;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twelvemonkeys/util/regex/RegExTokenIterator;->e:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twelvemonkeys/util/regex/RegExTokenIterator;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/twelvemonkeys/util/regex/RegExTokenIterator;->next()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public next()Ljava/lang/String;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/twelvemonkeys/util/regex/RegExTokenIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/twelvemonkeys/util/regex/RegExTokenIterator;->f:Z

    .line 4
    iget-object p0, p0, Lcom/twelvemonkeys/util/regex/RegExTokenIterator;->e:Ljava/util/regex/Matcher;

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public reset()V
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/util/regex/RegExTokenIterator;->e:Ljava/util/regex/Matcher;

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    return-void
.end method
