.class public Lnet/sf/saxon/type/StringConverter$StringToFloat;
.super Lnet/sf/saxon/type/StringConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/type/StringConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringToFloat"
.end annotation


# direct methods
.method public constructor <init>(Lnet/sf/saxon/lib/ConversionRules;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/type/StringConverter;-><init>(Lnet/sf/saxon/lib/ConversionRules;)V

    return-void
.end method


# virtual methods
.method public convertString(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/type/Converter;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ConversionRules;->getStringToDoubleConverter()Lnet/sf/saxon/type/StringToDouble;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/StringToDouble;->stringToNumber(Lnet/sf/saxon/str/UnicodeString;)D

    move-result-wide v0

    double-to-float p0, v0

    new-instance v0, Lnet/sf/saxon/value/FloatValue;

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/FloatValue;-><init>(F)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance p0, Lnet/sf/saxon/type/ValidationFailure;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot convert string to float: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    const-string p1, "FORG0001"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/ValidationFailure;->setErrorCode(Ljava/lang/String;)V

    return-object p0
.end method
