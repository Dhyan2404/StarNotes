.class public final Lcom/onyx/android/sdk/universal/editor/helper/StylusClickHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/helper/StylusClickHelper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0010\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0006\u0010\u0006\u001a\u00020\u0004J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0002R\u0016\u0010\u000c\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u000bR\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0012\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u000b\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/helper/StylusClickHelper;",
        "",
        "Landroid/view/KeyEvent;",
        "event",
        "",
        "handleStylusEvent",
        "releaseTouchStatus",
        "",
        "clickKey",
        "a",
        "",
        "Z",
        "isInSingleClickTimeInterval",
        "",
        "b",
        "I",
        "doubleClickTimeKey",
        "c",
        "isLongPressActive",
        "<init>",
        "()V",
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
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/helper/StylusClickHelper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DOUBLE_CLICK_TIME_LIMIT:J = 0xc8L

.field public static final STYLUS_BTN_PRIMARY:I = 0x5d

.field public static final STYLUS_BTN_SECONDARY:I = 0x5c

.field public static final STYLUS_KEY_CODE_HW_TOUCH:I = 0x2ce

.field public static final STYLUS_KEY_CODE_LENOVO:I = 0x126

.field public static final STYLUS_KEY_CODE_LENOVO_02:I = 0x258

.field public static final STYLUS_KEY_CODE_LENOVO_DOUBLE:I = 0x12b

.field public static final STYLUS_KEY_CODE_LENOVO_DOUBLE_02:I = 0x259

.field public static final STYLUS_KEY_CODE_LENOVO_LONG_PRESS:I = 0x25c

.field public static final STYLUS_KEY_CODE_XIAOMI_DOUBLE_CLICK:I = 0xc3

.field public static final STYLUS_KEY_CODE_XIAOMI_PINCH:I = 0xc2

.field public static final STYLUS_KEY_CODE_XIAOMI_SLIDE_DOWN:I = 0xc5

.field public static final STYLUS_KEY_CODE_XIAOMI_SLIDE_UP:I = 0xc4

.field public static final STYLUS_KEY_SAMSUNG_TRIGGER_CLICK:I = 0xa8

.field public static final STYLUS_KEY_SAMSUNG_TRIGGER_DOUBLE_CLICK:I = 0xa9


# instance fields
.field public a:Z

.field public b:I

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/helper/StylusClickHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/helper/StylusClickHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/helper/StylusClickHelper;->Companion:Lcom/onyx/android/sdk/universal/editor/helper/StylusClickHelper$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$sendBroadCastIntent(Lcom/onyx/android/sdk/universal/editor/helper/StylusClickHelper;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/StylusClickHelper;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setInSingleClickTimeInterval$p(Lcom/onyx/android/sdk/universal/editor/helper/StylusClickHelper;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/StylusClickHelper;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    new-instance p0, Landroid/content/Intent;

    const-string v0, "action_on_stylus_click"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "key_code_click_key"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public final handleStylusEvent(Landroid/view/KeyEvent;)V
    .locals 4
    .param p1    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x5c

    if-eq v0, v2, :cond_6

    const/16 v2, 0x5d

    if-eq v0, v2, :cond_5

    const/16 v2, 0xa8

    if-eq v0, v2, :cond_5

    const/16 v2, 0xa9

    const-string v3, "settings_stylus_double_click"

    if-eq v0, v2, :cond_4

    const/16 v2, 0x126

    if-eq v0, v2, :cond_5

    const/16 v2, 0x12b

    if-eq v0, v2, :cond_4

    const/16 v2, 0x25c

    if-eq v0, v2, :cond_2

    const/16 v2, 0x2ce

    if-eq v0, v2, :cond_0

    const/16 v1, 0x258

    if-eq v0, v1, :cond_5

    const/16 v1, 0x259

    if-eq v0, v1, :cond_4

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-static {p1}, Lcom/miui/penengine/touchfilm/MiuiTouchFilmUtils;->onDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "SETTINGS_STYLUS_SLIDE_DOWN"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/StylusClickHelper;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lcom/miui/penengine/touchfilm/MiuiTouchFilmUtils;->onDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "SETTINGS_STYLUS_SLIDE_UP"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/StylusClickHelper;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Lcom/miui/penengine/touchfilm/MiuiTouchFilmUtils;->onDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "SETTINGS_STYLUS_PINCH"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/StylusClickHelper;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/StylusClickHelper;->a:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    iget v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/StylusClickHelper;->b:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->cancel(I)V

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/universal/editor/helper/StylusClickHelper;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/StylusClickHelper;->a:Z

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/StylusClickHelper;->a:Z

    sget-object p1, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    iget v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/StylusClickHelper;->b:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->cancel(I)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/helper/StylusClickHelper$handleStylusEvent$1$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/helper/StylusClickHelper$handleStylusEvent$1$1;-><init>(Lcom/onyx/android/sdk/universal/editor/helper/StylusClickHelper;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->timer(JLjava/util/concurrent/TimeUnit;Lkotlin/jvm/functions/Function1;)I

    move-result p1

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/StylusClickHelper;->b:I

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/StylusClickHelper;->c:Z

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iput-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/StylusClickHelper;->c:Z

    const-string p1, "settings_stylus_long_press"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/StylusClickHelper;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    :pswitch_3
    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/universal/editor/helper/StylusClickHelper;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string p1, "settings_stylus_primary_click"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/StylusClickHelper;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string p1, "settings_stylus_secondary_click"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/StylusClickHelper;->a(Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xc2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final releaseTouchStatus()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/StylusClickHelper;->c:Z

    return-void
.end method
