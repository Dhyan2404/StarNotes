.class public final Lnet/sf/saxon/value/BigIntegerValue;
.super Lnet/sf/saxon/value/IntegerValue;
.source "SourceFile"


# static fields
.field public static final MAX_LONG:Ljava/math/BigInteger;

.field public static final MAX_UNSIGNED_LONG:Ljava/math/BigInteger;

.field public static final MIN_LONG:Ljava/math/BigInteger;

.field public static final ZERO:Lnet/sf/saxon/value/BigIntegerValue;

.field public static final i:Ljava/math/BigInteger;

.field public static final j:Ljava/math/BigInteger;


# instance fields
.field public final h:Ljava/math/BigInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/value/BigIntegerValue;->i:Ljava/math/BigInteger;

    const-wide/32 v0, -0x80000000

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/value/BigIntegerValue;->j:Ljava/math/BigInteger;

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/value/BigIntegerValue;->MAX_LONG:Ljava/math/BigInteger;

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/value/BigIntegerValue;->MIN_LONG:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "18446744073709551615"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/value/BigIntegerValue;->MAX_UNSIGNED_LONG:Ljava/math/BigInteger;

    new-instance v0, Lnet/sf/saxon/value/BigIntegerValue;

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lnet/sf/saxon/value/BigIntegerValue;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lnet/sf/saxon/value/BigIntegerValue;->ZERO:Lnet/sf/saxon/value/BigIntegerValue;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lnet/sf/saxon/value/IntegerValue;-><init>()V

    .line 8
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    .line 9
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object p1, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/value/IntegerValue;-><init>()V

    .line 2
    iput-object p1, p0, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    .line 3
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object p1, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Lnet/sf/saxon/type/AtomicType;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lnet/sf/saxon/value/IntegerValue;-><init>()V

    .line 5
    iput-object p1, p0, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    .line 6
    iput-object p2, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void
.end method


# virtual methods
.method public abs()Lnet/sf/saxon/value/NumericValue;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lnet/sf/saxon/value/BigIntegerValue;

    iget-object p0, p0, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/BigIntegerValue;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public asBigInteger()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    return-object p0
.end method

.method public asDecimal()Ljava/math/BigDecimal;
    .locals 1

    new-instance v0, Ljava/math/BigDecimal;

    iget-object p0, p0, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public asSubscript()I
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    sget-object v1, Lnet/sf/saxon/value/BigIntegerValue;->i:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/value/BigIntegerValue;->longValue()J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public ceiling()Lnet/sf/saxon/value/NumericValue;
    .locals 0

    return-object p0
.end method

.method public compareTo(J)I
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 11
    iget-object p0, p0, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result p0

    return p0

    .line 12
    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lnet/sf/saxon/expr/sort/XPathComparable;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/BigIntegerValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I
    .locals 2

    .line 2
    instance-of v0, p1, Lnet/sf/saxon/value/NumericValue;

    if-eqz v0, :cond_3

    .line 3
    instance-of v0, p1, Lnet/sf/saxon/value/BigIntegerValue;

    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    check-cast p1, Lnet/sf/saxon/value/BigIntegerValue;

    iget-object p1, p1, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    return p0

    .line 5
    :cond_0
    instance-of v0, p1, Lnet/sf/saxon/value/Int64Value;

    if-eqz v0, :cond_1

    .line 6
    iget-object p0, p0, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    check-cast p1, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {p1}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    return p0

    .line 7
    :cond_1
    instance-of v0, p1, Lnet/sf/saxon/value/BigDecimalValue;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lnet/sf/saxon/value/BigIntegerValue;->asDecimal()Ljava/math/BigDecimal;

    move-result-object p0

    check-cast p1, Lnet/sf/saxon/value/BigDecimalValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/BigDecimalValue;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    return p0

    .line 9
    :cond_2
    invoke-super {p0, p1}, Lnet/sf/saxon/value/NumericValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result p0

    return p0

    .line 10
    :cond_3
    new-instance p0, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot compare xs:integer to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public convertToSubType(Lnet/sf/saxon/type/BuiltInAtomicType;Z)Lnet/sf/saxon/type/ValidationFailure;
    .locals 1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iput-object p1, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-object v0

    :cond_0
    iget-object p2, p0, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    invoke-static {p2, p1}, Lnet/sf/saxon/value/IntegerValue;->checkBigRange(Ljava/math/BigInteger;Lnet/sf/saxon/type/BuiltInAtomicType;)Z

    move-result p2

    if-eqz p2, :cond_1

    iput-object p1, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-object v0

    :cond_1
    new-instance p0, Lnet/sf/saxon/type/ValidationFailure;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Integer value is out of range for subtype "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/type/BuiltInAtomicType;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    const-string p1, "FORG0001"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/ValidationFailure;->setErrorCode(Ljava/lang/String;)V

    return-object p0
.end method

.method public copyAsSubType(Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/value/AtomicValue;
    .locals 2

    invoke-interface {p1}, Lnet/sf/saxon/type/ItemType;->getPrimitiveType()I

    move-result v0

    const/16 v1, 0x215

    if-ne v0, v1, :cond_0

    new-instance v0, Lnet/sf/saxon/value/BigIntegerValue;

    iget-object p0, p0, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/BigIntegerValue;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, v0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-object v0

    :cond_0
    new-instance p1, Lnet/sf/saxon/value/BigDecimalValue;

    new-instance v0, Ljava/math/BigDecimal;

    iget-object p0, p0, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {p1, v0}, Lnet/sf/saxon/value/BigDecimalValue;-><init>(Ljava/math/BigDecimal;)V

    return-object p1
.end method

.method public div(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/NumericValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/value/BigIntegerValue;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/value/BigIntegerValue;

    iget-object p1, p1, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/value/NumericValue;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    :goto_0
    new-instance v0, Lnet/sf/saxon/value/BigDecimalValue;

    new-instance v1, Ljava/math/BigDecimal;

    iget-object p0, p0, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    invoke-direct {v1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v0, v1}, Lnet/sf/saxon/value/BigDecimalValue;-><init>(Ljava/math/BigDecimal;)V

    new-instance p0, Lnet/sf/saxon/value/BigDecimalValue;

    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {p0, v1}, Lnet/sf/saxon/value/BigDecimalValue;-><init>(Ljava/math/BigDecimal;)V

    invoke-static {v0, p0}, Lnet/sf/saxon/expr/Calculator;->decimalDivide(Lnet/sf/saxon/value/NumericValue;Lnet/sf/saxon/value/NumericValue;)Lnet/sf/saxon/value/BigDecimalValue;

    move-result-object p0

    return-object p0
.end method

.method public effectiveBooleanValue()Z
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public floor()Lnet/sf/saxon/value/NumericValue;
    .locals 0

    return-object p0
.end method

.method public getDecimalValue()Ljava/math/BigDecimal;
    .locals 1

    new-instance v0, Ljava/math/BigDecimal;

    iget-object p0, p0, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2

    iget-object p0, p0, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloatValue()F
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/value/BigIntegerValue;->getDoubleValue()D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public getPrimitiveStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    sget-object v1, Lnet/sf/saxon/value/BigIntegerValue;->j:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    sget-object v1, Lnet/sf/saxon/value/BigIntegerValue;->i:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/BigIntegerValue;->getDoubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->hashCode()I

    move-result p0

    return p0
.end method

.method public idiv(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/IntegerValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/value/NumericValue;->signum()I

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lnet/sf/saxon/value/BigIntegerValue;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/value/BigIntegerValue;

    iget-object p1, p1, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/value/NumericValue;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    :goto_0
    iget-object p0, p0, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/IntegerValue;->makeIntegerValue(Ljava/math/BigInteger;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Integer division by zero"

    const-string v0, "FOAR0001"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public isWholeNumber()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isWithinLongRange()Z
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    sget-object v1, Lnet/sf/saxon/value/BigIntegerValue;->MIN_LONG:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    sget-object v0, Lnet/sf/saxon/value/BigIntegerValue;->MAX_LONG:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public longValue()J
    .locals 2

    iget-object p0, p0, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public minus(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/IntegerValue;
    .locals 2

    instance-of v0, p1, Lnet/sf/saxon/value/BigIntegerValue;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    check-cast p1, Lnet/sf/saxon/value/BigIntegerValue;

    iget-object p1, p1, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/IntegerValue;->makeIntegerValue(Ljava/math/BigInteger;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    check-cast p1, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {p1}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/IntegerValue;->makeIntegerValue(Ljava/math/BigInteger;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0
.end method

.method public mod(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/IntegerValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/value/NumericValue;->signum()I

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lnet/sf/saxon/value/BigIntegerValue;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    check-cast p1, Lnet/sf/saxon/value/BigIntegerValue;

    iget-object p1, p1, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/IntegerValue;->makeIntegerValue(Ljava/math/BigInteger;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lnet/sf/saxon/value/NumericValue;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/IntegerValue;->makeIntegerValue(Ljava/math/BigInteger;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Integer modulo zero"

    const-string v0, "FOAR0001"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public negate()Lnet/sf/saxon/value/NumericValue;
    .locals 1

    new-instance v0, Lnet/sf/saxon/value/BigIntegerValue;

    iget-object p0, p0, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/BigIntegerValue;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public plus(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/IntegerValue;
    .locals 2

    instance-of v0, p1, Lnet/sf/saxon/value/BigIntegerValue;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    check-cast p1, Lnet/sf/saxon/value/BigIntegerValue;

    iget-object p1, p1, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/IntegerValue;->makeIntegerValue(Ljava/math/BigInteger;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    check-cast p1, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {p1}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/IntegerValue;->makeIntegerValue(Ljava/math/BigInteger;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic reduce()Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/value/BigIntegerValue;->reduce()Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0
.end method

.method public reduce()Lnet/sf/saxon/value/IntegerValue;
    .locals 3

    const-wide v0, 0x7fffffffffffffffL

    .line 2
    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/value/BigIntegerValue;->compareTo(J)I

    move-result v0

    if-gez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/value/BigIntegerValue;->compareTo(J)I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {p0}, Lnet/sf/saxon/value/BigIntegerValue;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    .line 4
    iget-object p0, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/value/AtomicValue;->setTypeLabel(Lnet/sf/saxon/type/AtomicType;)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public round(I)Lnet/sf/saxon/value/NumericValue;
    .locals 4

    if-ltz p1, :cond_0

    return-object p0

    :cond_0
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    neg-int p1, p1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object p0

    const/4 v0, 0x1

    aget-object v0, p0, v0

    const-wide/16 v1, 0x2

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    aget-object v0, p0, v1

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    aput-object v0, p0, v1

    :cond_1
    aget-object p0, p0, v1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/IntegerValue;->makeIntegerValue(Ljava/math/BigInteger;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0
.end method

.method public roundHalfToEven(I)Lnet/sf/saxon/value/NumericValue;
    .locals 6

    if-ltz p1, :cond_0

    return-object p0

    :cond_0
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    neg-int p1, p1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object p0

    const/4 v0, 0x1

    aget-object v0, p0, v0

    const-wide/16 v1, 0x2

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    const-wide/16 v3, 0x1

    const/4 v5, 0x0

    if-lez v0, :cond_1

    aget-object v0, p0, v5

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    aput-object v0, p0, v5

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    aget-object v0, p0, v5

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_2

    aget-object v0, p0, v5

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    aput-object v0, p0, v5

    :cond_2
    :goto_0
    aget-object p0, p0, v5

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/IntegerValue;->makeIntegerValue(Ljava/math/BigInteger;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0
.end method

.method public signum()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result p0

    return p0
.end method

.method public times(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/IntegerValue;
    .locals 2

    instance-of v0, p1, Lnet/sf/saxon/value/BigIntegerValue;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    check-cast p1, Lnet/sf/saxon/value/BigIntegerValue;

    iget-object p1, p1, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/IntegerValue;->makeIntegerValue(Ljava/math/BigInteger;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    check-cast p1, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {p1}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/IntegerValue;->makeIntegerValue(Ljava/math/BigInteger;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0
.end method

.method public validateAgainstSubType(Lnet/sf/saxon/type/BuiltInAtomicType;)Lnet/sf/saxon/type/ValidationFailure;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/value/BigIntegerValue;->h:Ljava/math/BigInteger;

    invoke-static {v0, p1}, Lnet/sf/saxon/value/IntegerValue;->checkBigRange(Ljava/math/BigInteger;Lnet/sf/saxon/type/BuiltInAtomicType;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/type/ValidationFailure;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Integer value is out of range for subtype "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/type/BuiltInAtomicType;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    const-string p1, "FORG0001"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/ValidationFailure;->setErrorCode(Ljava/lang/String;)V

    return-object p0
.end method
