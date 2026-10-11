.class public Lnet/sf/saxon/expr/Calculator$DecimalIdivDecimal;
.super Lnet/sf/saxon/expr/Calculator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/Calculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecimalIdivDecimal"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/Calculator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compute(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/expr/Calculator$DecimalIdivDecimal;->compute(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0
.end method

.method public compute(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/IntegerValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    instance-of p0, p1, Lnet/sf/saxon/value/IntegerValue;

    if-eqz p0, :cond_0

    instance-of p0, p2, Lnet/sf/saxon/value/IntegerValue;

    if-eqz p0, :cond_0

    .line 3
    check-cast p1, Lnet/sf/saxon/value/IntegerValue;

    check-cast p2, Lnet/sf/saxon/value/IntegerValue;

    invoke-virtual {p1, p2}, Lnet/sf/saxon/value/IntegerValue;->idiv(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    check-cast p1, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/NumericValue;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object p0

    .line 5
    check-cast p2, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {p2}, Lnet/sf/saxon/value/NumericValue;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result p2

    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->divideToIntegralValue(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    .line 8
    invoke-static {p0}, Lnet/sf/saxon/value/IntegerValue;->makeIntegerValue(Ljava/math/BigInteger;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0

    .line 9
    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Integer division by zero"

    const-string p2, "FOAR0001"

    invoke-direct {p0, p1, p2, p3}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    throw p0
.end method

.method public getResultType(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/type/AtomicType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method
