.class public Lnet/sf/saxon/lib/SerializerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/regex/Pattern;

.field public static final synthetic d:Z


# instance fields
.field public a:Lnet/sf/saxon/Configuration;

.field public b:Lnet/sf/saxon/event/PipelineConfiguration;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "^[\\s\\r\\na-zA-Z0-9\\-\'()+,./:=?;!*#@$_%]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/lib/SerializerFactory;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/Configuration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lnet/sf/saxon/lib/SerializerFactory;->a:Lnet/sf/saxon/Configuration;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/event/PipelineConfiguration;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lnet/sf/saxon/lib/SerializerFactory;->b:Lnet/sf/saxon/event/PipelineConfiguration;

    .line 5
    invoke-virtual {p1}, Lnet/sf/saxon/event/PipelineConfiguration;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/lib/SerializerFactory;->a:Lnet/sf/saxon/Configuration;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p1}, Lnet/sf/saxon/value/BigDecimalValue;->castableAsDecimal(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " must be a decimal number"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SEPM0016"

    invoke-direct {p1, p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p0}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/om/NameChecker;->isValidNmtoken(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "Invalid value for normalization-form: must be NFC, NFD, NFKC, NFKD, fully-normalized, or none"

    const-string v1, "SEPM0016"

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public static checkListOfEQNames(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/value/Whitespace$Tokenizer;

    invoke-static {p1}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/sf/saxon/value/Whitespace$Tokenizer;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v0}, Lnet/sf/saxon/value/Whitespace$Tokenizer;->next()Lnet/sf/saxon/value/StringValue;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/lib/SerializerFactory;->h(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Lnet/sf/saxon/value/StringValue;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/om/NameChecker;->isValidNCName(Lnet/sf/saxon/z/IntIterator;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v2}, Lnet/sf/saxon/lib/SerializerFactory;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "{"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Q"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const-string v1, "Q{}"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " must be a list of QNames in \'Q{uri}local\' notation"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SEPM0016"

    invoke-direct {p1, p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static checkListOfEQNamesAllowingStar(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/value/Whitespace$Tokenizer;

    invoke-static {p1}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/sf/saxon/value/Whitespace$Tokenizer;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v0}, Lnet/sf/saxon/value/Whitespace$Tokenizer;->next()Lnet/sf/saxon/value/StringValue;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Lnet/sf/saxon/lib/SerializerFactory;->h(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Lnet/sf/saxon/om/NameChecker;->isValidNCName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v1}, Lnet/sf/saxon/lib/SerializerFactory;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Q"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const-string v2, "Q{}"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " must be a list of QNames in \'Q{uri}local\' notation"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SEPM0016"

    invoke-direct {p1, p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static checkNonNegativeInteger(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "SEPM0016"

    const-string v1, " must be a non-negative integer"

    const-string v2, "Value of "

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public static checkYesOrNo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "yes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "true"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "no"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "false"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Serialization parameter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " must have the value yes|no, true|false, or 1|0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SEPM0016"

    invoke-direct {p1, p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    sget-object v0, Lnet/sf/saxon/lib/SerializerFactory;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "Invalid character in doctype-public parameter"

    const-string v1, "SEPM0016"

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "The doctype-system parameter must not contain both an apostrophe and a quotation mark"

    const-string v1, "SEPM0016"

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "{"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Q"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/lib/SerializerFactory;->h(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Q{}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/lib/SerializerFactory;->h(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static h(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "Q{"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x7d

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-eq v0, v2, :cond_1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/om/NameChecker;->isValidNCName(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v3

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public addHtml5Component(Lnet/sf/saxon/event/Receiver;Ljava/util/Properties;)Lnet/sf/saxon/event/Receiver;
    .locals 0

    new-instance p0, Lnet/sf/saxon/event/NamespaceReducer;

    invoke-direct {p0, p1}, Lnet/sf/saxon/event/NamespaceReducer;-><init>(Lnet/sf/saxon/event/Receiver;)V

    new-instance p1, Lnet/sf/saxon/serialize/XHTMLPrefixRemover;

    invoke-direct {p1, p0}, Lnet/sf/saxon/serialize/XHTMLPrefixRemover;-><init>(Lnet/sf/saxon/event/Receiver;)V

    return-object p1
.end method

.method public addTextOutputFilter(Lnet/sf/saxon/event/Receiver;Ljava/util/Properties;)Lnet/sf/saxon/event/Receiver;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-object p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "xml"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "html"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "xhtml"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "text"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "json-node-output-method"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "json"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "adaptive"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    return-object p2

    :cond_1
    const-string p1, "{"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Q"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object p2, p1

    :cond_2
    invoke-static {p2}, Lnet/sf/saxon/lib/SerializerFactory;->h(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, p2}, Lnet/sf/saxon/lib/SerializerFactory;->checkExtensions(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid value ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") for serialization method: must be xml|html|xhtml|text|json|adaptive, or a QName in \'Q{uri}local\' form"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SEPM0016"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    return-object p2
.end method

.method public checkExtensions(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Serialization property "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-static {p1, v1}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not available in Saxon-HE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public checkOutputProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "XQST0109"

    const/16 v2, 0x8

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    if-nez v0, :cond_17

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    move v2, v7

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "html-version"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x16

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "normalization-form"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x15

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "doctype-system"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v2, 0x14

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "item-separator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v2, 0x13

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "doctype-public"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/16 v2, 0x12

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "media-type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/16 v2, 0x11

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "encoding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/16 v2, 0x10

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "undeclare-prefixes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/16 v2, 0xf

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "json-node-output-method"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/16 v2, 0xe

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "version"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v2, 0xd

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "escape-uri-attributes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v2, 0xc

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "use-character-maps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v2, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "build-tree"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "include-content-type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "method"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "indent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/4 v2, 0x7

    goto :goto_1

    :sswitch_10
    const-string v0, "standalone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/4 v2, 0x6

    goto :goto_1

    :sswitch_11
    const-string v0, "suppress-indentation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/4 v2, 0x5

    goto :goto_1

    :sswitch_12
    const-string v0, "omit-xml-declaration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_13
    const-string v0, "parameter-document"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    move v2, v3

    goto :goto_1

    :sswitch_14
    const-string v0, "byte-order-mark"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    move v2, v4

    goto :goto_1

    :sswitch_15
    const-string v0, "allow-duplicate-names"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    move v2, v5

    goto :goto_1

    :sswitch_16
    const-string v0, "cdata-section-elements"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    move v2, v6

    :cond_16
    :goto_1
    packed-switch v2, :pswitch_data_0

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown serialization parameter "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :pswitch_0
    if-eqz p2, :cond_1c

    invoke-static {p1, p2}, Lnet/sf/saxon/lib/SerializerFactory;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_1
    if-eqz p2, :cond_1c

    invoke-static {p2}, Lnet/sf/saxon/lib/SerializerFactory;->c(Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_2
    if-eqz p2, :cond_1c

    invoke-static {p2}, Lnet/sf/saxon/lib/SerializerFactory;->e(Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_3
    if-eqz p2, :cond_1c

    invoke-static {p2}, Lnet/sf/saxon/lib/SerializerFactory;->d(Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_4
    if-eqz p2, :cond_1c

    invoke-static {p1, p2}, Lnet/sf/saxon/lib/SerializerFactory;->checkYesOrNo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :pswitch_5
    if-eqz p2, :cond_1c

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/lib/SerializerFactory;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :pswitch_6
    if-eqz p2, :cond_1c

    const-string p0, "omit"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    invoke-static {p1, p2}, Lnet/sf/saxon/lib/SerializerFactory;->checkYesOrNo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :pswitch_7
    if-eqz p2, :cond_1c

    invoke-static {p1, p2}, Lnet/sf/saxon/lib/SerializerFactory;->checkYesOrNo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :pswitch_8
    if-eqz p2, :cond_1c

    invoke-static {p1, p2}, Lnet/sf/saxon/lib/SerializerFactory;->checkYesOrNo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    move-object p2, p0

    goto/16 :goto_5

    :pswitch_9
    if-eqz p2, :cond_1c

    invoke-static {p1, p2}, Lnet/sf/saxon/lib/SerializerFactory;->checkListOfEQNames(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_17
    const-string p0, "{http://saxon.sf.net/}"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1c

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_1

    :goto_3
    move v3, v7

    goto :goto_4

    :sswitch_17
    const-string p0, "{http://saxon.sf.net/}parameter-document-base-uri"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto :goto_3

    :sswitch_18
    const-string p0, "{http://saxon.sf.net/}unfailing"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_3

    :cond_18
    move v3, v4

    goto :goto_4

    :sswitch_19
    const-string p0, "{http://saxon.sf.net/}supply-source-locator"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto :goto_3

    :cond_19
    move v3, v5

    goto :goto_4

    :sswitch_1a
    const-string p0, "{http://saxon.sf.net/}stylesheet-version"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto :goto_3

    :cond_1a
    move v3, v6

    :cond_1b
    :goto_4
    packed-switch v3, :pswitch_data_1

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Serialization parameter "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v2}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not available in Saxon-HE"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :pswitch_a
    if-eqz p2, :cond_1c

    invoke-static {p1, p2}, Lnet/sf/saxon/lib/SerializerFactory;->checkYesOrNo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1c
    :goto_5
    :pswitch_b
    return-object p2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d86fde1 -> :sswitch_16
        -0x74ab0a7e -> :sswitch_15
        -0x6532682f -> :sswitch_14
        -0x64c55141 -> :sswitch_13
        -0x60f52980 -> :sswitch_12
        -0x56b1d94f -> :sswitch_11
        -0x4c921fbb -> :sswitch_10
        -0x46960f54 -> :sswitch_f
        -0x403a2f1f -> :sswitch_e
        -0x2997feed -> :sswitch_d
        -0x1eca5c63 -> :sswitch_c
        -0x1061b83f -> :sswitch_b
        -0x46610dc -> :sswitch_a
        0x14f51cd8 -> :sswitch_9
        0x289aaba7 -> :sswitch_8
        0x649bd45c -> :sswitch_7
        0x65ff2d53 -> :sswitch_6
        0x70df8f83 -> :sswitch_5
        0x797a6024 -> :sswitch_4
        0x7dfec4ab -> :sswitch_3
        0x7ed91fea -> :sswitch_2
        0x7f4622f4 -> :sswitch_1
        0x7f7a2cb6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_b
        :pswitch_8
        :pswitch_9
        :pswitch_6
        :pswitch_8
        :pswitch_5
        :pswitch_8
        :pswitch_4
        :pswitch_9
        :pswitch_8
        :pswitch_b
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_b
        :pswitch_3
        :pswitch_b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x16f5a37b -> :sswitch_1a
        -0x11bde2a -> :sswitch_19
        0x2e78019f -> :sswitch_18
        0x5edff912 -> :sswitch_17
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public createHTMLSerializer(Lnet/sf/saxon/serialize/Emitter;Lnet/sf/saxon/serialize/SerializationProperties;Lnet/sf/saxon/event/PipelineConfiguration;)Lnet/sf/saxon/event/SequenceReceiver;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p2}, Lnet/sf/saxon/serialize/SerializationProperties;->getProperties()Ljava/util/Properties;

    move-result-object p3

    const-string v0, "indent"

    invoke-virtual {p3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p3}, Lnet/sf/saxon/lib/SerializerFactory;->newHTMLIndenter(Lnet/sf/saxon/event/Receiver;Ljava/util/Properties;)Lnet/sf/saxon/event/ProxyReceiver;

    move-result-object p1

    :cond_0
    new-instance v0, Lnet/sf/saxon/event/NamespaceDifferencer;

    invoke-direct {v0, p1, p3}, Lnet/sf/saxon/event/NamespaceDifferencer;-><init>(Lnet/sf/saxon/event/Receiver;Ljava/util/Properties;)V

    invoke-virtual {p0, p2, v0}, Lnet/sf/saxon/lib/SerializerFactory;->injectUnicodeNormalizer(Lnet/sf/saxon/serialize/SerializationProperties;Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0}, Lnet/sf/saxon/lib/SerializerFactory;->injectCharacterMapExpander(Lnet/sf/saxon/serialize/SerializationProperties;Lnet/sf/saxon/event/Receiver;Z)Lnet/sf/saxon/event/Receiver;

    move-result-object p1

    const-string v0, "cdata-section-elements"

    invoke-virtual {p3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p3}, Lnet/sf/saxon/lib/SerializerFactory;->newCDATAFilter(Lnet/sf/saxon/event/Receiver;Ljava/util/Properties;)Lnet/sf/saxon/event/ProxyReceiver;

    move-result-object p1

    :cond_1
    invoke-static {p3}, Lnet/sf/saxon/lib/SaxonOutputKeys;->isHtmlVersion5(Ljava/util/Properties;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p3}, Lnet/sf/saxon/lib/SerializerFactory;->addHtml5Component(Lnet/sf/saxon/event/Receiver;Ljava/util/Properties;)Lnet/sf/saxon/event/Receiver;

    move-result-object p1

    :cond_2
    const-string v0, "escape-uri-attributes"

    invoke-virtual {p3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1, p3}, Lnet/sf/saxon/lib/SerializerFactory;->newHTMLURIEscaper(Lnet/sf/saxon/event/Receiver;Ljava/util/Properties;)Lnet/sf/saxon/event/ProxyReceiver;

    move-result-object p1

    :cond_3
    const-string v0, "include-content-type"

    invoke-virtual {p3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, p1, p3}, Lnet/sf/saxon/lib/SerializerFactory;->newHTMLMetaTagAdjuster(Lnet/sf/saxon/event/Receiver;Ljava/util/Properties;)Lnet/sf/saxon/serialize/MetaTagAdjuster;

    move-result-object p1

    :cond_4
    const-string v0, "{http://saxon.sf.net/}attribute-order"

    invoke-virtual {p3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0, p1, p3}, Lnet/sf/saxon/lib/SerializerFactory;->newAttributeSorter(Lnet/sf/saxon/event/Receiver;Ljava/util/Properties;)Lnet/sf/saxon/event/Receiver;

    move-result-object p1

    :cond_5
    invoke-virtual {p2}, Lnet/sf/saxon/serialize/SerializationProperties;->getValidationFactory()Lnet/sf/saxon/event/FilterFactory;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-interface {p2, p1}, Lnet/sf/saxon/event/FilterFactory;->makeFilter(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;

    move-result-object p1

    :cond_6
    invoke-virtual {p0, p1, p3}, Lnet/sf/saxon/lib/SerializerFactory;->makeSequenceNormalizer(Lnet/sf/saxon/event/Receiver;Ljava/util/Properties;)Lnet/sf/saxon/event/SequenceReceiver;

    move-result-object p0

    return-object p0
.end method

.method public createSaxonSerializationMethod(Ljava/lang/String;Lnet/sf/saxon/serialize/SerializationProperties;Lnet/sf/saxon/event/PipelineConfiguration;Lnet/sf/saxon/serialize/CharacterMapExpander;Lnet/sf/saxon/event/ProxyReceiver;Lnet/sf/saxon/serialize/ExpandedStreamResult;Ljavax/xml/transform/Result;)Lnet/sf/saxon/event/SequenceReceiver;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Saxon serialization methods require Saxon-PE to be enabled"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createTextSerializer(Lnet/sf/saxon/serialize/Emitter;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/SequenceReceiver;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p2}, Lnet/sf/saxon/serialize/SerializationProperties;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/lib/SerializerFactory;->injectUnicodeNormalizer(Lnet/sf/saxon/serialize/SerializationProperties;Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p2, p1, v1}, Lnet/sf/saxon/lib/SerializerFactory;->injectCharacterMapExpander(Lnet/sf/saxon/serialize/SerializationProperties;Lnet/sf/saxon/event/Receiver;Z)Lnet/sf/saxon/event/Receiver;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/lib/SerializerFactory;->addTextOutputFilter(Lnet/sf/saxon/event/Receiver;Ljava/util/Properties;)Lnet/sf/saxon/event/Receiver;

    move-result-object p1

    invoke-virtual {p2}, Lnet/sf/saxon/serialize/SerializationProperties;->getValidationFactory()Lnet/sf/saxon/event/FilterFactory;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lnet/sf/saxon/event/FilterFactory;->makeFilter(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/lib/SerializerFactory;->makeSequenceNormalizer(Lnet/sf/saxon/event/Receiver;Ljava/util/Properties;)Lnet/sf/saxon/event/SequenceReceiver;

    move-result-object p0

    return-object p0
.end method

.method public createUserDefinedOutputMethod(Ljava/lang/String;Ljava/util/Properties;Lnet/sf/saxon/event/PipelineConfiguration;)Lnet/sf/saxon/event/SequenceReceiver;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p3}, Lnet/sf/saxon/event/PipelineConfiguration;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/Configuration;->makeEmitter(Ljava/lang/String;Ljava/util/Properties;)Lnet/sf/saxon/event/Receiver;

    move-result-object p0

    invoke-interface {p0, p3}, Lnet/sf/saxon/event/Receiver;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    instance-of p1, p0, Lnet/sf/saxon/event/ContentHandlerProxy;

    if-eqz p1, :cond_1

    const-string p1, "{http://saxon.sf.net/}supply-source-locator"

    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "yes"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Lnet/sf/saxon/event/PipelineConfiguration;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->isCompileWithTracing()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lnet/sf/saxon/event/PipelineConfiguration;->getController()Lnet/sf/saxon/Controller;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lnet/sf/saxon/event/PipelineConfiguration;->getController()Lnet/sf/saxon/Controller;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Lnet/sf/saxon/event/ContentHandlerProxy;

    invoke-virtual {p2}, Lnet/sf/saxon/event/ContentHandlerProxy;->getTraceListener()Lnet/sf/saxon/event/ContentHandlerProxy$ContentHandlerProxyTraceListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/Controller;->addTraceListener(Lnet/sf/saxon/lib/TraceListener;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Cannot use saxon:supply-source-locator unless tracing was enabled at compile time"

    const-string p2, "SXSE0002"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    instance-of p1, p0, Lnet/sf/saxon/event/SequenceReceiver;

    if-eqz p1, :cond_2

    check-cast p0, Lnet/sf/saxon/event/SequenceReceiver;

    goto :goto_1

    :cond_2
    new-instance p1, Lnet/sf/saxon/event/TreeReceiver;

    invoke-direct {p1, p0}, Lnet/sf/saxon/event/TreeReceiver;-><init>(Lnet/sf/saxon/event/Receiver;)V

    move-object p0, p1

    :goto_1
    return-object p0
.end method

.method public createXHTMLSerializer(Lnet/sf/saxon/serialize/Emitter;Lnet/sf/saxon/serialize/SerializationProperties;Lnet/sf/saxon/event/PipelineConfiguration;)Lnet/sf/saxon/event/SequenceReceiver;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p2}, Lnet/sf/saxon/serialize/SerializationProperties;->getProperties()Ljava/util/Properties;

    move-result-object p3

    const-string v0, "indent"

    invoke-virtual {p3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p3}, Lnet/sf/saxon/lib/SerializerFactory;->newXHTMLIndenter(Lnet/sf/saxon/event/Receiver;Ljava/util/Properties;)Lnet/sf/saxon/event/ProxyReceiver;

    move-result-object p1

    :cond_0
    new-instance v0, Lnet/sf/saxon/event/NamespaceDifferencer;

    invoke-direct {v0, p1, p3}, Lnet/sf/saxon/event/NamespaceDifferencer;-><init>(Lnet/sf/saxon/event/Receiver;Ljava/util/Properties;)V

    invoke-virtual {p0, p2, v0}, Lnet/sf/saxon/lib/SerializerFactory;->injectUnicodeNormalizer(Lnet/sf/saxon/serialize/SerializationProperties;Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0}, Lnet/sf/saxon/lib/SerializerFactory;->injectCharacterMapExpander(Lnet/sf/saxon/serialize/SerializationProperties;Lnet/sf/saxon/event/Receiver;Z)Lnet/sf/saxon/event/Receiver;

    move-result-object p1

    const-string v0, "cdata-section-elements"

    invoke-virtual {p3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p3}, Lnet/sf/saxon/lib/SerializerFactory;->newCDATAFilter(Lnet/sf/saxon/event/Receiver;Ljava/util/Properties;)Lnet/sf/saxon/event/ProxyReceiver;

    move-result-object p1

    :cond_1
    invoke-static {p3}, Lnet/sf/saxon/lib/SaxonOutputKeys;->isXhtmlHtmlVersion5(Ljava/util/Properties;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p3}, Lnet/sf/saxon/lib/SerializerFactory;->addHtml5Component(Lnet/sf/saxon/event/Receiver;Ljava/util/Properties;)Lnet/sf/saxon/event/Receiver;

    move-result-object p1

    :cond_2
    const-string v0, "escape-uri-attributes"

    invoke-virtual {p3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1, p3}, Lnet/sf/saxon/lib/SerializerFactory;->newXHTMLURIEscaper(Lnet/sf/saxon/event/Receiver;Ljava/util/Properties;)Lnet/sf/saxon/event/ProxyReceiver;

    move-result-object p1

    :cond_3
    const-string v0, "include-content-type"

    invoke-virtual {p3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, p1, p3}, Lnet/sf/saxon/lib/SerializerFactory;->newXHTMLMetaTagAdjuster(Lnet/sf/saxon/event/Receiver;Ljava/util/Properties;)Lnet/sf/saxon/serialize/MetaTagAdjuster;

    move-result-object p1

    :cond_4
    const-string v0, "{http://saxon.sf.net/}attribute-order"

    invoke-virtual {p3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0, p1, p3}, Lnet/sf/saxon/lib/SerializerFactory;->newAttributeSorter(Lnet/sf/saxon/event/Receiver;Ljava/util/Properties;)Lnet/sf/saxon/event/Receiver;

    move-result-object p1

    :cond_5
    invoke-virtual {p2}, Lnet/sf/saxon/serialize/SerializationProperties;->getValidationFactory()Lnet/sf/saxon/event/FilterFactory;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lnet/sf/saxon/serialize/SerializationProperties;->getValidationFactory()Lnet/sf/saxon/event/FilterFactory;

    move-result-object p2

    invoke-interface {p2, p1}, Lnet/sf/saxon/event/FilterFactory;->makeFilter(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;

    move-result-object p1

    :cond_6
    invoke-virtual {p0, p1, p3}, Lnet/sf/saxon/lib/SerializerFactory;->makeSequenceNormalizer(Lnet/sf/saxon/event/Receiver;Ljava/util/Properties;)Lnet/sf/saxon/event/SequenceReceiver;

    move-result-object p0

    return-object p0
.end method

.method public createXMLSerializer(Lnet/sf/saxon/serialize/XMLEmitter;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/SequenceReceiver;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p2}, Lnet/sf/saxon/serialize/SerializationProperties;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "{http://saxon.sf.net/}canonical"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "yes"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "indent"

    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/lib/SerializerFactory;->newXMLIndenter(Lnet/sf/saxon/serialize/XMLEmitter;Ljava/util/Properties;)Lnet/sf/saxon/event/ProxyReceiver;

    move-result-object p1

    :cond_1
    new-instance v2, Lnet/sf/saxon/event/NamespaceDifferencer;

    invoke-direct {v2, p1, v0}, Lnet/sf/saxon/event/NamespaceDifferencer;-><init>(Lnet/sf/saxon/event/Receiver;Ljava/util/Properties;)V

    const-string p1, "version"

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "1.0"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lnet/sf/saxon/lib/SerializerFactory;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getXMLVersion()I

    move-result p1

    const/16 v3, 0xb

    if-ne p1, v3, :cond_2

    invoke-virtual {p0, v2, v0}, Lnet/sf/saxon/lib/SerializerFactory;->newXML10ContentChecker(Lnet/sf/saxon/event/Receiver;Ljava/util/Properties;)Lnet/sf/saxon/event/ProxyReceiver;

    move-result-object v2

    :cond_2
    invoke-virtual {p0, p2, v2}, Lnet/sf/saxon/lib/SerializerFactory;->injectUnicodeNormalizer(Lnet/sf/saxon/serialize/SerializationProperties;Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;

    move-result-object p1

    if-nez v1, :cond_3

    const/4 v2, 0x1

    invoke-virtual {p0, p2, p1, v2}, Lnet/sf/saxon/lib/SerializerFactory;->injectCharacterMapExpander(Lnet/sf/saxon/serialize/SerializationProperties;Lnet/sf/saxon/event/Receiver;Z)Lnet/sf/saxon/event/Receiver;

    move-result-object p1

    :cond_3
    const-string v2, "cdata-section-elements"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    if-nez v1, :cond_4

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/lib/SerializerFactory;->newCDATAFilter(Lnet/sf/saxon/event/Receiver;Ljava/util/Properties;)Lnet/sf/saxon/event/ProxyReceiver;

    move-result-object p1

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/lib/SerializerFactory;->newAttributeSorter(Lnet/sf/saxon/event/Receiver;Ljava/util/Properties;)Lnet/sf/saxon/event/Receiver;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/lib/SerializerFactory;->newNamespaceSorter(Lnet/sf/saxon/event/Receiver;Ljava/util/Properties;)Lnet/sf/saxon/event/Receiver;

    move-result-object p1

    goto :goto_0

    :cond_5
    const-string v1, "{http://saxon.sf.net/}attribute-order"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/lib/SerializerFactory;->newAttributeSorter(Lnet/sf/saxon/event/Receiver;Ljava/util/Properties;)Lnet/sf/saxon/event/Receiver;

    move-result-object p1

    :cond_6
    :goto_0
    invoke-virtual {p2}, Lnet/sf/saxon/serialize/SerializationProperties;->getValidationFactory()Lnet/sf/saxon/event/FilterFactory;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Lnet/sf/saxon/serialize/SerializationProperties;->getValidationFactory()Lnet/sf/saxon/event/FilterFactory;

    move-result-object p2

    invoke-interface {p2, p1}, Lnet/sf/saxon/event/FilterFactory;->makeFilter(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;

    move-result-object p1

    :cond_7
    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/lib/SerializerFactory;->makeSequenceNormalizer(Lnet/sf/saxon/event/Receiver;Ljava/util/Properties;)Lnet/sf/saxon/event/SequenceReceiver;

    move-result-object p0

    return-object p0
.end method

.method public customizeAdaptiveSerializer(Lnet/sf/saxon/serialize/AdaptiveEmitter;Ljava/util/Properties;Lnet/sf/saxon/serialize/CharacterMapExpander;Lnet/sf/saxon/event/ProxyReceiver;)Lnet/sf/saxon/event/SequenceReceiver;
    .locals 0

    instance-of p0, p4, Lnet/sf/saxon/serialize/UnicodeNormalizer;

    if-eqz p0, :cond_0

    check-cast p4, Lnet/sf/saxon/serialize/UnicodeNormalizer;

    invoke-virtual {p4}, Lnet/sf/saxon/serialize/UnicodeNormalizer;->getNormalizationForm()Ljava/text/Normalizer$Form;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->setNormalizationForm(Ljava/text/Normalizer$Form;)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lnet/sf/saxon/serialize/CharacterMapExpander;->getCharacterMap()Lnet/sf/saxon/serialize/CharacterMap;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->setCharacterMap(Lnet/sf/saxon/serialize/CharacterMap;)V

    :cond_1
    return-object p1
.end method

.method public customizeJSONSerializer(Lnet/sf/saxon/serialize/JSONSerializer;Ljava/util/Properties;Lnet/sf/saxon/serialize/CharacterMapExpander;Lnet/sf/saxon/event/ProxyReceiver;)Lnet/sf/saxon/event/SequenceReceiver;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of p0, p4, Lnet/sf/saxon/serialize/UnicodeNormalizer;

    if-eqz p0, :cond_0

    check-cast p4, Lnet/sf/saxon/serialize/UnicodeNormalizer;

    invoke-virtual {p4}, Lnet/sf/saxon/serialize/UnicodeNormalizer;->getNormalizationForm()Ljava/text/Normalizer$Form;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/serialize/JSONSerializer;->setNormalizationForm(Ljava/text/Normalizer$Form;)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lnet/sf/saxon/serialize/CharacterMapExpander;->getCharacterMap()Lnet/sf/saxon/serialize/CharacterMap;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/serialize/JSONSerializer;->setCharacterMap(Lnet/sf/saxon/serialize/CharacterMap;)V

    :cond_1
    return-object p1
.end method

.method public final f(Ljavax/xml/transform/Result;Ljava/util/Properties;Lnet/sf/saxon/event/PipelineConfiguration;)Lnet/sf/saxon/event/Receiver;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/serialize/Emitter;

    if-eqz v0, :cond_1

    check-cast p1, Lnet/sf/saxon/serialize/Emitter;

    invoke-virtual {p1}, Lnet/sf/saxon/serialize/Emitter;->getOutputProperties()Ljava/util/Properties;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual {p1, p2}, Lnet/sf/saxon/serialize/Emitter;->setOutputProperties(Ljava/util/Properties;)V

    :cond_0
    return-object p1

    :cond_1
    instance-of v0, p1, Lnet/sf/saxon/serialize/JSONSerializer;

    if-eqz v0, :cond_3

    check-cast p1, Lnet/sf/saxon/serialize/JSONSerializer;

    invoke-virtual {p1}, Lnet/sf/saxon/serialize/JSONSerializer;->getOutputProperties()Ljava/util/Properties;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/serialize/JSONSerializer;->setOutputProperties(Ljava/util/Properties;)V

    :cond_2
    return-object p1

    :cond_3
    instance-of v0, p1, Lnet/sf/saxon/serialize/AdaptiveEmitter;

    if-eqz v0, :cond_5

    check-cast p1, Lnet/sf/saxon/serialize/AdaptiveEmitter;

    invoke-virtual {p1}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->getOutputProperties()Ljava/util/Properties;

    move-result-object p0

    if-nez p0, :cond_4

    invoke-virtual {p1, p2}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->setOutputProperties(Ljava/util/Properties;)V

    :cond_4
    return-object p1

    :cond_5
    instance-of v0, p1, Lnet/sf/saxon/event/Receiver;

    if-eqz v0, :cond_7

    move-object p0, p1

    check-cast p0, Lnet/sf/saxon/event/Receiver;

    invoke-interface {p1}, Ljavax/xml/transform/Result;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljavax/xml/transform/Result;->setSystemId(Ljava/lang/String;)V

    invoke-interface {p0, p3}, Lnet/sf/saxon/event/Receiver;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    check-cast p1, Lnet/sf/saxon/event/Receiver;

    invoke-interface {p1}, Lnet/sf/saxon/event/Receiver;->handlesAppend()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "build-tree"

    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "no"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    return-object p0

    :cond_6
    new-instance p1, Lnet/sf/saxon/event/TreeReceiver;

    invoke-direct {p1, p0}, Lnet/sf/saxon/event/TreeReceiver;-><init>(Lnet/sf/saxon/event/Receiver;)V

    return-object p1

    :cond_7
    instance-of v0, p1, Ljavax/xml/transform/sax/SAXResult;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lnet/sf/saxon/lib/SerializerFactory;->newContentHandlerProxy()Lnet/sf/saxon/event/ContentHandlerProxy;

    move-result-object v0

    check-cast p1, Ljavax/xml/transform/sax/SAXResult;

    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXResult;->getHandler()Lorg/xml/sax/ContentHandler;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/event/ContentHandlerProxy;->setUnderlyingContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-virtual {v0, p3}, Lnet/sf/saxon/event/ContentHandlerProxy;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    invoke-virtual {v0, p2}, Lnet/sf/saxon/event/ContentHandlerProxy;->setOutputProperties(Ljava/util/Properties;)V

    const-string p1, "{http://saxon.sf.net/}supply-source-locator"

    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "yes"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lnet/sf/saxon/lib/SerializerFactory;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->isCompileWithTracing()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p3}, Lnet/sf/saxon/event/PipelineConfiguration;->getController()Lnet/sf/saxon/Controller;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p3}, Lnet/sf/saxon/event/PipelineConfiguration;->getController()Lnet/sf/saxon/Controller;

    move-result-object p1

    invoke-virtual {v0}, Lnet/sf/saxon/event/ContentHandlerProxy;->getTraceListener()Lnet/sf/saxon/event/ContentHandlerProxy$ContentHandlerProxyTraceListener;

    move-result-object p3

    invoke-virtual {p1, p3}, Lnet/sf/saxon/Controller;->addTraceListener(Lnet/sf/saxon/lib/TraceListener;)V

    goto :goto_0

    :cond_8
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Cannot use saxon:supply-source-locator unless tracing was enabled at compile time"

    const-string p2, "SXSE0002"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_0
    invoke-virtual {p0, v0, p2}, Lnet/sf/saxon/lib/SerializerFactory;->makeSequenceNormalizer(Lnet/sf/saxon/event/Receiver;Ljava/util/Properties;)Lnet/sf/saxon/event/SequenceReceiver;

    move-result-object p0

    return-object p0

    :cond_a
    instance-of v0, p1, Ljavax/xml/transform/stax/StAXResult;

    if-eqz v0, :cond_b

    new-instance v0, Lnet/sf/saxon/stax/StAXResultHandlerImpl;

    invoke-direct {v0}, Lnet/sf/saxon/stax/StAXResultHandlerImpl;-><init>()V

    invoke-interface {v0, p1, p2}, Lnet/sf/saxon/lib/StAXResultHandler;->getReceiver(Ljavax/xml/transform/Result;Ljava/util/Properties;)Lnet/sf/saxon/event/Receiver;

    move-result-object p1

    invoke-interface {p1, p3}, Lnet/sf/saxon/event/Receiver;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/lib/SerializerFactory;->makeSequenceNormalizer(Lnet/sf/saxon/event/Receiver;Ljava/util/Properties;)Lnet/sf/saxon/event/SequenceReceiver;

    move-result-object p0

    return-object p0

    :cond_b
    if-eqz p3, :cond_d

    invoke-virtual {p3}, Lnet/sf/saxon/event/PipelineConfiguration;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getExternalObjectModels()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/lib/ExternalObjectModel;

    invoke-interface {p2, p1}, Lnet/sf/saxon/lib/ExternalObjectModel;->getDocumentBuilder(Ljavax/xml/transform/Result;)Lnet/sf/saxon/event/Receiver;

    move-result-object p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljavax/xml/transform/Result;->getSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Ljavax/xml/transform/Result;->setSystemId(Ljava/lang/String;)V

    invoke-interface {p2, p3}, Lnet/sf/saxon/event/Receiver;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    new-instance p0, Lnet/sf/saxon/event/TreeReceiver;

    invoke-direct {p0, p2}, Lnet/sf/saxon/event/TreeReceiver;-><init>(Lnet/sf/saxon/event/Receiver;)V

    return-object p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown type of result: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/SerializerFactory;->a:Lnet/sf/saxon/Configuration;

    return-object p0
.end method

.method public getPropertySorter(Ljava/lang/String;)Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Comparator<",
            "Lnet/sf/saxon/value/AtomicValue;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Serialization property saxon:property-order is not available in Saxon-HE"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getReceiver(Ljavax/xml/transform/Result;)Lnet/sf/saxon/event/Receiver;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    new-instance v0, Lnet/sf/saxon/serialize/SerializationProperties;

    invoke-direct {v0}, Lnet/sf/saxon/serialize/SerializationProperties;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/lib/SerializerFactory;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lnet/sf/saxon/lib/SerializerFactory;->getReceiver(Ljavax/xml/transform/Result;Lnet/sf/saxon/serialize/SerializationProperties;Lnet/sf/saxon/event/PipelineConfiguration;)Lnet/sf/saxon/event/Receiver;

    move-result-object p0

    return-object p0
.end method

.method public getReceiver(Ljavax/xml/transform/Result;Lnet/sf/saxon/event/PipelineConfiguration;Ljava/util/Properties;)Lnet/sf/saxon/event/Receiver;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lnet/sf/saxon/serialize/SerializationProperties;

    invoke-direct {v0, p3}, Lnet/sf/saxon/serialize/SerializationProperties;-><init>(Ljava/util/Properties;)V

    invoke-virtual {p0, p1, v0, p2}, Lnet/sf/saxon/lib/SerializerFactory;->getReceiver(Ljavax/xml/transform/Result;Lnet/sf/saxon/serialize/SerializationProperties;Lnet/sf/saxon/event/PipelineConfiguration;)Lnet/sf/saxon/event/Receiver;

    move-result-object p0

    return-object p0
.end method

.method public getReceiver(Ljavax/xml/transform/Result;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lnet/sf/saxon/lib/SerializerFactory;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lnet/sf/saxon/lib/SerializerFactory;->getReceiver(Ljavax/xml/transform/Result;Lnet/sf/saxon/serialize/SerializationProperties;Lnet/sf/saxon/event/PipelineConfiguration;)Lnet/sf/saxon/event/Receiver;

    move-result-object p0

    return-object p0
.end method

.method public getReceiver(Ljavax/xml/transform/Result;Lnet/sf/saxon/serialize/SerializationProperties;Lnet/sf/saxon/event/PipelineConfiguration;)Lnet/sf/saxon/event/Receiver;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p2}, Lnet/sf/saxon/serialize/SerializationProperties;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 8
    invoke-virtual {p2}, Lnet/sf/saxon/serialize/SerializationProperties;->getCharacterMapIndex()Lnet/sf/saxon/serialize/CharacterMapIndex;

    move-result-object v1

    if-nez v1, :cond_0

    .line 9
    new-instance v1, Lnet/sf/saxon/serialize/CharacterMapIndex;

    invoke-direct {v1}, Lnet/sf/saxon/serialize/CharacterMapIndex;-><init>()V

    :cond_0
    const-string v2, "{http://saxon.sf.net/}next-in-chain"

    .line 10
    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-eqz v3, :cond_2

    .line 11
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 12
    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "{http://saxon.sf.net/}next-in-chain-base-uri"

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v1, v4

    .line 14
    :cond_1
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3, v0}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    .line 15
    invoke-virtual {v3, v2, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    invoke-virtual {p0, p3, p2, v1, p1}, Lnet/sf/saxon/lib/SerializerFactory;->prepareNextStylesheet(Lnet/sf/saxon/event/PipelineConfiguration;Ljava/lang/String;Ljava/lang/String;Ljavax/xml/transform/Result;)Lnet/sf/saxon/event/SequenceReceiver;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v2, "parameter-document"

    .line 17
    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-eqz v3, :cond_6

    .line 18
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    const-string p2, "{http://saxon.sf.net/}parameter-document-base-uri"

    .line 19
    invoke-virtual {v0, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    .line 20
    invoke-interface {p1}, Ljavax/xml/transform/Result;->getSystemId()Ljava/lang/String;

    move-result-object p2

    .line 21
    :cond_3
    new-instance v9, Ljava/util/Properties;

    invoke-direct {v9, v0}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    .line 22
    invoke-virtual {v9, v2, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    new-instance v0, Lnet/sf/saxon/lib/ResourceRequest;

    invoke-direct {v0}, Lnet/sf/saxon/lib/ResourceRequest;-><init>()V

    .line 24
    iput-object v3, v0, Lnet/sf/saxon/lib/ResourceRequest;->relativeUri:Ljava/lang/String;

    .line 25
    iput-object p2, v0, Lnet/sf/saxon/lib/ResourceRequest;->baseUri:Ljava/lang/String;

    .line 26
    :try_start_0
    invoke-static {v3, p2}, Lnet/sf/saxon/functions/ResolveURI;->makeAbsolute(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lnet/sf/saxon/lib/ResourceRequest;->uri:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "http://www.w3.org/2010/xslt-xquery-serialization"

    .line 27
    iput-object p2, v0, Lnet/sf/saxon/lib/ResourceRequest;->nature:Ljava/lang/String;

    const-string p2, "serialization"

    .line 28
    iput-object p2, v0, Lnet/sf/saxon/lib/ResourceRequest;->purpose:Ljava/lang/String;

    new-array p2, v8, [Lnet/sf/saxon/lib/ResourceResolver;

    .line 29
    iget-object v2, p0, Lnet/sf/saxon/lib/SerializerFactory;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v2}, Lnet/sf/saxon/Configuration;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object v2

    aput-object v2, p2, v7

    new-instance v2, Lnet/sf/saxon/lib/DirectResourceResolver;

    iget-object v3, p0, Lnet/sf/saxon/lib/SerializerFactory;->a:Lnet/sf/saxon/Configuration;

    invoke-direct {v2, v3}, Lnet/sf/saxon/lib/DirectResourceResolver;-><init>(Lnet/sf/saxon/Configuration;)V

    aput-object v2, p2, v6

    invoke-virtual {v0, p2}, Lnet/sf/saxon/lib/ResourceRequest;->resolve([Lnet/sf/saxon/lib/ResourceResolver;)Ljavax/xml/transform/Source;

    move-result-object p2

    .line 30
    new-instance v0, Lnet/sf/saxon/lib/ParseOptions;

    invoke-direct {v0}, Lnet/sf/saxon/lib/ParseOptions;-><init>()V

    .line 31
    invoke-virtual {v0, v8}, Lnet/sf/saxon/lib/ParseOptions;->setSchemaValidationMode(I)V

    .line 32
    invoke-virtual {v0, v5}, Lnet/sf/saxon/lib/ParseOptions;->setDTDValidationMode(I)V

    .line 33
    iget-object v0, p0, Lnet/sf/saxon/lib/SerializerFactory;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0, p2}, Lnet/sf/saxon/Configuration;->buildDocumentTree(Ljavax/xml/transform/Source;)Lnet/sf/saxon/om/TreeInfo;

    move-result-object p2

    .line 34
    new-instance v0, Lnet/sf/saxon/serialize/SerializationParamsHandler;

    invoke-direct {v0}, Lnet/sf/saxon/serialize/SerializationParamsHandler;-><init>()V

    .line 35
    invoke-interface {p2}, Lnet/sf/saxon/om/TreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p2

    invoke-virtual {v0, p2}, Lnet/sf/saxon/serialize/SerializationParamsHandler;->setSerializationParams(Lnet/sf/saxon/om/NodeInfo;)V

    .line 36
    invoke-virtual {v0}, Lnet/sf/saxon/serialize/SerializationParamsHandler;->getSerializationProperties()Lnet/sf/saxon/serialize/SerializationProperties;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/serialize/SerializationProperties;->getProperties()Ljava/util/Properties;

    move-result-object p2

    .line 37
    invoke-virtual {p2}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 38
    invoke-virtual {p2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 39
    invoke-virtual {v9, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 40
    :cond_4
    invoke-virtual {v0}, Lnet/sf/saxon/serialize/SerializationParamsHandler;->getCharacterMap()Lnet/sf/saxon/serialize/CharacterMap;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 41
    invoke-virtual {p2}, Lnet/sf/saxon/serialize/CharacterMap;->getName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getClarkName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "use-character-maps"

    invoke-virtual {v9, v2, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    invoke-virtual {p2}, Lnet/sf/saxon/serialize/CharacterMap;->getName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Lnet/sf/saxon/serialize/CharacterMapIndex;->putCharacterMap(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/serialize/CharacterMap;)V

    .line 43
    :cond_5
    new-instance p2, Lnet/sf/saxon/serialize/SerializationProperties;

    invoke-direct {p2, v9, v1}, Lnet/sf/saxon/serialize/SerializationProperties;-><init>(Ljava/util/Properties;Lnet/sf/saxon/serialize/CharacterMapIndex;)V

    move-object v2, p2

    goto :goto_1

    :catch_0
    move-exception p0

    .line 44
    invoke-static {p0}, Lnet/sf/saxon/trans/XPathException;->makeXPathException(Ljava/lang/Exception;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0

    :cond_6
    move-object v2, p2

    move-object v9, v0

    .line 45
    :goto_1
    instance-of p2, p1, Lnet/sf/saxon/serialize/UnicodeWriterResult;

    const/4 v10, 0x0

    if-eqz p2, :cond_7

    .line 46
    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/serialize/UnicodeWriterResult;

    invoke-virtual {v0}, Lnet/sf/saxon/serialize/UnicodeWriterResult;->getUnicodeWriter()Lnet/sf/saxon/str/UnicodeWriter;

    move-result-object v0

    move-object v11, v10

    goto :goto_2

    .line 47
    :cond_7
    instance-of v0, p1, Ljavax/xml/transform/stream/StreamResult;

    if-eqz v0, :cond_8

    .line 48
    new-instance v0, Lnet/sf/saxon/serialize/ExpandedStreamResult;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/SerializerFactory;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3

    move-object v4, p1

    check-cast v4, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v0, v3, v4, v9}, Lnet/sf/saxon/serialize/ExpandedStreamResult;-><init>(Lnet/sf/saxon/Configuration;Ljavax/xml/transform/stream/StreamResult;Ljava/util/Properties;)V

    move-object v11, v0

    move-object v0, v10

    goto :goto_2

    :cond_8
    move-object v0, v10

    move-object v11, v0

    .line 49
    :goto_2
    instance-of v3, p1, Ljavax/xml/transform/stream/StreamResult;

    if-nez v3, :cond_a

    if-eqz p2, :cond_9

    goto :goto_3

    .line 50
    :cond_9
    invoke-virtual {p0, p1, v9, p3}, Lnet/sf/saxon/lib/SerializerFactory;->f(Ljavax/xml/transform/Result;Ljava/util/Properties;Lnet/sf/saxon/event/PipelineConfiguration;)Lnet/sf/saxon/event/Receiver;

    move-result-object p0

    return-object p0

    :cond_a
    :goto_3
    const-string p2, "method"

    .line 51
    invoke-virtual {v9, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_b

    .line 52
    new-instance p2, Lnet/sf/saxon/event/Sink;

    invoke-direct {p2, p3}, Lnet/sf/saxon/event/Sink;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    invoke-virtual {p0, p1, p2, v2}, Lnet/sf/saxon/lib/SerializerFactory;->newUncommittedSerializer(Ljavax/xml/transform/Result;Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/serialize/UncommittedSerializer;

    move-result-object p0

    return-object p0

    .line 53
    :cond_b
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_0

    :goto_4
    move v5, v4

    goto :goto_5

    :sswitch_0
    const-string v3, "xhtml"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_4

    :cond_c
    const/4 v5, 0x5

    goto :goto_5

    :sswitch_1
    const-string v3, "text"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_4

    :sswitch_2
    const-string v3, "json"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_4

    :cond_d
    const/4 v5, 0x3

    goto :goto_5

    :sswitch_3
    const-string v3, "html"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_4

    :cond_e
    move v5, v8

    goto :goto_5

    :sswitch_4
    const-string v3, "xml"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_4

    :cond_f
    move v5, v6

    goto :goto_5

    :sswitch_5
    const-string v3, "adaptive"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_4

    :cond_10
    move v5, v7

    :cond_11
    :goto_5
    packed-switch v5, :pswitch_data_0

    const-string v3, "{"

    .line 54
    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Q"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_12
    const-string v3, "Q{http://saxon.sf.net/}"

    .line 56
    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 57
    invoke-virtual {p0, p3, v9, v1}, Lnet/sf/saxon/lib/SerializerFactory;->i(Lnet/sf/saxon/event/PipelineConfiguration;Ljava/util/Properties;Lnet/sf/saxon/serialize/CharacterMapIndex;)Lnet/sf/saxon/serialize/CharacterMapExpander;

    move-result-object v4

    .line 58
    invoke-virtual {p0, p3, v9}, Lnet/sf/saxon/lib/SerializerFactory;->j(Lnet/sf/saxon/event/PipelineConfiguration;Ljava/util/Properties;)Lnet/sf/saxon/event/ProxyReceiver;

    move-result-object v5

    move-object v0, p0

    move-object v1, p2

    move-object v3, p3

    move-object v6, v11

    move-object v7, p1

    .line 59
    invoke-virtual/range {v0 .. v7}, Lnet/sf/saxon/lib/SerializerFactory;->createSaxonSerializationMethod(Ljava/lang/String;Lnet/sf/saxon/serialize/SerializationProperties;Lnet/sf/saxon/event/PipelineConfiguration;Lnet/sf/saxon/serialize/CharacterMapExpander;Lnet/sf/saxon/event/ProxyReceiver;Lnet/sf/saxon/serialize/ExpandedStreamResult;Ljavax/xml/transform/Result;)Lnet/sf/saxon/event/SequenceReceiver;

    move-result-object p0

    .line 60
    instance-of p2, p0, Lnet/sf/saxon/serialize/Emitter;

    if-eqz p2, :cond_1c

    .line 61
    move-object v10, p0

    check-cast v10, Lnet/sf/saxon/serialize/Emitter;

    goto/16 :goto_6

    .line 62
    :cond_13
    invoke-virtual {p0, p2, v9, p3}, Lnet/sf/saxon/lib/SerializerFactory;->createUserDefinedOutputMethod(Ljava/lang/String;Ljava/util/Properties;Lnet/sf/saxon/event/PipelineConfiguration;)Lnet/sf/saxon/event/SequenceReceiver;

    move-result-object p0

    .line 63
    instance-of p2, p0, Lnet/sf/saxon/serialize/Emitter;

    if-eqz p2, :cond_15

    .line 64
    move-object v10, p0

    check-cast v10, Lnet/sf/saxon/serialize/Emitter;

    if-nez v0, :cond_14

    .line 65
    invoke-virtual {v11}, Lnet/sf/saxon/serialize/ExpandedStreamResult;->obtainUnicodeWriter()Lnet/sf/saxon/str/UnicodeWriter;

    move-result-object v0

    .line 66
    invoke-virtual {v11}, Lnet/sf/saxon/serialize/ExpandedStreamResult;->isMustCloseAfterUse()Z

    move-result p0

    invoke-virtual {v10, p0}, Lnet/sf/saxon/serialize/Emitter;->setMustClose(Z)V

    .line 67
    :cond_14
    invoke-virtual {v10, v0}, Lnet/sf/saxon/serialize/Emitter;->setUnicodeWriter(Lnet/sf/saxon/str/UnicodeWriter;)V

    .line 68
    invoke-virtual {v2, v10}, Lnet/sf/saxon/serialize/SerializationProperties;->makeSequenceNormalizer(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/SequenceNormalizer;

    move-result-object p0

    goto/16 :goto_6

    .line 69
    :cond_15
    invoke-virtual {v2, p0}, Lnet/sf/saxon/serialize/SerializationProperties;->makeSequenceNormalizer(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/SequenceNormalizer;

    move-result-object p0

    return-object p0

    .line 70
    :pswitch_0
    invoke-virtual {p0, v9}, Lnet/sf/saxon/lib/SerializerFactory;->newXHTMLEmitter(Ljava/util/Properties;)Lnet/sf/saxon/serialize/Emitter;

    move-result-object v10

    .line 71
    invoke-virtual {v10, p3}, Lnet/sf/saxon/event/SequenceReceiver;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    if-nez v0, :cond_16

    .line 72
    invoke-virtual {v11}, Lnet/sf/saxon/serialize/ExpandedStreamResult;->obtainUnicodeWriter()Lnet/sf/saxon/str/UnicodeWriter;

    move-result-object v0

    .line 73
    invoke-virtual {v11}, Lnet/sf/saxon/serialize/ExpandedStreamResult;->isMustCloseAfterUse()Z

    move-result p2

    invoke-virtual {v10, p2}, Lnet/sf/saxon/serialize/Emitter;->setMustClose(Z)V

    .line 74
    :cond_16
    invoke-virtual {v10, v0}, Lnet/sf/saxon/serialize/Emitter;->setUnicodeWriter(Lnet/sf/saxon/str/UnicodeWriter;)V

    .line 75
    invoke-virtual {p0, v10, v2, p3}, Lnet/sf/saxon/lib/SerializerFactory;->createXHTMLSerializer(Lnet/sf/saxon/serialize/Emitter;Lnet/sf/saxon/serialize/SerializationProperties;Lnet/sf/saxon/event/PipelineConfiguration;)Lnet/sf/saxon/event/SequenceReceiver;

    move-result-object p0

    goto/16 :goto_6

    .line 76
    :pswitch_1
    invoke-virtual {p0}, Lnet/sf/saxon/lib/SerializerFactory;->newTEXTEmitter()Lnet/sf/saxon/serialize/Emitter;

    move-result-object v10

    .line 77
    invoke-virtual {v10, p3}, Lnet/sf/saxon/event/SequenceReceiver;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    if-nez v0, :cond_17

    .line 78
    invoke-virtual {v11}, Lnet/sf/saxon/serialize/ExpandedStreamResult;->obtainUnicodeWriter()Lnet/sf/saxon/str/UnicodeWriter;

    move-result-object v0

    .line 79
    invoke-virtual {v11}, Lnet/sf/saxon/serialize/ExpandedStreamResult;->isMustCloseAfterUse()Z

    move-result p2

    invoke-virtual {v10, p2}, Lnet/sf/saxon/serialize/Emitter;->setMustClose(Z)V

    .line 80
    :cond_17
    invoke-virtual {v10, v0}, Lnet/sf/saxon/serialize/Emitter;->setUnicodeWriter(Lnet/sf/saxon/str/UnicodeWriter;)V

    .line 81
    invoke-virtual {p0, v10, v2}, Lnet/sf/saxon/lib/SerializerFactory;->createTextSerializer(Lnet/sf/saxon/serialize/Emitter;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/SequenceReceiver;

    move-result-object p0

    goto :goto_6

    :pswitch_2
    const-string p1, "omit-xml-declaration"

    const-string p2, "yes"

    .line 82
    invoke-virtual {v9, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    if-nez v0, :cond_18

    .line 83
    invoke-virtual {v11}, Lnet/sf/saxon/serialize/ExpandedStreamResult;->obtainUnicodeWriter()Lnet/sf/saxon/str/UnicodeWriter;

    move-result-object v0

    .line 84
    :cond_18
    new-instance p1, Lnet/sf/saxon/serialize/JSONEmitter;

    invoke-direct {p1, p3, v0, v9}, Lnet/sf/saxon/serialize/JSONEmitter;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;Lnet/sf/saxon/str/UnicodeWriter;Ljava/util/Properties;)V

    .line 85
    new-instance p2, Lnet/sf/saxon/serialize/JSONSerializer;

    invoke-direct {p2, p3, p1, v9}, Lnet/sf/saxon/serialize/JSONSerializer;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;Lnet/sf/saxon/serialize/JSONEmitter;Ljava/util/Properties;)V

    const-string p1, "{http://saxon.sf.net/}property-order"

    .line 86
    invoke-virtual {v9, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 87
    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/SerializerFactory;->getPropertySorter(Ljava/lang/String;)Ljava/util/Comparator;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnet/sf/saxon/serialize/JSONSerializer;->setPropertySorter(Ljava/util/Comparator;)V

    .line 88
    :cond_19
    invoke-virtual {p0, p3, v9, v1}, Lnet/sf/saxon/lib/SerializerFactory;->i(Lnet/sf/saxon/event/PipelineConfiguration;Ljava/util/Properties;Lnet/sf/saxon/serialize/CharacterMapIndex;)Lnet/sf/saxon/serialize/CharacterMapExpander;

    move-result-object p1

    .line 89
    invoke-virtual {p0, p3, v9}, Lnet/sf/saxon/lib/SerializerFactory;->j(Lnet/sf/saxon/event/PipelineConfiguration;Ljava/util/Properties;)Lnet/sf/saxon/event/ProxyReceiver;

    move-result-object p3

    .line 90
    invoke-virtual {p0, p2, v9, p1, p3}, Lnet/sf/saxon/lib/SerializerFactory;->customizeJSONSerializer(Lnet/sf/saxon/serialize/JSONSerializer;Ljava/util/Properties;Lnet/sf/saxon/serialize/CharacterMapExpander;Lnet/sf/saxon/event/ProxyReceiver;)Lnet/sf/saxon/event/SequenceReceiver;

    move-result-object p0

    return-object p0

    .line 91
    :pswitch_3
    invoke-virtual {p0, v9}, Lnet/sf/saxon/lib/SerializerFactory;->newHTMLEmitter(Ljava/util/Properties;)Lnet/sf/saxon/serialize/Emitter;

    move-result-object v10

    .line 92
    invoke-virtual {v10, p3}, Lnet/sf/saxon/event/SequenceReceiver;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    if-nez v0, :cond_1a

    .line 93
    invoke-virtual {v11}, Lnet/sf/saxon/serialize/ExpandedStreamResult;->obtainUnicodeWriter()Lnet/sf/saxon/str/UnicodeWriter;

    move-result-object v0

    .line 94
    invoke-virtual {v11}, Lnet/sf/saxon/serialize/ExpandedStreamResult;->isMustCloseAfterUse()Z

    move-result p2

    invoke-virtual {v10, p2}, Lnet/sf/saxon/serialize/Emitter;->setMustClose(Z)V

    .line 95
    :cond_1a
    invoke-virtual {v10, v0}, Lnet/sf/saxon/serialize/Emitter;->setUnicodeWriter(Lnet/sf/saxon/str/UnicodeWriter;)V

    .line 96
    invoke-virtual {p0, v10, v2, p3}, Lnet/sf/saxon/lib/SerializerFactory;->createHTMLSerializer(Lnet/sf/saxon/serialize/Emitter;Lnet/sf/saxon/serialize/SerializationProperties;Lnet/sf/saxon/event/PipelineConfiguration;)Lnet/sf/saxon/event/SequenceReceiver;

    move-result-object p0

    goto :goto_6

    .line 97
    :pswitch_4
    invoke-virtual {p0, v9}, Lnet/sf/saxon/lib/SerializerFactory;->newXMLEmitter(Ljava/util/Properties;)Lnet/sf/saxon/serialize/Emitter;

    move-result-object v10

    .line 98
    invoke-virtual {v10, p3}, Lnet/sf/saxon/event/SequenceReceiver;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    if-nez v0, :cond_1b

    .line 99
    invoke-virtual {v11}, Lnet/sf/saxon/serialize/ExpandedStreamResult;->obtainUnicodeWriter()Lnet/sf/saxon/str/UnicodeWriter;

    move-result-object v0

    .line 100
    invoke-virtual {v11}, Lnet/sf/saxon/serialize/ExpandedStreamResult;->isMustCloseAfterUse()Z

    move-result p2

    invoke-virtual {v10, p2}, Lnet/sf/saxon/serialize/Emitter;->setMustClose(Z)V

    .line 101
    :cond_1b
    invoke-virtual {v10, v0}, Lnet/sf/saxon/serialize/Emitter;->setUnicodeWriter(Lnet/sf/saxon/str/UnicodeWriter;)V

    .line 102
    move-object p2, v10

    check-cast p2, Lnet/sf/saxon/serialize/XMLEmitter;

    invoke-virtual {p0, p2, v2}, Lnet/sf/saxon/lib/SerializerFactory;->createXMLSerializer(Lnet/sf/saxon/serialize/XMLEmitter;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/SequenceReceiver;

    move-result-object p0

    :cond_1c
    :goto_6
    if-eqz v10, :cond_1d

    .line 103
    invoke-virtual {v10, v9}, Lnet/sf/saxon/serialize/Emitter;->setOutputProperties(Ljava/util/Properties;)V

    .line 104
    :cond_1d
    invoke-interface {p1}, Ljavax/xml/transform/Result;->getSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/SequenceReceiver;->setSystemId(Ljava/lang/String;)V

    return-object p0

    :pswitch_5
    if-nez v0, :cond_1e

    .line 105
    invoke-virtual {v11}, Lnet/sf/saxon/serialize/ExpandedStreamResult;->obtainUnicodeWriter()Lnet/sf/saxon/str/UnicodeWriter;

    move-result-object v0

    .line 106
    :cond_1e
    new-instance p1, Lnet/sf/saxon/serialize/AdaptiveEmitter;

    invoke-direct {p1, p3, v0}, Lnet/sf/saxon/serialize/AdaptiveEmitter;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;Lnet/sf/saxon/str/UnicodeWriter;)V

    .line 107
    invoke-virtual {p1, v9}, Lnet/sf/saxon/serialize/AdaptiveEmitter;->setOutputProperties(Ljava/util/Properties;)V

    .line 108
    invoke-virtual {p0, p3, v9, v1}, Lnet/sf/saxon/lib/SerializerFactory;->i(Lnet/sf/saxon/event/PipelineConfiguration;Ljava/util/Properties;Lnet/sf/saxon/serialize/CharacterMapIndex;)Lnet/sf/saxon/serialize/CharacterMapExpander;

    move-result-object p2

    .line 109
    invoke-virtual {p0, p3, v9}, Lnet/sf/saxon/lib/SerializerFactory;->j(Lnet/sf/saxon/event/PipelineConfiguration;Ljava/util/Properties;)Lnet/sf/saxon/event/ProxyReceiver;

    move-result-object p3

    .line 110
    invoke-virtual {p0, p1, v9, p2, p3}, Lnet/sf/saxon/lib/SerializerFactory;->customizeAdaptiveSerializer(Lnet/sf/saxon/serialize/AdaptiveEmitter;Ljava/util/Properties;Lnet/sf/saxon/serialize/CharacterMapExpander;Lnet/sf/saxon/event/ProxyReceiver;)Lnet/sf/saxon/event/SequenceReceiver;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x4dd8298a -> :sswitch_5
        0x1d017 -> :sswitch_4
        0x3107ab -> :sswitch_3
        0x31ece8 -> :sswitch_2
        0x36452d -> :sswitch_1
        0x6cc0c23 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getXMLStreamWriter(Ljavax/xml/transform/stream/StreamResult;Ljava/util/Properties;)Lnet/sf/saxon/event/StreamWriterToReceiver;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/serialize/SerializationProperties;

    invoke-direct {v0, p2}, Lnet/sf/saxon/serialize/SerializationProperties;-><init>(Ljava/util/Properties;)V

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/lib/SerializerFactory;->getReceiver(Ljavax/xml/transform/Result;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/event/NamespaceReducer;

    invoke-direct {p1, p0}, Lnet/sf/saxon/event/NamespaceReducer;-><init>(Lnet/sf/saxon/event/Receiver;)V

    new-instance p0, Lnet/sf/saxon/event/StreamWriterToReceiver;

    invoke-direct {p0, p1}, Lnet/sf/saxon/event/StreamWriterToReceiver;-><init>(Lnet/sf/saxon/event/Receiver;)V

    return-object p0
.end method

.method public final i(Lnet/sf/saxon/event/PipelineConfiguration;Ljava/util/Properties;Lnet/sf/saxon/serialize/CharacterMapIndex;)Lnet/sf/saxon/serialize/CharacterMapExpander;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "use-character-maps"

    invoke-virtual {p2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Lnet/sf/saxon/event/Sink;

    invoke-direct {v0, p1}, Lnet/sf/saxon/event/Sink;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    invoke-virtual {p3, p2, v0, p0}, Lnet/sf/saxon/serialize/CharacterMapIndex;->makeCharacterMapExpander(Ljava/lang/String;Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/SerializerFactory;)Lnet/sf/saxon/serialize/CharacterMapExpander;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public injectCharacterMapExpander(Lnet/sf/saxon/serialize/SerializationProperties;Lnet/sf/saxon/event/Receiver;Z)Lnet/sf/saxon/event/Receiver;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/serialize/SerializationProperties;->getCharacterMapIndex()Lnet/sf/saxon/serialize/CharacterMapIndex;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/serialize/SerializationProperties;->getProperties()Ljava/util/Properties;

    move-result-object p1

    const-string v1, "use-character-maps"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1, p2, p0}, Lnet/sf/saxon/serialize/CharacterMapIndex;->makeCharacterMapExpander(Ljava/lang/String;Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/SerializerFactory;)Lnet/sf/saxon/serialize/CharacterMapExpander;

    move-result-object p0

    invoke-virtual {p0, p3}, Lnet/sf/saxon/serialize/CharacterMapExpander;->setUseNullMarkers(Z)V

    return-object p0

    :cond_0
    return-object p2
.end method

.method public injectUnicodeNormalizer(Lnet/sf/saxon/serialize/SerializationProperties;Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/serialize/SerializationProperties;->getProperties()Ljava/util/Properties;

    move-result-object p1

    const-string v0, "normalization-form"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/lib/SerializerFactory;->newUnicodeNormalizer(Lnet/sf/saxon/event/Receiver;Ljava/util/Properties;)Lnet/sf/saxon/event/ProxyReceiver;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p2
.end method

.method public final j(Lnet/sf/saxon/event/PipelineConfiguration;Ljava/util/Properties;)Lnet/sf/saxon/event/ProxyReceiver;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "normalization-form"

    invoke-virtual {p2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/event/Sink;

    invoke-direct {v0, p1}, Lnet/sf/saxon/event/Sink;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    invoke-virtual {p0, v0, p2}, Lnet/sf/saxon/lib/SerializerFactory;->newUnicodeNormalizer(Lnet/sf/saxon/event/Receiver;Ljava/util/Properties;)Lnet/sf/saxon/event/ProxyReceiver;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public makeSequenceNormalizer(Lnet/sf/saxon/event/Receiver;Ljava/util/Properties;)Lnet/sf/saxon/event/SequenceReceiver;
    .locals 1

    const-string p0, "method"

    invoke-virtual {p2, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "json"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "adaptive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/event/Receiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object p0

    const-string v0, "item-separator"

    invoke-virtual {p2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string v0, "#absent"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lnet/sf/saxon/event/SequenceNormalizerWithItemSeparator;

    invoke-static {p2}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lnet/sf/saxon/event/SequenceNormalizerWithItemSeparator;-><init>(Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/str/UnicodeString;)V

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v0, Lnet/sf/saxon/event/SequenceNormalizerWithSpaceSeparator;

    invoke-direct {v0, p1}, Lnet/sf/saxon/event/SequenceNormalizerWithSpaceSeparator;-><init>(Lnet/sf/saxon/event/Receiver;)V

    :goto_1
    invoke-virtual {v0, p0}, Lnet/sf/saxon/event/SequenceReceiver;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    return-object v0

    :cond_3
    :goto_2
    instance-of p0, p1, Lnet/sf/saxon/event/SequenceReceiver;

    if-eqz p0, :cond_4

    check-cast p1, Lnet/sf/saxon/event/SequenceReceiver;

    goto :goto_3

    :cond_4
    new-instance p0, Lnet/sf/saxon/event/TreeReceiver;

    invoke-direct {p0, p1}, Lnet/sf/saxon/event/TreeReceiver;-><init>(Lnet/sf/saxon/event/Receiver;)V

    move-object p1, p0

    :goto_3
    return-object p1
.end method

.method public newAttributeSorter(Lnet/sf/saxon/event/Receiver;Ljava/util/Properties;)Lnet/sf/saxon/event/Receiver;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-object p1
.end method

.method public newCDATAFilter(Lnet/sf/saxon/event/Receiver;Ljava/util/Properties;)Lnet/sf/saxon/event/ProxyReceiver;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/serialize/CDATAFilter;

    invoke-direct {p0, p1}, Lnet/sf/saxon/serialize/CDATAFilter;-><init>(Lnet/sf/saxon/event/Receiver;)V

    invoke-virtual {p0, p2}, Lnet/sf/saxon/serialize/CDATAFilter;->setOutputProperties(Ljava/util/Properties;)V

    return-object p0
.end method

.method public newCharacterMapExpander(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/serialize/CharacterMapExpander;
    .locals 0

    new-instance p0, Lnet/sf/saxon/serialize/CharacterMapExpander;

    invoke-direct {p0, p1}, Lnet/sf/saxon/serialize/CharacterMapExpander;-><init>(Lnet/sf/saxon/event/Receiver;)V

    return-object p0
.end method

.method public newContentHandlerProxy()Lnet/sf/saxon/event/ContentHandlerProxy;
    .locals 0

    new-instance p0, Lnet/sf/saxon/event/ContentHandlerProxy;

    invoke-direct {p0}, Lnet/sf/saxon/event/ContentHandlerProxy;-><init>()V

    return-object p0
.end method

.method public newHTMLEmitter(Ljava/util/Properties;)Lnet/sf/saxon/serialize/Emitter;
    .locals 0

    invoke-static {p1}, Lnet/sf/saxon/lib/SaxonOutputKeys;->isHtmlVersion5(Ljava/util/Properties;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lnet/sf/saxon/serialize/HTML50Emitter;

    invoke-direct {p0}, Lnet/sf/saxon/serialize/HTML50Emitter;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/serialize/HTML40Emitter;

    invoke-direct {p0}, Lnet/sf/saxon/serialize/HTML40Emitter;-><init>()V

    :goto_0
    return-object p0
.end method

.method public newHTMLIndenter(Lnet/sf/saxon/event/Receiver;Ljava/util/Properties;)Lnet/sf/saxon/event/ProxyReceiver;
    .locals 1

    new-instance p0, Lnet/sf/saxon/serialize/HTMLIndenter;

    const-string v0, "html"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/serialize/HTMLIndenter;-><init>(Lnet/sf/saxon/event/Receiver;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lnet/sf/saxon/serialize/HTMLIndenter;->setOutputProperties(Ljava/util/Properties;)V

    return-object p0
.end method

.method public newHTMLMetaTagAdjuster(Lnet/sf/saxon/event/Receiver;Ljava/util/Properties;)Lnet/sf/saxon/serialize/MetaTagAdjuster;
    .locals 0

    new-instance p0, Lnet/sf/saxon/serialize/MetaTagAdjuster;

    invoke-direct {p0, p1}, Lnet/sf/saxon/serialize/MetaTagAdjuster;-><init>(Lnet/sf/saxon/event/Receiver;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/MetaTagAdjuster;->setIsXHTML(Z)V

    invoke-virtual {p0, p2}, Lnet/sf/saxon/serialize/MetaTagAdjuster;->setOutputProperties(Ljava/util/Properties;)V

    return-object p0
.end method

.method public newHTMLURIEscaper(Lnet/sf/saxon/event/Receiver;Ljava/util/Properties;)Lnet/sf/saxon/event/ProxyReceiver;
    .locals 0

    new-instance p0, Lnet/sf/saxon/serialize/HTMLURIEscaper;

    invoke-direct {p0, p1}, Lnet/sf/saxon/serialize/HTMLURIEscaper;-><init>(Lnet/sf/saxon/event/Receiver;)V

    return-object p0
.end method

.method public newNamespaceSorter(Lnet/sf/saxon/event/Receiver;Ljava/util/Properties;)Lnet/sf/saxon/event/Receiver;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-object p1
.end method

.method public newSequenceWrapper(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/query/SequenceWrapper;
    .locals 0

    new-instance p0, Lnet/sf/saxon/query/SequenceWrapper;

    invoke-direct {p0, p1}, Lnet/sf/saxon/query/SequenceWrapper;-><init>(Lnet/sf/saxon/event/Receiver;)V

    return-object p0
.end method

.method public newTEXTEmitter()Lnet/sf/saxon/serialize/Emitter;
    .locals 0

    new-instance p0, Lnet/sf/saxon/serialize/TEXTEmitter;

    invoke-direct {p0}, Lnet/sf/saxon/serialize/TEXTEmitter;-><init>()V

    return-object p0
.end method

.method public newUncommittedSerializer(Ljavax/xml/transform/Result;Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/serialize/UncommittedSerializer;
    .locals 0

    new-instance p0, Lnet/sf/saxon/serialize/UncommittedSerializer;

    invoke-direct {p0, p1, p2, p3}, Lnet/sf/saxon/serialize/UncommittedSerializer;-><init>(Ljavax/xml/transform/Result;Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/serialize/SerializationProperties;)V

    return-object p0
.end method

.method public newUnicodeNormalizer(Lnet/sf/saxon/event/Receiver;Ljava/util/Properties;)Lnet/sf/saxon/event/ProxyReceiver;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string p0, "normalization-form"

    invoke-virtual {p2, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Lnet/sf/saxon/serialize/UnicodeNormalizer;

    invoke-direct {p2, p0, p1}, Lnet/sf/saxon/serialize/UnicodeNormalizer;-><init>(Ljava/lang/String;Lnet/sf/saxon/event/Receiver;)V

    return-object p2
.end method

.method public newXHTMLEmitter(Ljava/util/Properties;)Lnet/sf/saxon/serialize/Emitter;
    .locals 0

    invoke-static {p1}, Lnet/sf/saxon/lib/SaxonOutputKeys;->isXhtmlHtmlVersion5(Ljava/util/Properties;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lnet/sf/saxon/serialize/XHTML5Emitter;

    invoke-direct {p0}, Lnet/sf/saxon/serialize/XHTML5Emitter;-><init>()V

    return-object p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/serialize/XHTML1Emitter;

    invoke-direct {p0}, Lnet/sf/saxon/serialize/XHTML1Emitter;-><init>()V

    return-object p0
.end method

.method public newXHTMLIndenter(Lnet/sf/saxon/event/Receiver;Ljava/util/Properties;)Lnet/sf/saxon/event/ProxyReceiver;
    .locals 1

    const-string p0, "html-version"

    invoke-virtual {p2, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "xhtml5"

    goto :goto_0

    :cond_0
    const-string p0, "xhtml"

    :goto_0
    new-instance v0, Lnet/sf/saxon/serialize/HTMLIndenter;

    invoke-direct {v0, p1, p0}, Lnet/sf/saxon/serialize/HTMLIndenter;-><init>(Lnet/sf/saxon/event/Receiver;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lnet/sf/saxon/serialize/HTMLIndenter;->setOutputProperties(Ljava/util/Properties;)V

    return-object v0
.end method

.method public newXHTMLMetaTagAdjuster(Lnet/sf/saxon/event/Receiver;Ljava/util/Properties;)Lnet/sf/saxon/serialize/MetaTagAdjuster;
    .locals 0

    new-instance p0, Lnet/sf/saxon/serialize/MetaTagAdjuster;

    invoke-direct {p0, p1}, Lnet/sf/saxon/serialize/MetaTagAdjuster;-><init>(Lnet/sf/saxon/event/Receiver;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/MetaTagAdjuster;->setIsXHTML(Z)V

    invoke-virtual {p0, p2}, Lnet/sf/saxon/serialize/MetaTagAdjuster;->setOutputProperties(Ljava/util/Properties;)V

    return-object p0
.end method

.method public newXHTMLURIEscaper(Lnet/sf/saxon/event/Receiver;Ljava/util/Properties;)Lnet/sf/saxon/event/ProxyReceiver;
    .locals 0

    new-instance p0, Lnet/sf/saxon/serialize/XHTMLURIEscaper;

    invoke-direct {p0, p1}, Lnet/sf/saxon/serialize/XHTMLURIEscaper;-><init>(Lnet/sf/saxon/event/Receiver;)V

    return-object p0
.end method

.method public newXML10ContentChecker(Lnet/sf/saxon/event/Receiver;Ljava/util/Properties;)Lnet/sf/saxon/event/ProxyReceiver;
    .locals 0

    new-instance p0, Lnet/sf/saxon/serialize/XML10ContentChecker;

    invoke-direct {p0, p1}, Lnet/sf/saxon/serialize/XML10ContentChecker;-><init>(Lnet/sf/saxon/event/Receiver;)V

    return-object p0
.end method

.method public newXMLEmitter(Ljava/util/Properties;)Lnet/sf/saxon/serialize/Emitter;
    .locals 0

    new-instance p0, Lnet/sf/saxon/serialize/XMLEmitter;

    invoke-direct {p0}, Lnet/sf/saxon/serialize/XMLEmitter;-><init>()V

    return-object p0
.end method

.method public newXMLIndenter(Lnet/sf/saxon/serialize/XMLEmitter;Ljava/util/Properties;)Lnet/sf/saxon/event/ProxyReceiver;
    .locals 0

    new-instance p0, Lnet/sf/saxon/serialize/XMLIndenter;

    invoke-direct {p0, p1}, Lnet/sf/saxon/serialize/XMLIndenter;-><init>(Lnet/sf/saxon/serialize/XMLEmitter;)V

    invoke-virtual {p0, p2}, Lnet/sf/saxon/serialize/XMLIndenter;->setOutputProperties(Ljava/util/Properties;)V

    return-object p0
.end method

.method public prepareNextStylesheet(Lnet/sf/saxon/event/PipelineConfiguration;Ljava/lang/String;Ljava/lang/String;Ljavax/xml/transform/Result;)Lnet/sf/saxon/event/SequenceReceiver;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/event/PipelineConfiguration;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    const-string p1, "saxon:next-in-chain"

    const/4 p2, -0x1

    const/16 p3, 0x8

    invoke-virtual {p0, p3, p1, p2}, Lnet/sf/saxon/Configuration;->checkLicensedFeature(ILjava/lang/String;I)V

    const/4 p0, 0x0

    return-object p0
.end method
