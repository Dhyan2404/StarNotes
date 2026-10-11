.class public final Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 C2\u00020\u0001:\u0001CB-\u0012\u0006\u0010)\u001a\u00020\"\u0012\u0006\u00100\u001a\u00020*\u0012\u0006\u00103\u001a\u000201\u0012\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u000b04\u00a2\u0006\u0004\u0008A\u0010BJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\r\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u0008\u0010\u000e\u001a\u00020\u0002H\u0002J\u0008\u0010\u000f\u001a\u00020\u0002H\u0002J\u0008\u0010\u0010\u001a\u00020\u0002H\u0002J\u0008\u0010\u0011\u001a\u00020\u0002H\u0002J\u0008\u0010\u0012\u001a\u00020\u0002H\u0002J\u0008\u0010\u0013\u001a\u00020\u0002H\u0002J\u0008\u0010\u0014\u001a\u00020\u0002H\u0002J\u0008\u0010\u0015\u001a\u00020\u0002H\u0002J\u0008\u0010\u0016\u001a\u00020\u0002H\u0002J\u0008\u0010\u0017\u001a\u00020\u0002H\u0002J\u0010\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u000bH\u0002J\u0010\u0010\u001c\u001a\u00020\u00022\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001aJ\u0006\u0010\u001d\u001a\u00020\u0002J\u0006\u0010\u001e\u001a\u00020\u0002J\u0006\u0010\u001f\u001a\u00020\u0002J\u0006\u0010 \u001a\u00020\u0002J\u0006\u0010!\u001a\u00020\u0002R\"\u0010)\u001a\u00020\"8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\"\u00100\u001a\u00020*8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010+\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\u0016\u00103\u001a\u0002018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0006\u00102R\u001a\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u000b048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u00105R\u0014\u00109\u001a\u0002078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u00108R\u001b\u0010=\u001a\u00020:8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010;\u001a\u0004\u0008#\u0010<R\u001c\u0010@\u001a\u0008\u0012\u0004\u0012\u00020\u00040>8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010?\u00a8\u0006D"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;",
        "",
        "",
        "q",
        "Landroid/content/Intent;",
        "intent",
        "c",
        "b",
        "d",
        "",
        "clickKey",
        "",
        "isStylus",
        "e",
        "i",
        "p",
        "n",
        "h",
        "l",
        "j",
        "f",
        "o",
        "m",
        "k",
        "isStylusPressed",
        "g",
        "Landroid/view/KeyEvent;",
        "event",
        "handleStylusEvent",
        "releaseTouchStatus",
        "registerStylusReceiver",
        "unRegisterStylusReceiver",
        "registerStylusEngine",
        "unRegisterStylusEngine",
        "Landroid/app/Activity;",
        "a",
        "Landroid/app/Activity;",
        "getActivity",
        "()Landroid/app/Activity;",
        "setActivity",
        "(Landroid/app/Activity;)V",
        "activity",
        "Lorg/greenrobot/eventbus/EventBus;",
        "Lorg/greenrobot/eventbus/EventBus;",
        "getEventBus",
        "()Lorg/greenrobot/eventbus/EventBus;",
        "setEventBus",
        "(Lorg/greenrobot/eventbus/EventBus;)V",
        "eventBus",
        "Lcom/onyx/android/sdk/device/IDevice;",
        "Lcom/onyx/android/sdk/device/IDevice;",
        "deviceOpt",
        "Lkotlin/Function0;",
        "Lkotlin/jvm/functions/Function0;",
        "stylusStateCallback",
        "Lcom/onyx/android/sdk/universal/editor/receiver/QuicklyFunBroadCastReceiver;",
        "Lcom/onyx/android/sdk/universal/editor/receiver/QuicklyFunBroadCastReceiver;",
        "quicklyFunBroadCastReceiver",
        "Lcom/onyx/android/sdk/universal/editor/helper/StylusClickHelper;",
        "Lkotlin/Lazy;",
        "()Lcom/onyx/android/sdk/universal/editor/helper/StylusClickHelper;",
        "stylusClickHelper",
        "Lcom/onyx/android/sdk/base/rx/RxFilter;",
        "Lcom/onyx/android/sdk/base/rx/RxFilter;",
        "clickFilter",
        "<init>",
        "(Landroid/app/Activity;Lorg/greenrobot/eventbus/EventBus;Lcom/onyx/android/sdk/device/IDevice;Lkotlin/jvm/functions/Function0;)V",
        "Companion",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FUNCTION_CLICK_TIME_INTERVAL:J = 0xc8L


# instance fields
.field public a:Landroid/app/Activity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lorg/greenrobot/eventbus/EventBus;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Lcom/onyx/android/sdk/device/IDevice;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lcom/onyx/android/sdk/universal/editor/receiver/QuicklyFunBroadCastReceiver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lcom/onyx/android/sdk/base/rx/RxFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/base/rx/RxFilter<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->Companion:Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lorg/greenrobot/eventbus/EventBus;Lcom/onyx/android/sdk/device/IDevice;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lorg/greenrobot/eventbus/EventBus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/device/IDevice;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lorg/greenrobot/eventbus/EventBus;",
            "Lcom/onyx/android/sdk/device/IDevice;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventBus"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceOpt"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stylusStateCallback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->b:Lorg/greenrobot/eventbus/EventBus;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->c:Lcom/onyx/android/sdk/device/IDevice;

    iput-object p4, p0, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->d:Lkotlin/jvm/functions/Function0;

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/receiver/QuicklyFunBroadCastReceiver;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/receiver/QuicklyFunBroadCastReceiver;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->e:Lcom/onyx/android/sdk/universal/editor/receiver/QuicklyFunBroadCastReceiver;

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper$stylusClickHelper$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper$stylusClickHelper$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->f:Lkotlin/Lazy;

    new-instance p1, Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-direct {p1}, Lcom/onyx/android/sdk/base/rx/RxFilter;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->g:Lcom/onyx/android/sdk/base/rx/RxFilter;

    return-void
.end method

.method public static final synthetic access$handleFunctionClick(Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->c(Landroid/content/Intent;)V

    return-void
.end method

.method public static final synthetic access$handleQuickly(Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;Ljava/lang/String;Z)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->e(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()Lcom/onyx/android/sdk/universal/editor/helper/StylusClickHelper;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->f:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/helper/StylusClickHelper;

    return-object p0
.end method

.method public final b(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "key_code_click_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->e(Ljava/lang/String;Z)Z

    return-void
.end method

.method public final c(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "action_on_finger_clicked"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager;->Companion:Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager$Companion;->isCurTouchModeSupportEdit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->b(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_1
    const-string v1, "action_on_stylus_click"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->d(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_2
    const-string p1, "com.hihonor.stylus.action.STYLUS_DOUBLE_CLICK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :sswitch_3
    const-string p1, "com.oplus.ipemanager.action.PENCIL_DOUBLE_CLICK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "settings_stylus_double_click"

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->e(Ljava/lang/String;Z)Z

    :cond_4
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        -0xaef675f -> :sswitch_3
        0x401efd9 -> :sswitch_2
        0x1c94a432 -> :sswitch_1
        0x7c22cde8 -> :sswitch_0
    .end sparse-switch
.end method

.method public final d(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "key_code_click_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->e(Ljava/lang/String;Z)Z

    return-void
.end method

.method public final e(Ljava/lang/String;Z)Z
    .locals 5

    invoke-static {}, Lcom/blankj/utilcode/util/AppUtils;->isAppForeground()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string p2, "app is running at background!"

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;)V

    const-class p0, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "clickKey:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " app is running at background!!!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->file(Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v2, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const/4 v3, -0x1

    invoke-virtual {v2, p1, v3}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz p2, :cond_1

    if-ne v2, v3, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/StylusFunctionInvalidEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/StylusFunctionInvalidEvent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    return v1

    :cond_1
    const-string p2, "settings_stylus_double_click"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    if-eq v2, v3, :cond_2

    sget-object p2, Lcom/onyx/android/sdk/device/DeviceFactory;->INSTANCE:Lcom/onyx/android/sdk/device/DeviceFactory;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/device/DeviceFactory;->getCurrentDevice()Lcom/onyx/android/sdk/device/CommonBaseDevice;

    move-result-object p2

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->a:Landroid/app/Activity;

    invoke-virtual {p2, v3}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->startVibrate(Landroid/content/Context;)V

    :cond_2
    const-string p2, "settings_stylus_long_press"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_3

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string p1, "stylus is touching"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;)V

    return v1

    :cond_3
    sget-object v3, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager;->Companion:Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager$Companion;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager$Companion;->isCurTouchModeSupportEdit()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_5

    const/16 p1, 0x9

    if-ne v2, p1, :cond_4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->h()V

    return v4

    :cond_4
    return v1

    :cond_5
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->h()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->i()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->p()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->n()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->l()V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->j()V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->f()V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->o()V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->m()V

    goto :goto_0

    :pswitch_9
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz v0, :cond_7

    invoke-virtual {p0, v4}, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->g(Z)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->k()V

    :cond_7
    :goto_0
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->b:Lorg/greenrobot/eventbus/EventBus;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchLastToolEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchLastToolEvent;-><init>()V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final g(Z)V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->b:Lorg/greenrobot/eventbus/EventBus;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/FunctionLongPressEraserEvent;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/FunctionLongPressEraserEvent;-><init>(Z)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->a:Landroid/app/Activity;

    return-object p0
.end method

.method public final getEventBus()Lorg/greenrobot/eventbus/EventBus;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->b:Lorg/greenrobot/eventbus/EventBus;

    return-object p0
.end method

.method public final h()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->b:Lorg/greenrobot/eventbus/EventBus;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/FunctionPaperAdaptiveEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/FunctionPaperAdaptiveEvent;-><init>()V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final handleStylusEvent(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/blankj/utilcode/util/AppUtils;->isAppForeground()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->a()Lcom/onyx/android/sdk/universal/editor/helper/StylusClickHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/StylusClickHelper;->handleStylusEvent(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public final i()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->b:Lorg/greenrobot/eventbus/EventBus;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchRedoEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchRedoEvent;-><init>()V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final j()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->b:Lorg/greenrobot/eventbus/EventBus;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchColorChangeEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchColorChangeEvent;-><init>()V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final k()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->b:Lorg/greenrobot/eventbus/EventBus;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchEraserEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchEraserEvent;-><init>()V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final l()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->b:Lorg/greenrobot/eventbus/EventBus;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchLassoEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchLassoEvent;-><init>()V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final m()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->b:Lorg/greenrobot/eventbus/EventBus;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchPenBushEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchPenBushEvent;-><init>()V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final n()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->b:Lorg/greenrobot/eventbus/EventBus;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/FunctionScreenShotEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/FunctionScreenShotEvent;-><init>()V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final o()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->b:Lorg/greenrobot/eventbus/EventBus;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchTapePenEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchTapePenEvent;-><init>()V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final p()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->b:Lorg/greenrobot/eventbus/EventBus;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchUndoEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchUndoEvent;-><init>()V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final q()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->g:Lcom/onyx/android/sdk/base/rx/RxFilter;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper$a;-><init>(Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3, v1}, Lcom/onyx/android/sdk/base/rx/RxFilter;->subscribeThrottleFirst(JLio/reactivex/rxjava3/functions/Consumer;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->e:Lcom/onyx/android/sdk/universal/editor/receiver/QuicklyFunBroadCastReceiver;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->g:Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/receiver/QuicklyFunBroadCastReceiver;->setClickFilter(Lcom/onyx/android/sdk/base/rx/RxFilter;)V

    return-void
.end method

.method public final registerStylusEngine()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->c:Lcom/onyx/android/sdk/device/IDevice;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper$registerStylusEngine$1;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper$registerStylusEngine$1;-><init>(Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;)V

    invoke-interface {v0, v1, v2}, Lcom/onyx/android/sdk/device/IDevice;->registerStylusEngine(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final registerStylusReceiver()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->q()V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->e:Lcom/onyx/android/sdk/universal/editor/receiver/QuicklyFunBroadCastReceiver;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/receiver/QuicklyFunBroadCastReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/onyx/android/sdk/base/extension/ContextKt;->registerReceiverCompat(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public final releaseTouchStatus()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->a()Lcom/onyx/android/sdk/universal/editor/helper/StylusClickHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/StylusClickHelper;->releaseTouchStatus()V

    return-void
.end method

.method public final setActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->a:Landroid/app/Activity;

    return-void
.end method

.method public final setEventBus(Lorg/greenrobot/eventbus/EventBus;)V
    .locals 1
    .param p1    # Lorg/greenrobot/eventbus/EventBus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->b:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method public final unRegisterStylusEngine()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->c:Lcom/onyx/android/sdk/device/IDevice;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/onyx/android/sdk/device/IDevice;->unRegisterStylusEngine(Landroid/content/Context;)V

    return-void
.end method

.method public final unRegisterStylusReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->g:Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxFilter;->dispose()V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->e:Lcom/onyx/android/sdk/universal/editor/receiver/QuicklyFunBroadCastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
