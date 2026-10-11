.class public Lnet/sf/saxon/s9api/XdmAtomicValue;
.super Lnet/sf/saxon/s9api/XdmItem;
.source "SourceFile"


# direct methods
.method public constructor <init>(B)V
    .locals 2

    int-to-long v0, p1

    .line 6
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->BYTE:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v0, v1, p1}, Lnet/sf/saxon/value/Int64Value;->makeDerived(JLnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/value/Int64Value;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/XdmAtomicValue;-><init>(Lnet/sf/saxon/value/AtomicValue;)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    .line 8
    new-instance v0, Lnet/sf/saxon/value/DoubleValue;

    invoke-direct {v0, p1, p2}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V

    invoke-direct {p0, v0}, Lnet/sf/saxon/s9api/XdmAtomicValue;-><init>(Lnet/sf/saxon/value/AtomicValue;)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 9
    new-instance v0, Lnet/sf/saxon/value/FloatValue;

    invoke-direct {v0, p1}, Lnet/sf/saxon/value/FloatValue;-><init>(F)V

    invoke-direct {p0, v0}, Lnet/sf/saxon/s9api/XdmAtomicValue;-><init>(Lnet/sf/saxon/value/AtomicValue;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    int-to-long v0, p1

    .line 4
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->INT:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v0, v1, p1}, Lnet/sf/saxon/value/Int64Value;->makeDerived(JLnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/value/Int64Value;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/XdmAtomicValue;-><init>(Lnet/sf/saxon/value/AtomicValue;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 3
    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->LONG:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {p1, p2, v0}, Lnet/sf/saxon/value/Int64Value;->makeDerived(JLnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/value/Int64Value;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/XdmAtomicValue;-><init>(Lnet/sf/saxon/value/AtomicValue;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 10
    new-instance v0, Lnet/sf/saxon/value/StringValue;

    invoke-direct {v0, p1}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lnet/sf/saxon/s9api/XdmAtomicValue;-><init>(Lnet/sf/saxon/value/AtomicValue;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/sf/saxon/s9api/ItemType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    .line 18
    invoke-static {p1, p2}, Lnet/sf/saxon/s9api/XdmAtomicValue;->a(Ljava/lang/String;Lnet/sf/saxon/s9api/ItemType;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/XdmItem;-><init>(Lnet/sf/saxon/om/Item;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigDecimal;)V
    .locals 1

    .line 7
    new-instance v0, Lnet/sf/saxon/value/BigDecimalValue;

    invoke-direct {v0, p1}, Lnet/sf/saxon/value/BigDecimalValue;-><init>(Ljava/math/BigDecimal;)V

    invoke-direct {p0, v0}, Lnet/sf/saxon/s9api/XdmAtomicValue;-><init>(Lnet/sf/saxon/value/AtomicValue;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1

    .line 11
    new-instance v0, Lnet/sf/saxon/value/AnyURIValue;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/sf/saxon/value/AnyURIValue;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lnet/sf/saxon/s9api/XdmAtomicValue;-><init>(Lnet/sf/saxon/value/AtomicValue;)V

    return-void
.end method

.method public constructor <init>(Ljava/time/Instant;)V
    .locals 0

    .line 13
    invoke-static {p1}, Lnet/sf/saxon/value/DateTimeValue;->fromJavaInstant(Ljava/time/Instant;)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/XdmAtomicValue;-><init>(Lnet/sf/saxon/value/AtomicValue;)V

    return-void
.end method

.method public constructor <init>(Ljava/time/LocalDate;)V
    .locals 1

    .line 17
    new-instance v0, Lnet/sf/saxon/value/DateValue;

    invoke-direct {v0, p1}, Lnet/sf/saxon/value/DateValue;-><init>(Ljava/time/LocalDate;)V

    invoke-direct {p0, v0}, Lnet/sf/saxon/s9api/XdmAtomicValue;-><init>(Lnet/sf/saxon/value/AtomicValue;)V

    return-void
.end method

.method public constructor <init>(Ljava/time/LocalDateTime;)V
    .locals 0

    .line 16
    invoke-static {p1}, Lnet/sf/saxon/value/DateTimeValue;->fromLocalDateTime(Ljava/time/LocalDateTime;)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/XdmAtomicValue;-><init>(Lnet/sf/saxon/value/AtomicValue;)V

    return-void
.end method

.method public constructor <init>(Ljava/time/OffsetDateTime;)V
    .locals 0

    .line 15
    invoke-static {p1}, Lnet/sf/saxon/value/DateTimeValue;->fromOffsetDateTime(Ljava/time/OffsetDateTime;)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/XdmAtomicValue;-><init>(Lnet/sf/saxon/value/AtomicValue;)V

    return-void
.end method

.method public constructor <init>(Ljava/time/ZonedDateTime;)V
    .locals 0

    .line 14
    invoke-static {p1}, Lnet/sf/saxon/value/DateTimeValue;->fromZonedDateTime(Ljava/time/ZonedDateTime;)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/XdmAtomicValue;-><init>(Lnet/sf/saxon/value/AtomicValue;)V

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/s9api/QName;)V
    .locals 2

    .line 12
    new-instance v0, Lnet/sf/saxon/value/QNameValue;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->QNAME:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {v0, p1, v1}, Lnet/sf/saxon/value/QNameValue;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/type/AtomicType;)V

    invoke-direct {p0, v0}, Lnet/sf/saxon/s9api/XdmAtomicValue;-><init>(Lnet/sf/saxon/value/AtomicValue;)V

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/value/AtomicValue;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/XdmItem;-><init>(Lnet/sf/saxon/om/Item;)V

    return-void
.end method

.method public constructor <init>(S)V
    .locals 2

    int-to-long v0, p1

    .line 5
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->SHORT:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v0, v1, p1}, Lnet/sf/saxon/value/Int64Value;->makeDerived(JLnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/value/Int64Value;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/XdmAtomicValue;-><init>(Lnet/sf/saxon/value/AtomicValue;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-static {p1}, Lnet/sf/saxon/value/BooleanValue;->get(Z)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/XdmAtomicValue;-><init>(Lnet/sf/saxon/value/AtomicValue;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lnet/sf/saxon/s9api/ItemType;)Lnet/sf/saxon/value/AtomicValue;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/ItemType;->getUnderlyingItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/type/ItemType;->isPlainType()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lnet/sf/saxon/type/AtomicType;

    invoke-interface {v1}, Lnet/sf/saxon/type/AtomicType;->isAbstract()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Lnet/sf/saxon/type/HyperType;->isNamespaceSensitive()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    check-cast v0, Lnet/sf/saxon/type/AtomicType;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/ItemType;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object p1

    invoke-interface {v0, p1}, Lnet/sf/saxon/type/AtomicType;->getStringConverter(Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/StringConverter;

    move-result-object p1

    invoke-static {p0}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/type/StringConverter;->convertString(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/type/ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Lnet/sf/saxon/s9api/SaxonApiException;

    const-string p1, "Requested type is namespace-sensitive"

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lnet/sf/saxon/s9api/SaxonApiException;

    const-string p1, "Requested type is an abstract type"

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lnet/sf/saxon/s9api/SaxonApiException;

    const-string p1, "Requested type is not atomic"

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static makeAtomicValue(Ljava/lang/Object;)Lnet/sf/saxon/s9api/XdmAtomicValue;
    .locals 3

    instance-of v0, p0, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v0, :cond_0

    new-instance v0, Lnet/sf/saxon/s9api/XdmAtomicValue;

    check-cast p0, Lnet/sf/saxon/value/AtomicValue;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/XdmAtomicValue;-><init>(Lnet/sf/saxon/value/AtomicValue;)V

    return-object v0

    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    new-instance v0, Lnet/sf/saxon/s9api/XdmAtomicValue;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/XdmAtomicValue;-><init>(Z)V

    return-object v0

    :cond_1
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    new-instance v0, Lnet/sf/saxon/s9api/XdmAtomicValue;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/XdmAtomicValue;-><init>(I)V

    return-object v0

    :cond_2
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_3

    new-instance v0, Lnet/sf/saxon/s9api/XdmAtomicValue;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/s9api/XdmAtomicValue;-><init>(J)V

    return-object v0

    :cond_3
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_4

    new-instance v0, Lnet/sf/saxon/s9api/XdmAtomicValue;

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/XdmAtomicValue;-><init>(S)V

    return-object v0

    :cond_4
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_5

    new-instance v0, Lnet/sf/saxon/s9api/XdmAtomicValue;

    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/XdmAtomicValue;-><init>(I)V

    return-object v0

    :cond_5
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_6

    new-instance v0, Lnet/sf/saxon/s9api/XdmAtomicValue;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/XdmAtomicValue;-><init>(B)V

    return-object v0

    :cond_6
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_7

    new-instance v0, Lnet/sf/saxon/s9api/XdmAtomicValue;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/XdmAtomicValue;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_7
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_8

    new-instance v0, Lnet/sf/saxon/s9api/XdmAtomicValue;

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/s9api/XdmAtomicValue;-><init>(D)V

    return-object v0

    :cond_8
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_9

    new-instance v0, Lnet/sf/saxon/s9api/XdmAtomicValue;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/XdmAtomicValue;-><init>(F)V

    return-object v0

    :cond_9
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_a

    new-instance v0, Lnet/sf/saxon/s9api/XdmAtomicValue;

    check-cast p0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/XdmAtomicValue;-><init>(Ljava/math/BigDecimal;)V

    return-object v0

    :cond_a
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_b

    new-instance v0, Lnet/sf/saxon/s9api/XdmAtomicValue;

    check-cast p0, Ljava/math/BigInteger;

    invoke-static {p0}, Lnet/sf/saxon/value/IntegerValue;->makeIntegerValue(Ljava/math/BigInteger;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/XdmAtomicValue;-><init>(Lnet/sf/saxon/value/AtomicValue;)V

    return-object v0

    :cond_b
    instance-of v0, p0, Ljava/net/URI;

    if-eqz v0, :cond_c

    new-instance v0, Lnet/sf/saxon/s9api/XdmAtomicValue;

    check-cast p0, Ljava/net/URI;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/XdmAtomicValue;-><init>(Ljava/net/URI;)V

    return-object v0

    :cond_c
    instance-of v0, p0, Lnet/sf/saxon/s9api/QName;

    if-eqz v0, :cond_d

    new-instance v0, Lnet/sf/saxon/s9api/XdmAtomicValue;

    check-cast p0, Lnet/sf/saxon/s9api/QName;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/XdmAtomicValue;-><init>(Lnet/sf/saxon/s9api/QName;)V

    return-object v0

    :cond_d
    instance-of v0, p0, Ljava/time/ZonedDateTime;

    if-eqz v0, :cond_e

    new-instance v0, Lnet/sf/saxon/s9api/XdmAtomicValue;

    check-cast p0, Ljava/time/ZonedDateTime;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/XdmAtomicValue;-><init>(Ljava/time/ZonedDateTime;)V

    return-object v0

    :cond_e
    instance-of v0, p0, Ljava/time/LocalDateTime;

    if-eqz v0, :cond_f

    new-instance v0, Lnet/sf/saxon/s9api/XdmAtomicValue;

    check-cast p0, Ljava/time/LocalDateTime;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/XdmAtomicValue;-><init>(Ljava/time/LocalDateTime;)V

    return-object v0

    :cond_f
    instance-of v0, p0, Ljava/time/LocalDate;

    if-eqz v0, :cond_10

    new-instance v0, Lnet/sf/saxon/s9api/XdmAtomicValue;

    check-cast p0, Ljava/time/LocalDate;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/XdmAtomicValue;-><init>(Ljava/time/LocalDate;)V

    return-object v0

    :cond_10
    instance-of v0, p0, Lnet/sf/saxon/s9api/XdmAtomicValue;

    if-eqz v0, :cond_11

    check-cast p0, Lnet/sf/saxon/s9api/XdmAtomicValue;

    return-object p0

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/s9api/XdmAtomicValue;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmAtomicValue;->getUnderlyingValue()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->asMapKey()Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    move-result-object p0

    check-cast p1, Lnet/sf/saxon/s9api/XdmAtomicValue;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmAtomicValue;->getUnderlyingValue()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->asMapKey()Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getBooleanValue()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmAtomicValue;->getUnderlyingValue()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/value/BooleanValue;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/value/BooleanValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/BooleanValue;->getBooleanValue()Z

    move-result p0

    return p0

    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/value/NumericValue;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->isNaN()Z

    move-result v0

    if-nez v0, :cond_1

    check-cast p0, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/NumericValue;->signum()I

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    instance-of v0, p0, Lnet/sf/saxon/value/StringValue;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/Whitespace;->trim(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    return v1

    :cond_5
    new-instance p0, Lnet/sf/saxon/s9api/SaxonApiException;

    const-string v0, "Cannot cast item to a boolean"

    invoke-direct {p0, v0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDecimalValue()Ljava/math/BigDecimal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmAtomicValue;->getUnderlyingValue()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/value/BooleanValue;

    if-eqz v0, :cond_1

    check-cast p0, Lnet/sf/saxon/value/BooleanValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/BooleanValue;->getBooleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lnet/sf/saxon/value/NumericValue;

    const-string v1, "Cannot cast item to a decimal"

    if-eqz v0, :cond_2

    :try_start_0
    check-cast p0, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/NumericValue;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p0, v1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    instance-of v0, p0, Lnet/sf/saxon/value/StringValue;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/math/BigDecimal;

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_3
    new-instance p0, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p0, v1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDoubleValue()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmAtomicValue;->getUnderlyingValue()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/value/BooleanValue;

    if-eqz v0, :cond_1

    check-cast p0, Lnet/sf/saxon/value/BooleanValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/BooleanValue;->getBooleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_0
    return-wide v0

    :cond_1
    instance-of v0, p0, Lnet/sf/saxon/value/NumericValue;

    if-eqz v0, :cond_2

    check-cast p0, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/NumericValue;->getDoubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_2
    instance-of v0, p0, Lnet/sf/saxon/value/StringValue;

    if-eqz v0, :cond_3

    :try_start_0
    invoke-static {}, Lnet/sf/saxon/value/StringToDouble11;->getInstance()Lnet/sf/saxon/value/StringToDouble11;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/type/StringToDouble;->stringToNumber(Lnet/sf/saxon/str/UnicodeString;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance p0, Lnet/sf/saxon/s9api/SaxonApiException;

    const-string v0, "Cannot cast item to a double"

    invoke-direct {p0, v0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getInstant()Ljava/time/Instant;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmAtomicValue;->getUnderlyingValue()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/value/DateTimeValue;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/value/DateTimeValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->hasTimezone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/value/DateTimeValue;->toJavaInstant()Ljava/time/Instant;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLocalDate()Ljava/time/LocalDate;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmAtomicValue;->getUnderlyingValue()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/value/DateValue;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/value/DateValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/DateValue;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLocalDateTime()Ljava/time/LocalDateTime;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmAtomicValue;->getUnderlyingValue()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/value/DateTimeValue;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/value/DateTimeValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/DateTimeValue;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLongValue()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmAtomicValue;->getUnderlyingValue()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/value/BooleanValue;

    if-eqz v0, :cond_1

    check-cast p0, Lnet/sf/saxon/value/BooleanValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/BooleanValue;->getBooleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    :goto_0
    return-wide v0

    :cond_1
    instance-of v0, p0, Lnet/sf/saxon/value/NumericValue;

    const-string v1, "Cannot cast item to an integer"

    if-eqz v0, :cond_2

    :try_start_0
    check-cast p0, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/NumericValue;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    new-instance p0, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p0, v1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    instance-of v0, p0, Lnet/sf/saxon/value/StringValue;

    if-eqz v0, :cond_3

    invoke-static {}, Lnet/sf/saxon/type/StringToDouble;->getInstance()Lnet/sf/saxon/type/StringToDouble;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/type/StringToDouble;->stringToNumber(Lnet/sf/saxon/str/UnicodeString;)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0

    :cond_3
    new-instance p0, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p0, v1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getOffsetDateTime()Ljava/time/OffsetDateTime;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmAtomicValue;->getUnderlyingValue()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/value/DateTimeValue;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/value/DateTimeValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->hasTimezone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/value/DateTimeValue;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPrimitiveTypeName()Lnet/sf/saxon/s9api/QName;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmAtomicValue;->getUnderlyingValue()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    invoke-virtual {p0}, Lnet/sf/saxon/type/BuiltInAtomicType;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/QName;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    return-object v0
.end method

.method public getQNameValue()Lnet/sf/saxon/s9api/QName;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmAtomicValue;->getUnderlyingValue()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/value/QualifiedNameValue;

    if-eqz v0, :cond_0

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    check-cast p0, Lnet/sf/saxon/value/QualifiedNameValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/QualifiedNameValue;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/QName;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTypeName()Lnet/sf/saxon/s9api/QName;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmAtomicValue;->getUnderlyingValue()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaType;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/QName;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    return-object v0
.end method

.method public bridge synthetic getUnderlyingValue()Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmAtomicValue;->getUnderlyingValue()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getUnderlyingValue()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmAtomicValue;->getUnderlyingValue()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public getUnderlyingValue()Lnet/sf/saxon/value/AtomicValue;
    .locals 0

    .line 3
    invoke-super {p0}, Lnet/sf/saxon/s9api/XdmItem;->getUnderlyingValue()Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/AtomicValue;

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmAtomicValue;->getUnderlyingValue()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/value/StringValue;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/value/IntegerValue;

    if-eqz v0, :cond_1

    check-cast p0, Lnet/sf/saxon/value/IntegerValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/IntegerValue;->asBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Lnet/sf/saxon/value/DoubleValue;

    if-eqz v0, :cond_2

    check-cast p0, Lnet/sf/saxon/value/DoubleValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/DoubleValue;->getDoubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p0, Lnet/sf/saxon/value/FloatValue;

    if-eqz v0, :cond_3

    check-cast p0, Lnet/sf/saxon/value/FloatValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/FloatValue;->getFloatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v0, p0, Lnet/sf/saxon/value/BooleanValue;

    if-eqz v0, :cond_4

    check-cast p0, Lnet/sf/saxon/value/BooleanValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/BooleanValue;->getBooleanValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of v0, p0, Lnet/sf/saxon/value/BigDecimalValue;

    if-eqz v0, :cond_5

    check-cast p0, Lnet/sf/saxon/value/BigDecimalValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/BigDecimalValue;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_5
    instance-of v0, p0, Lnet/sf/saxon/value/DateTimeValue;

    if-eqz v0, :cond_7

    check-cast p0, Lnet/sf/saxon/value/DateTimeValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->hasTimezone()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lnet/sf/saxon/value/DateTimeValue;->toZonedDateTime()Ljava/time/ZonedDateTime;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-virtual {p0}, Lnet/sf/saxon/value/DateTimeValue;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    :cond_7
    instance-of v0, p0, Lnet/sf/saxon/value/DateValue;

    if-eqz v0, :cond_8

    check-cast p0, Lnet/sf/saxon/value/DateValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/DateValue;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    :cond_8
    instance-of v0, p0, Lnet/sf/saxon/value/QNameValue;

    if-eqz v0, :cond_9

    check-cast p0, Lnet/sf/saxon/value/QNameValue;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    invoke-virtual {p0}, Lnet/sf/saxon/value/QualifiedNameValue;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/value/QualifiedNameValue;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sf/saxon/value/QualifiedNameValue;->getLocalName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_9
    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public getZonedDateTime()Ljava/time/ZonedDateTime;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmAtomicValue;->getUnderlyingValue()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/value/DateTimeValue;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/value/DateTimeValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->hasTimezone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/value/DateTimeValue;->toZonedDateTime()Ljava/time/ZonedDateTime;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmAtomicValue;->getUnderlyingValue()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->asMapKey()Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmItem;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
