.class public Lnet/sf/saxon/expr/sort/AlphanumericCollator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/StringCollator;


# static fields
.field public static final PREFIX:Ljava/lang/String; = "http://saxon.sf.net/collation/alphaNumeric?base="

.field public static final b:Lnet/sf/saxon/regex/ARegularExpression;


# instance fields
.field public final a:Lnet/sf/saxon/lib/StringCollator;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "\\d+"

    const-string v1, ""

    invoke-static {v0, v1}, Lnet/sf/saxon/regex/ARegularExpression;->compile(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/regex/ARegularExpression;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/expr/sort/AlphanumericCollator;->b:Lnet/sf/saxon/regex/ARegularExpression;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/lib/StringCollator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/AlphanumericCollator;->a:Lnet/sf/saxon/lib/StringCollator;

    return-void
.end method

.method public static a(Ljava/io/ByteArrayOutputStream;B)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method


# virtual methods
.method public compareStrings(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)I
    .locals 4

    sget-object v0, Lnet/sf/saxon/expr/sort/AlphanumericCollator;->b:Lnet/sf/saxon/regex/ARegularExpression;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/regex/ARegularExpression;->analyze(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/regex/RegexIterator;

    move-result-object p1

    invoke-virtual {v0, p2}, Lnet/sf/saxon/regex/ARegularExpression;->analyze(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/regex/RegexIterator;

    move-result-object p2

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/regex/RegexIterator;->next()Lnet/sf/saxon/value/StringValue;

    move-result-object v0

    invoke-interface {p2}, Lnet/sf/saxon/regex/RegexIterator;->next()Lnet/sf/saxon/value/StringValue;

    move-result-object v1

    if-nez v0, :cond_2

    if-nez v1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0

    :cond_2
    if-nez v1, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    invoke-interface {p1}, Lnet/sf/saxon/regex/RegexIterator;->isMatching()Z

    move-result v2

    invoke-interface {p2}, Lnet/sf/saxon/regex/RegexIterator;->isMatching()Z

    move-result v3

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    new-instance v2, Ljava/math/BigInteger;

    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/math/BigInteger;

    invoke-interface {v1}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_4
    if-eqz v2, :cond_5

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lnet/sf/saxon/value/StringValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    :goto_1
    if-eqz v3, :cond_6

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object v1

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Lnet/sf/saxon/value/StringValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    :goto_2
    iget-object v2, p0, Lnet/sf/saxon/expr/sort/AlphanumericCollator;->a:Lnet/sf/saxon/lib/StringCollator;

    invoke-interface {v2, v0, v1}, Lnet/sf/saxon/lib/StringCollator;->compareStrings(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0
.end method

.method public comparesEqual(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/sort/AlphanumericCollator;->compareStrings(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCollationKey(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/expr/sort/AtomicMatchKey;
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Lnet/sf/saxon/expr/sort/AlphanumericCollator;->b:Lnet/sf/saxon/regex/ARegularExpression;

    invoke-virtual {v1, p1}, Lnet/sf/saxon/regex/ARegularExpression;->analyze(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/regex/RegexIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lnet/sf/saxon/regex/RegexIterator;->next()Lnet/sf/saxon/value/StringValue;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lnet/sf/saxon/regex/RegexIterator;->isMatching()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-instance v2, Ljava/math/BigInteger;

    invoke-interface {v1}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    array-length v2, v1

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/sort/AlphanumericCollator;->a(Ljava/io/ByteArrayOutputStream;B)V

    int-to-byte v2, v2

    invoke-static {v0, v2}, Lnet/sf/saxon/expr/sort/AlphanumericCollator;->a(Ljava/io/ByteArrayOutputStream;B)V

    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lnet/sf/saxon/value/StringValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/expr/sort/AlphanumericCollator;->a:Lnet/sf/saxon/lib/StringCollator;

    invoke-static {v1, v2}, Lnet/sf/saxon/functions/CollationKeyFn;->getCollationKey(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/lib/StringCollator;)Lnet/sf/saxon/value/Base64BinaryValue;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/value/Base64BinaryValue;->getBinaryValue()[B

    move-result-object v1

    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    new-instance p0, Lnet/sf/saxon/value/Base64BinaryValue;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/value/Base64BinaryValue;-><init>([B)V

    return-object p0
.end method

.method public getCollationURI()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://saxon.sf.net/collation/alphaNumeric?base="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/AlphanumericCollator;->a:Lnet/sf/saxon/lib/StringCollator;

    invoke-interface {p0}, Lnet/sf/saxon/lib/StringCollator;->getCollationURI()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
