.class public Lnet/sf/saxon/type/Converter$DurationToDayTimeDuration;
.super Lnet/sf/saxon/type/Converter$UnfailingConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/type/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DurationToDayTimeDuration"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/sf/saxon/type/Converter$DurationToDayTimeDuration;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/type/Converter$DurationToDayTimeDuration;

    invoke-direct {v0}, Lnet/sf/saxon/type/Converter$DurationToDayTimeDuration;-><init>()V

    sput-object v0, Lnet/sf/saxon/type/Converter$DurationToDayTimeDuration;->INSTANCE:Lnet/sf/saxon/type/Converter$DurationToDayTimeDuration;

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
    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/Converter$DurationToDayTimeDuration;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/DayTimeDurationValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/AtomicValue;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/Converter$DurationToDayTimeDuration;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/DayTimeDurationValue;

    move-result-object p0

    return-object p0
.end method

.method public convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/DayTimeDurationValue;
    .locals 14

    .line 3
    check-cast p1, Lnet/sf/saxon/value/DurationValue;

    .line 4
    invoke-virtual {p1}, Lnet/sf/saxon/value/DurationValue;->signum()I

    move-result p0

    if-gez p0, :cond_0

    .line 5
    new-instance p0, Lnet/sf/saxon/value/DayTimeDurationValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/DurationValue;->getDays()I

    move-result v0

    neg-int v1, v0

    invoke-virtual {p1}, Lnet/sf/saxon/value/DurationValue;->getHours()I

    move-result v0

    neg-int v2, v0

    invoke-virtual {p1}, Lnet/sf/saxon/value/DurationValue;->getMinutes()I

    move-result v0

    neg-int v3, v0

    invoke-virtual {p1}, Lnet/sf/saxon/value/DurationValue;->getSeconds()I

    move-result v0

    neg-int v0, v0

    int-to-long v4, v0

    invoke-virtual {p1}, Lnet/sf/saxon/value/DurationValue;->getNanoseconds()I

    move-result p1

    neg-int v6, p1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lnet/sf/saxon/value/DayTimeDurationValue;-><init>(IIIJI)V

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Lnet/sf/saxon/value/DayTimeDurationValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/DurationValue;->getDays()I

    move-result v8

    invoke-virtual {p1}, Lnet/sf/saxon/value/DurationValue;->getHours()I

    move-result v9

    invoke-virtual {p1}, Lnet/sf/saxon/value/DurationValue;->getMinutes()I

    move-result v10

    invoke-virtual {p1}, Lnet/sf/saxon/value/DurationValue;->getSeconds()I

    move-result v0

    int-to-long v11, v0

    invoke-virtual {p1}, Lnet/sf/saxon/value/DurationValue;->getNanoseconds()I

    move-result v13

    move-object v7, p0

    invoke-direct/range {v7 .. v13}, Lnet/sf/saxon/value/DayTimeDurationValue;-><init>(IIIJI)V

    return-object p0
.end method
