.class public Lorg/apache/poi/xslf/draw/formatter/StackedBarValueFormatter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/mikephil/charting/formatter/IValueFormatter;


# instance fields
.field private drawVals:[Z

.field private formatter:Lcom/github/mikephil/charting/formatter/IValueFormatter;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/formatter/IValueFormatter;[Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/draw/formatter/StackedBarValueFormatter;->formatter:Lcom/github/mikephil/charting/formatter/IValueFormatter;

    iput-object p2, p0, Lorg/apache/poi/xslf/draw/formatter/StackedBarValueFormatter;->drawVals:[Z

    return-void
.end method

.method private getValueIndex(FLcom/github/mikephil/charting/data/Entry;)I
    .locals 2

    instance-of p0, p2, Lcom/github/mikephil/charting/data/BarEntry;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    check-cast p2, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/BarEntry;->getYVals()[F

    move-result-object p0

    move p2, v0

    :goto_0
    array-length v1, p0

    if-ge p2, v1, :cond_1

    aget v1, p0, p2

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public getFormattedValue(FLcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/utils/ViewPortHandler;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/draw/formatter/StackedBarValueFormatter;->drawVals:[Z

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/draw/formatter/StackedBarValueFormatter;->getValueIndex(FLcom/github/mikephil/charting/data/Entry;)I

    move-result v1

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xslf/draw/formatter/StackedBarValueFormatter;->formatter:Lcom/github/mikephil/charting/formatter/IValueFormatter;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/github/mikephil/charting/formatter/IValueFormatter;->getFormattedValue(FLcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/utils/ViewPortHandler;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
