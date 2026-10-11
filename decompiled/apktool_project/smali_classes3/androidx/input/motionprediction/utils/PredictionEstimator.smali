.class public Landroidx/input/motionprediction/utils/PredictionEstimator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/input/motionprediction/utils/PredictionEstimator$c;,
        Landroidx/input/motionprediction/utils/PredictionEstimator$b;,
        Landroidx/input/motionprediction/utils/PredictionEstimator$a;
    }
.end annotation


# static fields
.field public static final c:I = 0x20

.field public static final d:I = 0x10

.field public static final e:I = 0x3e8


# instance fields
.field public a:J

.field public final b:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/input/motionprediction/utils/PredictionEstimator;->a:J

    invoke-virtual {p0, p1}, Landroidx/input/motionprediction/utils/PredictionEstimator;->b(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Landroidx/input/motionprediction/utils/PredictionEstimator;->b:F

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/view/Display;
    .locals 1

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p0, v0, :cond_0

    invoke-static {p1}, Landroidx/input/motionprediction/utils/PredictionEstimator$c;->a(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "window"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public final b(Landroid/content/Context;)F
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/input/motionprediction/utils/PredictionEstimator;->a(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    invoke-static {p0}, Landroidx/input/motionprediction/utils/PredictionEstimator$b;->a(Landroid/view/Display;)F

    move-result p0

    return p0
.end method

.method public estimate()I
    .locals 4

    iget-wide v0, p0, Landroidx/input/motionprediction/utils/PredictionEstimator;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget p0, p0, Landroidx/input/motionprediction/utils/PredictionEstimator;->b:F

    float-to-int p0, p0

    return p0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/input/motionprediction/utils/PredictionEstimator;->a:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget p0, p0, Landroidx/input/motionprediction/utils/PredictionEstimator;->b:F

    add-float/2addr v0, p0

    float-to-int p0, v0

    const/16 v0, 0x20

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public record(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/input/motionprediction/utils/PredictionEstimator;->a:J

    return-void
.end method
