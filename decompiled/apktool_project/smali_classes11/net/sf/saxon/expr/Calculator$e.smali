.class public Lnet/sf/saxon/expr/Calculator$e;
.super Lnet/sf/saxon/expr/Calculator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/Calculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
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
    invoke-direct {p0}, Lnet/sf/saxon/expr/Calculator$e;-><init>()V

    return-void
.end method


# virtual methods
.method public compute(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    check-cast p1, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/NumericValue;->getDoubleValue()D

    move-result-wide p0

    check-cast p2, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {p2}, Lnet/sf/saxon/value/NumericValue;->getDoubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p2, v0, v2

    if-eqz p2, :cond_2

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p2

    const-string v2, "FOAR0002"

    if-nez p2, :cond_1

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p2

    if-nez p2, :cond_0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Lnet/sf/saxon/value/IntegerValue;->fromDouble(D)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Second operand of idiv is NaN"

    invoke-direct {p0, p1, v2, p3}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    throw p0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "First operand of idiv is NaN or infinity"

    invoke-direct {p0, p1, v2, p3}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    throw p0

    :cond_2
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
