.class public Lnet/sf/saxon/value/Whitespace$Tokenizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/iter/AtomicIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/value/Whitespace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tokenizer"
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/str/UnicodeString;

.field public f:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/value/Whitespace$Tokenizer;->e:Lnet/sf/saxon/str/UnicodeString;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lnet/sf/saxon/value/Whitespace$Tokenizer;->f:J

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/str/UnicodeString;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/value/Whitespace$Tokenizer;->e:Lnet/sf/saxon/str/UnicodeString;

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lnet/sf/saxon/value/Whitespace$Tokenizer;->f:J

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/value/Whitespace$Tokenizer;->next()Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic next()Lnet/sf/saxon/value/AtomicValue;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/value/Whitespace$Tokenizer;->next()Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/value/StringValue;
    .locals 9

    .line 3
    iget-wide v0, p0, Lnet/sf/saxon/value/Whitespace$Tokenizer;->f:J

    .line 4
    iget-object v2, p0, Lnet/sf/saxon/value/Whitespace$Tokenizer;->e:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v2}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v2

    :goto_0
    cmp-long v4, v0, v2

    const-wide/16 v5, 0x1

    if-gez v4, :cond_0

    .line 5
    iget-object v7, p0, Lnet/sf/saxon/value/Whitespace$Tokenizer;->e:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v7, v0, v1}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v7

    invoke-static {v7}, Lnet/sf/saxon/value/Whitespace;->isWhite(I)Z

    move-result v7

    if-eqz v7, :cond_0

    add-long/2addr v0, v5

    goto :goto_0

    :cond_0
    if-ltz v4, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    move-wide v7, v0

    :goto_1
    cmp-long v4, v7, v2

    if-gez v4, :cond_2

    .line 6
    iget-object v4, p0, Lnet/sf/saxon/value/Whitespace$Tokenizer;->e:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v4, v7, v8}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v4

    invoke-static {v4}, Lnet/sf/saxon/value/Whitespace;->isWhite(I)Z

    move-result v4

    if-nez v4, :cond_2

    add-long/2addr v7, v5

    goto :goto_1

    .line 7
    :cond_2
    iput-wide v7, p0, Lnet/sf/saxon/value/Whitespace$Tokenizer;->f:J

    .line 8
    new-instance v2, Lnet/sf/saxon/value/StringValue;

    iget-object p0, p0, Lnet/sf/saxon/value/Whitespace$Tokenizer;->e:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {p0, v0, v1, v7, v8}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-direct {v2, p0}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    return-object v2
.end method
