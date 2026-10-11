.class public Lnet/sf/saxon/type/Converter$IntegerToDecimal;
.super Lnet/sf/saxon/type/Converter$UnfailingConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/type/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntegerToDecimal"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/sf/saxon/type/Converter$IntegerToDecimal;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/type/Converter$IntegerToDecimal;

    invoke-direct {v0}, Lnet/sf/saxon/type/Converter$IntegerToDecimal;-><init>()V

    sput-object v0, Lnet/sf/saxon/type/Converter$IntegerToDecimal;->INSTANCE:Lnet/sf/saxon/type/Converter$IntegerToDecimal;

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
    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/Converter$IntegerToDecimal;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/BigDecimalValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/AtomicValue;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/Converter$IntegerToDecimal;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/BigDecimalValue;

    move-result-object p0

    return-object p0
.end method

.method public convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/BigDecimalValue;
    .locals 2

    .line 3
    instance-of p0, p1, Lnet/sf/saxon/value/Int64Value;

    if-eqz p0, :cond_0

    .line 4
    new-instance p0, Lnet/sf/saxon/value/BigDecimalValue;

    check-cast p1, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {p1}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/value/BigDecimalValue;-><init>(J)V

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Lnet/sf/saxon/value/BigDecimalValue;

    check-cast p1, Lnet/sf/saxon/value/BigIntegerValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/BigIntegerValue;->asDecimal()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/value/BigDecimalValue;-><init>(Ljava/math/BigDecimal;)V

    return-object p0
.end method
