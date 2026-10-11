.class public Lnet/sf/saxon/type/Converter$DateTimeToTime;
.super Lnet/sf/saxon/type/Converter$UnfailingConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/type/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DateTimeToTime"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/sf/saxon/type/Converter$DateTimeToTime;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/type/Converter$DateTimeToTime;

    invoke-direct {v0}, Lnet/sf/saxon/type/Converter$DateTimeToTime;-><init>()V

    sput-object v0, Lnet/sf/saxon/type/Converter$DateTimeToTime;->INSTANCE:Lnet/sf/saxon/type/Converter$DateTimeToTime;

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
    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/Converter$DateTimeToTime;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/TimeValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/AtomicValue;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/Converter$DateTimeToTime;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/TimeValue;

    move-result-object p0

    return-object p0
.end method

.method public convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/TimeValue;
    .locals 7

    .line 3
    check-cast p1, Lnet/sf/saxon/value/DateTimeValue;

    .line 4
    new-instance p0, Lnet/sf/saxon/value/TimeValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/DateTimeValue;->getHour()B

    move-result v1

    invoke-virtual {p1}, Lnet/sf/saxon/value/DateTimeValue;->getMinute()B

    move-result v2

    invoke-virtual {p1}, Lnet/sf/saxon/value/DateTimeValue;->getSecond()B

    move-result v3

    invoke-virtual {p1}, Lnet/sf/saxon/value/DateTimeValue;->getNanosecond()I

    move-result v4

    invoke-virtual {p1}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v5

    const-string v6, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lnet/sf/saxon/value/TimeValue;-><init>(BBBIILjava/lang/String;)V

    return-object p0
.end method
