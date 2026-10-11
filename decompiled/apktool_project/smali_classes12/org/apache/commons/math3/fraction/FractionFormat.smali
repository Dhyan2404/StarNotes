.class public Lorg/apache/commons/math3/fraction/FractionFormat;
.super Lorg/apache/commons/math3/fraction/AbstractFormat;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x29c0e46fb61745c3L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math3/fraction/AbstractFormat;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/text/NumberFormat;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/fraction/AbstractFormat;-><init>(Ljava/text/NumberFormat;)V

    return-void
.end method

.method public constructor <init>(Ljava/text/NumberFormat;Ljava/text/NumberFormat;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/fraction/AbstractFormat;-><init>(Ljava/text/NumberFormat;Ljava/text/NumberFormat;)V

    return-void
.end method

.method public static formatFraction(Lorg/apache/commons/math3/fraction/Fraction;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/apache/commons/math3/fraction/FractionFormat;->getImproperInstance()Lorg/apache/commons/math3/fraction/FractionFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    invoke-static {}, Ljava/text/NumberFormat;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultNumberFormat()Ljava/text/NumberFormat;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/math3/fraction/AbstractFormat;->getDefaultNumberFormat(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getImproperInstance()Lorg/apache/commons/math3/fraction/FractionFormat;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/math3/fraction/FractionFormat;->getImproperInstance(Ljava/util/Locale;)Lorg/apache/commons/math3/fraction/FractionFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getImproperInstance(Ljava/util/Locale;)Lorg/apache/commons/math3/fraction/FractionFormat;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/math3/fraction/FractionFormat;

    invoke-static {p0}, Lorg/apache/commons/math3/fraction/AbstractFormat;->getDefaultNumberFormat(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/fraction/FractionFormat;-><init>(Ljava/text/NumberFormat;)V

    return-object v0
.end method

.method public static getProperInstance()Lorg/apache/commons/math3/fraction/FractionFormat;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/math3/fraction/FractionFormat;->getProperInstance(Ljava/util/Locale;)Lorg/apache/commons/math3/fraction/FractionFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getProperInstance(Ljava/util/Locale;)Lorg/apache/commons/math3/fraction/FractionFormat;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/math3/fraction/ProperFractionFormat;

    invoke-static {p0}, Lorg/apache/commons/math3/fraction/AbstractFormat;->getDefaultNumberFormat(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/fraction/ProperFractionFormat;-><init>(Ljava/text/NumberFormat;)V

    return-object v0
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/fraction/FractionConversionException;,
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 6
    instance-of v0, p1, Lorg/apache/commons/math3/fraction/Fraction;

    if-eqz v0, :cond_0

    .line 7
    check-cast p1, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/fraction/FractionFormat;->format(Lorg/apache/commons/math3/fraction/Fraction;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p0

    goto :goto_0

    .line 8
    :cond_0
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 9
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(D)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/math3/fraction/FractionFormat;->format(Lorg/apache/commons/math3/fraction/Fraction;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p0

    :goto_0
    return-object p0

    .line 10
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CANNOT_FORMAT_OBJECT_TO_FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public format(Lorg/apache/commons/math3/fraction/Fraction;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 2
    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/AbstractFormat;->getNumeratorFormat()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/fraction/Fraction;->getNumerator()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, p2, p3}, Ljava/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    const-string v0, " / "

    .line 4
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/AbstractFormat;->getDenominatorFormat()Ljava/text/NumberFormat;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/commons/math3/fraction/Fraction;->getDenominator()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public bridge synthetic parse(Ljava/lang/String;)Ljava/lang/Number;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/FractionFormat;->parse(Ljava/lang/String;)Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/fraction/FractionFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object p0

    return-object p0
.end method

.method public parse(Ljava/lang/String;)Lorg/apache/commons/math3/fraction/Fraction;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathParseException;
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 4
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/fraction/FractionFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object p0

    .line 5
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/MathParseException;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v0

    const-class v1, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/exception/MathParseException;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    throw p0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/fraction/Fraction;
    .locals 6

    .line 7
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 8
    invoke-static {p1, p2}, Lorg/apache/commons/math3/fraction/AbstractFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 9
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/AbstractFormat;->getNumeratorFormat()Ljava/text/NumberFormat;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 10
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v2

    .line 11
    :cond_0
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    .line 12
    invoke-static {p1, p2}, Lorg/apache/commons/math3/fraction/AbstractFormat;->parseNextCharacter(Ljava/lang/String;Ljava/text/ParsePosition;)C

    move-result v4

    if-eqz v4, :cond_3

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_1

    .line 13
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 14
    invoke-virtual {p2, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-object v2

    .line 15
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/commons/math3/fraction/AbstractFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 16
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/AbstractFormat;->getDenominatorFormat()Ljava/text/NumberFormat;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object p0

    if-nez p0, :cond_2

    .line 17
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v2

    .line 18
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-direct {p1, p2, p0}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    return-object p1

    .line 19
    :cond_3
    new-instance p0, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    return-object p0
.end method
