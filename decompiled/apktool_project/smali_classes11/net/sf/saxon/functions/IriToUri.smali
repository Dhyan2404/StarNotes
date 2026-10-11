.class public Lnet/sf/saxon/functions/IriToUri;
.super Lnet/sf/saxon/functions/ScalarSystemFunction;
.source "SourceFile"


# static fields
.field public static allowedASCII:[Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x80

    new-array v0, v0, [Z

    sput-object v0, Lnet/sf/saxon/functions/IriToUri;->allowedASCII:[Z

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    sget-object v0, Lnet/sf/saxon/functions/IriToUri;->allowedASCII:[Z

    const/16 v1, 0x7f

    const/4 v3, 0x1

    const/16 v4, 0x21

    invoke-static {v0, v4, v1, v3}, Ljava/util/Arrays;->fill([ZIIZ)V

    sget-object v0, Lnet/sf/saxon/functions/IriToUri;->allowedASCII:[Z

    const/16 v1, 0x22

    aput-boolean v2, v0, v1

    const/16 v1, 0x3c

    aput-boolean v2, v0, v1

    const/16 v1, 0x3e

    aput-boolean v2, v0, v1

    const/16 v1, 0x5c

    aput-boolean v2, v0, v1

    const/16 v1, 0x5e

    aput-boolean v2, v0, v1

    const/16 v1, 0x60

    aput-boolean v2, v0, v1

    const/16 v1, 0x7b

    aput-boolean v2, v0, v1

    const/16 v1, 0x7c

    aput-boolean v2, v0, v1

    const/16 v1, 0x7d

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/ScalarSystemFunction;-><init>()V

    return-void
.end method

.method public static a(Lnet/sf/saxon/z/IntIterator;)Z
    .locals 2

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v0

    const/16 v1, 0x7f

    if-ge v0, v1, :cond_1

    sget-object v1, Lnet/sf/saxon/functions/IriToUri;->allowedASCII:[Z

    aget-boolean v0, v1, v0

    if-nez v0, :cond_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static iriToUri(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/functions/IriToUri;->a(Lnet/sf/saxon/z/IntIterator;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    invoke-direct {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v1

    const/16 v2, 0x7f

    if-ge v1, v2, :cond_2

    sget-object v2, Lnet/sf/saxon/functions/IriToUri;->allowedASCII:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(I)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {v1, v0}, Lnet/sf/saxon/functions/EncodeForUri;->escapeChar(ILnet/sf/saxon/str/UnicodeBuilder;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public evaluate(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/value/StringValue;

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/functions/IriToUri;->iriToUri(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    return-object p0
.end method

.method public resultWhenEmpty()Lnet/sf/saxon/om/Sequence;
    .locals 0

    sget-object p0, Lnet/sf/saxon/value/StringValue;->EMPTY_STRING:Lnet/sf/saxon/value/StringValue;

    return-object p0
.end method
