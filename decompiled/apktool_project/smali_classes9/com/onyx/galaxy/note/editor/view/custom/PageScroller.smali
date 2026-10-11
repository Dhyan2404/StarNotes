.class public final Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$Companion;,
        Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumFloatingBarListener;,
        Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 a2\u00020\u0001:\u0003abcB\u0011\u0008\u0016\u0012\u0006\u0010Y\u001a\u00020X\u00a2\u0006\u0004\u0008Z\u0010[B\u001b\u0008\u0016\u0012\u0006\u0010Y\u001a\u00020X\u0012\u0008\u0010]\u001a\u0004\u0018\u00010\\\u00a2\u0006\u0004\u0008Z\u0010^B#\u0008\u0016\u0012\u0006\u0010Y\u001a\u00020X\u0012\u0008\u0010]\u001a\u0004\u0018\u00010\\\u0012\u0006\u0010_\u001a\u00020\u001f\u00a2\u0006\u0004\u0008Z\u0010`J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\u0018\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J(\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004H\u0002J\u0008\u0010\r\u001a\u00020\u0002H\u0002J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0008\u0010\u0011\u001a\u00020\u0004H\u0002J\u0008\u0010\u0012\u001a\u00020\u0004H\u0002J,\u0010\u0015\u001a&\u0012\u000c\u0012\n \u0014*\u0004\u0018\u00010\u00040\u0004 \u0014*\u0012\u0012\u000c\u0012\n \u0014*\u0004\u0018\u00010\u00040\u0004\u0018\u00010\u00130\u0013H\u0002J,\u0010\u0016\u001a&\u0012\u000c\u0012\n \u0014*\u0004\u0018\u00010\u00040\u0004 \u0014*\u0012\u0012\u000c\u0012\n \u0014*\u0004\u0018\u00010\u00040\u0004\u0018\u00010\u00130\u0013H\u0002J\u0008\u0010\u0017\u001a\u00020\u0004H\u0002J\u0008\u0010\u0018\u001a\u00020\u0004H\u0002J,\u0010\u0019\u001a&\u0012\u000c\u0012\n \u0014*\u0004\u0018\u00010\u00040\u0004 \u0014*\u0012\u0012\u000c\u0012\n \u0014*\u0004\u0018\u00010\u00040\u0004\u0018\u00010\u00130\u0013H\u0002J,\u0010\u001a\u001a&\u0012\u000c\u0012\n \u0014*\u0004\u0018\u00010\u00040\u0004 \u0014*\u0012\u0012\u000c\u0012\n \u0014*\u0004\u0018\u00010\u00040\u0004\u0018\u00010\u00130\u0013H\u0002J\u0018\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u0004H\u0002J\u0008\u0010\u001e\u001a\u00020\u0008H\u0002J\u0010\u0010!\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u001fH\u0016J\u000e\u0010#\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020\u0008J\u0006\u0010$\u001a\u00020\u0002J\u0006\u0010%\u001a\u00020\u0002J\u0006\u0010&\u001a\u00020\u0002J\u000e\u0010)\u001a\u00020\u00022\u0006\u0010(\u001a\u00020\'J\u0006\u0010*\u001a\u00020\u0002J\u000e\u0010,\u001a\u00020\u00022\u0006\u0010+\u001a\u00020\u0004J\u0006\u0010-\u001a\u00020\u0002R\u001b\u00102\u001a\u00020.8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010/\u001a\u0004\u00080\u00101R\"\u00109\u001a\u0002038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u00104\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R$\u0010A\u001a\u0004\u0018\u00010:8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008;\u0010<\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@R\u0014\u0010C\u001a\u00020\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010BR\u0016\u0010E\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010DR\u0016\u0010G\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010FR\u0014\u0010H\u001a\u00020\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010BR\u0016\u0010K\u001a\u00020I8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010JR\u0016\u0010M\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010LR\u0016\u0010N\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\t\u0010LR\u0016\u0010Q\u001a\u00020O8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010PR\"\u0010R\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010F\u001a\u0004\u0008R\u0010S\"\u0004\u0008T\u0010UR\u0016\u0010V\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010LR\u0016\u0010W\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010L\u00a8\u0006d"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;",
        "Landroid/widget/FrameLayout;",
        "",
        "f",
        "",
        "rawX",
        "rawY",
        "o",
        "",
        "n",
        "touchX",
        "touchY",
        "p",
        "s",
        "Landroid/view/MotionEvent;",
        "e2",
        "t",
        "k",
        "l",
        "Lorg/apache/commons/lang3/Range;",
        "kotlin.jvm.PlatformType",
        "q",
        "r",
        "i",
        "j",
        "d",
        "e",
        "curPageBoxLeft",
        "curPageBoxTop",
        "m",
        "h",
        "",
        "visibility",
        "setVisibility",
        "shouldShow",
        "show",
        "showForAwhile",
        "notifyViewDataChange",
        "refreshOrientation",
        "Landroid/graphics/Rect;",
        "rect",
        "setMotionRegion",
        "onOuterScrollBegin",
        "scrollValue",
        "onOuterScrolling",
        "onOuterScrollEnd",
        "Lcom/onyx/galaxy/note/databinding/LayoutPageNumFloatBarBinding;",
        "Lkotlin/Lazy;",
        "getBinding",
        "()Lcom/onyx/galaxy/note/databinding/LayoutPageNumFloatBarBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;",
        "Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;",
        "getViewData",
        "()Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;",
        "setViewData",
        "(Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;)V",
        "viewData",
        "Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumFloatingBarListener;",
        "g",
        "Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumFloatingBarListener;",
        "getPageNumFloatingBarListener",
        "()Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumFloatingBarListener;",
        "setPageNumFloatingBarListener",
        "(Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumFloatingBarListener;)V",
        "pageNumFloatingBarListener",
        "I",
        "dismissDelay",
        "Landroid/graphics/Rect;",
        "regionRect",
        "Z",
        "isTouching",
        "touchSlop",
        "Landroid/view/GestureDetector;",
        "Landroid/view/GestureDetector;",
        "gestureDetector",
        "F",
        "downRawX",
        "downRawY",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Runnable;",
        "dismissCountDownTask",
        "isEnabledBySceneFeature",
        "()Z",
        "setEnabledBySceneFeature",
        "(Z)V",
        "currentRawX",
        "currentRawY",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Companion",
        "PageNumFloatingBarListener",
        "PageNumViewUpdateData",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OUTER_SCROLL_DISTANCE_OFFSET:F = 100.0f


# instance fields
.field public final e:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumFloatingBarListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final h:I

.field public i:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Z

.field public final k:I

.field public l:Landroid/view/GestureDetector;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:F

.field public n:F

.field public o:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public p:Z

.field public q:F

.field public r:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->Companion:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$binding$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$binding$2;-><init>(Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->e:Lkotlin/Lazy;

    .line 5
    new-instance p1, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;-><init>(ILandroid/graphics/RectF;Landroid/graphics/RectF;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->f:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;

    .line 6
    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p2, Lcom/onyx/galaxy/note/R$integer;->page_indicator_duration:I

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->h:I

    .line 7
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->i:Landroid/graphics/Rect;

    .line 8
    sget p2, Lcom/onyx/galaxy/note/R$dimen;->page_indicator_touch_distance_throttle:I

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->k:I

    .line 9
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$gestureDetector$1;

    invoke-direct {p3, p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$gestureDetector$1;-><init>(Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;)V

    invoke-direct {p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->l:Landroid/view/GestureDetector;

    .line 10
    new-instance p1, Lcom/sunia/HTREnginev2/wtk;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/wtk;-><init>(Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->o:Ljava/lang/Runnable;

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->p:Z

    .line 12
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->f()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->c(Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;)V

    return-void
.end method

.method public static final synthetic access$getGestureDetector$p(Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;)Landroid/view/GestureDetector;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->l:Landroid/view/GestureDetector;

    return-object p0
.end method

.method public static final synthetic access$onScrollEnd(Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;FF)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->n(FF)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$onScrollStart(Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;FF)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->o(FF)V

    return-void
.end method

.method public static final synthetic access$setTouching$p(Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->j:Z

    return-void
.end method

.method public static final synthetic access$updatePageNumViewByTouch(Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->t(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->g(Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;Landroid/view/View;)V

    return-void
.end method

.method public static final c(Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->setVisibility(I)V

    return-void
.end method

.method public static final g(Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->s()V

    return-void
.end method


# virtual methods
.method public final d()Lorg/apache/commons/lang3/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/lang3/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->f:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;->getViewPortLimitRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->f:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;->getViewPortLimitRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->i()F

    move-result p0

    add-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lorg/apache/commons/lang3/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/lang3/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->f:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;->getViewPortLimitRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->f:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;->getViewPortLimitRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->j()F

    move-result p0

    add-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object p0

    return-object p0
.end method

.method public final f()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutPageNumFloatBarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutPageNumFloatBarBinding;->pageScrollerContainer:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/sunia/HTREnginev2/vtk;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/vtk;-><init>(Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutPageNumFloatBarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutPageNumFloatBarBinding;->pageScrollerContainer:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$initViews$2;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$initViews$2;-><init>(Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->refreshOrientation()V

    return-void
.end method

.method public final getBinding()Lcom/onyx/galaxy/note/databinding/LayoutPageNumFloatBarBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->e:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/LayoutPageNumFloatBarBinding;

    return-object p0
.end method

.method public final getPageNumFloatingBarListener()Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumFloatingBarListener;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->g:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumFloatingBarListener;

    return-object p0
.end method

.method public final getViewData()Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->f:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;

    return-object p0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->p:Z

    if-nez v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->setVisibility(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final i()F
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->f:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;->getViewPortLimitRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->f:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;->getViewPort()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method public final isEnabledBySceneFeature()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->p:Z

    return p0
.end method

.method public final j()F
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->f:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;->getViewPortLimitRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->f:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;->getViewPort()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method public final k()F
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v0, p0

    return v0
.end method

.method public final l()F
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v0, p0

    return v0
.end method

.method public final m(FF)V
    .locals 6

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->e()Lorg/apache/commons/lang3/Range;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->d()Lorg/apache/commons/lang3/Range;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->r()Lorg/apache/commons/lang3/Range;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->q()Lorg/apache/commons/lang3/Range;

    move-result-object v3

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->f:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;->isVertical()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->f:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;->getViewPortLimitRect()Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float p1, p1, v5

    if-gtz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->f:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;->getViewPortLimitRect()Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, p1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RangeKt;->length(Lorg/apache/commons/lang3/Range;)F

    move-result p1

    div-float/2addr p2, p1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/RangeKt;->length(Lorg/apache/commons/lang3/Range;)F

    move-result p1

    mul-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/onyx/android/sdk/base/extension/RangeKt;->clamp(Lorg/apache/commons/lang3/Range;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setY(F)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->f:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;->getBarGravity()I

    move-result p1

    const p2, 0x800003

    if-ne p1, p2, :cond_2

    invoke-virtual {v3}, Lorg/apache/commons/lang3/Range;->getMinimum()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lorg/apache/commons/lang3/Range;->getMaximum()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setX(F)V

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->f:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;->getViewPortLimitRect()Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->right:F

    cmpg-float p2, p2, v5

    if-gtz p2, :cond_4

    return-void

    :cond_4
    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->f:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;->getViewPortLimitRect()Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, p2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/RangeKt;->length(Lorg/apache/commons/lang3/Range;)F

    move-result p2

    div-float/2addr p1, p2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/RangeKt;->length(Lorg/apache/commons/lang3/Range;)F

    move-result p2

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/onyx/android/sdk/base/extension/RangeKt;->clamp(Lorg/apache/commons/lang3/Range;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setX(F)V

    invoke-virtual {v2}, Lorg/apache/commons/lang3/Range;->getMinimum()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "getMinimum(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setY(F)V

    :goto_1
    return-void
.end method

.method public final n(FF)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->show(Z)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->m:F

    iget v3, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->n:F

    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/onyx/android/sdk/base/utils/MathUtils;->distance(FFFF)D

    move-result-wide p1

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->g:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumFloatingBarListener;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumFloatingBarListener;->pageScrollEnd()V

    :cond_0
    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->k:I

    int-to-double v1, p0

    cmpl-double p0, p1, v1

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final notifyViewDataChange()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->f:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;->getViewPort()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->f:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;->getViewPort()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->m(FF)V

    return-void
.end method

.method public final o(FF)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->m:F

    iput p2, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->n:F

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->g:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumFloatingBarListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumFloatingBarListener;->pageScrollStart()V

    :cond_0
    return-void
.end method

.method public final onOuterScrollBegin()V
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->show(Z)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getLocationOnScreen(Landroid/view/View;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v1, v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    aget v0, v1, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->o(FF)V

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->m:F

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->q:F

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->n:F

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->r:F

    return-void
.end method

.method public final onOuterScrollEnd()V
    .locals 4

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getLocationOnScreen(Landroid/view/View;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->n(FF)Z

    return-void
.end method

.method public final onOuterScrolling(F)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    mul-float/2addr p1, v1

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->f:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;->isVertical()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->l()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->j()F

    move-result p1

    div-float/2addr v1, p1

    iget p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->r:F

    add-float/2addr p1, v1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->r:F

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->k()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->i()F

    move-result p1

    div-float/2addr v1, p1

    iget p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->q:F

    add-float/2addr p1, v1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->q:F

    :goto_0
    iget p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->q:F

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->r:F

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->p(FFFF)V

    return-void
.end method

.method public final p(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->f:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->r()Lorg/apache/commons/lang3/Range;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/RangeKt;->length(Lorg/apache/commons/lang3/Range;)F

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    add-float/2addr v0, p4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    int-to-float p4, p4

    sub-float/2addr v0, p4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-static {p1, p4}, Lcom/onyx/android/sdk/base/extension/RangeKt;->clamp(Lorg/apache/commons/lang3/Range;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setY(F)V

    iget p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->n:F

    sub-float/2addr p2, p1

    div-float/2addr p2, p3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->j()F

    move-result p1

    mul-float/2addr p2, p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->g:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumFloatingBarListener;

    if-eqz p0, :cond_2

    invoke-interface {p0, p2}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumFloatingBarListener;->pageScrollY(F)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->q()Lorg/apache/commons/lang3/Range;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/RangeKt;->length(Lorg/apache/commons/lang3/Range;)F

    move-result p4

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    add-float/2addr v0, p3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    sub-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/onyx/android/sdk/base/extension/RangeKt;->clamp(Lorg/apache/commons/lang3/Range;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setX(F)V

    iget p2, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->m:F

    sub-float/2addr p1, p2

    div-float/2addr p1, p4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->i()F

    move-result p2

    mul-float/2addr p1, p2

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->g:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumFloatingBarListener;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumFloatingBarListener;->pageScrollX(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final q()Lorg/apache/commons/lang3/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/lang3/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->i:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->i:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->k()F

    move-result p0

    add-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object p0

    return-object p0
.end method

.method public final r()Lorg/apache/commons/lang3/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/lang3/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->i:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->i:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->l()F

    move-result p0

    add-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object p0

    return-object p0
.end method

.method public final refreshOrientation()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->f:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;->isVertical()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->f:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;->getBarGravity()I

    move-result v0

    const v3, 0x800003

    if-eq v0, v3, :cond_1

    const v3, 0x800005

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutPageNumFloatBarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutPageNumFloatBarBinding;->pageScrollerHorizon:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutPageNumFloatBarBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutPageNumFloatBarBinding;->pageScrollerVertical:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutPageNumFloatBarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutPageNumFloatBarBinding;->pageScrollerHorizon:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutPageNumFloatBarBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutPageNumFloatBarBinding;->pageScrollerVertical:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final s()V
    .locals 3

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->globalVisibleRectF(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->g:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumFloatingBarListener;

    if-eqz v1, :cond_0

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-interface {v1, v2, v0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumFloatingBarListener;->showPageJumperPopup(FF)V

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->setVisibility(I)V

    return-void
.end method

.method public final setEnabledBySceneFeature(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->p:Z

    return-void
.end method

.method public final setMotionRegion(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->i:Landroid/graphics/Rect;

    return-void
.end method

.method public final setPageNumFloatingBarListener(Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumFloatingBarListener;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumFloatingBarListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->g:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumFloatingBarListener;

    return-void
.end method

.method public final setViewData(Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->f:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->g:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumFloatingBarListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumFloatingBarListener;->onDismiss()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->notifyViewDataChange()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->g:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumFloatingBarListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumFloatingBarListener;->onShown()V

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final show(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->o:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->refreshOrientation()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->o:Ljava/lang/Runnable;

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->h:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public final showForAwhile()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->o:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->refreshOrientation()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->notifyViewDataChange()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->o:Ljava/lang/Runnable;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->h:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final t(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->p(FFFF)V

    return-void
.end method
