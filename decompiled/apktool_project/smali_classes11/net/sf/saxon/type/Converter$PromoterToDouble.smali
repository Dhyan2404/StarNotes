.class public Lnet/sf/saxon/type/Converter$PromoterToDouble;
.super Lnet/sf/saxon/type/Converter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/type/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PromoterToDouble"
.end annotation


# instance fields
.field public b:Lnet/sf/saxon/type/StringConverter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/type/Converter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/type/Converter$PromoterToDouble;->b:Lnet/sf/saxon/type/StringConverter;

    return-void
.end method


# virtual methods
.method public convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/type/ConversionResult;
    .locals 2

    instance-of v0, p1, Lnet/sf/saxon/value/DoubleValue;

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    instance-of v0, p1, Lnet/sf/saxon/value/NumericValue;

    if-eqz v0, :cond_1

    new-instance p0, Lnet/sf/saxon/value/DoubleValue;

    check-cast p1, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/NumericValue;->getDoubleValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->isUntypedAtomic()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/sf/saxon/type/Converter$PromoterToDouble;->b:Lnet/sf/saxon/type/StringConverter;

    if-nez v0, :cond_2

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->DOUBLE:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p0}, Lnet/sf/saxon/type/Converter;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->getStringConverter(Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/StringConverter;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/type/Converter$PromoterToDouble;->b:Lnet/sf/saxon/type/StringConverter;

    :cond_2
    iget-object p0, p0, Lnet/sf/saxon/type/Converter$PromoterToDouble;->b:Lnet/sf/saxon/type/StringConverter;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/StringConverter;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Lnet/sf/saxon/type/ValidationFailure;

    const-string p1, "Cannot promote non-numeric value to xs:double"

    invoke-direct {p0, p1}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    const-string p1, "XPTY0004"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/ValidationFailure;->setErrorCode(Ljava/lang/String;)V

    return-object p0
.end method
