.class public Lnet/sf/saxon/type/Converter$DateTimeToGYearMonth;
.super Lnet/sf/saxon/type/Converter$UnfailingConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/type/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DateTimeToGYearMonth"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/sf/saxon/type/Converter$DateTimeToGYearMonth;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/type/Converter$DateTimeToGYearMonth;

    invoke-direct {v0}, Lnet/sf/saxon/type/Converter$DateTimeToGYearMonth;-><init>()V

    sput-object v0, Lnet/sf/saxon/type/Converter$DateTimeToGYearMonth;->INSTANCE:Lnet/sf/saxon/type/Converter$DateTimeToGYearMonth;

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
    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/Converter$DateTimeToGYearMonth;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/GYearMonthValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/AtomicValue;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/Converter$DateTimeToGYearMonth;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/GYearMonthValue;

    move-result-object p0

    return-object p0
.end method

.method public convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/GYearMonthValue;
    .locals 3

    .line 3
    check-cast p1, Lnet/sf/saxon/value/DateTimeValue;

    .line 4
    new-instance p0, Lnet/sf/saxon/value/GYearMonthValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/DateTimeValue;->getYear()I

    move-result v0

    invoke-virtual {p1}, Lnet/sf/saxon/value/DateTimeValue;->getMonth()B

    move-result v1

    invoke-virtual {p1}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v2

    invoke-virtual {p1}, Lnet/sf/saxon/value/DateTimeValue;->isXsd10Rules()Z

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lnet/sf/saxon/value/GYearMonthValue;-><init>(IBIZ)V

    return-object p0
.end method
