.class public abstract Lnet/sf/saxon/functions/AccessorFn;
.super Lnet/sf/saxon/functions/ScalarSystemFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/functions/AccessorFn$NamespaceUriFromQName;,
        Lnet/sf/saxon/functions/AccessorFn$PrefixFromQName;,
        Lnet/sf/saxon/functions/AccessorFn$LocalNameFromQName;,
        Lnet/sf/saxon/functions/AccessorFn$SecondsFromDuration;,
        Lnet/sf/saxon/functions/AccessorFn$MinutesFromDuration;,
        Lnet/sf/saxon/functions/AccessorFn$HoursFromDuration;,
        Lnet/sf/saxon/functions/AccessorFn$DaysFromDuration;,
        Lnet/sf/saxon/functions/AccessorFn$MonthsFromDuration;,
        Lnet/sf/saxon/functions/AccessorFn$YearsFromDuration;,
        Lnet/sf/saxon/functions/AccessorFn$TimezoneFromTime;,
        Lnet/sf/saxon/functions/AccessorFn$SecondsFromTime;,
        Lnet/sf/saxon/functions/AccessorFn$MinutesFromTime;,
        Lnet/sf/saxon/functions/AccessorFn$HoursFromTime;,
        Lnet/sf/saxon/functions/AccessorFn$TimezoneFromDate;,
        Lnet/sf/saxon/functions/AccessorFn$DayFromDate;,
        Lnet/sf/saxon/functions/AccessorFn$MonthFromDate;,
        Lnet/sf/saxon/functions/AccessorFn$YearFromDate;,
        Lnet/sf/saxon/functions/AccessorFn$TimezoneFromDateTime;,
        Lnet/sf/saxon/functions/AccessorFn$SecondsFromDateTime;,
        Lnet/sf/saxon/functions/AccessorFn$MinutesFromDateTime;,
        Lnet/sf/saxon/functions/AccessorFn$HoursFromDateTime;,
        Lnet/sf/saxon/functions/AccessorFn$DayFromDateTime;,
        Lnet/sf/saxon/functions/AccessorFn$MonthFromDateTime;,
        Lnet/sf/saxon/functions/AccessorFn$YearFromDateTime;,
        Lnet/sf/saxon/functions/AccessorFn$Component;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/ScalarSystemFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    check-cast p1, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/AccessorFn;->getComponentId()Lnet/sf/saxon/functions/AccessorFn$Component;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/value/AtomicValue;->getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public getCompilerName()Ljava/lang/String;
    .locals 0

    const-string p0, "AccessorFnCompiler"

    return-object p0
.end method

.method public abstract getComponentId()Lnet/sf/saxon/functions/AccessorFn$Component;
.end method

.method public getIntegerBounds()[Lnet/sf/saxon/value/IntegerValue;
    .locals 7

    sget-object v0, Lnet/sf/saxon/functions/AccessorFn$a;->a:[I

    invoke-virtual {p0}, Lnet/sf/saxon/functions/AccessorFn;->getComponentId()Lnet/sf/saxon/functions/AccessorFn$Component;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const-wide/16 v0, 0x3b

    const-wide/16 v2, -0x3b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    new-array p0, v6, [Lnet/sf/saxon/value/IntegerValue;

    invoke-static {v2, v3}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object v2

    aput-object v2, p0, v5

    invoke-static {v0, v1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object v0

    aput-object v0, p0, v4

    return-object p0

    :pswitch_1
    new-array p0, v6, [Lnet/sf/saxon/value/IntegerValue;

    invoke-static {v2, v3}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object v2

    aput-object v2, p0, v5

    invoke-static {v0, v1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object v0

    aput-object v0, p0, v4

    return-object p0

    :pswitch_2
    new-array p0, v6, [Lnet/sf/saxon/value/IntegerValue;

    const-wide/16 v0, -0x18

    invoke-static {v0, v1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object v0

    aput-object v0, p0, v5

    const-wide/16 v0, 0x18

    invoke-static {v0, v1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object v0

    aput-object v0, p0, v4

    return-object p0

    :pswitch_3
    new-array p0, v6, [Lnet/sf/saxon/value/IntegerValue;

    const-wide/16 v0, -0x1f

    invoke-static {v0, v1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object v0

    aput-object v0, p0, v5

    const-wide/16 v0, 0x1f

    invoke-static {v0, v1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object v0

    aput-object v0, p0, v4

    return-object p0

    :pswitch_4
    new-array p0, v6, [Lnet/sf/saxon/value/IntegerValue;

    const-wide/16 v0, -0xb

    invoke-static {v0, v1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object v0

    aput-object v0, p0, v5

    const-wide/16 v0, 0xb

    invoke-static {v0, v1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object v0

    aput-object v0, p0, v4

    return-object p0

    :pswitch_5
    new-array p0, v6, [Lnet/sf/saxon/value/IntegerValue;

    const-wide/32 v0, -0x186a0

    invoke-static {v0, v1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object v0

    aput-object v0, p0, v5

    const-wide/32 v0, 0x186a0

    invoke-static {v0, v1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object v0

    aput-object v0, p0, v4

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
