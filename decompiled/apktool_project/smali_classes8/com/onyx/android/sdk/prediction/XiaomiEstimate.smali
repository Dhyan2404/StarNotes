.class public final Lcom/onyx/android/sdk/prediction/XiaomiEstimate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/prediction/IEstimate;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J$\u0010\u000b\u001a\u0016\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008j\n\u0012\u0004\u0012\u00020\t\u0018\u0001`\n2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0008\u0010\r\u001a\u00020\u000cH\u0016J\u0008\u0010\u000e\u001a\u00020\u000cH\u0016R$\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u0008j\u0008\u0012\u0004\u0012\u00020\u000f`\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R$\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u0008j\u0008\u0012\u0004\u0012\u00020\u000f`\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0011\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/android/sdk/prediction/XiaomiEstimate;",
        "Lcom/onyx/android/sdk/prediction/IEstimate;",
        "Landroid/view/View;",
        "optView",
        "",
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
        "Lcom/miui/penengine/estimate/MiuiMotionEventInfo;",
        "a",
        "Ljava/util/ArrayList;",
        "freshPointList",
        "b",
        "predictPointList",
        "<init>",
        "()V",
        "sdk-prediction_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/penengine/estimate/MiuiMotionEventInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/penengine/estimate/MiuiMotionEventInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/prediction/XiaomiEstimate;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/prediction/XiaomiEstimate;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public destory()V
    .locals 0

    return-void
.end method

.method public estimate(Landroid/view/MotionEvent;)Ljava/util/ArrayList;
    .locals 12
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

    invoke-static {p1}, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;->createByMotionEvent(Landroid/view/MotionEvent;)Lcom/miui/penengine/estimate/MiuiMotionEventInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-static {p1, v2}, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;->createByMotionEvent(Landroid/view/MotionEvent;I)Lcom/miui/penengine/estimate/MiuiMotionEventInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/onyx/android/sdk/prediction/XiaomiEstimate;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/onyx/android/sdk/prediction/XiaomiEstimate;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/onyx/android/sdk/prediction/XiaomiEstimate;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/onyx/android/sdk/prediction/XiaomiEstimate;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/onyx/android/sdk/prediction/XiaomiEstimate;->b:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/miui/penengine/estimate/MiuiStrokeEstimate;->getEstimateEvent(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    iget-object v1, p0, Lcom/onyx/android/sdk/prediction/XiaomiEstimate;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/onyx/android/sdk/prediction/XiaomiEstimate;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;

    iget-object p0, p0, Lcom/onyx/android/sdk/prediction/XiaomiEstimate;->b:Ljava/util/ArrayList;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;

    new-instance v11, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0}, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/16 v9, 0x78

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    filled-new-array {v11}, [Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/onyx/android/sdk/prediction/XiaomiEstimate;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public init(Landroid/view/View;)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "optView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    const-string p1, "getDefaultDisplay(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/Display;->getRefreshRate()F

    move-result p0

    invoke-static {p0}, Lcom/miui/penengine/estimate/MiuiStrokeEstimate;->setRefreshRate(F)V

    const/4 p0, 0x1

    return p0
.end method

.method public preInit()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/prediction/IEstimate$DefaultImpls;->preInit(Lcom/onyx/android/sdk/prediction/IEstimate;)Z

    move-result p0

    return p0
.end method

.method public release()V
    .locals 0

    return-void
.end method
