.class public Lnet/sf/saxon/type/Converter$DecimalToInteger;
.super Lnet/sf/saxon/type/Converter$UnfailingConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/type/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecimalToInteger"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/sf/saxon/type/Converter$DecimalToInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/type/Converter$DecimalToInteger;

    invoke-direct {v0}, Lnet/sf/saxon/type/Converter$DecimalToInteger;-><init>()V

    sput-object v0, Lnet/sf/saxon/type/Converter$DecimalToInteger;->INSTANCE:Lnet/sf/saxon/type/Converter$DecimalToInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/type/Converter$UnfailingConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/type/ConversionResult;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/Converter$DecimalToInteger;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/AtomicValue;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/Converter$DecimalToInteger;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0
.end method

.method public convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/IntegerValue;
    .locals 0

    .line 3
    instance-of p0, p1, Lnet/sf/saxon/value/IntegerValue;

    if-eqz p0, :cond_0

    .line 4
    check-cast p1, Lnet/sf/saxon/value/IntegerValue;

    return-object p1

    .line 5
    :cond_0
    check-cast p1, Lnet/sf/saxon/value/BigDecimalValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/BigDecimalValue;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/IntegerValue;->makeIntegerValue(Ljava/math/BigInteger;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0
.end method
