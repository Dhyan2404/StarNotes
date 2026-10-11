.class public final Lcom/onyx/android/sdk/device/VivoDevice;
.super Lcom/onyx/android/sdk/device/CommonBaseDevice;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$OnGestureCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/device/VivoDevice$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 ;2\u00020\u00012\u00020\u0002:\u0001;B\u0007\u00a2\u0006\u0004\u00089\u0010:J\u001a\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J6\u0010\u000e\u001a\u00020\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0005H\u0016J0\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u000fH\u0016J\u0012\u0010\u0015\u001a\u00020\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\u0003H\u0016J\u0010\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J$\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u00172\u0012\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00070\u0019H\u0016J\u0010\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u0017H\u0016J\u0010\u0010\u001f\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u0017H\u0016J\u0010\u0010 \u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u0017H\u0016J\u0018\u0010\"\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010!\u001a\u00020\u0007H\u0016J\u0010\u0010$\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u0005H\u0016J\u0010\u0010\'\u001a\u00020\u00072\u0006\u0010&\u001a\u00020%H\u0016JJ\u0010.\u001a\u00020\u001c2\u0006\u0010&\u001a\u00020%28\u0010-\u001a4\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(\'\u0012\u0015\u0012\u0013\u0018\u00010+\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(,\u0012\u0004\u0012\u00020\u001c0(H\u0016J\u0018\u00103\u001a\u00020\u00052\u0006\u00100\u001a\u00020/2\u0006\u00102\u001a\u000201H\u0016J\u0008\u00104\u001a\u00020\u0007H\u0003J\u0012\u00105\u001a\u00020\u00052\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0002J\u0012\u00106\u001a\u00020\u00052\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0002R$\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00087\u00108\u00a8\u0006<"
    }
    d2 = {
        "Lcom/onyx/android/sdk/device/VivoDevice;",
        "Lcom/onyx/android/sdk/device/CommonBaseDevice;",
        "Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$OnGestureCallback;",
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
        "filterByDispatchTouchEvent",
        "Landroid/content/Context;",
        "context",
        "Lkotlin/Function1;",
        "",
        "callBack",
        "",
        "registerStylusEngine",
        "unRegisterStylusEngine",
        "initStylusVibrate",
        "destroyStylusVibrate",
        "isEnable",
        "enableVibrate",
        "gestureType",
        "onGesture",
        "Landroid/app/Activity;",
        "activity",
        "hasNotch",
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
        "i",
        "g",
        "h",
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
.field public static final Companion:Lcom/onyx/android/sdk/device/VivoDevice$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DOUBLE_CLICK:I = 0x2

.field public static final PRIMARY_KEY_CLICK:I = 0x3

.field public static final SECONDARY_KEY_CLICK:I = 0x4


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

    new-instance v0, Lcom/onyx/android/sdk/device/VivoDevice$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/device/VivoDevice$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/device/VivoDevice;->Companion:Lcom/onyx/android/sdk/device/VivoDevice$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/device/CommonBaseDevice;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyStylusVibrate(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/vivo/penengine/impl/VivoStylusManagerImpl;->getInstance(Landroid/content/Context;)Lcom/vivo/penengine/impl/VivoStylusManagerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/vivo/penengine/impl/VivoStylusManagerImpl;->destroy()V

    return-void
.end method

.method public enableVibrate(Landroid/content/Context;Z)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/vivo/penengine/impl/VivoStylusManagerImpl;->getInstance(Landroid/content/Context;)Lcom/vivo/penengine/impl/VivoStylusManagerImpl;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/vivo/penengine/impl/VivoStylusManagerImpl;->enableWritingVibrate(Z)V

    return-void
.end method

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

.method public filterByDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "event"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p0

    const/4 p1, 0x3

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
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

    const-class p0, Lcom/onyx/android/sdk/device/VivoDevice;

    const-string p2, "filter by up to down time"

    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    :cond_3
    return p1
.end method

.method public final g(Landroid/content/Context;)I
    .locals 0

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenDensity()F

    move-result p0

    const/16 p1, 0x1b

    int-to-float p1, p1

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public getNotchRect(Landroid/app/Activity;Lkotlin/jvm/functions/Function2;)V
    .locals 4
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

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/device/VivoDevice;->hasNotch(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/device/VivoDevice;->h(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/device/VivoDevice;->g(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p0, p1, v2, v3}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->calculateNotchRect(Landroid/content/Context;II)Landroid/graphics/Rect;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->getNotchType(Landroid/app/Activity;Ljava/util/List;)Lcom/onyx/android/sdk/device/bean/NotchType;

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
    const/high16 p0, 0x40800000    # 4.0f

    invoke-static {p0}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final h(Landroid/content/Context;)I
    .locals 0

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenDensity()F

    move-result p0

    const/16 p1, 0x64

    int-to-float p1, p1

    mul-float/2addr p1, p0

    float-to-int p0, p1

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
    invoke-virtual {p0}, Lcom/onyx/android/sdk/device/VivoDevice;->i()Z

    move-result p0

    return p0
.end method

.method public final i()Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    const-string p0, "android.util.FtFeature"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/device/ReflectUtils;->INSTANCE:Lcom/onyx/android/sdk/device/ReflectUtils;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const-string v2, "isFtFeatureSupport"

    invoke-virtual {v0, p0, v2, v1}, Lcom/onyx/android/sdk/device/ReflectUtils;->getMethodSafely(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Lcom/onyx/android/sdk/device/ReflectUtils;->invokeMethodSafely(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public initStylusVibrate(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/vivo/penengine/impl/VivoStylusManagerImpl;->getInstance(Landroid/content/Context;)Lcom/vivo/penengine/impl/VivoStylusManagerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/vivo/penengine/impl/VivoStylusManagerImpl;->init()V

    return-void
.end method

.method public onGesture(I)Z
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/device/VivoDevice;->c:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_3

    const-string p1, "settings_stylus_secondary_click"

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/device/VivoDevice;->c:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_3

    const-string p1, "settings_stylus_primary_click"

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/onyx/android/sdk/device/VivoDevice;->c:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_3

    const-string p1, "settings_stylus_double_click"

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_3
    :goto_0
    return v1
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

    iput-object p2, p0, Lcom/onyx/android/sdk/device/VivoDevice;->c:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->getInstance(Landroid/content/Context;)Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->registerGestureCallback(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$OnGestureCallback;)V

    return-void
.end method

.method public unRegisterStylusEngine(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->getInstance(Landroid/content/Context;)Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl;->unregisterGestureCallback(Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$OnGestureCallback;)V

    return-void
.end method
