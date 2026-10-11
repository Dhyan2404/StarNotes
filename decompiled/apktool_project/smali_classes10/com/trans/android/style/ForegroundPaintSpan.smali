.class public Lcom/trans/android/style/ForegroundPaintSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "SourceFile"


# instance fields
.field private paint:Ljava/awt/Paint;


# direct methods
.method public constructor <init>(Ljava/awt/Paint;)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    iput-object p1, p0, Lcom/trans/android/style/ForegroundPaintSpan;->paint:Ljava/awt/Paint;

    return-void
.end method

.method private apply(Landroid/text/TextPaint;)V
    .locals 0

    iget-object p0, p0, Lcom/trans/android/style/ForegroundPaintSpan;->paint:Ljava/awt/Paint;

    invoke-static {p0}, Lcom/trans/android/util/PaintUtils;->getShader(Ljava/awt/Paint;)Landroid/graphics/Shader;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    if-eqz p0, :cond_0

    const/16 p0, 0xff

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/trans/android/style/ForegroundPaintSpan;->apply(Landroid/text/TextPaint;)V

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/trans/android/style/ForegroundPaintSpan;->apply(Landroid/text/TextPaint;)V

    return-void
.end method
