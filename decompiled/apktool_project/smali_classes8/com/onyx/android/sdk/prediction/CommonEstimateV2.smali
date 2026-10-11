.class public Lcom/onyx/android/sdk/prediction/CommonEstimateV2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/prediction/IEstimate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/prediction/CommonEstimateV2$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u0000  2\u00020\u0001:\u0001 B\u0007\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J$\u0010\u000c\u001a\u0016\u0012\u0004\u0012\u00020\n\u0018\u00010\tj\n\u0012\u0004\u0012\u00020\n\u0018\u0001`\u000b2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0008\u0010\u000e\u001a\u00020\rH\u0016J\u0008\u0010\u000f\u001a\u00020\rH\u0016J\u0010\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J$\u0010\u0013\u001a\u0016\u0012\u0004\u0012\u00020\n\u0018\u00010\tj\n\u0012\u0004\u0012\u00020\n\u0018\u0001`\u000b2\u0006\u0010\u0008\u001a\u00020\u0007H\u0002R\"\u0010\u001a\u001a\u00020\u00148\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u001c\u00a8\u0006!"
    }
    d2 = {
        "Lcom/onyx/android/sdk/prediction/CommonEstimateV2;",
        "Lcom/onyx/android/sdk/prediction/IEstimate;",
        "",
        "preInit",
        "Landroid/view/View;",
        "optView",
        "init",
        "Landroid/view/MotionEvent;",
        "event",
        "Ljava/util/ArrayList;",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "Lkotlin/collections/ArrayList;",
        "estimate",
        "",
        "release",
        "destory",
        "Landroid/app/Activity;",
        "activity",
        "b",
        "a",
        "",
        "F",
        "getMaxPredictTime",
        "()F",
        "setMaxPredictTime",
        "(F)V",
        "maxPredictTime",
        "Lcom/oplusos/vfxsdk/forecast/OppoMotionPredictor;",
        "Lcom/oplusos/vfxsdk/forecast/OppoMotionPredictor;",
        "motionPredictor",
        "<init>",
        "()V",
        "Companion",
        "sdk-prediction_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final COMMON_MAX_PREDICT_TIME:F = 46.0f

.field public static final Companion:Lcom/onyx/android/sdk/prediction/CommonEstimateV2$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Z


# instance fields
.field public a:F

.field public b:Lcom/oplusos/vfxsdk/forecast/OppoMotionPredictor;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/prediction/CommonEstimateV2$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/prediction/CommonEstimateV2$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/prediction/CommonEstimateV2;->Companion:Lcom/onyx/android/sdk/prediction/CommonEstimateV2$Companion;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/base/R$string;->cup_abi_arm64_v8a:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/BuildKt;->isCPUArchitectureSupported(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/onyx/android/sdk/prediction/CommonEstimateV2;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x42380000    # 46.0f

    iput v0, p0, Lcom/onyx/android/sdk/prediction/CommonEstimateV2;->a:F

    return-void
.end method

.method public static final synthetic access$isArm64Support$cp()Z
    .locals 1

    sget-boolean v0, Lcom/onyx/android/sdk/prediction/CommonEstimateV2;->c:Z

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    new-instance v9, Lcom/oplusos/vfxsdk/forecast/TouchPointInfo;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalPressure(I)F

    move-result v5

    const/16 v2, 0x19

    invoke-virtual {p1, v2, v1}, Landroid/view/MotionEvent;->getHistoricalAxisValue(II)F

    move-result v6

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v7

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/oplusos/vfxsdk/forecast/TouchPointInfo;-><init>(FFFFJ)V

    iget-object v2, p0, Lcom/onyx/android/sdk/prediction/CommonEstimateV2;->b:Lcom/oplusos/vfxsdk/forecast/OppoMotionPredictor;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v9}, Lcom/oplusos/vfxsdk/forecast/OppoMotionPredictor;->pushTouchPoint(Lcom/oplusos/vfxsdk/forecast/TouchPointInfo;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/prediction/CommonEstimateV2;->b:Lcom/oplusos/vfxsdk/forecast/OppoMotionPredictor;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/oplusos/vfxsdk/forecast/OppoMotionPredictor;->predictTouchPoint()Lcom/oplusos/vfxsdk/forecast/TouchPointInfo;

    move-result-object p0

    goto :goto_1

    :cond_2
    move-object p0, v0

    :goto_1
    if-eqz p0, :cond_3

    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget v2, p0, Lcom/oplusos/vfxsdk/forecast/TouchPointInfo;->x:F

    iget v3, p0, Lcom/oplusos/vfxsdk/forecast/TouchPointInfo;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/16 v10, 0x78

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    filled-new-array {v0}, [Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 3

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    iget-object v2, p0, Lcom/onyx/android/sdk/prediction/CommonEstimateV2;->b:Lcom/oplusos/vfxsdk/forecast/OppoMotionPredictor;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lcom/oplusos/vfxsdk/forecast/OppoMotionPredictor;->setRefreshRate(F)V

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/prediction/CommonEstimateV2;->b:Lcom/oplusos/vfxsdk/forecast/OppoMotionPredictor;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1, p1}, Lcom/oplusos/vfxsdk/forecast/OppoMotionPredictor;->setDpi(FF)V

    :cond_1
    iget-object p1, p0, Lcom/onyx/android/sdk/prediction/CommonEstimateV2;->b:Lcom/oplusos/vfxsdk/forecast/OppoMotionPredictor;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/prediction/CommonEstimateV2;->getMaxPredictTime()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/oplusos/vfxsdk/forecast/OppoMotionPredictor;->setMaxPredictTime(F)V

    :cond_2
    return-void
.end method

.method public destory()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/prediction/CommonEstimateV2;->b:Lcom/oplusos/vfxsdk/forecast/OppoMotionPredictor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplusos/vfxsdk/forecast/OppoMotionPredictor;->destroy()V

    :cond_0
    return-void
.end method

.method public estimate(Landroid/view/MotionEvent;)Ljava/util/ArrayList;
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/onyx/android/sdk/prediction/CommonEstimateV2;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/prediction/CommonEstimateV2;->a(Landroid/view/MotionEvent;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/onyx/android/sdk/prediction/CommonEstimateV2;->b:Lcom/oplusos/vfxsdk/forecast/OppoMotionPredictor;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/oplusos/vfxsdk/forecast/OppoMotionPredictor;->reset()V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/onyx/android/sdk/prediction/CommonEstimateV2;->b:Lcom/oplusos/vfxsdk/forecast/OppoMotionPredictor;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/oplusos/vfxsdk/forecast/OppoMotionPredictor;->reset()V

    :cond_4
    :goto_0
    return-object v1
.end method

.method public getMaxPredictTime()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/prediction/CommonEstimateV2;->a:F

    return p0
.end method

.method public init(Landroid/view/View;)Z
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "optView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/prediction/CommonEstimateV2;->b:Lcom/oplusos/vfxsdk/forecast/OppoMotionPredictor;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/prediction/CommonEstimateV2;->preInit()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/prediction/CommonEstimateV2;->b(Landroid/app/Activity;)V

    :cond_2
    return v1
.end method

.method public preInit()Z
    .locals 2

    sget-boolean v0, Lcom/onyx/android/sdk/prediction/CommonEstimateV2;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    new-instance v0, Lcom/oplusos/vfxsdk/forecast/OppoMotionPredictor;

    invoke-direct {v0}, Lcom/oplusos/vfxsdk/forecast/OppoMotionPredictor;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/prediction/CommonEstimateV2;->b:Lcom/oplusos/vfxsdk/forecast/OppoMotionPredictor;
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :catch_0
    return v1
.end method

.method public release()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/prediction/CommonEstimateV2;->b:Lcom/oplusos/vfxsdk/forecast/OppoMotionPredictor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplusos/vfxsdk/forecast/OppoMotionPredictor;->reset()V

    :cond_0
    return-void
.end method

.method public setMaxPredictTime(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/prediction/CommonEstimateV2;->a:F

    return-void
.end method
