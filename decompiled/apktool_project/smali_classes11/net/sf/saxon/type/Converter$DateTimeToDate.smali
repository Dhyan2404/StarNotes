.class public Lnet/sf/saxon/type/Converter$DateTimeToDate;
.super Lnet/sf/saxon/type/Converter$UnfailingConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/type/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DateTimeToDate"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/sf/saxon/type/Converter$DateTimeToDate;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/type/Converter$DateTimeToDate;

    invoke-direct {v0}, Lnet/sf/saxon/type/Converter$DateTimeToDate;-><init>()V

    sput-object v0, Lnet/sf/saxon/type/Converter$DateTimeToDate;->INSTANCE:Lnet/sf/saxon/type/Converter$DateTimeToDate;

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
    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/Converter$DateTimeToDate;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/DateValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/AtomicValue;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/Converter$DateTimeToDate;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/DateValue;

    move-result-object p0

    return-object p0
.end method

.method public convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/DateValue;
    .locals 6

    .line 3
    check-cast p1, Lnet/sf/saxon/value/DateTimeValue;

    .line 4
    new-instance p0, Lnet/sf/saxon/value/DateValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/DateTimeValue;->getYear()I

    move-result v1

    invoke-virtual {p1}, Lnet/sf/saxon/value/DateTimeValue;->getMonth()B

    move-result v2

    invoke-virtual {p1}, Lnet/sf/saxon/value/DateTimeValue;->getDay()B

    move-result v3

    invoke-virtual {p1}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v4

    invoke-virtual {p1}, Lnet/sf/saxon/value/DateTimeValue;->isXsd10Rules()Z

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lnet/sf/saxon/value/DateValue;-><init>(IBBIZ)V

    return-object p0
.end method
