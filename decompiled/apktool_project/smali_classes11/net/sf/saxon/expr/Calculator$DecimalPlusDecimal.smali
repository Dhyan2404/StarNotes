.class public Lnet/sf/saxon/expr/Calculator$DecimalPlusDecimal;
.super Lnet/sf/saxon/expr/Calculator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/Calculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecimalPlusDecimal"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/Calculator;-><init>()V

    return-void
.end method


# virtual methods
.method public compute(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of p0, p1, Lnet/sf/saxon/value/IntegerValue;

    if-eqz p0, :cond_0

    instance-of p0, p2, Lnet/sf/saxon/value/IntegerValue;

    if-eqz p0, :cond_0

    check-cast p1, Lnet/sf/saxon/value/IntegerValue;

    check-cast p2, Lnet/sf/saxon/value/IntegerValue;

    invoke-virtual {p1, p2}, Lnet/sf/saxon/value/IntegerValue;->plus(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/value/BigDecimalValue;

    check-cast p1, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/NumericValue;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object p1

    check-cast p2, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {p2}, Lnet/sf/saxon/value/NumericValue;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/value/BigDecimalValue;-><init>(Ljava/math/BigDecimal;)V

    return-object p0
.end method

.method public getResultType(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/type/AtomicType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->DECIMAL:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method
