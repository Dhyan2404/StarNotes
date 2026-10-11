.class public abstract Lnet/sf/saxon/value/NumericValue;
.super Lnet/sf/saxon/value/AtomicValue;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/sort/XPathComparable;
.implements Lnet/sf/saxon/expr/sort/AtomicMatchKey;
.implements Lnet/sf/saxon/value/ContextFreeAtomicValue;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/value/AtomicValue;-><init>()V

    return-void
.end method

.method public static isInteger(Lnet/sf/saxon/value/AtomicValue;)Z
    .locals 0

    instance-of p0, p0, Lnet/sf/saxon/value/IntegerValue;

    return p0
.end method

.method public static parseNumber(Ljava/lang/String;)Lnet/sf/saxon/value/NumericValue;
    .locals 3

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_4

    const/16 v0, 0x45

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lnet/sf/saxon/value/BigDecimalValue;->makeDecimalValue(Ljava/lang/String;Z)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/type/ValidationFailure;

    if-eqz v0, :cond_1

    sget-object p0, Lnet/sf/saxon/value/DoubleValue;->NaN:Lnet/sf/saxon/value/DoubleValue;

    return-object p0

    :cond_1
    check-cast p0, Lnet/sf/saxon/value/NumericValue;

    return-object p0

    :cond_2
    invoke-static {p0}, Lnet/sf/saxon/value/IntegerValue;->stringToInteger(Ljava/lang/String;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/type/ValidationFailure;

    if-eqz v0, :cond_3

    sget-object p0, Lnet/sf/saxon/value/DoubleValue;->NaN:Lnet/sf/saxon/value/DoubleValue;

    return-object p0

    :cond_3
    check-cast p0, Lnet/sf/saxon/value/NumericValue;

    return-object p0

    :cond_4
    :goto_0
    :try_start_0
    new-instance v0, Lnet/sf/saxon/value/DoubleValue;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object p0, Lnet/sf/saxon/value/DoubleValue;->NaN:Lnet/sf/saxon/value/DoubleValue;

    return-object p0
.end method


# virtual methods
.method public abstract abs()Lnet/sf/saxon/value/NumericValue;
.end method

.method public abstract asSubscript()I
.end method

.method public abstract ceiling()Lnet/sf/saxon/value/NumericValue;
.end method

.method public abstract compareTo(J)I
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lnet/sf/saxon/expr/sort/XPathComparable;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/NumericValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I
    .locals 3

    .line 2
    instance-of v0, p1, Lnet/sf/saxon/value/NumericValue;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lnet/sf/saxon/value/NumericValue;->getDoubleValue()D

    move-result-wide v0

    .line 4
    check-cast p1, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/NumericValue;->getDoubleValue()D

    move-result-wide p0

    cmpl-double v2, v0, p0

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    cmpg-double p0, v0, p0

    if-gez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0

    .line 5
    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot compare numeric value to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract effectiveBooleanValue()Z
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/value/NumericValue;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/NumericValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract floor()Lnet/sf/saxon/value/NumericValue;
.end method

.method public abstract getDecimalValue()Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/ValidationException;
        }
    .end annotation
.end method

.method public abstract getDoubleValue()D
.end method

.method public abstract getFloatValue()F
.end method

.method public getXPathComparable()Lnet/sf/saxon/expr/sort/XPathComparable;
    .locals 0

    .line 1
    return-object p0
.end method

.method public getXPathComparable(Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/XPathComparable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/NoDynamicContextException;
        }
    .end annotation

    .line 2
    return-object p0
.end method

.method public final getXPathMatchKey(Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/AtomicMatchKey;
    .locals 0

    return-object p0
.end method

.method public abstract hashCode()I
.end method

.method public isNegativeZero()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract isWholeNumber()Z
.end method

.method public abstract longValue()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract negate()Lnet/sf/saxon/value/NumericValue;
.end method

.method public abstract round(I)Lnet/sf/saxon/value/NumericValue;
.end method

.method public abstract roundHalfToEven(I)Lnet/sf/saxon/value/NumericValue;
.end method

.method public show()Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract signum()I
.end method
