.class public Lcom/onyx/android/sdk/device/CommonBaseDevice;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/device/IDevice;
.implements Lcom/onyx/android/sdk/device/INotch;
.implements Lcom/onyx/android/sdk/device/IScreen;
.implements Lcom/onyx/android/sdk/device/IVibrate;
.implements Lcom/onyx/android/sdk/device/IPalmSize;
.implements Lcom/onyx/android/sdk/device/IPenArgs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/device/CommonBaseDevice$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommonBaseDevice.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonBaseDevice.kt\ncom/onyx/android/sdk/device/CommonBaseDevice\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,522:1\n1855#2,2:523\n*S KotlinDebug\n*F\n+ 1 CommonBaseDevice.kt\ncom/onyx/android/sdk/device/CommonBaseDevice\n*L\n311#1:523,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0010\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0017\u0008\u0016\u0018\u0000 ~2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006:\u0001~B\u0007\u00a2\u0006\u0004\u0008|\u0010}J\u001c\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\u0007H\u0002J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000cH\u0002J\u0010\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000cH\u0002J\u0010\u0010\u0012\u001a\u00020\u00112\u0006\u0010\r\u001a\u00020\u000cH\u0002J\u001a\u0010\u0018\u001a\u00020\u00172\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0016\u001a\u00020\u0015H\u0016J6\u0010\u001b\u001a\u00020\u00172\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u0015H\u0016J0\u0010!\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u001f\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020\u001cH\u0016J\u0012\u0010\"\u001a\u00020\u00172\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0013H\u0016J\u0010\u0010#\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u0010\u0010$\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u0010\u0010%\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u0010\u0010\'\u001a\u00020\u00172\u0006\u0010&\u001a\u00020\u0013H\u0016J\u0010\u0010(\u001a\u00020\u00172\u0006\u0010&\u001a\u00020\u0013H\u0016J\u0010\u0010)\u001a\u00020\u00172\u0006\u0010&\u001a\u00020\u0013H\u0016J\u0010\u0010*\u001a\u00020\u00172\u0006\u0010&\u001a\u00020\u0013H\u0016J\u0010\u0010+\u001a\u00020\u00172\u0006\u0010&\u001a\u00020\u0013H\u0016J\u0010\u0010.\u001a\u00020-2\u0006\u0010,\u001a\u00020\u0017H\u0016J\u0010\u00100\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020/H\u0016J$\u00106\u001a\u00020-2\u0006\u00102\u001a\u0002012\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u00020\u001703H\u0016J\u0010\u00107\u001a\u00020-2\u0006\u00102\u001a\u000201H\u0016J\u0010\u00108\u001a\u00020-2\u0006\u00102\u001a\u000201H\u0016J\u0010\u00109\u001a\u00020-2\u0006\u00102\u001a\u000201H\u0016J\u0018\u0010;\u001a\u00020-2\u0006\u00102\u001a\u0002012\u0006\u0010:\u001a\u00020\u0017H\u0016J\u0010\u0010<\u001a\u00020-2\u0006\u00102\u001a\u000201H\u0016J\u0018\u0010@\u001a\u0004\u0018\u00010>2\u000c\u0010?\u001a\u0008\u0012\u0004\u0012\u00020>0=H\u0016J\u0010\u0010B\u001a\u00020\u00172\u0006\u0010A\u001a\u00020\nH\u0016J\u0010\u0010C\u001a\u00020\u00172\u0006\u0010A\u001a\u00020\nH\u0016J\u0008\u0010D\u001a\u00020\u0017H\u0016J\u0010\u0010E\u001a\u00020-2\u0006\u0010\r\u001a\u00020\u000cH\u0016J\u0010\u0010H\u001a\u00020-2\u0006\u0010G\u001a\u00020FH\u0016J\u0008\u0010I\u001a\u00020\u0017H\u0016J\u0010\u0010K\u001a\u00020\u00172\u0006\u0010J\u001a\u00020\u0015H\u0016J(\u0010P\u001a\u00020\n2\u0006\u0010L\u001a\u00020\n2\u0006\u0010M\u001a\u00020\n2\u0006\u0010N\u001a\u00020\n2\u0006\u0010O\u001a\u00020\u0015H\u0016J\u0010\u0010R\u001a\u00020\n2\u0006\u0010Q\u001a\u00020\nH\u0016J\u0010\u0010S\u001a\u00020\u00172\u0006\u0010\r\u001a\u00020\u000cH\u0016J\u0010\u0010T\u001a\u00020-2\u0006\u0010\r\u001a\u00020\u000cH\u0016JJ\u0010[\u001a\u00020-2\u0006\u0010\r\u001a\u00020\u000c28\u0010Z\u001a4\u0012\u0013\u0012\u00110\u0017\u00a2\u0006\u000c\u0008V\u0012\u0008\u0008W\u0012\u0004\u0008\u0008(S\u0012\u0015\u0012\u0013\u0018\u00010X\u00a2\u0006\u000c\u0008V\u0012\u0008\u0008W\u0012\u0004\u0008\u0008(Y\u0012\u0004\u0012\u00020-0UH\u0016J\"\u0010_\u001a\u0004\u0018\u00010^2\u0006\u00102\u001a\u0002012\u0006\u0010\\\u001a\u00020\u00152\u0006\u0010]\u001a\u00020\u0015H\u0016J\u001e\u0010a\u001a\u0004\u0018\u00010X2\u0006\u0010\r\u001a\u00020\u000c2\u000c\u0010`\u001a\u0008\u0012\u0004\u0012\u00020^0=J\u0008\u0010c\u001a\u00020bH\u0016J\u0008\u0010d\u001a\u00020\u0017H\u0016J\u0008\u0010e\u001a\u00020\u0017H\u0016J\u0008\u0010f\u001a\u00020\u0017H\u0016J\u0010\u0010g\u001a\u00020\u00172\u0006\u0010\r\u001a\u00020\u000cH\u0016J\u0018\u0010j\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010i\u001a\u00020hH\u0016J\u0018\u0010l\u001a\u00020\u00152\u0006\u0010i\u001a\u00020h2\u0006\u0010k\u001a\u00020\u000eH\u0016J\u000e\u0010m\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0015J\u0008\u0010n\u001a\u00020\nH\u0016J\u0008\u0010o\u001a\u00020\nH\u0016J\u0008\u0010p\u001a\u00020\u0017H\u0016J\u0008\u0010q\u001a\u000204H\u0016J\u0010\u0010r\u001a\u00020-2\u0006\u0010G\u001a\u00020FH\u0004J\u000e\u0010s\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020\u000cR\"\u0010v\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008t\u0010u\u001a\u0004\u0008v\u0010w\"\u0004\u0008x\u0010yR\"\u0010z\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010u\u001a\u0004\u0008z\u0010w\"\u0004\u0008{\u0010y\u00a8\u0006\u007f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/device/CommonBaseDevice;",
        "Lcom/onyx/android/sdk/device/IDevice;",
        "Lcom/onyx/android/sdk/device/INotch;",
        "Lcom/onyx/android/sdk/device/IScreen;",
        "Lcom/onyx/android/sdk/device/IVibrate;",
        "Lcom/onyx/android/sdk/device/IPalmSize;",
        "Lcom/onyx/android/sdk/device/IPenArgs;",
        "Landroid/graphics/PointF;",
        "downPointF",
        "upPointF",
        "",
        "b",
        "Landroid/app/Activity;",
        "activity",
        "Lcom/onyx/android/sdk/device/bean/MultiWindowType;",
        "d",
        "e",
        "Landroid/view/Display$Mode;",
        "c",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "pointerCount",
        "",
        "filterByCancel",
        "currentEvent",
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
        "filterByDispatchPointerDown",
        "filterByActionDown",
        "motionEvent",
        "isStylusLongPressed",
        "isEraserPressed",
        "isStylusLongPressInterrupt",
        "isStylusLongPressRelease",
        "isPressed",
        "isActive",
        "",
        "setStylusLongPressActive",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "getNavBarHeight",
        "Landroid/content/Context;",
        "context",
        "Lkotlin/Function1;",
        "",
        "callBack",
        "registerStylusEngine",
        "unRegisterStylusEngine",
        "initStylusVibrate",
        "destroyStylusVibrate",
        "isEnable",
        "enableVibrate",
        "startVibrate",
        "",
        "Landroid/content/pm/ResolveInfo;",
        "list",
        "getTranslateInfo",
        "refresh",
        "isRefreshSupport",
        "isDynamicRefreshSupport",
        "isRefreshModeChangeEnable",
        "setHighRefresh",
        "Landroid/view/View;",
        "view",
        "requestRefreshConfigOfView",
        "supportNativeRenderNode",
        "keyboardHeight",
        "filterDuplicateKeyboardOpenEvent",
        "currentPressureSensitivity",
        "minPressureSensitivity",
        "maxPressureSensitivity",
        "totalLevel",
        "getDevicePressureSensitivity",
        "commonDefaultPressureSensitivity",
        "getDefaultPressureSensitivity",
        "hasNotch",
        "setDisplayInNotch",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "Lcom/onyx/android/sdk/device/bean/NotchType;",
        "notchType",
        "callback",
        "getNotchRect",
        "notchWidth",
        "notchHeight",
        "Landroid/graphics/Rect;",
        "calculateNotchRect",
        "rectList",
        "getNotchType",
        "Lcom/onyx/android/sdk/device/bean/ScreenInfo;",
        "getScreenInfo",
        "isFreedomWindowMode",
        "isMultiWindowMode",
        "isFullScreen",
        "isSmallScreen",
        "Lcom/onyx/android/sdk/device/bean/WindowModeType;",
        "windowModeType",
        "getMultiWindowType",
        "multiWindowType",
        "getWindowTopPadding",
        "isMoreThanTwoFinger",
        "getPalmSizeFactor",
        "getBigPalmSizeFactor",
        "getDefaultPalmRejectEnable",
        "getDeviceSystem",
        "requestHighRefreshRate",
        "getDeviceTopPaddingHeight",
        "a",
        "Z",
        "isStylusPress",
        "()Z",
        "setStylusPress",
        "(Z)V",
        "isLongPressActive",
        "setLongPressActive",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCommonBaseDevice.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonBaseDevice.kt\ncom/onyx/android/sdk/device/CommonBaseDevice\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,522:1\n1855#2,2:523\n*S KotlinDebug\n*F\n+ 1 CommonBaseDevice.kt\ncom/onyx/android/sdk/device/CommonBaseDevice\n*L\n311#1:523,2\n*E\n"
    }
.end annotation


# static fields
.field public static final BIG_PALM_SIZE_FACTOR:F = 2.0f

.field public static final Companion:Lcom/onyx/android/sdk/device/CommonBaseDevice$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DISPATCH_POINTER_COUNT:I = 0x3

.field public static final HARMONYOS_ANCO_FLAG:Ljava/lang/String; = "anco"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MAX_DYNAMIC_SUPPORT_REFRESH_VALUE:F = 121.0f

.field public static final MAX_SUPPORT_REFRESH_VALUE:F = 121.0f

.field public static final PALM_SIZE_FACTOR:F = 2.5f

.field public static final PLATFORM_ANDROID:Ljava/lang/String; = "android"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PLATFORM_HARMONYOS_COMPAT:Ljava/lang/String; = "harmonyos_compat"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PLATFORM_UNKNOWN:Ljava/lang/String; = "unknown"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SMALL_SCREEN_WIDTH:I = 0x168

.field public static final STYLUS_KEY_DOUBLE_CLICK:I = 0x2

.field public static final TWO_FINGERS:I = 0x2


# instance fields
.field public a:Z

.field public b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/device/CommonBaseDevice$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/device/CommonBaseDevice$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/device/CommonBaseDevice;->Companion:Lcom/onyx/android/sdk/device/CommonBaseDevice$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/device/CommonBaseDevice;Landroid/app/Activity;Lkotlin/jvm/functions/Function2;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->f(Lcom/onyx/android/sdk/device/CommonBaseDevice;Landroid/app/Activity;Lkotlin/jvm/functions/Function2;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Lcom/onyx/android/sdk/device/CommonBaseDevice;Landroid/app/Activity;Lkotlin/jvm/functions/Function2;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "v"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "insets"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object p3

    const-string v1, "getBoundingRects(...)"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->getNotchType(Landroid/app/Activity;Ljava/util/List;)Lcom/onyx/android/sdk/device/bean/NotchType;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p0, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p4

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p4

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p0, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p4
.end method


# virtual methods
.method public final b(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 1

    const/high16 p0, -0x40800000    # -1.0f

    if-nez p2, :cond_0

    return p0

    :cond_0
    if-nez p1, :cond_1

    return p0

    :cond_1
    iget p0, p2, Landroid/graphics/PointF;->x:F

    iget v0, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p0, v0

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p1

    mul-float/2addr p0, p0

    mul-float/2addr p2, p2

    add-float/2addr p0, p2

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public final c(Landroid/app/Activity;)Landroid/view/Display$Mode;
    .locals 7

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object p1

    const-string v2, "getSupportedModes(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, p1

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, p1, v3

    const/16 v5, 0x1f

    invoke-static {v5}, Lcom/onyx/android/sdk/device/BuildKt;->isApiLevelAbove(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Lcom/sunia/HTREnginev2/y4e;->a(Landroid/view/Display$Mode;)[F

    move-result-object v5

    const-string v6, "getAlternativeRefreshRates(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v5, v5

    const/4 v6, 0x1

    if-nez v5, :cond_0

    move v5, v6

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    xor-int/2addr v5, v6

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v5

    invoke-virtual {p0, v5}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->isDynamicRefreshSupport(F)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v5

    invoke-virtual {p0, v5}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->isDynamicRefreshSupport(F)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v5

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v5

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v5

    invoke-virtual {p0, v5}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->isRefreshSupport(F)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    :goto_2
    move-object v0, v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public calculateNotchRect(Landroid/content/Context;II)Landroid/graphics/Rect;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenWidth()I

    move-result p0

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenHeight()I

    move-result p1

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->isPortrait()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sub-int/2addr p0, p2

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p2, p0

    move p1, v1

    move v1, p0

    move v2, p3

    move p3, p2

    move p2, v2

    goto :goto_0

    :cond_0
    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p2, p1

    :goto_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v1, p1, p3, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public final d(Landroid/app/Activity;)Lcom/onyx/android/sdk/device/bean/MultiWindowType;
    .locals 6

    sget-object p0, Lcom/onyx/android/sdk/device/bean/MultiWindowType;->MULTI_WINDOW_UN_KNOW:Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenWidth()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v3, v2, 0x2

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getAppScreenWidth()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v5

    if-gt v0, v5, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/device/bean/MultiWindowType;->MULTI_WINDOW_H_1_2:Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getAppScreenWidth()I

    move-result v0

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v4}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v2

    if-gt v0, v2, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/device/bean/MultiWindowType;->MULTI_WINDOW_H_1_3:Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    :cond_1
    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getAppScreenWidth()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v4}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v2

    if-gt v0, v2, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/device/bean/MultiWindowType;->MULTI_WINDOW_H_2_3:Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    :cond_2
    new-array v0, v1, [I

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p1, 0x0

    aget v0, v0, p1

    invoke-static {}, Lcom/blankj/utilcode/util/BarUtils;->getStatusBarHeight()I

    move-result v1

    const/4 v2, 0x1

    if-gt v0, v1, :cond_3

    move p1, v2

    :cond_3
    xor-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/device/bean/MultiWindowType;->setLocation(I)V

    return-object p0
.end method

.method public destroyStylusVibrate(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final e(Landroid/app/Activity;)Lcom/onyx/android/sdk/device/bean/MultiWindowType;
    .locals 7

    sget-object p0, Lcom/onyx/android/sdk/device/bean/MultiWindowType;->MULTI_WINDOW_UN_KNOW:Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenHeight()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenHeight()I

    move-result v2

    const/4 v3, 0x3

    div-int/2addr v2, v3

    mul-int/lit8 v4, v2, 0x2

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getAppScreenHeight()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v6

    if-gt v0, v6, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/device/bean/MultiWindowType;->MULTI_WINDOW_V_1_2:Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getAppScreenWidth()I

    move-result v0

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v5}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v2

    if-gt v0, v2, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/device/bean/MultiWindowType;->MULTI_WINDOW_V_1_3:Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    :cond_1
    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getAppScreenWidth()I

    move-result v0

    sub-int/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v5}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v2

    if-gt v0, v2, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/device/bean/MultiWindowType;->MULTI_WINDOW_V_2_3:Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    :cond_2
    new-array v0, v1, [I

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p1, 0x1

    aget v0, v0, p1

    invoke-static {}, Lcom/blankj/utilcode/util/BarUtils;->getStatusBarHeight()I

    move-result v2

    if-gt v0, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v3

    :goto_1
    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/device/bean/MultiWindowType;->setLocation(I)V

    return-object p0
.end method

.method public enableVibrate(Landroid/content/Context;Z)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public filterByActionDown(Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "event"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public filterByCancel(Landroid/view/MotionEvent;I)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "filter by cancel"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    return p2

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public filterByDispatchPointerDown(Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "event"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    const/4 p1, 0x5

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
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

    const/4 p0, 0x0

    return p0
.end method

.method public filterByTouchUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move p0, v0

    :cond_0
    return p0
.end method

.method public filterByUpToDownDistance(Landroid/view/MotionEvent;Landroid/graphics/PointF;Landroid/graphics/PointF;II)Z
    .locals 0
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

    invoke-virtual {p0, p2, p3}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p0

    int-to-float p1, p5

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public filterByUpToDownTime(JJIJJ)Z
    .locals 0

    sub-long/2addr p3, p1

    cmp-long p0, p6, p3

    const/4 p1, 0x0

    if-gtz p0, :cond_0

    cmp-long p0, p3, p8

    if-gez p0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public filterDuplicateKeyboardOpenEvent(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getBigPalmSizeFactor()F
    .locals 0

    const/high16 p0, 0x40000000    # 2.0f

    return p0
.end method

.method public getDefaultPalmRejectEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDefaultPressureSensitivity(F)F
    .locals 0

    return p1
.end method

.method public getDevicePressureSensitivity(FFFI)F
    .locals 0

    return p1
.end method

.method public getDeviceSystem()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "android"

    return-object p0
.end method

.method public final getDeviceTopPaddingHeight(Landroid/app/Activity;)I
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->getScreenInfo()Lcom/onyx/android/sdk/device/bean/ScreenInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/device/bean/ScreenInfo;->getWindowModeType()Lcom/onyx/android/sdk/device/bean/WindowModeType;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->getMultiWindowType(Landroid/app/Activity;Lcom/onyx/android/sdk/device/bean/WindowModeType;)Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->getScreenInfo()Lcom/onyx/android/sdk/device/bean/ScreenInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/device/bean/ScreenInfo;->getWindowModeType()Lcom/onyx/android/sdk/device/bean/WindowModeType;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->getWindowTopPadding(Lcom/onyx/android/sdk/device/bean/WindowModeType;Lcom/onyx/android/sdk/device/bean/MultiWindowType;)I

    move-result p0

    return p0
.end method

.method public getMultiWindowType(Landroid/app/Activity;Lcom/onyx/android/sdk/device/bean/WindowModeType;)Lcom/onyx/android/sdk/device/bean/MultiWindowType;
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/device/bean/WindowModeType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowModeType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/device/bean/WindowModeType;->MULTI_WINDOW_MODE:Lcom/onyx/android/sdk/device/bean/WindowModeType;

    if-ne p2, v0, :cond_2

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenWidth()I

    move-result p2

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getAppScreenWidth()I

    move-result v0

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->e(Landroid/app/Activity;)Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->d(Landroid/app/Activity;)Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/device/bean/MultiWindowType;->MULTI_WINDOW_NONE:Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    return-object p0
.end method

.method public getNavBarHeight(Landroidx/appcompat/app/AppCompatActivity;)I
    .locals 3
    .param p1    # Landroidx/appcompat/app/AppCompatActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "dimen"

    const-string v1, "android"

    const-string v2, "navigation_bar_height"

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/blankj/utilcode/util/BarUtils;->isNavBarVisible(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getNotchRect(Landroid/app/Activity;Lkotlin/jvm/functions/Function2;)V
    .locals 2
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

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->hasNotch(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "getDecorView(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/sunia/HTREnginev2/z4e;

    invoke-direct {v1, p0, p1, p2}, Lcom/sunia/HTREnginev2/z4e;-><init>(Lcom/onyx/android/sdk/device/CommonBaseDevice;Landroid/app/Activity;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public final getNotchType(Landroid/app/Activity;Ljava/util/List;)Lcom/onyx/android/sdk/device/bean/NotchType;
    .locals 6
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Lcom/onyx/android/sdk/device/bean/NotchType;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "rectList"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string v0, "getWindow(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    new-instance p1, Landroid/graphics/Rect;

    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-direct {p1, v0, v0, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p0

    const/4 p2, 0x0

    if-nez p0, :cond_1

    return-object p2

    :cond_1
    new-instance p0, Landroid/graphics/Rect;

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenHeight()I

    move-result v2

    invoke-direct {p0, v1, v1, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-gt v0, v2, :cond_2

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ge v0, v2, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/device/bean/NotchType;->MIDDLE_TOP:Lcom/onyx/android/sdk/device/bean/NotchType;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/device/bean/NotchType;->getPositionOffset()Landroid/graphics/Point;

    move-result-object p2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, p2, Landroid/graphics/Point;->y:I

    return-object p0

    :cond_2
    sub-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_4

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ge v0, v1, :cond_3

    sget-object p0, Lcom/onyx/android/sdk/device/bean/NotchType;->MIDDLE_LEFT:Lcom/onyx/android/sdk/device/bean/NotchType;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/device/bean/NotchType;->getPositionOffset()Landroid/graphics/Point;

    move-result-object p2

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iput p1, p2, Landroid/graphics/Point;->x:I

    return-object p0

    :cond_3
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_4

    sget-object p2, Lcom/onyx/android/sdk/device/bean/NotchType;->MIDDLE_RIGHT:Lcom/onyx/android/sdk/device/bean/NotchType;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/device/bean/NotchType;->getPositionOffset()Landroid/graphics/Point;

    move-result-object v0

    iget p0, p0, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, p1

    iput p0, v0, Landroid/graphics/Point;->x:I

    return-object p2

    :cond_4
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_5

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_5

    sget-object p0, Lcom/onyx/android/sdk/device/bean/NotchType;->LEFT_TOP:Lcom/onyx/android/sdk/device/bean/NotchType;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/device/bean/NotchType;->getPositionOffset()Landroid/graphics/Point;

    move-result-object p2

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iput p1, p2, Landroid/graphics/Point;->x:I

    return-object p0

    :cond_5
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p0, v1

    if-le v0, p0, :cond_6

    iget p0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-ge p0, v0, :cond_6

    sget-object p0, Lcom/onyx/android/sdk/device/bean/NotchType;->RIGHT_TOP:Lcom/onyx/android/sdk/device/bean/NotchType;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/device/bean/NotchType;->getPositionOffset()Landroid/graphics/Point;

    move-result-object p2

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iput p1, p2, Landroid/graphics/Point;->x:I

    return-object p0

    :cond_6
    return-object p2
.end method

.method public getPalmSizeFactor()F
    .locals 0

    const/high16 p0, 0x40200000    # 2.5f

    return p0
.end method

.method public getScreenInfo()Lcom/onyx/android/sdk/device/bean/ScreenInfo;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/device/bean/ScreenInfo;

    invoke-direct {v0}, Lcom/onyx/android/sdk/device/bean/ScreenInfo;-><init>()V

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getAppScreenWidth()I

    move-result v1

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenDensity()F

    move-result v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->isFullScreen()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/device/bean/WindowModeType;->FULL_SCREEN:Lcom/onyx/android/sdk/device/bean/WindowModeType;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->isFreedomWindowMode()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/device/bean/WindowModeType;->FREEDOM_MODE:Lcom/onyx/android/sdk/device/bean/WindowModeType;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->isMultiWindowMode()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/device/bean/WindowModeType;->MULTI_WINDOW_MODE:Lcom/onyx/android/sdk/device/bean/WindowModeType;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/device/bean/WindowModeType;->FULL_SCREEN:Lcom/onyx/android/sdk/device/bean/WindowModeType;

    :goto_0
    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;->PAD:Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;

    goto :goto_1

    :cond_3
    sget-object v3, Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;->PHONE:Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;

    :goto_1
    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/device/bean/ScreenInfo;->setAppScreenDp(F)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/device/bean/ScreenInfo;->setWindowModeType(Lcom/onyx/android/sdk/device/bean/WindowModeType;)V

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/device/bean/ScreenInfo;->setScreenDisplayType(Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;)V

    return-object v0
.end method

.method public getTranslateInfo(Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "list"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "name"

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "translate"

    invoke-static {v5, v6, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_1

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "translation"

    invoke-static {v5, v7, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "translator"

    invoke-static {v5, v7, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "browser"

    const/4 v7, 0x2

    invoke-static {v4, v5, v6, v7, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move v6, v2

    :cond_2
    if-eqz v6, :cond_0

    goto :goto_0

    :cond_3
    move-object v0, v1

    :goto_0
    check-cast v0, Landroid/content/pm/ResolveInfo;

    if-nez v0, :cond_6

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "dict"

    invoke-static {v0, v4, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v1, p1

    :cond_5
    move-object v0, v1

    check-cast v0, Landroid/content/pm/ResolveInfo;

    :cond_6
    return-object v0
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

    const/high16 p0, 0x40800000    # 4.0f

    invoke-static {p0}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result p0

    return p0
.end method

.method public hasNotch(Landroid/app/Activity;)Z
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p0, 0x1a

    invoke-static {p0}, Lcom/onyx/android/sdk/device/BuildKt;->isApiLevelBelow(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

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

    return-void
.end method

.method public isCheckScaleSpanEnable()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/device/IDevice$DefaultImpls;->isCheckScaleSpanEnable(Lcom/onyx/android/sdk/device/IDevice;)Z

    move-result p0

    return p0
.end method

.method public isDynamicRefreshSupport(F)Z
    .locals 0

    const/high16 p0, 0x42f20000    # 121.0f

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEraserPressed(Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "motionEvent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p0

    const/4 p1, 0x4

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFreedomWindowMode()Z
    .locals 4

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "mWindowingMode=freeform"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isFullScreen()Z
    .locals 4

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "mWindowingMode=fullscreen"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isLongPressActive()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/device/CommonBaseDevice;->b:Z

    return p0
.end method

.method public final isMoreThanTwoFinger(I)Z
    .locals 0

    const/4 p0, 0x2

    if-le p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMultiWindowMode()Z
    .locals 4

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "mWindowingMode=multi-window"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isPressed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "motionEvent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 p1, 0x5

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isRefreshModeChangeEnable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isRefreshSupport(F)Z
    .locals 0

    const/high16 p0, 0x42f20000    # 121.0f

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSmallScreen(Landroid/app/Activity;)Z
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/device/DeviceFactory;->INSTANCE:Lcom/onyx/android/sdk/device/DeviceFactory;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/device/DeviceFactory;->getScreenDevice()Lcom/onyx/android/sdk/device/IScreen;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/device/IScreen;->getScreenInfo()Lcom/onyx/android/sdk/device/bean/ScreenInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/device/bean/ScreenInfo;->getWindowModeType()Lcom/onyx/android/sdk/device/bean/WindowModeType;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Lcom/onyx/android/sdk/device/IScreen;->getMultiWindowType(Landroid/app/Activity;Lcom/onyx/android/sdk/device/bean/WindowModeType;)Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    move-result-object p0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/device/bean/ScreenInfo;->getWindowModeType()Lcom/onyx/android/sdk/device/bean/WindowModeType;

    move-result-object p1

    sget-object v1, Lcom/onyx/android/sdk/device/bean/WindowModeType;->FREEDOM_MODE:Lcom/onyx/android/sdk/device/bean/WindowModeType;

    if-ne p1, v1, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/device/bean/ScreenInfo;->getAppScreenDp()F

    move-result p1

    const/high16 v1, 0x43b40000    # 360.0f

    cmpg-float p1, p1, v1

    if-ltz p1, :cond_2

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/device/bean/ScreenInfo;->getScreenDisplayType()Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;->PHONE:Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;

    if-eq p1, v0, :cond_2

    sget-object p1, Lcom/onyx/android/sdk/device/bean/MultiWindowType;->MULTI_WINDOW_H_1_3:Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    if-eq p0, p1, :cond_2

    sget-object p1, Lcom/onyx/android/sdk/device/bean/MultiWindowType;->MULTI_WINDOW_H_1_2:Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isStylusLongPressInterrupt(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "motionEvent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p0

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p0

    const/16 p1, 0x40

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStylusLongPressRelease(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "motionEvent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p0

    const/16 v1, 0x20

    if-eq p0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p0

    const/16 p1, 0x40

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public isStylusLongPressed(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "motionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p1

    const/16 v0, 0x40

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/onyx/android/sdk/device/CommonBaseDevice;->a:Z

    :goto_2
    iget-boolean p0, p0, Lcom/onyx/android/sdk/device/CommonBaseDevice;->a:Z

    return p0
.end method

.method public final isStylusPress()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/device/CommonBaseDevice;->a:Z

    return p0
.end method

.method public normalizeTouchAction(Landroid/view/MotionEvent;)I
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/device/IDevice$DefaultImpls;->normalizeTouchAction(Lcom/onyx/android/sdk/device/IDevice;Landroid/view/MotionEvent;)I

    move-result p0

    return p0
.end method

.method public registerStylusEngine(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 0
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

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "callBack"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final requestHighRefreshRate(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x23

    invoke-static {v0}, Lcom/onyx/android/sdk/device/BuildKt;->isApiLevelAbove(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->c(Landroid/app/Activity;)Landroid/view/Display$Mode;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setRequestedFrameRate(F)V

    :cond_0
    return-void
.end method

.method public requestRefreshConfigOfView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setDisplayInNotch(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, 0x1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const-string p1, "getDecorView(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x500

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public setHighRefresh(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->isRefreshModeChangeEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->c(Landroid/app/Activity;)Landroid/view/Display$Mode;

    move-result-object p0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/Display$Mode;->getModeId()I

    move-result p0

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    :cond_0
    return-void
.end method

.method public final setLongPressActive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/device/CommonBaseDevice;->b:Z

    return-void
.end method

.method public setStylusLongPressActive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/device/CommonBaseDevice;->b:Z

    return-void
.end method

.method public final setStylusPress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/device/CommonBaseDevice;->a:Z

    return-void
.end method

.method public startVibrate(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public supportNativeRenderNode()Z
    .locals 1

    const/16 v0, 0x1d

    invoke-static {v0}, Lcom/onyx/android/sdk/device/BuildKt;->isApiLevelBelow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/onyx/android/sdk/device/IDevice$DefaultImpls;->supportNativeRenderNode(Lcom/onyx/android/sdk/device/IDevice;)Z

    move-result p0

    return p0
.end method

.method public unRegisterStylusEngine(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
