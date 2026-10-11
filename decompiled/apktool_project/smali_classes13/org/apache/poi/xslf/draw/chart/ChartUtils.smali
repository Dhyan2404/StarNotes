.class public Lorg/apache/poi/xslf/draw/chart/ChartUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setBarSpace(Lcom/github/mikephil/charting/data/CandleDataSet;F)V
    .locals 3

    const v0, 0x3ee66666    # 0.45f

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/data/CandleDataSet;->setBarSpace(F)V

    goto :goto_0

    :cond_0
    const-string v0, "mBarSpace"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-class v2, Lcom/github/mikephil/charting/data/CandleDataSet;

    invoke-static {v2, p0, v0, v1}, Lorg/apache/poi/xslf/draw/chart/ChartUtils;->setFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/data/CandleDataSet;->setBarSpace(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p0, p1, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static setTextSize(Lcom/github/mikephil/charting/components/ComponentBase;F)V
    .locals 3

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_0

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextSize(F)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-class v1, Lcom/github/mikephil/charting/components/ComponentBase;

    const-string v2, "mTextSize"

    invoke-static {v1, p0, v2, v0}, Lorg/apache/poi/xslf/draw/chart/ChartUtils;->setFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextSize(F)V

    :cond_1
    :goto_0
    return-void
.end method
