.class public final Lcom/aitsuki/swipe/SwipeLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aitsuki/swipe/SwipeLayout$Companion;,
        Lcom/aitsuki/swipe/SwipeLayout$a;,
        Lcom/aitsuki/swipe/SwipeLayout$LayoutParams;,
        Lcom/aitsuki/swipe/SwipeLayout$Listener;,
        Lcom/aitsuki/swipe/SwipeLayout$Designer;,
        Lcom/aitsuki/swipe/SwipeLayout$ClassicDesigner;,
        Lcom/aitsuki/swipe/SwipeLayout$OverlayDesigner;,
        Lcom/aitsuki/swipe/SwipeLayout$ParallaxDesigner;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSwipeLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SwipeLayout.kt\ncom/aitsuki/swipe/SwipeLayout\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,869:1\n1#2:870\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u0000 ~2\u00020\u0001:\r\u007f~\u0080\u0001\u0081\u0001\u0082\u0001\u0083\u0001\u0084\u0001\u0013B\'\u0008\u0007\u0012\u0006\u0010z\u001a\u00020y\u0012\n\u0008\u0002\u0010B\u001a\u0004\u0018\u00010A\u0012\u0008\u0008\u0002\u0010{\u001a\u00020\u0007\u00a2\u0006\u0004\u0008|\u0010}J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002H\u0002J\u0012\u0010\u0006\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0010\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0018\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0008\u0010\u0016\u001a\u00020\u0004H\u0002J\u0018\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0007H\u0002J\u0018\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0007H\u0002J\u0008\u0010\u001b\u001a\u00020\u0004H\u0002J\u0008\u0010\u001c\u001a\u00020\u0002H\u0002J\u0010\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u0007H\u0002J\u0010\u0010\u001f\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002J\u0010\u0010 \u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002J\u0010\u0010!\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\"\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002J\u0010\u0010#\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002J\u0006\u0010$\u001a\u00020\u0002J\u0006\u0010%\u001a\u00020\u0002J\u0006\u0010&\u001a\u00020\u0002J\u0006\u0010\'\u001a\u00020\u0002J\u0010\u0010(\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002J\u0010\u0010)\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002J\u0010\u0010*\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002J\u0010\u0010+\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002J\u000e\u0010.\u001a\u00020\u00042\u0006\u0010-\u001a\u00020,J\u000e\u0010/\u001a\u00020\u00042\u0006\u0010-\u001a\u00020,J\u0010\u00100\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0017J\u0010\u00101\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0008\u00102\u001a\u00020\u0004H\u0016J\u0008\u00103\u001a\u00020\u0004H\u0014J\u0018\u00106\u001a\u00020\u00042\u0006\u00104\u001a\u00020\u00072\u0006\u00105\u001a\u00020\u0007H\u0014J0\u0010<\u001a\u00020\u00042\u0006\u00107\u001a\u00020\u00022\u0006\u00108\u001a\u00020\u00072\u0006\u00109\u001a\u00020\u00072\u0006\u0010:\u001a\u00020\u00072\u0006\u0010;\u001a\u00020\u0007H\u0014J\u0008\u0010>\u001a\u00020=H\u0014J\u0010\u0010?\u001a\u00020=2\u0006\u0010\u0016\u001a\u00020=H\u0014J\u0010\u0010@\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020=H\u0014J\u0012\u0010?\u001a\u00020=2\u0008\u0010B\u001a\u0004\u0018\u00010AH\u0016R$\u0010F\u001a\u0012\u0012\u0004\u0012\u00020\n0Cj\u0008\u0012\u0004\u0012\u00020\n`D8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010ER\u0016\u0010H\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010GR\"\u0010N\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010I\u001a\u0004\u0008J\u0010K\"\u0004\u0008L\u0010MR\u0014\u0010O\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010GR\u0014\u0010P\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010GR\u0016\u0010Q\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010IR\u0016\u0010R\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010GR\u0016\u0010S\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010GR\u0016\u0010U\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008T\u0010IR\u001c\u0010Y\u001a\n W*\u0004\u0018\u00010V0V8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010XR\u0016\u0010Z\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010GR\u0018\u0010\\\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010[R\"\u0010b\u001a\u00020\u000e8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010]\u001a\u0004\u0008^\u0010_\"\u0004\u0008`\u0010aR$\u0010d\u001a\u0012\u0012\u0004\u0012\u00020,0Cj\u0008\u0012\u0004\u0012\u00020,`D8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008c\u0010ER\u0018\u0010f\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008e\u0010[R\u0018\u0010h\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008g\u0010[R\u0018\u0010j\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008i\u0010[R\u0014\u0010n\u001a\u00020k8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008l\u0010mR\u0016\u0010p\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008o\u0010IR*\u0010v\u001a\u00020\u00072\u0006\u0010q\u001a\u00020\u00078\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010G\u001a\u0004\u0008r\u0010s\"\u0004\u0008t\u0010uR\u0014\u0010x\u001a\u00020\u00028@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008w\u0010K\u00a8\u0006\u0085\u0001"
    }
    d2 = {
        "Lcom/aitsuki/swipe/SwipeLayout;",
        "Landroid/view/ViewGroup;",
        "",
        "animate",
        "",
        "b",
        "l",
        "",
        "activeState",
        "q",
        "Landroid/view/View;",
        "menuView",
        "e",
        "f",
        "",
        "offset",
        "g",
        "Landroid/view/MotionEvent;",
        "ev",
        "a",
        "o",
        "d",
        "p",
        "x",
        "y",
        "j",
        "k",
        "n",
        "i",
        "direction",
        "h",
        "closeMenu",
        "closeLeftMenu",
        "closeRightMenu",
        "closeStartMenu",
        "closeEndMenu",
        "isLeftMenuOpened",
        "isRightMenuOpened",
        "isStartMenuOpened",
        "isEndMenuOpened",
        "openLeftMenu",
        "openRightMenu",
        "openStartMenu",
        "openEndMenu",
        "Lcom/aitsuki/swipe/SwipeLayout$Listener;",
        "listener",
        "addListener",
        "removeListener",
        "onTouchEvent",
        "onInterceptTouchEvent",
        "computeScroll",
        "onDetachedFromWindow",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onMeasure",
        "changed",
        "left",
        "top",
        "right",
        "bottom",
        "onLayout",
        "Landroid/view/ViewGroup$LayoutParams;",
        "generateDefaultLayoutParams",
        "generateLayoutParams",
        "checkLayoutParams",
        "Landroid/util/AttributeSet;",
        "attrs",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "Ljava/util/ArrayList;",
        "matchParentChildren",
        "I",
        "preview",
        "Z",
        "getAutoClose",
        "()Z",
        "setAutoClose",
        "(Z)V",
        "autoClose",
        "touchSlop",
        "velocity",
        "isDragging",
        "downX",
        "downY",
        "m",
        "autoClosePending",
        "Landroidx/customview/widget/ViewDragHelper;",
        "kotlin.jvm.PlatformType",
        "Landroidx/customview/widget/ViewDragHelper;",
        "dragger",
        "openState",
        "Landroid/view/View;",
        "activeMenu",
        "F",
        "getOnScreen$library_release",
        "()F",
        "setOnScreen$library_release",
        "(F)V",
        "onScreen",
        "r",
        "listeners",
        "s",
        "contentView",
        "t",
        "leftMenu",
        "u",
        "rightMenu",
        "Lcom/aitsuki/swipe/SwipeLayout$Designer;",
        "v",
        "Lcom/aitsuki/swipe/SwipeLayout$Designer;",
        "designer",
        "w",
        "initDesigner",
        "value",
        "getSwipeFlags",
        "()I",
        "setSwipeFlags",
        "(I)V",
        "swipeFlags",
        "getSwipeEnable$library_release",
        "swipeEnable",
        "Landroid/content/Context;",
        "context",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Companion",
        "ClassicDesigner",
        "Designer",
        "LayoutParams",
        "Listener",
        "OverlayDesigner",
        "ParallaxDesigner",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/aitsuki/swipe/SwipeLayout$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final END:I = 0x1002

.field public static final J:I = 0x2

.field public static final LEFT:I = 0x1

.field public static final O:I = 0x3

.field public static final Q:I = 0x4

.field public static final RELATIVE_LAYOUT_DIRECTION:I = 0x1000

.field public static final RIGHT:I = 0x2

.field public static final START:I = 0x1001

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field public static final k0:I = 0x1

.field public static final q0:I = 0x2

.field public static final t0:I = 0x4

.field public static final u0:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "Lcom/aitsuki/swipe/SwipeLayout$Designer;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final y:I = 0x0

.field public static final z:I = 0x1


# instance fields
.field public final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:I

.field public g:Z

.field public final h:I

.field public final i:I

.field public j:Z

.field public k:I

.field public l:I

.field public m:Z

.field public final n:Landroidx/customview/widget/ViewDragHelper;

.field public o:I

.field public p:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public q:F

.field public final r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/aitsuki/swipe/SwipeLayout$Listener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public s:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public t:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public u:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final v:Lcom/aitsuki/swipe/SwipeLayout$Designer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public w:Z

.field public x:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/aitsuki/swipe/SwipeLayout$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aitsuki/swipe/SwipeLayout$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/aitsuki/swipe/SwipeLayout;->Companion:Lcom/aitsuki/swipe/SwipeLayout$Companion;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/aitsuki/swipe/SwipeLayout;->u0:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/aitsuki/swipe/SwipeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/aitsuki/swipe/SwipeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p3, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p3, p0, Lcom/aitsuki/swipe/SwipeLayout;->e:Ljava/util/ArrayList;

    .line 6
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Lcom/aitsuki/swipe/SwipeLayout;->h:I

    .line 7
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p3

    iput p3, p0, Lcom/aitsuki/swipe/SwipeLayout;->i:I

    .line 8
    new-instance p3, Lcom/aitsuki/swipe/SwipeLayout$a;

    invoke-direct {p3, p0}, Lcom/aitsuki/swipe/SwipeLayout$a;-><init>(Lcom/aitsuki/swipe/SwipeLayout;)V

    invoke-static {p0, p3}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p3

    iput-object p3, p0, Lcom/aitsuki/swipe/SwipeLayout;->n:Landroidx/customview/widget/ViewDragHelper;

    .line 9
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/aitsuki/swipe/SwipeLayout;->r:Ljava/util/ArrayList;

    const/4 p3, 0x3

    .line 10
    iput p3, p0, Lcom/aitsuki/swipe/SwipeLayout;->x:I

    if-eqz p2, :cond_0

    .line 11
    sget-object p3, Lcom/aitsuki/swipe/R$styleable;->SwipeLayout:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string p3, "context.obtainStyledAttr\u2026 R.styleable.SwipeLayout)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget p3, Lcom/aitsuki/swipe/R$styleable;->SwipeLayout_preview:I

    iget v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->f:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/aitsuki/swipe/SwipeLayout;->f:I

    .line 13
    sget p3, Lcom/aitsuki/swipe/R$styleable;->SwipeLayout_autoClose:I

    iget-boolean v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->g:Z

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/aitsuki/swipe/SwipeLayout;->g:Z

    .line 14
    sget-object p3, Lcom/aitsuki/swipe/SwipeLayout$Designer;->Companion:Lcom/aitsuki/swipe/SwipeLayout$Designer$Companion;

    sget v0, Lcom/aitsuki/swipe/R$styleable;->SwipeLayout_designer:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Lcom/aitsuki/swipe/SwipeLayout$Designer$Companion;->parseDesigner(Landroid/content/Context;Ljava/lang/String;)Lcom/aitsuki/swipe/SwipeLayout$Designer;

    move-result-object p1

    .line 15
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 16
    new-instance p1, Lcom/aitsuki/swipe/SwipeLayout$ClassicDesigner;

    invoke-direct {p1}, Lcom/aitsuki/swipe/SwipeLayout$ClassicDesigner;-><init>()V

    :cond_1
    iput-object p1, p0, Lcom/aitsuki/swipe/SwipeLayout;->v:Lcom/aitsuki/swipe/SwipeLayout$Designer;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/aitsuki/swipe/SwipeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getActiveMenu$p(Lcom/aitsuki/swipe/SwipeLayout;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/aitsuki/swipe/SwipeLayout;->p:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$getContentView$p(Lcom/aitsuki/swipe/SwipeLayout;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/aitsuki/swipe/SwipeLayout;->s:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$getDesignerConstructors$cp()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lcom/aitsuki/swipe/SwipeLayout;->u0:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static final synthetic access$getLeftMenu$p(Lcom/aitsuki/swipe/SwipeLayout;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/aitsuki/swipe/SwipeLayout;->t:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$getRightMenu$p(Lcom/aitsuki/swipe/SwipeLayout;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/aitsuki/swipe/SwipeLayout;->u:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$getVelocity$p(Lcom/aitsuki/swipe/SwipeLayout;)I
    .locals 0

    iget p0, p0, Lcom/aitsuki/swipe/SwipeLayout;->i:I

    return p0
.end method

.method public static final synthetic access$setContentViewOffset(Lcom/aitsuki/swipe/SwipeLayout;)V
    .locals 0

    invoke-virtual {p0}, Lcom/aitsuki/swipe/SwipeLayout;->p()V

    return-void
.end method

.method public static final synthetic access$updateMenuState(Lcom/aitsuki/swipe/SwipeLayout;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/aitsuki/swipe/SwipeLayout;->q(I)V

    return-void
.end method

.method public static synthetic c(Lcom/aitsuki/swipe/SwipeLayout;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/aitsuki/swipe/SwipeLayout;->b(Z)V

    return-void
.end method

.method public static synthetic closeEndMenu$default(Lcom/aitsuki/swipe/SwipeLayout;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/aitsuki/swipe/SwipeLayout;->closeEndMenu(Z)V

    return-void
.end method

.method public static synthetic closeLeftMenu$default(Lcom/aitsuki/swipe/SwipeLayout;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/aitsuki/swipe/SwipeLayout;->closeLeftMenu(Z)V

    return-void
.end method

.method public static synthetic closeMenu$default(Lcom/aitsuki/swipe/SwipeLayout;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/aitsuki/swipe/SwipeLayout;->closeMenu(Z)V

    return-void
.end method

.method public static synthetic closeRightMenu$default(Lcom/aitsuki/swipe/SwipeLayout;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/aitsuki/swipe/SwipeLayout;->closeRightMenu(Z)V

    return-void
.end method

.method public static synthetic closeStartMenu$default(Lcom/aitsuki/swipe/SwipeLayout;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/aitsuki/swipe/SwipeLayout;->closeStartMenu(Z)V

    return-void
.end method

.method public static synthetic m(Lcom/aitsuki/swipe/SwipeLayout;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/aitsuki/swipe/SwipeLayout;->l(Z)V

    return-void
.end method

.method public static synthetic openEndMenu$default(Lcom/aitsuki/swipe/SwipeLayout;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/aitsuki/swipe/SwipeLayout;->openEndMenu(Z)V

    return-void
.end method

.method public static synthetic openLeftMenu$default(Lcom/aitsuki/swipe/SwipeLayout;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/aitsuki/swipe/SwipeLayout;->openLeftMenu(Z)V

    return-void
.end method

.method public static synthetic openRightMenu$default(Lcom/aitsuki/swipe/SwipeLayout;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/aitsuki/swipe/SwipeLayout;->openRightMenu(Z)V

    return-void
.end method

.method public static synthetic openStartMenu$default(Lcom/aitsuki/swipe/SwipeLayout;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/aitsuki/swipe/SwipeLayout;->openStartMenu(Z)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)V
    .locals 9

    iget-boolean v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/aitsuki/swipe/SwipeLayout;->k:I

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/aitsuki/swipe/SwipeLayout;->l:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/aitsuki/swipe/SwipeLayout;->h:I

    neg-int v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v0, v2, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v2, v5, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iget v5, p0, Lcom/aitsuki/swipe/SwipeLayout;->h:I

    if-le v0, v5, :cond_2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v0, v1, :cond_2

    move v0, v4

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    iget v1, p0, Lcom/aitsuki/swipe/SwipeLayout;->x:I

    invoke-virtual {p0, v1}, Lcom/aitsuki/swipe/SwipeLayout;->h(I)I

    move-result v1

    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_3

    move v5, v4

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    const/4 v6, 0x2

    and-int/2addr v1, v6

    if-eqz v1, :cond_4

    move v1, v4

    goto :goto_3

    :cond_4
    move v1, v3

    :goto_3
    iget v7, p0, Lcom/aitsuki/swipe/SwipeLayout;->o:I

    and-int/lit8 v8, v7, 0x1

    if-eq v8, v4, :cond_9

    and-int/2addr v7, v6

    if-ne v7, v6, :cond_5

    goto :goto_6

    :cond_5
    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->t:Landroid/view/View;

    iput-object v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->p:Landroid/view/View;

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    move v4, v3

    :goto_4
    iput-boolean v4, p0, Lcom/aitsuki/swipe/SwipeLayout;->j:Z

    goto :goto_8

    :cond_7
    if-eqz v2, :cond_d

    if-eqz v5, :cond_d

    iget-object v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->u:Landroid/view/View;

    iput-object v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->p:Landroid/view/View;

    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    move v4, v3

    :goto_5
    iput-boolean v4, p0, Lcom/aitsuki/swipe/SwipeLayout;->j:Z

    goto :goto_8

    :cond_9
    :goto_6
    iget v1, p0, Lcom/aitsuki/swipe/SwipeLayout;->k:I

    iget v5, p0, Lcom/aitsuki/swipe/SwipeLayout;->l:I

    invoke-virtual {p0, v1, v5}, Lcom/aitsuki/swipe/SwipeLayout;->j(II)Z

    move-result v1

    if-eqz v1, :cond_a

    iput-boolean v4, p0, Lcom/aitsuki/swipe/SwipeLayout;->j:Z

    goto :goto_8

    :cond_a
    iget v1, p0, Lcom/aitsuki/swipe/SwipeLayout;->k:I

    iget v5, p0, Lcom/aitsuki/swipe/SwipeLayout;->l:I

    invoke-virtual {p0, v1, v5}, Lcom/aitsuki/swipe/SwipeLayout;->k(II)Z

    move-result v1

    if-eqz v1, :cond_d

    if-nez v2, :cond_c

    if-eqz v0, :cond_b

    goto :goto_7

    :cond_b
    move v4, v3

    :cond_c
    :goto_7
    iput-boolean v4, p0, Lcom/aitsuki/swipe/SwipeLayout;->j:Z

    :cond_d
    :goto_8
    iget-boolean v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->j:Z

    if-eqz v0, :cond_e

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object p0, p0, Lcom/aitsuki/swipe/SwipeLayout;->n:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    :cond_e
    return-void
.end method

.method public final addListener(Lcom/aitsuki/swipe/SwipeLayout$Listener;)V
    .locals 1
    .param p1    # Lcom/aitsuki/swipe/SwipeLayout$Listener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/aitsuki/swipe/SwipeLayout;->r:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Z)V
    .locals 4

    iget-object v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->p:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput v1, p0, Lcom/aitsuki/swipe/SwipeLayout;->o:I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/aitsuki/swipe/SwipeLayout;->s:Landroid/view/View;

    if-nez v2, :cond_1

    return-void

    :cond_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_3

    iget p1, p0, Lcom/aitsuki/swipe/SwipeLayout;->o:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/aitsuki/swipe/SwipeLayout;->o:I

    iget-object p1, p0, Lcom/aitsuki/swipe/SwipeLayout;->n:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1, v2, v0, v1}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result p1

    neg-int p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/2addr p1, v3

    invoke-static {v2, p1}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/aitsuki/swipe/SwipeLayout;->g(Landroid/view/View;F)V

    invoke-virtual {p0, v1}, Lcom/aitsuki/swipe/SwipeLayout;->q(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1    # Landroid/view/ViewGroup$LayoutParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/aitsuki/swipe/SwipeLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final closeEndMenu(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/aitsuki/swipe/SwipeLayout;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/aitsuki/swipe/SwipeLayout;->closeLeftMenu(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/aitsuki/swipe/SwipeLayout;->closeRightMenu(Z)V

    :goto_0
    return-void
.end method

.method public final closeLeftMenu(Z)V
    .locals 2

    iget-object v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->p:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/aitsuki/swipe/SwipeLayout;->t:Landroid/view/View;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/aitsuki/swipe/SwipeLayout;->b(Z)V

    :cond_1
    return-void
.end method

.method public final closeMenu(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/aitsuki/swipe/SwipeLayout;->b(Z)V

    return-void
.end method

.method public final closeRightMenu(Z)V
    .locals 2

    iget-object v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->p:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/aitsuki/swipe/SwipeLayout;->u:Landroid/view/View;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/aitsuki/swipe/SwipeLayout;->b(Z)V

    :cond_1
    return-void
.end method

.method public final closeStartMenu(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/aitsuki/swipe/SwipeLayout;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/aitsuki/swipe/SwipeLayout;->closeRightMenu(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/aitsuki/swipe/SwipeLayout;->closeLeftMenu(Z)V

    :goto_0
    return-void
.end method

.method public computeScroll()V
    .locals 2

    iget-object v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->n:Landroidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final d(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/aitsuki/swipe/SwipeLayout;->k:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Lcom/aitsuki/swipe/SwipeLayout;->l:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    float-to-int p1, p1

    mul-int/2addr v0, v0

    mul-int/2addr p1, p1

    add-int/2addr v0, p1

    iget p1, p0, Lcom/aitsuki/swipe/SwipeLayout;->h:I

    mul-int/2addr p1, p1

    if-le v0, p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/aitsuki/swipe/SwipeLayout;->m:Z

    :cond_0
    return-void
.end method

.method public final e(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->o:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->r:Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asReversedMutable(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aitsuki/swipe/SwipeLayout$Listener;

    invoke-interface {v1, p1}, Lcom/aitsuki/swipe/SwipeLayout$Listener;->onMenuClosed(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/aitsuki/swipe/SwipeLayout;->o:I

    return-void
.end method

.method public final f(Landroid/view/View;)V
    .locals 3

    iget v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->o:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->r:Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asReversedMutable(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aitsuki/swipe/SwipeLayout$Listener;

    invoke-interface {v2, p1}, Lcom/aitsuki/swipe/SwipeLayout$Listener;->onMenuOpened(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/aitsuki/swipe/SwipeLayout;->o:I

    return-void
.end method

.method public final g(Landroid/view/View;F)V
    .locals 1

    iput p2, p0, Lcom/aitsuki/swipe/SwipeLayout;->q:F

    iget-object p0, p0, Lcom/aitsuki/swipe/SwipeLayout;->r:Ljava/util/ArrayList;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->asReversedMutable(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aitsuki/swipe/SwipeLayout$Listener;

    invoke-interface {v0, p1, p2}, Lcom/aitsuki/swipe/SwipeLayout$Listener;->onSwipe(Landroid/view/View;F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/aitsuki/swipe/SwipeLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Lcom/aitsuki/swipe/SwipeLayout$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 4
    new-instance v0, Lcom/aitsuki/swipe/SwipeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, p1}, Lcom/aitsuki/swipe/SwipeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .param p1    # Landroid/view/ViewGroup$LayoutParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "p"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of p0, p1, Lcom/aitsuki/swipe/SwipeLayout$LayoutParams;

    if-eqz p0, :cond_0

    .line 2
    new-instance p0, Lcom/aitsuki/swipe/SwipeLayout$LayoutParams;

    check-cast p1, Lcom/aitsuki/swipe/SwipeLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/aitsuki/swipe/SwipeLayout$LayoutParams;-><init>(Lcom/aitsuki/swipe/SwipeLayout$LayoutParams;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Lcom/aitsuki/swipe/SwipeLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/aitsuki/swipe/SwipeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object p0
.end method

.method public final getAutoClose()Z
    .locals 0

    iget-boolean p0, p0, Lcom/aitsuki/swipe/SwipeLayout;->g:Z

    return p0
.end method

.method public final getOnScreen$library_release()F
    .locals 0

    iget p0, p0, Lcom/aitsuki/swipe/SwipeLayout;->q:F

    return p0
.end method

.method public final getSwipeEnable$library_release()Z
    .locals 0

    iget p0, p0, Lcom/aitsuki/swipe/SwipeLayout;->x:I

    and-int/lit8 p0, p0, 0x3

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getSwipeFlags()I
    .locals 0

    iget p0, p0, Lcom/aitsuki/swipe/SwipeLayout;->x:I

    return p0
.end method

.method public final h(I)I
    .locals 2

    and-int/lit16 v0, p1, 0x1000

    if-lez v0, :cond_4

    and-int/lit16 v0, p1, 0x1001

    const/16 v1, 0x1001

    if-ne v0, v1, :cond_2

    and-int/lit16 p1, p1, -0x1002

    invoke-virtual {p0}, Lcom/aitsuki/swipe/SwipeLayout;->i()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    or-int/lit8 p0, p1, 0x2

    goto :goto_1

    :cond_1
    :goto_0
    or-int/lit8 p0, p1, 0x1

    :goto_1
    move p1, p0

    goto :goto_2

    :cond_2
    and-int/lit16 v0, p1, 0x1002

    const/16 v1, 0x1002

    if-ne v0, v1, :cond_3

    and-int/lit16 p1, p1, -0x1003

    invoke-virtual {p0}, Lcom/aitsuki/swipe/SwipeLayout;->i()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_3
    :goto_2
    and-int/lit16 p1, p1, -0x1001

    :cond_4
    return p1
.end method

.method public final i()Z
    .locals 1

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isEndMenuOpened()Z
    .locals 1

    invoke-virtual {p0}, Lcom/aitsuki/swipe/SwipeLayout;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/aitsuki/swipe/SwipeLayout;->isLeftMenuOpened()Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/aitsuki/swipe/SwipeLayout;->isRightMenuOpened()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final isLeftMenuOpened()Z
    .locals 3

    iget-object v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->p:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/aitsuki/swipe/SwipeLayout;->t:Landroid/view/View;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/aitsuki/swipe/SwipeLayout;->o:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method

.method public final isRightMenuOpened()Z
    .locals 3

    iget-object v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->p:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/aitsuki/swipe/SwipeLayout;->u:Landroid/view/View;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/aitsuki/swipe/SwipeLayout;->o:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method

.method public final isStartMenuOpened()Z
    .locals 1

    invoke-virtual {p0}, Lcom/aitsuki/swipe/SwipeLayout;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/aitsuki/swipe/SwipeLayout;->isRightMenuOpened()Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/aitsuki/swipe/SwipeLayout;->isLeftMenuOpened()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final j(II)Z
    .locals 1

    iget-object v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->s:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/aitsuki/swipe/SwipeLayout;->n:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p0, p1, p2}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final k(II)Z
    .locals 1

    iget-object v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->p:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/aitsuki/swipe/SwipeLayout;->n:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p0, p1, p2}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final l(Z)V
    .locals 5

    iget-object v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->p:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput v1, p0, Lcom/aitsuki/swipe/SwipeLayout;->o:I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/aitsuki/swipe/SwipeLayout;->s:Landroid/view/View;

    if-nez v2, :cond_1

    return-void

    :cond_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v3, p0, Lcom/aitsuki/swipe/SwipeLayout;->t:Landroid/view/View;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    :goto_0
    add-int/2addr v3, v4

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/aitsuki/swipe/SwipeLayout;->o:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/aitsuki/swipe/SwipeLayout;->o:I

    iget-object p1, p0, Lcom/aitsuki/swipe/SwipeLayout;->n:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1, v2, v3, v0}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result p1

    sub-int/2addr v3, p1

    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, p1}, Lcom/aitsuki/swipe/SwipeLayout;->g(Landroid/view/View;F)V

    invoke-virtual {p0, v1}, Lcom/aitsuki/swipe/SwipeLayout;->q(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :goto_1
    return-void
.end method

.method public final n()V
    .locals 2

    iget v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->f:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/aitsuki/swipe/SwipeLayout;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->t:Landroid/view/View;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->u:Landroid/view/View;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/aitsuki/swipe/SwipeLayout;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->u:Landroid/view/View;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->t:Landroid/view/View;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->u:Landroid/view/View;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->t:Landroid/view/View;

    :goto_0
    iput-object v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->p:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/aitsuki/swipe/SwipeLayout;->l(Z)V

    return-void
.end method

.method public final o(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-eq v0, v2, :cond_0

    if-eq v0, v3, :cond_3

    iget-boolean v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->j:Z

    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/aitsuki/swipe/SwipeLayout;->n:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->j:Z

    invoke-virtual {p0, p1}, Lcom/aitsuki/swipe/SwipeLayout;->a(Landroid/view/MotionEvent;)V

    iget-boolean v2, p0, Lcom/aitsuki/swipe/SwipeLayout;->j:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/aitsuki/swipe/SwipeLayout;->n:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v2, p1}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    :cond_1
    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->j:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2
    invoke-virtual {p0, p1}, Lcom/aitsuki/swipe/SwipeLayout;->d(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->j:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->n:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    iput-boolean v2, p0, Lcom/aitsuki/swipe/SwipeLayout;->j:Z

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_4
    iget-boolean p1, p0, Lcom/aitsuki/swipe/SwipeLayout;->m:Z

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    invoke-static {p0, v2, v1, p1}, Lcom/aitsuki/swipe/SwipeLayout;->c(Lcom/aitsuki/swipe/SwipeLayout;ZILjava/lang/Object;)V

    :cond_5
    iput-boolean v2, p0, Lcom/aitsuki/swipe/SwipeLayout;->m:Z

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->k:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/aitsuki/swipe/SwipeLayout;->l:I

    iget-boolean v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->g:Z

    if-nez v0, :cond_7

    iget v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->k:I

    invoke-virtual {p0, v0, p1}, Lcom/aitsuki/swipe/SwipeLayout;->j(II)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    iput-boolean v1, p0, Lcom/aitsuki/swipe/SwipeLayout;->m:Z

    :cond_8
    :goto_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    iget v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->o:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->n:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->abort()V

    iget-object v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->s:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/aitsuki/swipe/SwipeLayout;->setOnScreen$library_release(F)V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/aitsuki/swipe/SwipeLayout;->o(Landroid/view/MotionEvent;)V

    iget-boolean p0, p0, Lcom/aitsuki/swipe/SwipeLayout;->j:Z

    return p0
.end method

.method public onLayout(ZIIII)V
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/aitsuki/swipe/SwipeLayout;->n()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    sub-int v7, p4, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    sub-int v8, p5, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_7

    add-int/lit8 p3, p2, 0x1

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p4

    const/16 p5, 0x8

    if-ne p4, p5, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_6

    check-cast v0, Lcom/aitsuki/swipe/SwipeLayout$LayoutParams;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0}, Lcom/aitsuki/swipe/SwipeLayout$LayoutParams;->getGravity()I

    move-result v3

    invoke-static {v3, v1}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    invoke-virtual {v0}, Lcom/aitsuki/swipe/SwipeLayout$LayoutParams;->getGravity()I

    move-result v0

    and-int/lit8 v0, v0, 0x70

    and-int/lit8 v1, v1, 0x7

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    const/4 v3, 0x5

    if-eq v1, v3, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    add-int v1, v7, p4

    goto :goto_1

    :cond_3
    sub-int v1, v2, p4

    :goto_1
    const/16 v3, 0x10

    if-eq v0, v3, :cond_5

    const/16 v3, 0x50

    if-eq v0, v3, :cond_4

    move v0, v6

    goto :goto_2

    :cond_4
    sub-int v0, v8, p5

    goto :goto_2

    :cond_5
    sub-int v0, v8, v6

    sub-int/2addr v0, p5

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v6

    :goto_2
    add-int/2addr p4, v1

    add-int/2addr p5, v0

    invoke-virtual {p2, v1, v0, p4, p5}, Landroid/view/View;->layout(IIII)V

    :goto_3
    move p2, p3

    goto :goto_0

    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type com.aitsuki.swipe.SwipeLayout.LayoutParams"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    iget-object p1, p0, Lcom/aitsuki/swipe/SwipeLayout;->s:Landroid/view/View;

    if-eqz p1, :cond_c

    iget-object p2, p0, Lcom/aitsuki/swipe/SwipeLayout;->p:Landroid/view/View;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    iget p4, p0, Lcom/aitsuki/swipe/SwipeLayout;->q:F

    mul-float/2addr p3, p4

    float-to-int p3, p3

    iget-object p4, p0, Lcom/aitsuki/swipe/SwipeLayout;->t:Landroid/view/View;

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_4

    :cond_8
    neg-int p3, p3

    :goto_4
    invoke-static {p1, p3}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    :cond_9
    iget-object v1, p0, Lcom/aitsuki/swipe/SwipeLayout;->t:Landroid/view/View;

    if-nez v1, :cond_a

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->v:Lcom/aitsuki/swipe/SwipeLayout$Designer;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    move v3, v6

    move v5, v8

    invoke-interface/range {v0 .. v5}, Lcom/aitsuki/swipe/SwipeLayout$Designer;->onLayout(Landroid/view/View;IIII)V

    :goto_5
    iget-object v4, p0, Lcom/aitsuki/swipe/SwipeLayout;->u:Landroid/view/View;

    if-nez v4, :cond_b

    goto :goto_6

    :cond_b
    iget-object v3, p0, Lcom/aitsuki/swipe/SwipeLayout;->v:Lcom/aitsuki/swipe/SwipeLayout$Designer;

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-interface/range {v3 .. v8}, Lcom/aitsuki/swipe/SwipeLayout$Designer;->onLayout(Landroid/view/View;IIII)V

    :cond_c
    :goto_6
    return-void
.end method

.method public onMeasure(II)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v4, v7, :cond_1

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    if-eq v4, v7, :cond_0

    goto :goto_0

    :cond_0
    move v4, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v5

    :goto_1
    iget-object v8, v0, Lcom/aitsuki/swipe/SwipeLayout;->e:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    move v8, v6

    move v9, v8

    move v10, v9

    move v11, v10

    :goto_2
    const/4 v12, -0x1

    if-ge v8, v3, :cond_8

    add-int/lit8 v13, v8, 0x1

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    if-eqz v14, :cond_7

    check-cast v14, Lcom/aitsuki/swipe/SwipeLayout$LayoutParams;

    invoke-virtual {v14}, Lcom/aitsuki/swipe/SwipeLayout$LayoutParams;->getGravity()I

    move-result v15

    if-nez v15, :cond_2

    iput-object v8, v0, Lcom/aitsuki/swipe/SwipeLayout;->s:Landroid/view/View;

    :cond_2
    invoke-virtual {v14}, Lcom/aitsuki/swipe/SwipeLayout$LayoutParams;->getGravity()I

    move-result v15

    invoke-static {v8}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v7

    invoke-static {v15, v7}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v7

    and-int/lit8 v7, v7, 0x7

    const/4 v15, 0x3

    if-eq v7, v15, :cond_4

    const/4 v15, 0x5

    if-eq v7, v15, :cond_3

    goto :goto_3

    :cond_3
    iput-object v8, v0, Lcom/aitsuki/swipe/SwipeLayout;->u:Landroid/view/View;

    goto :goto_3

    :cond_4
    iput-object v8, v0, Lcom/aitsuki/swipe/SwipeLayout;->t:Landroid/view/View;

    :goto_3
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v15, 0x8

    if-eq v7, v15, :cond_6

    invoke-virtual {v0, v8, v1, v2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v9, v7}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v9

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v10, v7}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v10

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredState()I

    move-result v7

    invoke-static {v11, v7}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v11

    if-eqz v4, :cond_6

    iget v7, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v7, v12, :cond_5

    iget v7, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v7, v12, :cond_6

    :cond_5
    iget-object v7, v0, Lcom/aitsuki/swipe/SwipeLayout;->e:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    move v8, v13

    const/high16 v7, 0x40000000    # 2.0f

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type com.aitsuki.swipe.SwipeLayout.LayoutParams"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-boolean v3, v0, Lcom/aitsuki/swipe/SwipeLayout;->w:Z

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/aitsuki/swipe/SwipeLayout;->v:Lcom/aitsuki/swipe/SwipeLayout$Designer;

    iget-object v4, v0, Lcom/aitsuki/swipe/SwipeLayout;->t:Landroid/view/View;

    iget-object v7, v0, Lcom/aitsuki/swipe/SwipeLayout;->u:Landroid/view/View;

    invoke-interface {v3, v0, v4, v7}, Lcom/aitsuki/swipe/SwipeLayout$Designer;->onInit(Lcom/aitsuki/swipe/SwipeLayout;Landroid/view/View;Landroid/view/View;)V

    iput-boolean v5, v0, Lcom/aitsuki/swipe/SwipeLayout;->w:Z

    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v9, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v10, v3

    invoke-static {v9, v1, v11}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    shl-int/lit8 v4, v11, 0x10

    invoke-static {v10, v2, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-object v3, v0, Lcom/aitsuki/swipe/SwipeLayout;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v5, :cond_c

    move v4, v6

    :goto_4
    if-ge v4, v3, :cond_c

    add-int/lit8 v5, v4, 0x1

    iget-object v7, v0, Lcom/aitsuki/swipe/SwipeLayout;->e:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v7, "matchParentChildren[i]"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v8, v12, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {v6, v8}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto :goto_5

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v8, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    :goto_5
    iget v9, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v9, v12, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    sub-int/2addr v7, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v7, v9

    invoke-static {v6, v7}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v7

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_6

    :cond_b
    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    add-int/2addr v10, v11

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v2, v10, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    :goto_6
    invoke-virtual {v4, v8, v7}, Landroid/view/View;->measure(II)V

    move v4, v5

    goto :goto_4

    :cond_c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/aitsuki/swipe/SwipeLayout;->o(Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final openEndMenu(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/aitsuki/swipe/SwipeLayout;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/aitsuki/swipe/SwipeLayout;->openLeftMenu(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/aitsuki/swipe/SwipeLayout;->openRightMenu(Z)V

    :goto_0
    return-void
.end method

.method public final openLeftMenu(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->m:Z

    iget-object v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->t:Landroid/view/View;

    iput-object v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->p:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/aitsuki/swipe/SwipeLayout;->l(Z)V

    return-void
.end method

.method public final openRightMenu(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->m:Z

    iget-object v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->u:Landroid/view/View;

    iput-object v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->p:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/aitsuki/swipe/SwipeLayout;->l(Z)V

    return-void
.end method

.method public final openStartMenu(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/aitsuki/swipe/SwipeLayout;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/aitsuki/swipe/SwipeLayout;->openRightMenu(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/aitsuki/swipe/SwipeLayout;->openLeftMenu(Z)V

    :goto_0
    return-void
.end method

.method public final p()V
    .locals 9

    iget-object v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->s:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v7, p0, Lcom/aitsuki/swipe/SwipeLayout;->p:Landroid/view/View;

    if-nez v7, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/aitsuki/swipe/SwipeLayout;->t:Landroid/view/View;

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v8, v1, v2

    iget-object v1, p0, Lcom/aitsuki/swipe/SwipeLayout;->v:Lcom/aitsuki/swipe/SwipeLayout$Designer;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int v6, v0, v2

    move-object v2, v7

    invoke-interface/range {v1 .. v6}, Lcom/aitsuki/swipe/SwipeLayout$Designer;->onLayout(Landroid/view/View;IIII)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v8, v1, v2

    iget-object v1, p0, Lcom/aitsuki/swipe/SwipeLayout;->v:Lcom/aitsuki/swipe/SwipeLayout$Designer;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int v5, v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int v6, v0, v2

    move-object v2, v7

    invoke-interface/range {v1 .. v6}, Lcom/aitsuki/swipe/SwipeLayout$Designer;->onLayout(Landroid/view/View;IIII)V

    :goto_0
    iget v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->q:F

    cmpg-float v0, v0, v8

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    invoke-virtual {p0, v7, v8}, Lcom/aitsuki/swipe/SwipeLayout;->g(Landroid/view/View;F)V

    :cond_4
    return-void
.end method

.method public final q(I)V
    .locals 3

    iget-object v0, p0, Lcom/aitsuki/swipe/SwipeLayout;->p:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/aitsuki/swipe/SwipeLayout;->r:Ljava/util/ArrayList;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->asReversedMutable(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aitsuki/swipe/SwipeLayout$Listener;

    invoke-interface {v2, v0, p1}, Lcom/aitsuki/swipe/SwipeLayout$Listener;->onSwipeStateChanged(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_4

    iget p1, p0, Lcom/aitsuki/swipe/SwipeLayout;->q:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p0, v0}, Lcom/aitsuki/swipe/SwipeLayout;->f(Landroid/view/View;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v0}, Lcom/aitsuki/swipe/SwipeLayout;->e(Landroid/view/View;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final removeListener(Lcom/aitsuki/swipe/SwipeLayout$Listener;)V
    .locals 1
    .param p1    # Lcom/aitsuki/swipe/SwipeLayout$Listener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/aitsuki/swipe/SwipeLayout;->r:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setAutoClose(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/aitsuki/swipe/SwipeLayout;->g:Z

    return-void
.end method

.method public final setOnScreen$library_release(F)V
    .locals 0

    iput p1, p0, Lcom/aitsuki/swipe/SwipeLayout;->q:F

    return-void
.end method

.method public final setSwipeFlags(I)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/aitsuki/swipe/SwipeLayout;->h(I)I

    move-result v0

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_0

    invoke-static {p0, v3, v4, v2}, Lcom/aitsuki/swipe/SwipeLayout;->c(Lcom/aitsuki/swipe/SwipeLayout;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_1

    invoke-static {p0, v3, v4, v2}, Lcom/aitsuki/swipe/SwipeLayout;->closeRightMenu$default(Lcom/aitsuki/swipe/SwipeLayout;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    invoke-static {p0, v3, v4, v2}, Lcom/aitsuki/swipe/SwipeLayout;->closeLeftMenu$default(Lcom/aitsuki/swipe/SwipeLayout;ZILjava/lang/Object;)V

    :cond_2
    :goto_0
    iput p1, p0, Lcom/aitsuki/swipe/SwipeLayout;->x:I

    return-void
.end method
