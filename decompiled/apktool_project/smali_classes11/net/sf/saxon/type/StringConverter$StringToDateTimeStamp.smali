.class public Lnet/sf/saxon/type/StringConverter$StringToDateTimeStamp;
.super Lnet/sf/saxon/type/StringConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/type/StringConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringToDateTimeStamp"
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

    invoke-virtual {p0}, Lnet/sf/saxon/type/Converter;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object p0

    invoke-static {p1, p0}, Lnet/sf/saxon/value/DateTimeValue;->makeDateTimeValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/value/DateTimeValue;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/value/DateTimeValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/CalendarValue;->hasTimezone()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p0, Lnet/sf/saxon/type/ValidationFailure;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Supplied DateTimeStamp value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " has no time zone"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_0
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE_TIME_STAMP:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/value/AtomicValue;->setTypeLabel(Lnet/sf/saxon/type/AtomicType;)V

    :cond_1
    return-object p0
.end method
