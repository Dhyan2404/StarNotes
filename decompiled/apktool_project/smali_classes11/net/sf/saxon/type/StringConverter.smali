.class public abstract Lnet/sf/saxon/type/StringConverter;
.super Lnet/sf/saxon/type/Converter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/type/StringConverter$StringToUnionConverter;,
        Lnet/sf/saxon/type/StringConverter$StringToAnyURI;,
        Lnet/sf/saxon/type/StringConverter$StringToNotation;,
        Lnet/sf/saxon/type/StringConverter$StringToQName;,
        Lnet/sf/saxon/type/StringConverter$StringToBase64Binary;,
        Lnet/sf/saxon/type/StringConverter$StringToHexBinary;,
        Lnet/sf/saxon/type/StringConverter$StringToBoolean;,
        Lnet/sf/saxon/type/StringConverter$StringToTime;,
        Lnet/sf/saxon/type/StringConverter$StringToGDay;,
        Lnet/sf/saxon/type/StringConverter$StringToGMonthDay;,
        Lnet/sf/saxon/type/StringConverter$StringToGYear;,
        Lnet/sf/saxon/type/StringConverter$StringToGYearMonth;,
        Lnet/sf/saxon/type/StringConverter$StringToGMonth;,
        Lnet/sf/saxon/type/StringConverter$StringToDate;,
        Lnet/sf/saxon/type/StringConverter$StringToDateTimeStamp;,
        Lnet/sf/saxon/type/StringConverter$StringToDateTime;,
        Lnet/sf/saxon/type/StringConverter$StringToYearMonthDuration;,
        Lnet/sf/saxon/type/StringConverter$StringToDayTimeDuration;,
        Lnet/sf/saxon/type/StringConverter$StringToDuration;,
        Lnet/sf/saxon/type/StringConverter$StringToIntegerSubtype;,
        Lnet/sf/saxon/type/StringConverter$StringToInteger;,
        Lnet/sf/saxon/type/StringConverter$StringToDecimal;,
        Lnet/sf/saxon/type/StringConverter$StringToFloat;,
        Lnet/sf/saxon/type/StringConverter$StringToDerivedStringSubtype;,
        Lnet/sf/saxon/type/StringConverter$StringToStringSubtype;,
        Lnet/sf/saxon/type/StringConverter$StringToName;,
        Lnet/sf/saxon/type/StringConverter$StringToNMTOKEN;,
        Lnet/sf/saxon/type/StringConverter$StringToNCName;,
        Lnet/sf/saxon/type/StringConverter$StringToLanguage;,
        Lnet/sf/saxon/type/StringConverter$StringToToken;,
        Lnet/sf/saxon/type/StringConverter$StringToNormalizedString;,
        Lnet/sf/saxon/type/StringConverter$StringToUntypedAtomic;,
        Lnet/sf/saxon/type/StringConverter$StringToString;,
        Lnet/sf/saxon/type/StringConverter$StringToNonStringDerivedType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/type/Converter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/lib/ConversionRules;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lnet/sf/saxon/type/Converter;-><init>(Lnet/sf/saxon/lib/ConversionRules;)V

    return-void
.end method


# virtual methods
.method public convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/type/ConversionResult;
    .locals 0

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/StringConverter;->convertString(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    return-object p0
.end method

.method public abstract convertString(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;
.end method

.method public validate(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/StringConverter;->convertString(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    instance-of p1, p0, Lnet/sf/saxon/type/ValidationFailure;

    if-eqz p1, :cond_0

    check-cast p0, Lnet/sf/saxon/type/ValidationFailure;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
