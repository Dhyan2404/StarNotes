.class public Lnet/sf/saxon/expr/Calculator$k;
.super Lnet/sf/saxon/expr/Calculator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/Calculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/expr/Calculator;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lnet/sf/saxon/expr/Calculator$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lnet/sf/saxon/expr/Calculator$k;-><init>()V

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

    instance-of p0, p2, Lnet/sf/saxon/value/Int64Value;

    if-eqz p0, :cond_0

    check-cast p1, Lnet/sf/saxon/value/DurationValue;

    check-cast p2, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {p2}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lnet/sf/saxon/value/DurationValue;->multiply(J)Lnet/sf/saxon/value/DurationValue;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of p0, p2, Lnet/sf/saxon/value/DecimalValue;

    if-eqz p0, :cond_1

    check-cast p1, Lnet/sf/saxon/value/DurationValue;

    check-cast p2, Lnet/sf/saxon/value/DecimalValue;

    invoke-virtual {p2}, Lnet/sf/saxon/value/DecimalValue;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/value/DurationValue;->multiply(Ljava/math/BigDecimal;)Lnet/sf/saxon/value/DurationValue;

    move-result-object p0

    return-object p0

    :cond_1
    check-cast p1, Lnet/sf/saxon/value/DurationValue;

    check-cast p2, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {p2}, Lnet/sf/saxon/value/NumericValue;->getDoubleValue()D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lnet/sf/saxon/value/DurationValue;->multiply(D)Lnet/sf/saxon/value/DurationValue;

    move-result-object p0

    return-object p0
.end method

.method public getResultType(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/type/AtomicType;
    .locals 0

    return-object p1
.end method
