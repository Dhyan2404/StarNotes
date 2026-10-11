.class public Lnet/sf/saxon/type/Converter$NumericToInteger;
.super Lnet/sf/saxon/type/Converter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/type/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NumericToInteger"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/sf/saxon/type/Converter$NumericToInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/type/Converter$NumericToInteger;

    invoke-direct {v0}, Lnet/sf/saxon/type/Converter$NumericToInteger;-><init>()V

    sput-object v0, Lnet/sf/saxon/type/Converter$NumericToInteger;->INSTANCE:Lnet/sf/saxon/type/Converter$NumericToInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/type/Converter;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/type/ConversionResult;
    .locals 0

    check-cast p1, Lnet/sf/saxon/value/NumericValue;

    :try_start_0
    instance-of p0, p1, Lnet/sf/saxon/value/IntegerValue;

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    instance-of p0, p1, Lnet/sf/saxon/value/DoubleValue;

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/value/NumericValue;->getDoubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Lnet/sf/saxon/value/IntegerValue;->fromDouble(D)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of p0, p1, Lnet/sf/saxon/value/FloatValue;

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lnet/sf/saxon/value/NumericValue;->getDoubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Lnet/sf/saxon/value/IntegerValue;->fromDouble(D)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p1}, Lnet/sf/saxon/value/NumericValue;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/IntegerValue;->makeIntegerValue(Ljava/math/BigInteger;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/type/ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lnet/sf/saxon/type/ValidationException;->getValidationFailure()Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0
.end method
