.class public abstract Lnet/sf/saxon/type/Converter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/type/Converter$PromoterToFloat;,
        Lnet/sf/saxon/type/Converter$PromoterToDouble;,
        Lnet/sf/saxon/type/Converter$QNameToNotation;,
        Lnet/sf/saxon/type/Converter$NotationToQName;,
        Lnet/sf/saxon/type/Converter$HexBinaryToBase64Binary;,
        Lnet/sf/saxon/type/Converter$Base64BinaryToHexBinary;,
        Lnet/sf/saxon/type/Converter$NumericToBoolean;,
        Lnet/sf/saxon/type/Converter$DateTimeToTime;,
        Lnet/sf/saxon/type/Converter$DateTimeToGDay;,
        Lnet/sf/saxon/type/Converter$DateTimeToGMonthDay;,
        Lnet/sf/saxon/type/Converter$DateTimeToGYear;,
        Lnet/sf/saxon/type/Converter$DateTimeToGYearMonth;,
        Lnet/sf/saxon/type/Converter$DateTimeToGMonth;,
        Lnet/sf/saxon/type/Converter$DateTimeToDate;,
        Lnet/sf/saxon/type/Converter$DateToDateTime;,
        Lnet/sf/saxon/type/Converter$DurationToYearMonthDuration;,
        Lnet/sf/saxon/type/Converter$DurationToDayTimeDuration;,
        Lnet/sf/saxon/type/Converter$BooleanToInteger;,
        Lnet/sf/saxon/type/Converter$NumericToInteger;,
        Lnet/sf/saxon/type/Converter$DecimalToInteger;,
        Lnet/sf/saxon/type/Converter$FloatToInteger;,
        Lnet/sf/saxon/type/Converter$DoubleToInteger;,
        Lnet/sf/saxon/type/Converter$BooleanToDecimal;,
        Lnet/sf/saxon/type/Converter$NumericToDecimal;,
        Lnet/sf/saxon/type/Converter$IntegerToDecimal;,
        Lnet/sf/saxon/type/Converter$FloatToDecimal;,
        Lnet/sf/saxon/type/Converter$DoubleToDecimal;,
        Lnet/sf/saxon/type/Converter$BooleanToDouble;,
        Lnet/sf/saxon/type/Converter$NumericToDouble;,
        Lnet/sf/saxon/type/Converter$BooleanToFloat;,
        Lnet/sf/saxon/type/Converter$NumericToFloat;,
        Lnet/sf/saxon/type/Converter$ToStringConverter;,
        Lnet/sf/saxon/type/Converter$ToUntypedAtomicConverter;,
        Lnet/sf/saxon/type/Converter$TwoPhaseConverter;,
        Lnet/sf/saxon/type/Converter$DownCastingConverter;,
        Lnet/sf/saxon/type/Converter$UpCastingConverter;,
        Lnet/sf/saxon/type/Converter$IdentityConverter;,
        Lnet/sf/saxon/type/Converter$UnfailingConverter;
    }
.end annotation


# instance fields
.field public a:Lnet/sf/saxon/lib/ConversionRules;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/lib/ConversionRules;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/Converter;->setConversionRules(Lnet/sf/saxon/lib/ConversionRules;)V

    return-void
.end method

.method public static convert(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/value/AtomicValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/ValidationException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lnet/sf/saxon/lib/ConversionRules;->getConverter(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/type/Converter;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2, p0}, Lnet/sf/saxon/type/Converter;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p2, Lnet/sf/saxon/type/ValidationFailure;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot convert value from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " to "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    const-string p0, "FORG0001"

    .line 4
    invoke-virtual {p2, p0}, Lnet/sf/saxon/type/ValidationFailure;->setErrorCode(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Lnet/sf/saxon/type/ValidationFailure;->makeException()Lnet/sf/saxon/type/ValidationException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public abstract convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/type/ConversionResult;
.end method

.method public final getConversionRules()Lnet/sf/saxon/lib/ConversionRules;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/type/Converter;->a:Lnet/sf/saxon/lib/ConversionRules;

    return-object p0
.end method

.method public getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isAlwaysSuccessful()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final setConversionRules(Lnet/sf/saxon/lib/ConversionRules;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/type/Converter;->a:Lnet/sf/saxon/lib/ConversionRules;

    return-void
.end method

.method public setNamespaceResolver(Lnet/sf/saxon/om/NamespaceResolver;)Lnet/sf/saxon/type/Converter;
    .locals 0

    return-object p0
.end method
