.class public Lnet/sf/saxon/functions/Number_1;
.super Lnet/sf/saxon/functions/ScalarSystemFunction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/ScalarSystemFunction;-><init>()V

    return-void
.end method

.method public static convert(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/value/DoubleValue;
    .locals 2

    if-nez p0, :cond_0

    :try_start_0
    sget-object p0, Lnet/sf/saxon/value/DoubleValue;->NaN:Lnet/sf/saxon/value/DoubleValue;

    return-object p0

    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/value/BooleanValue;

    if-eqz v0, :cond_2

    new-instance p1, Lnet/sf/saxon/value/DoubleValue;

    check-cast p0, Lnet/sf/saxon/value/BooleanValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/BooleanValue;->getBooleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    invoke-direct {p1, v0, v1}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V

    return-object p1

    :cond_2
    instance-of v0, p0, Lnet/sf/saxon/value/DoubleValue;

    if-eqz v0, :cond_3

    check-cast p0, Lnet/sf/saxon/value/DoubleValue;

    return-object p0

    :cond_3
    instance-of v0, p0, Lnet/sf/saxon/value/NumericValue;

    if-eqz v0, :cond_4

    new-instance p1, Lnet/sf/saxon/value/DoubleValue;

    check-cast p0, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/NumericValue;->getDoubleValue()D

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V

    return-object p1

    :cond_4
    instance-of v0, p0, Lnet/sf/saxon/value/StringValue;

    if-eqz v0, :cond_5

    instance-of v0, p0, Lnet/sf/saxon/value/AnyURIValue;

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/lib/ConversionRules;->getStringToDoubleConverter()Lnet/sf/saxon/type/StringToDouble;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/type/StringToDouble;->stringToNumber(Lnet/sf/saxon/str/UnicodeString;)D

    move-result-wide p0

    new-instance v0, Lnet/sf/saxon/value/DoubleValue;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V

    return-object v0

    :cond_5
    sget-object p0, Lnet/sf/saxon/value/DoubleValue;->NaN:Lnet/sf/saxon/value/DoubleValue;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lnet/sf/saxon/value/DoubleValue;->NaN:Lnet/sf/saxon/value/DoubleValue;

    return-object p0
.end method

.method public static toNumber(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/DoubleValue;
    .locals 1

    instance-of v0, p0, Lnet/sf/saxon/value/BooleanValue;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/sf/saxon/type/Converter$BooleanToDouble;->INSTANCE:Lnet/sf/saxon/type/Converter$BooleanToDouble;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/type/Converter$BooleanToDouble;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/DoubleValue;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/value/NumericValue;

    if-eqz v0, :cond_1

    sget-object v0, Lnet/sf/saxon/type/Converter$NumericToDouble;->INSTANCE:Lnet/sf/saxon/type/Converter$NumericToDouble;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/type/Converter$NumericToDouble;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/DoubleValue;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/DoubleValue;

    return-object p0

    :cond_1
    instance-of v0, p0, Lnet/sf/saxon/value/StringValue;

    if-eqz v0, :cond_3

    instance-of v0, p0, Lnet/sf/saxon/value/AnyURIValue;

    if-nez v0, :cond_3

    invoke-static {}, Lnet/sf/saxon/value/StringToDouble11;->getInstance()Lnet/sf/saxon/value/StringToDouble11;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/type/StringConverter;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/type/ValidationFailure;

    if-eqz v0, :cond_2

    sget-object p0, Lnet/sf/saxon/value/DoubleValue;->NaN:Lnet/sf/saxon/value/DoubleValue;

    return-object p0

    :cond_2
    check-cast p0, Lnet/sf/saxon/value/DoubleValue;

    return-object p0

    :cond_3
    sget-object p0, Lnet/sf/saxon/value/DoubleValue;->NaN:Lnet/sf/saxon/value/DoubleValue;

    return-object p0
.end method


# virtual methods
.method public evaluate(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    check-cast p1, Lnet/sf/saxon/value/AtomicValue;

    invoke-static {p1}, Lnet/sf/saxon/functions/Number_1;->toNumber(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/DoubleValue;

    move-result-object p0

    return-object p0
.end method

.method public getCompilerName()Ljava/lang/String;
    .locals 0

    const-string p0, "NumberFnCompiler"

    return-object p0
.end method

.method public bridge synthetic resultWhenEmpty()Lnet/sf/saxon/om/Sequence;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/functions/Number_1;->resultWhenEmpty()Lnet/sf/saxon/value/DoubleValue;

    move-result-object p0

    return-object p0
.end method

.method public resultWhenEmpty()Lnet/sf/saxon/value/DoubleValue;
    .locals 0

    .line 2
    sget-object p0, Lnet/sf/saxon/value/DoubleValue;->NaN:Lnet/sf/saxon/value/DoubleValue;

    return-object p0
.end method

.method public typeCheckCaller(Lnet/sf/saxon/expr/FunctionCall;Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    const-class p3, Lnet/sf/saxon/functions/Number_1;

    invoke-virtual {p2, p3}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/expr/FunctionCall;

    invoke-virtual {p2, p0}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lnet/sf/saxon/expr/FunctionCall;->setArg(ILnet/sf/saxon/expr/Expression;)V

    :cond_0
    return-object p1
.end method
