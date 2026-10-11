.class public final Lcom/onyx/android/sdk/device/XiaomiDevice;
.super Lcom/onyx/android/sdk/device/CommonBaseDevice;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/device/XiaomiDevice$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\r\u0018\u0000 A2\u00020\u0001:\u0001AB\u0007\u00a2\u0006\u0004\u0008?\u0010@J\u001a\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J6\u0010\r\u001a\u00020\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00022\u0008\u0010\n\u001a\u0004\u0018\u00010\t2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u0004H\u0016J0\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u000eH\u0016J\u0012\u0010\u0014\u001a\u00020\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0015H\u0016J\u0010\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0016\u001a\u00020\u0015H\u0016JJ\u0010 \u001a\u00020\u00182\u0006\u0010\u0016\u001a\u00020\u001528\u0010\u001f\u001a4\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u001b\u0012\u0008\u0008\u001c\u0012\u0004\u0008\u0008(\u0017\u0012\u0015\u0012\u0013\u0018\u00010\u001d\u00a2\u0006\u000c\u0008\u001b\u0012\u0008\u0008\u001c\u0012\u0004\u0008\u0008(\u001e\u0012\u0004\u0012\u00020\u00180\u001aH\u0016J\u0018\u0010%\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020!2\u0006\u0010$\u001a\u00020#H\u0016J\u0008\u0010\'\u001a\u00020&H\u0016J(\u0010,\u001a\u00020&2\u0006\u0010(\u001a\u00020&2\u0006\u0010)\u001a\u00020&2\u0006\u0010*\u001a\u00020&2\u0006\u0010+\u001a\u00020\u0004H\u0016J\u0010\u0010.\u001a\u00020&2\u0006\u0010-\u001a\u00020&H\u0016J\u0010\u00101\u001a\u00020\u00182\u0006\u00100\u001a\u00020/H\u0016J$\u00107\u001a\u00020\u00182\u0006\u00103\u001a\u0002022\u0012\u00106\u001a\u000e\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u00020\u000604H\u0016J\u0010\u00108\u001a\u00020\u00182\u0006\u00103\u001a\u000202H\u0016J\u0008\u00109\u001a\u00020\u0006H\u0003J\u0010\u0010:\u001a\u00020\u00042\u0006\u00103\u001a\u000202H\u0002J\u0010\u0010;\u001a\u00020\u00042\u0006\u00103\u001a\u000202H\u0002J\u0010\u0010<\u001a\u00020\u00182\u0006\u00103\u001a\u000202H\u0002R$\u00106\u001a\u0010\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u00020\u0006\u0018\u0001048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008=\u0010>\u00a8\u0006B"
    }
    d2 = {
        "Lcom/onyx/android/sdk/device/XiaomiDevice;",
        "Lcom/onyx/android/sdk/device/CommonBaseDevice;",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "pointerCount",
        "",
        "filterByCancel",
        "currentEvent",
        "Landroid/graphics/PointF;",
        "downPointF",
        "upPointF",
        "distanceThreshold",
        "filterByUpToDownDistance",
        "",
        "downTimeMillisecond",
        "upTimeMillisecond",
        "upDownTimeMin",
        "upDownTimeMax",
        "filterByUpToDownTime",
        "filterByTouchUp",
        "Landroid/app/Activity;",
        "activity",
        "hasNotch",
        "",
        "setDisplayInNotch",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "Lcom/onyx/android/sdk/device/bean/NotchType;",
        "notchType",
        "callback",
        "getNotchRect",
        "Lcom/onyx/android/sdk/device/bean/WindowModeType;",
        "windowModeType",
        "Lcom/onyx/android/sdk/device/bean/MultiWindowType;",
        "multiWindowType",
        "getWindowTopPadding",
        "",
        "getPalmSizeFactor",
        "currentPressureSensitivity",
        "minPressureSensitivity",
        "maxPressureSensitivity",
        "totalLevel",
        "getDevicePressureSensitivity",
        "commonDefaultPressureSensitivity",
        "getDefaultPressureSensitivity",
        "Landroid/view/View;",
        "view",
        "requestRefreshConfigOfView",
        "Landroid/content/Context;",
        "context",
        "Lkotlin/Function1;",
        "",
        "callBack",
        "registerStylusEngine",
        "unRegisterStylusEngine",
        "k",
        "h",
        "i",
        "j",
        "c",
        "Lkotlin/jvm/functions/Function1;",
        "<init>",
        "()V",
        "Companion",
        "sdk-device_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/device/XiaomiDevice$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_PRESSURE_SENSITIVITY_XIAOMI:F = 0.24f

.field public static final DEVICE_PRESSURE_RANGE:F = 0.5f

.field public static final FLOATING_WINDOW_TOP_PADDING_DIMEN_LARGE:F = 50.0f

.field public static final MIN_PRESSURE_SENSITIVITY:F = 0.0f

.field public static final SPLIT_BAR_PADDING_API_LEVEL:I = 0x23

.field public static final WINDOW_TOP_PADDING_DIMEN_OF_SPLIT_BAR:F = 22.0f

.field public static final XIAOMI_PALM_SIZE_FACTOR:F = 2.5f

.field public static final d:F = 0.5f


# instance fields
.field public c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/device/XiaomiDevice$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/device/XiaomiDevice$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/device/XiaomiDevice;->Companion:Lcom/onyx/android/sdk/device/XiaomiDevice$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/device/CommonBaseDevice;-><init>()V

    return-void
.end method

.method public static synthetic g(Lcom/onyx/android/sdk/device/XiaomiDevice;Landroid/content/Context;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/device/XiaomiDevice;->l(Lcom/onyx/android/sdk/device/XiaomiDevice;Landroid/content/Context;Z)V

    return-void
.end method

.method public static final l(Lcom/onyx/android/sdk/device/XiaomiDevice;Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/miui/penengine/auth/MiuiAuthHelper;->destroyAuthService()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/device/XiaomiDevice;->j(Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public filterByCancel(Landroid/view/MotionEvent;I)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->isMoreThanTwoFinger(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->filterByCancel(Landroid/view/MotionEvent;I)Z

    move-result p0

    return p0
.end method

.method public filterByTouchUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :cond_0
    move p0, v1

    :cond_1
    return p0
.end method

.method public filterByUpToDownDistance(Landroid/view/MotionEvent;Landroid/graphics/PointF;Landroid/graphics/PointF;II)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p4}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->isMoreThanTwoFinger(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->filterByUpToDownDistance(Landroid/view/MotionEvent;Landroid/graphics/PointF;Landroid/graphics/PointF;II)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p3

    if-ne p3, p0, :cond_1

    move p3, p0

    goto :goto_0

    :cond_1
    move p3, p2

    :goto_0
    if-nez p3, :cond_4

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p3, 0x3

    if-ne p1, p3, :cond_2

    move p1, p0

    goto :goto_1

    :cond_2
    move p1, p2

    :goto_1
    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move p0, p2

    :cond_4
    :goto_2
    return p0
.end method

.method public filterByUpToDownTime(JJIJJ)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-gtz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    :cond_0
    sub-long/2addr p3, p1

    invoke-virtual {p0, p5}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->isMoreThanTwoFinger(I)Z

    move-result p0

    if-eqz p0, :cond_1

    move-wide p6, v0

    :cond_1
    cmp-long p0, p6, p3

    const/4 p1, 0x0

    if-gtz p0, :cond_2

    cmp-long p0, p3, p8

    if-gez p0, :cond_2

    const/4 p1, 0x1

    :cond_2
    if-nez p1, :cond_3

    const-class p0, Lcom/onyx/android/sdk/device/XiaomiDevice;

    const-string p2, "filter by up to down time"

    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    :cond_3
    return p1
.end method

.method public getDefaultPressureSensitivity(F)F
    .locals 0

    const p0, 0x3e75c28f    # 0.24f

    return p0
.end method

.method public getDevicePressureSensitivity(FFFI)F
    .locals 0

    sub-float/2addr p3, p2

    sub-float/2addr p1, p2

    int-to-float p0, p4

    div-float/2addr p3, p0

    div-float/2addr p1, p3

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    div-float/2addr p2, p0

    int-to-float p0, p1

    mul-float/2addr p2, p0

    const/4 p0, 0x0

    add-float/2addr p2, p0

    return p2
.end method

.method public getNotchRect(Landroid/app/Activity;Lkotlin/jvm/functions/Function2;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Lcom/onyx/android/sdk/device/bean/NotchType;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/device/XiaomiDevice;->hasNotch(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/device/XiaomiDevice;->i(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/device/XiaomiDevice;->h(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0, p1, v0, v2}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->calculateNotchRect(Landroid/content/Context;II)Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v2}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->getNotchType(Landroid/app/Activity;Ljava/util/List;)Lcom/onyx/android/sdk/device/bean/NotchType;

    move-result-object p0

    if-nez p0, :cond_2

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getPalmSizeFactor()F
    .locals 0

    const/high16 p0, 0x40200000    # 2.5f

    return p0
.end method

.method public getWindowTopPadding(Lcom/onyx/android/sdk/device/bean/WindowModeType;Lcom/onyx/android/sdk/device/bean/MultiWindowType;)I
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/device/bean/WindowModeType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/device/bean/MultiWindowType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "windowModeType"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "multiWindowType"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/device/bean/WindowModeType;->FREEDOM_MODE:Lcom/onyx/android/sdk/device/bean/WindowModeType;

    if-ne p1, p0, :cond_0

    const/high16 p0, 0x42480000    # 50.0f

    invoke-static {p0}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/device/bean/MultiWindowType;->isWindowAtTheTop()Z

    move-result p0

    if-eqz p0, :cond_1

    const/high16 p0, 0x41a00000    # 20.0f

    invoke-static {p0}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result p0

    goto :goto_0

    :cond_1
    const/16 p0, 0x23

    invoke-static {p0}, Lcom/onyx/android/sdk/device/BuildKt;->isApiLevelAbove(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const/high16 p0, 0x41b00000    # 22.0f

    invoke-static {p0}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result p0

    goto :goto_0

    :cond_2
    const/high16 p0, 0x40800000    # 4.0f

    invoke-static {p0}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final h(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "dimen"

    const-string v1, "android"

    const-string v2, "notch_height"

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasNotch(Landroid/app/Activity;)Z
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x1c

    invoke-static {v0}, Lcom/onyx/android/sdk/device/BuildKt;->isApiLevelAbove(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->hasNotch(Landroid/app/Activity;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/device/XiaomiDevice;->k()Z

    move-result p0

    return p0
.end method

.method public final i(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "dimen"

    const-string v1, "android"

    const-string v2, "notch_width"

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j(Landroid/content/Context;)V
    .locals 0

    new-instance p0, Lcom/onyx/android/sdk/device/XiaomiDevice$initStylusEngineByCheck$1;

    invoke-direct {p0}, Lcom/onyx/android/sdk/device/XiaomiDevice$initStylusEngineByCheck$1;-><init>()V

    invoke-static {p1, p0}, Lcom/miui/penengine/touchfilm/MiuiTouchFilmUtils;->init(Landroid/content/Context;Lcom/miui/penengine/touchfilm/MiuiTouchFilmUtils$TouchFilmListener;)Z

    return-void
.end method

.method public final k()Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/device/ReflectUtils;->INSTANCE:Lcom/onyx/android/sdk/device/ReflectUtils;

    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "getInt"

    invoke-virtual {p0, v0, v2, v1}, Lcom/onyx/android/sdk/device/ReflectUtils;->getMethodSafely(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "ro.miui.notch"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/onyx/android/sdk/device/ReflectUtils;->invokeMethodSafely(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public registerStylusEngine(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callBack"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/device/XiaomiDevice;->c:Lkotlin/jvm/functions/Function1;

    new-instance p2, Lcom/sunia/HTREnginev2/hvo;

    invoke-direct {p2, p0, p1}, Lcom/sunia/HTREnginev2/hvo;-><init>(Lcom/onyx/android/sdk/device/XiaomiDevice;Landroid/content/Context;)V

    invoke-static {p1, p2}, Lcom/miui/penengine/auth/MiuiAuthHelper;->initAuthService(Landroid/content/Context;Lcom/miui/penengine/auth/MiuiAuthHelper$AuthResultListener;)Z

    return-void
.end method

.method public requestRefreshConfigOfView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->requestHighRefreshRate(Landroid/view/View;)V

    return-void
.end method

.method public setDisplayInNotch(Landroid/app/Activity;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x1c

    invoke-static {v0}, Lcom/onyx/android/sdk/device/BuildKt;->isApiLevelAbove(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->setDisplayInNotch(Landroid/app/Activity;)V

    return-void

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/device/ReflectUtils;->INSTANCE:Lcom/onyx/android/sdk/device/ReflectUtils;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const-class v1, Landroid/view/Window;

    const-string v2, "addExtraFlags"

    invoke-virtual {p0, v1, v2, v0}, Lcom/onyx/android/sdk/device/ReflectUtils;->getMethodSafely(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x700

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/onyx/android/sdk/device/ReflectUtils;->invokeMethodSafely(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unRegisterStylusEngine(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/penengine/touchfilm/MiuiTouchFilmUtils;->onDestroy()V

    return-void
.end method
