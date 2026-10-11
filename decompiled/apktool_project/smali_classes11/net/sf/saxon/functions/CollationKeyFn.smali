.class public Lnet/sf/saxon/functions/CollationKeyFn;
.super Lnet/sf/saxon/functions/CollatingFunctionFixed;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/CollatingFunctionFixed;-><init>()V

    return-void
.end method

.method public static getCollationKey(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/lib/StringCollator;)Lnet/sf/saxon/value/Base64BinaryValue;
    .locals 0

    invoke-interface {p1, p0}, Lnet/sf/saxon/lib/StringCollator;->getCollationKey(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/expr/sort/AtomicMatchKey;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    instance-of p1, p0, Lnet/sf/saxon/value/Base64BinaryValue;

    if-eqz p1, :cond_0

    check-cast p0, Lnet/sf/saxon/value/Base64BinaryValue;

    return-object p0

    :cond_0
    instance-of p1, p0, Lnet/sf/saxon/value/StringValue;

    if-eqz p1, :cond_1

    check-cast p0, Lnet/sf/saxon/value/StringValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/StringValue;->getCodepointCollationKey()Lnet/sf/saxon/value/Base64BinaryValue;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Collation key must be Base64Binary"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public bridge synthetic call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/functions/CollationKeyFn;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/Base64BinaryValue;

    move-result-object p0

    return-object p0
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/Base64BinaryValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p1, 0x0

    .line 2
    aget-object p1, p2, p1

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/value/StringValue;

    .line 3
    invoke-virtual {p0}, Lnet/sf/saxon/functions/CollatingFunctionFixed;->getStringCollator()Lnet/sf/saxon/lib/StringCollator;

    move-result-object p0

    .line 4
    invoke-virtual {p1}, Lnet/sf/saxon/value/StringValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-static {p1, p0}, Lnet/sf/saxon/functions/CollationKeyFn;->getCollationKey(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/lib/StringCollator;)Lnet/sf/saxon/value/Base64BinaryValue;

    move-result-object p0

    return-object p0
.end method
