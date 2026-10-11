.class public Lorg/apache/poi/xslf/draw/formatter/PercentAxisFormatter;
.super Lorg/apache/poi/xslf/draw/formatter/AxisFormatter;
.source "SourceFile"


# instance fields
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

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/draw/formatter/AxisFormatter;-><init>(Ljava/util/List;Lorg/apache/poi/xslf/draw/formatter/FormatType;)V

    .line 4
    new-instance p1, Ljava/text/DecimalFormat;

    const-string p2, "##%"

    invoke-direct {p1, p2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/poi/xslf/draw/formatter/PercentAxisFormatter;->decimalFormat:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xslf/draw/formatter/FormatType;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/draw/formatter/AxisFormatter;-><init>(Lorg/apache/poi/xslf/draw/formatter/FormatType;)V

    .line 2
    new-instance p1, Ljava/text/DecimalFormat;

    const-string v0, "##%"

    invoke-direct {p1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/poi/xslf/draw/formatter/PercentAxisFormatter;->decimalFormat:Ljava/text/DecimalFormat;

    return-void
.end method


# virtual methods
.method public getFormattedValue(FLcom/github/mikephil/charting/components/AxisBase;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/poi/xslf/draw/formatter/AxisFormatter;->data:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    float-to-int p1, p1

    if-ltz p1, :cond_2

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xslf/draw/formatter/AxisFormatter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xslf/draw/formatter/AxisFormatter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 4
    iget-object p0, p0, Lorg/apache/poi/xslf/draw/formatter/PercentAxisFormatter;->decimalFormat:Ljava/text/DecimalFormat;

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Lcom/github/mikephil/charting/components/AxisBase;->getAxisMaximum()F

    move-result p2

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-virtual {p0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const-string p0, ""

    return-object p0

    .line 5
    :cond_3
    :goto_1
    iget-object p0, p0, Lorg/apache/poi/xslf/draw/formatter/PercentAxisFormatter;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/components/AxisBase;->getAxisMaximum()F

    move-result p2

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-virtual {p0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFormattedValue(FLcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/utils/ViewPortHandler;)Ljava/lang/String;
    .locals 0

    .line 6
    iget-object p0, p0, Lorg/apache/poi/xslf/draw/formatter/PercentAxisFormatter;->decimalFormat:Ljava/text/DecimalFormat;

    float-to-double p1, p1

    invoke-virtual {p0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
