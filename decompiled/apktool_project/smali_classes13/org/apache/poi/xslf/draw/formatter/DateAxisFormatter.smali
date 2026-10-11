.class public Lorg/apache/poi/xslf/draw/formatter/DateAxisFormatter;
.super Lorg/apache/poi/xslf/draw/formatter/AxisFormatter;
.source "SourceFile"


# instance fields
.field private dateFormat:Ljava/text/SimpleDateFormat;

.field private decimalFormat:Ljava/text/DecimalFormat;


# direct methods
.method public constructor <init>(Ljava/util/List;Lorg/apache/poi/xslf/draw/formatter/FormatType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/poi/xslf/draw/formatter/FormatType;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/draw/formatter/AxisFormatter;-><init>(Ljava/util/List;Lorg/apache/poi/xslf/draw/formatter/FormatType;)V

    .line 5
    new-instance p1, Ljava/text/DecimalFormat;

    const-string p2, "###,###,###.#"

    invoke-direct {p1, p2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/poi/xslf/draw/formatter/DateAxisFormatter;->decimalFormat:Ljava/text/DecimalFormat;

    .line 6
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "yyyy/M/d"

    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/poi/xslf/draw/formatter/DateAxisFormatter;->dateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xslf/draw/formatter/FormatType;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/draw/formatter/AxisFormatter;-><init>(Lorg/apache/poi/xslf/draw/formatter/FormatType;)V

    .line 2
    new-instance p1, Ljava/text/DecimalFormat;

    const-string v0, "###,###,###.#"

    invoke-direct {p1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/poi/xslf/draw/formatter/DateAxisFormatter;->decimalFormat:Ljava/text/DecimalFormat;

    .line 3
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy/M/d"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/poi/xslf/draw/formatter/DateAxisFormatter;->dateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method


# virtual methods
.method public getFormattedValue(FLcom/github/mikephil/charting/components/AxisBase;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p2, p0, Lorg/apache/poi/xslf/draw/formatter/AxisFormatter;->data:Ljava/util/List;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    float-to-int p1, p1

    if-ltz p1, :cond_2

    .line 2
    iget-object p2, p0, Lorg/apache/poi/xslf/draw/formatter/AxisFormatter;->data:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lt p1, p2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p2, p0, Lorg/apache/poi/xslf/draw/formatter/AxisFormatter;->data:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/16 p2, 0x76c

    const/4 v0, 0x0

    .line 4
    invoke-static {p2, v0, v0}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar(III)Ljava/util/Calendar;

    move-result-object p2

    .line 5
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x6

    invoke-virtual {p2, v0, p1}, Ljava/util/Calendar;->add(II)V

    .line 6
    iget-object p0, p0, Lorg/apache/poi/xslf/draw/formatter/DateAxisFormatter;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const-string p0, ""

    return-object p0

    .line 7
    :cond_3
    :goto_1
    iget-object p0, p0, Lorg/apache/poi/xslf/draw/formatter/DateAxisFormatter;->decimalFormat:Ljava/text/DecimalFormat;

    float-to-double p1, p1

    invoke-virtual {p0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFormattedValue(FLcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/utils/ViewPortHandler;)Ljava/lang/String;
    .locals 0

    const/16 p2, 0x76c

    const/4 p3, 0x0

    .line 8
    invoke-static {p2, p3, p3}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar(III)Ljava/util/Calendar;

    move-result-object p2

    float-to-int p1, p1

    add-int/lit8 p1, p1, -0x1

    const/4 p3, 0x6

    .line 9
    invoke-virtual {p2, p3, p1}, Ljava/util/Calendar;->add(II)V

    .line 10
    iget-object p0, p0, Lorg/apache/poi/xslf/draw/formatter/DateAxisFormatter;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
