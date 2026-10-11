.class public abstract Lcom/onyx/galaxy/note/common/view/BasePopupWindow;
.super Landroid/widget/PopupWindow;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseCompatLoadingForDrawables"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/common/view/BasePopupWindow$Companion;,
        Lcom/onyx/galaxy/note/common/view/BasePopupWindow$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBasePopupWindow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BasePopupWindow.kt\ncom/onyx/galaxy/note/common/view/BasePopupWindow\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,379:1\n1#2:380\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\'\u0018\u0000 z2\u00020\u00012\u00020\u0002:\u0001zB\u001b\u0008\u0016\u0012\u0006\u0010M\u001a\u00020I\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008x\u0010yJ \u0010\n\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J(\u0010\r\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\tH\u0002J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0008\u0010\u0012\u001a\u00020\u0010H\u0002J\u000e\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0013J\u0008\u0010\u0016\u001a\u00020\u0010H\u0016J\u0010\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u0003H\u0016J6\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u0019J\u000e\u0010!\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u001fJ.\u0010%\u001a\u00020\u00102\u0006\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\"\u001a\u00020\u00192\u0008\u0008\u0002\u0010#\u001a\u00020\u00192\u0008\u0008\u0002\u0010$\u001a\u00020\u0003H\u0016J\u0010\u0010&\u001a\u00020\u00102\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J,\u0010&\u001a\u00020\u00102\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010(\u001a\u00020\'2\u0008\u0008\u0002\u0010)\u001a\u00020\u00192\u0008\u0008\u0002\u0010*\u001a\u00020\u0019H\u0016J\"\u0010+\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000c\u001a\u00020\tH\u0016J\"\u0010-\u001a\u00020\u00052\u0006\u0010,\u001a\u00020\u00032\u0008\u0008\u0002\u0010)\u001a\u00020\u00192\u0008\u0008\u0002\u0010*\u001a\u00020\u0019J(\u00101\u001a\u00020\u00102\u0006\u0010$\u001a\u00020\u00032\u0006\u0010.\u001a\u00020\u00192\u0006\u0010/\u001a\u00020\u00192\u0006\u00100\u001a\u00020\u0019H\u0016J(\u00104\u001a\u00020\u00102\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u00102\u001a\u00020\u00192\u0006\u00103\u001a\u00020\u00192\u0006\u0010.\u001a\u00020\u0019H\u0016J,\u00107\u001a\u00020\u00102\u0006\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u00105\u001a\u00020\u00192\u0008\u0008\u0002\u00106\u001a\u00020\u00192\u0008\u0008\u0002\u0010.\u001a\u00020\u0019J\u0006\u00108\u001a\u00020\u0019J\u0008\u00109\u001a\u00020\u0010H\u0016J \u0010=\u001a\u00020\u00102\u0006\u0010:\u001a\u00020\u001f2\u0010\u0008\u0002\u0010<\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010;J\u000e\u0010?\u001a\u00020\u00002\u0006\u0010>\u001a\u00020\u0019J\u0008\u0010@\u001a\u00020\u0010H\u0014J\u0008\u0010A\u001a\u00020\u0010H\u0014J\u0010\u0010D\u001a\u00020\u00102\u0006\u0010C\u001a\u00020BH\u0007J\u0010\u0010F\u001a\u00020\u00102\u0006\u0010C\u001a\u00020EH\u0007J\u000e\u0010H\u001a\u00020\u00102\u0006\u0010G\u001a\u00020\u0003R\u001a\u0010M\u001a\u00020I8\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010J\u001a\u0004\u0008K\u0010LR\"\u0010\u0006\u001a\u00020\u00058\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008N\u0010O\u001a\u0004\u0008P\u0010Q\"\u0004\u0008R\u0010SR\u0016\u0010V\u001a\u00020T8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010UR\u001b\u0010[\u001a\u00020W8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010X\u001a\u0004\u0008Y\u0010ZR\u0016\u0010]\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\\R\u0016\u0010`\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008^\u0010_R\u0018\u0010c\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008a\u0010bR\u0018\u0010g\u001a\u0004\u0018\u00010d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008e\u0010fR\u001e\u0010j\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010;8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008h\u0010iR*\u0010r\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010k8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008l\u0010m\u001a\u0004\u0008n\u0010o\"\u0004\u0008p\u0010qR\u0016\u0010v\u001a\u00020s8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008t\u0010uR\u0016\u0010 \u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008w\u0010\\\u00a8\u0006{"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;",
        "Landroid/widget/PopupWindow;",
        "Landroidx/lifecycle/LifecycleOwner;",
        "Landroid/view/View;",
        "anchor",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "dockType",
        "Landroid/graphics/Rect;",
        "frameOffset",
        "Landroid/graphics/Point;",
        "g",
        "rootView",
        "offsetPoint",
        "h",
        "Landroid/os/IBinder;",
        "token",
        "",
        "e",
        "i",
        "Landroid/widget/PopupWindow$OnDismissListener;",
        "listener",
        "setOnDismissListener",
        "initContentView",
        "view",
        "setContentView",
        "",
        "loadingViewWidth",
        "loadingViewHeight",
        "contentViewWidth",
        "contentViewHeight",
        "setContentViewWithLoading",
        "",
        "loading",
        "setLoading",
        "dx",
        "dy",
        "parent",
        "showByDockType",
        "show",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "touchPoint",
        "offsetX",
        "offsetY",
        "showToRoot",
        "windowRootView",
        "showRightBottomOrTopInActivity",
        "gravity",
        "x",
        "y",
        "showAtLocation",
        "xoff",
        "yoff",
        "showAsDropDown",
        "offX",
        "offY",
        "showAsDropCenter",
        "getShadowOffset",
        "dismiss",
        "showMask",
        "Lkotlin/Function0;",
        "callback",
        "setMask",
        "color",
        "setMaskColor",
        "onShow",
        "onDismiss",
        "Lcom/onyx/android/sdk/universal/common/events/ThemeChangedEvent;",
        "event",
        "onThemeChangedEvent",
        "Lcom/onyx/android/sdk/theme/utils/SystemThemeChangedEvent;",
        "onSystemThemeChangedEvent",
        "anchorView",
        "safeShowAsDropDown",
        "Landroid/content/Context;",
        "Landroid/content/Context;",
        "getContext$note_overseasRelease",
        "()Landroid/content/Context;",
        "context",
        "f",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "getDockType$note_overseasRelease",
        "()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "setDockType$note_overseasRelease",
        "(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V",
        "",
        "F",
        "shadowOffset",
        "Landroidx/lifecycle/LifecycleRegistry;",
        "Lkotlin/Lazy;",
        "getLifecycle",
        "()Landroidx/lifecycle/LifecycleRegistry;",
        "lifecycle",
        "Z",
        "isShowMask",
        "j",
        "I",
        "maskColor",
        "k",
        "Landroid/view/View;",
        "maskView",
        "Landroid/view/WindowManager;",
        "l",
        "Landroid/view/WindowManager;",
        "windowManager",
        "m",
        "Lkotlin/jvm/functions/Function0;",
        "keycodeBackCallback",
        "Ljava/lang/ref/WeakReference;",
        "n",
        "Ljava/lang/ref/WeakReference;",
        "getParentViewRef",
        "()Ljava/lang/ref/WeakReference;",
        "setParentViewRef",
        "(Ljava/lang/ref/WeakReference;)V",
        "parentViewRef",
        "Lcom/onyx/galaxy/note/databinding/PopupLoadingBinding;",
        "o",
        "Lcom/onyx/galaxy/note/databinding/PopupLoadingBinding;",
        "loadBinding",
        "p",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V",
        "Companion",
        "note_overseasRelease"
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
        "SMAP\nBasePopupWindow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BasePopupWindow.kt\ncom/onyx/galaxy/note/common/view/BasePopupWindow\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,379:1\n1#2:380\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/common/view/BasePopupWindow$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final VISIBLE_DELAY_MS:J = 0x64L


# instance fields
.field public final e:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:F

.field public final h:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Z

.field public j:I

.field public k:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:Landroid/view/WindowManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public m:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public n:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public o:Lcom/onyx/galaxy/note/databinding/PopupLoadingBinding;

.field public p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->Companion:Lcom/onyx/galaxy/note/common/view/BasePopupWindow$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dockType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 4
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_20:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->g:F

    .line 5
    new-instance v1, Lcom/onyx/galaxy/note/common/view/BasePopupWindow$lifecycle$2;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow$lifecycle$2;-><init>(Lcom/onyx/galaxy/note/common/view/BasePopupWindow;)V

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->h:Lkotlin/Lazy;

    .line 6
    sget v1, Lcom/onyx/galaxy/note/R$color;->black_10:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->j:I

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->p:Z

    .line 8
    iput-object p1, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->e:Landroid/content/Context;

    .line 9
    iput-object p2, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->f:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    .line 10
    invoke-static {p0}, Lcom/onyx/galaxy/note/common/extension/PopupWindowKt;->setDefaultAttribute(Landroid/widget/PopupWindow;)V

    .line 11
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->initContentView()V

    .line 12
    new-instance p1, Lcom/sunia/HTREnginev2/yn;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/yn;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 1
    sget-object p2, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->BOTTOM:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->d()V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/galaxy/note/common/view/BasePopupWindow;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->f(Lcom/onyx/galaxy/note/common/view/BasePopupWindow;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/common/view/BasePopupWindow;Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->j(Lcom/onyx/galaxy/note/common/view/BasePopupWindow;Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public static final d()V
    .locals 0

    return-void
.end method

.method public static final f(Lcom/onyx/galaxy/note/common/view/BasePopupWindow;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x4

    if-ne p2, p1, :cond_1

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->m:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static final j(Lcom/onyx/galaxy/note/common/view/BasePopupWindow;Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->onDismiss()V

    invoke-interface {p1}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    return-void
.end method

.method public static synthetic setContentViewWithLoading$default(Lcom/onyx/galaxy/note/common/view/BasePopupWindow;Landroid/view/View;IIIIILjava/lang/Object;)V
    .locals 7

    if-nez p7, :cond_4

    and-int/lit8 p7, p6, 0x2

    const/4 v0, -0x2

    if-eqz p7, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    move v5, v0

    goto :goto_2

    :cond_2
    move v5, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    move v6, v0

    goto :goto_3

    :cond_3
    move v6, p5

    :goto_3
    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setContentViewWithLoading(Landroid/view/View;IIII)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setContentViewWithLoading"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic setMask$default(Lcom/onyx/galaxy/note/common/view/BasePopupWindow;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setMask(ZLkotlin/jvm/functions/Function0;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setMask"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic show$default(Lcom/onyx/galaxy/note/common/view/BasePopupWindow;Landroid/view/View;Lcom/onyx/android/sdk/base/data/TouchPoint;IIILjava/lang/Object;)V
    .locals 1

    if-nez p6, :cond_2

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move p4, v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->show(Landroid/view/View;Lcom/onyx/android/sdk/base/data/TouchPoint;II)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: show"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic showAsDropCenter$default(Lcom/onyx/galaxy/note/common/view/BasePopupWindow;Landroid/view/View;IIIILjava/lang/Object;)V
    .locals 1

    if-nez p6, :cond_3

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->showAsDropCenter(Landroid/view/View;III)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: showAsDropCenter"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic showByDockType$default(Lcom/onyx/galaxy/note/common/view/BasePopupWindow;Landroid/view/View;IILandroid/view/View;ILjava/lang/Object;)V
    .locals 1

    if-nez p6, :cond_3

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    sget-object p4, Lcom/onyx/android/sdk/base/extension/Activity;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Activity;

    invoke-virtual {p4}, Lcom/onyx/android/sdk/base/extension/Activity;->getTopContentView()Landroid/view/View;

    move-result-object p4

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->showByDockType(Landroid/view/View;IILandroid/view/View;)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: showByDockType"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic showRightBottomOrTopInActivity$default(Lcom/onyx/galaxy/note/common/view/BasePopupWindow;Landroid/view/View;IIILjava/lang/Object;)Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
    .locals 1

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->showRightBottomOrTopInActivity(Landroid/view/View;II)Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: showRightBottomOrTopInActivity"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic showToRoot$default(Lcom/onyx/galaxy/note/common/view/BasePopupWindow;Landroid/view/View;Landroid/view/View;Landroid/graphics/Point;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->showToRoot(Landroid/view/View;Landroid/view/View;Landroid/graphics/Point;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: showToRoot"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->i()V

    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public final e(Landroid/os/IBinder;)V
    .locals 2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    new-instance p1, Landroid/view/View;

    iget-object v1, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->e:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->k:Landroid/view/View;

    iget v1, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->j:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    new-instance v1, Lcom/sunia/HTREnginev2/wn;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/wn;-><init>(Lcom/onyx/galaxy/note/common/view/BasePopupWindow;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->e:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->l:Landroid/view/WindowManager;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->k:Landroid/view/View;

    invoke-interface {p1, p0, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final g(Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Landroid/graphics/Rect;)Landroid/graphics/Point;
    .locals 9

    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getDrawingPosition(Landroid/view/View;)[I

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    const-string v4, "getContentView(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-static {v3, v1, v1, v5, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getMeasureSize$default(Landroid/view/View;IIILjava/lang/Object;)Landroid/util/Size;

    move-result-object v3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v4}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    new-instance v4, Landroid/graphics/Rect;

    aget v1, v2, v1

    const/4 v6, 0x1

    aget v7, v2, v6

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v1

    aget v2, v2, v6

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr v2, p1

    invoke-direct {v4, v1, v7, v8, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object p1, Lcom/onyx/galaxy/note/common/view/BasePopupWindow$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x2

    if-eq p1, v6, :cond_3

    if-eq p1, p2, :cond_2

    if-eq p1, v5, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget p0, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->g:F

    add-float/2addr v1, p0

    iget p0, p3, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    add-float/2addr v1, p0

    float-to-int p0, v1

    sub-int/2addr p1, p0

    iput p1, v0, Landroid/graphics/Point;->x:I

    iget p0, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result p3

    sub-int/2addr p1, p3

    div-int/2addr p1, p2

    sub-int/2addr p0, p1

    iput p0, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_1
    iget p0, v4, Landroid/graphics/Rect;->right:I

    iget p1, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, p1

    iput p0, v0, Landroid/graphics/Point;->x:I

    iget p0, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result p3

    sub-int/2addr p1, p3

    div-int/2addr p1, p2

    sub-int/2addr p0, p1

    iput p0, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_2
    iget p0, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result p1

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr p1, v1

    div-int/2addr p1, p2

    sub-int/2addr p0, p1

    iput p0, v0, Landroid/graphics/Point;->x:I

    iget p0, v4, Landroid/graphics/Rect;->bottom:I

    iget p1, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, p1

    iput p0, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_3
    iget p1, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/2addr v1, p2

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->x:I

    iget p1, v4, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iget p0, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->g:F

    add-float/2addr p2, p0

    iget p0, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    add-float/2addr p2, p0

    sub-float/2addr p1, p2

    float-to-int p0, p1

    iput p0, v0, Landroid/graphics/Point;->y:I

    :goto_0
    return-object v0
.end method

.method public final getContext$note_overseasRelease()Landroid/content/Context;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->e:Landroid/content/Context;

    return-object p0
.end method

.method public final getDockType$note_overseasRelease()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->f:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    return-object p0
.end method

.method public bridge synthetic getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    move-result-object p0

    return-object p0
.end method

.method public getLifecycle()Landroidx/lifecycle/LifecycleRegistry;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->h:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/LifecycleRegistry;

    return-object p0
.end method

.method public final getParentViewRef()Ljava/lang/ref/WeakReference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->n:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public final getShadowOffset()I
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$dimen;->popup_shadow_offset:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result p0

    return p0
.end method

.method public final h(Landroid/view/View;Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 5

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const-string v1, "getContentView(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v0, v2, v2, v3, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getMeasureSize$default(Landroid/view/View;IIILjava/lang/Object;)Landroid/util/Size;

    move-result-object v0

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getLocationOnScreen(Landroid/view/View;)[I

    move-result-object p1

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->screenVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p2

    iget v1, p2, Landroid/graphics/Rect;->left:I

    aget v4, p1, v2

    sub-int/2addr v1, v4

    iput v1, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v4

    iput v1, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x1

    aget p1, p1, v4

    sub-int/2addr v1, p1

    iput v1, p2, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, p1

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    sget-object v1, Lcom/onyx/galaxy/note/common/view/BasePopupWindow$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v1, p3

    const/4 v1, 0x2

    if-eq p3, v4, :cond_3

    if-eq p3, v1, :cond_2

    if-eq p3, v3, :cond_1

    const/4 v2, 0x4

    if-eq p3, v2, :cond_0

    goto :goto_0

    :cond_0
    iget p3, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->g:F

    int-to-float v1, v1

    div-float/2addr p0, v1

    add-float/2addr v0, p0

    float-to-int p0, v0

    sub-int/2addr p3, p0

    iput p3, p1, Landroid/graphics/Point;->x:I

    iget p0, p2, Landroid/graphics/Rect;->top:I

    iput p0, p1, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_1
    iget p3, p2, Landroid/graphics/Rect;->right:I

    iget p0, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->g:F

    int-to-float v0, v1

    div-float/2addr p0, v0

    float-to-int p0, p0

    sub-int/2addr p3, p0

    iput p3, p1, Landroid/graphics/Point;->x:I

    iget p0, p2, Landroid/graphics/Rect;->top:I

    iput p0, p1, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_2
    iget p3, p2, Landroid/graphics/Rect;->left:I

    iput p3, p1, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->g:F

    int-to-float p3, v1

    div-float/2addr p0, p3

    float-to-int p0, p0

    sub-int/2addr p2, p0

    iput p2, p1, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_3
    iget p3, p2, Landroid/graphics/Rect;->left:I

    iput p3, p1, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result p3

    int-to-float p3, p3

    iget p0, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->g:F

    int-to-float v0, v1

    div-float/2addr p0, v0

    add-float/2addr p3, p0

    float-to-int p0, p3

    sub-int/2addr p2, p0

    iput p2, p1, Landroid/graphics/Point;->y:I

    :goto_0
    iget p0, p1, Landroid/graphics/Point;->x:I

    iget p2, p4, Landroid/graphics/Point;->x:I

    add-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Point;->x:I

    iget p0, p1, Landroid/graphics/Point;->y:I

    iget p2, p4, Landroid/graphics/Point;->y:I

    add-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Point;->y:I

    return-object p1
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->k:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->l:Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->k:Landroid/view/View;

    :cond_1
    return-void
.end method

.method public initContentView()V
    .locals 0

    return-void
.end method

.method public onDismiss()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/theme/utils/ThemeBundle;->INSTANCE:Lcom/onyx/android/sdk/theme/utils/ThemeBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/theme/utils/ThemeBundle;->unRegister(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LifecycleRegistry;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Object;)I

    move-result v0

    const/4 v3, 0x0

    if-ltz v0, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    move-result-object p0

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    :cond_1
    return-void
.end method

.method public onShow()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    sget-object v0, Lcom/onyx/android/sdk/theme/utils/ThemeBundle;->INSTANCE:Lcom/onyx/android/sdk/theme/utils/ThemeBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/theme/utils/ThemeBundle;->register(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSystemThemeChangedEvent(Lcom/onyx/android/sdk/theme/utils/SystemThemeChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/theme/utils/SystemThemeChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->refreshView(Landroid/view/View;)V

    return-void
.end method

.method public final onThemeChangedEvent(Lcom/onyx/android/sdk/universal/common/events/ThemeChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/common/events/ThemeChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->refreshView(Landroid/view/View;)V

    return-void
.end method

.method public final safeShowAsDropDown(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "anchorView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const-string v1, "getContentView(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v3, v1, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getMeasureSize$default(Landroid/view/View;IIILjava/lang/Object;)Landroid/util/Size;

    move-result-object v0

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getLocationOnScreen(Landroid/view/View;)[I

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    neg-int v0, v0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-virtual {p0, p1, v3, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final setContentViewWithLoading(Landroid/view/View;IIII)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/galaxy/note/databinding/PopupLoadingBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/PopupLoadingBinding;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->o:Lcom/onyx/galaxy/note/databinding/PopupLoadingBinding;

    const/4 v1, 0x0

    const-string v2, "loadBinding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupLoadingBinding;->contentViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->o:Lcom/onyx/galaxy/note/databinding/PopupLoadingBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupLoadingBinding;->loadingView:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v3, "loadingView"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p2, p3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutParams(Landroid/view/View;II)V

    invoke-static {p1, p4, p5}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutParams(Landroid/view/View;II)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->o:Lcom/onyx/galaxy/note/databinding/PopupLoadingBinding;

    if-nez p1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p1

    :goto_0
    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final setDockType$note_overseasRelease(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->f:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    return-void
.end method

.method public final setLoading(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->p:Z

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->o:Lcom/onyx/galaxy/note/databinding/PopupLoadingBinding;

    const/4 v1, 0x0

    const-string v2, "loadBinding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupLoadingBinding;->loadingView:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->o:Lcom/onyx/galaxy/note/databinding/PopupLoadingBinding;

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    iget-object p0, v1, Lcom/onyx/galaxy/note/databinding/PopupLoadingBinding;->contentViewWrapper:Landroid/widget/FrameLayout;

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    return-void
.end method

.method public final setMask(ZLkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->i:Z

    iput-object p2, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->m:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setMaskColor(I)Lcom/onyx/galaxy/note/common/view/BasePopupWindow;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->j:I

    return-object p0
.end method

.method public final setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1
    .param p1    # Landroid/widget/PopupWindow$OnDismissListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sunia/HTREnginev2/xn;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/xn;-><init>(Lcom/onyx/galaxy/note/common/view/BasePopupWindow;Landroid/widget/PopupWindow$OnDismissListener;)V

    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public final setParentViewRef(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .param p1    # Ljava/lang/ref/WeakReference;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->n:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "anchor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 1
    invoke-static/range {v1 .. v7}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->showByDockType$default(Lcom/onyx/galaxy/note/common/view/BasePopupWindow;Landroid/view/View;IILandroid/view/View;ILjava/lang/Object;)V

    return-void
.end method

.method public show(Landroid/view/View;Lcom/onyx/android/sdk/base/data/TouchPoint;II)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "anchor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touchPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    float-to-int v0, v0

    add-int/2addr v0, p3

    const/4 p3, 0x0

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3
    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p2

    float-to-int p2, p2

    add-int/2addr p2, p4

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 4
    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public final showAsDropCenter(Landroid/view/View;III)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "anchor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const-string v1, "getContentView(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v3, v1, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getMeasureSize$default(Landroid/view/View;IIILjava/lang/Object;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/galaxy/note/R$integer;->twice:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v3

    div-int/2addr v1, v3

    add-int/2addr v1, p2

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result p2

    sget v0, Lcom/onyx/galaxy/note/R$integer;->twice:I

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v0

    div-int/2addr p2, v0

    sub-int/2addr v1, p2

    invoke-super {p0, p1, v1, p3, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->onShow()V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "anchor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->onShow()V

    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->n:Ljava/lang/ref/WeakReference;

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "getWindowToken(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->e(Landroid/os/IBinder;)V

    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p2, v0, v1}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->saveWindowLocation(Landroid/widget/PopupWindow;ILjava/lang/Number;Ljava/lang/Number;)Landroid/widget/PopupWindow;

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->onShow()V

    return-void
.end method

.method public showByDockType(Landroid/view/View;IILandroid/view/View;)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "anchor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->isLayoutDirectionRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->f:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->isHorizontalDockType()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->f:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->reverse()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object v3

    sget-object v0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->Companion:Lcom/onyx/galaxy/note/common/view/BasePopupWindow$Companion;

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow$Companion;->showByDockType(Landroid/widget/PopupWindow;Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;IILandroid/view/View;)V

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->Companion:Lcom/onyx/galaxy/note/common/view/BasePopupWindow$Companion;

    iget-object v3, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->f:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow$Companion;->showByDockType(Landroid/widget/PopupWindow;Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;IILandroid/view/View;)V

    return-void
.end method

.method public final showRightBottomOrTopInActivity(Landroid/view/View;II)Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "windowRootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/extension/ViewLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/ViewLocator;

    sget-object v1, Lcom/onyx/android/sdk/base/extension/Activity;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Activity;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/extension/Activity;->getFrontActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->getActivityDecorView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->globalVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->locationInActivity(Landroid/view/View;)Lcom/onyx/android/sdk/base/data/WindowLocation;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    const-string v4, "getContentView(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v6, v6, v4, v5}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getMeasureSize$default(Landroid/view/View;IIILjava/lang/Object;)Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getY()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, p3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    if-le v0, v2, :cond_0

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->TOP:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->BOTTOM:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    :goto_0
    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getLocationOnScreen(Landroid/view/View;)[I

    move-result-object v2

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->screenVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    iget v4, p1, Landroid/graphics/Rect;->left:I

    aget v5, v2, v6

    sub-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x1

    aget v2, v2, v5

    sub-int/2addr v4, v2

    iput v4, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v2

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    sget-object v2, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->BOTTOM:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    if-ne v0, v2, :cond_1

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    :cond_1
    neg-int p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->offset(II)V

    :goto_1
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    sget-object p3, Lcom/onyx/galaxy/note/common/view/BasePopupWindow$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget p3, p3, v2

    const/4 v2, 0x2

    if-eq p3, v5, :cond_3

    if-eq p3, v2, :cond_2

    goto :goto_2

    :cond_2
    iget p3, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->g:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr p3, v3

    iput p3, p2, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p3, v2

    div-float/2addr v4, p3

    float-to-int p3, v4

    sub-int/2addr p1, p3

    iput p1, p2, Landroid/graphics/Point;->y:I

    goto :goto_2

    :cond_3
    iget p3, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->g:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    sub-int/2addr p3, v4

    iput p3, p2, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result p3

    int-to-float p3, p3

    iget v3, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->g:F

    int-to-float v2, v2

    div-float/2addr v3, v2

    add-float/2addr p3, v3

    float-to-int p3, p3

    sub-int/2addr p1, p3

    iput p1, p2, Landroid/graphics/Point;->y:I

    :goto_2
    iget p1, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v6, p1, p2}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-object v0
.end method

.method public showToRoot(Landroid/view/View;Landroid/view/View;Landroid/graphics/Point;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Point;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anchor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offsetPoint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->f:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->h(Landroid/view/View;Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p2

    iget p3, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3, p2}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method
