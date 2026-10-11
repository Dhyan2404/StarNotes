.class public final Lcom/onyx/galaxy/note/editor/view/CounterView;
.super Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler$CounterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/CounterView$Callback;,
        Lcom/onyx/galaxy/note/editor/view/CounterView$CounterViewState;,
        Lcom/onyx/galaxy/note/editor/view/CounterView$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0002YZB\u001f\u0012\u0006\u0010-\u001a\u00020*\u0012\u0006\u00101\u001a\u00020.\u0012\u0006\u0010U\u001a\u00020T\u00a2\u0006\u0004\u0008V\u0010WB\u0011\u0008\u0016\u0012\u0006\u0010U\u001a\u00020T\u00a2\u0006\u0004\u0008V\u0010XJ\u0008\u0010\u0004\u001a\u00020\u0003H\u0002J\u0008\u0010\u0005\u001a\u00020\u0003H\u0002J\u0008\u0010\u0006\u001a\u00020\u0003H\u0002J\u0008\u0010\u0007\u001a\u00020\u0003H\u0002J\u0008\u0010\u0008\u001a\u00020\u0003H\u0002J\u0008\u0010\t\u001a\u00020\u0003H\u0002J\u0008\u0010\n\u001a\u00020\u0003H\u0002J\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u0008\u0010\u000f\u001a\u00020\u0003H\u0002J\u0008\u0010\u0010\u001a\u00020\u0003H\u0002J\u0008\u0010\u0011\u001a\u00020\u0003H\u0002J\u0008\u0010\u0012\u001a\u00020\u0003H\u0002J\u0008\u0010\u0013\u001a\u00020\u0003H\u0002J\u0008\u0010\u0014\u001a\u00020\u0003H\u0002J\u0008\u0010\u0015\u001a\u00020\u0003H\u0014J\u0008\u0010\u0016\u001a\u00020\u0003H\u0014J\u000e\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u0017J\u000e\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u001bJ\u000e\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u0019J\u0006\u0010 \u001a\u00020\u0003J\u0006\u0010!\u001a\u00020\u0003J\u0006\u0010\"\u001a\u00020\u0019J\u000e\u0010%\u001a\u00020\u00032\u0006\u0010$\u001a\u00020#J\u0008\u0010&\u001a\u00020\u0003H\u0016J\u0010\u0010)\u001a\u00020\u00032\u0006\u0010(\u001a\u00020\'H\u0016R\u0014\u0010-\u001a\u00020*8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0014\u00101\u001a\u00020.8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u001b\u00106\u001a\u0002028BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0006\u00103\u001a\u0004\u00084\u00105R\u0014\u00109\u001a\u0002078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u00108R\u0016\u0010<\u001a\u00020:8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010;R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R\u0016\u0010A\u001a\u00020#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u0018\u0010E\u001a\u0004\u0018\u00010B8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u001a\u0010J\u001a\u0008\u0012\u0004\u0012\u00020G0F8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008H\u0010IR\u001b\u0010O\u001a\u00020K8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008L\u00103\u001a\u0004\u0008M\u0010NR\u0014\u0010S\u001a\u00020P8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008Q\u0010R\u00a8\u0006["
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/CounterView;",
        "Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;",
        "Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler$CounterListener;",
        "",
        "r",
        "l",
        "j",
        "B",
        "s",
        "w",
        "u",
        "",
        "res",
        "Landroid/graphics/drawable/StateListDrawable;",
        "k",
        "y",
        "A",
        "z",
        "E",
        "D",
        "C",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "interceptTouchEventIf",
        "Lcom/onyx/galaxy/note/editor/view/CounterView$Callback;",
        "callback",
        "setCallback",
        "isExpand",
        "setInitState",
        "toggleState",
        "refreshUI",
        "isExpanded",
        "Landroid/graphics/Rect;",
        "rect",
        "updateVisibleRect",
        "tint",
        "",
        "timestamp",
        "onTick",
        "Lcom/onyx/galaxy/note/editor/ui/CounterBundle;",
        "h",
        "Lcom/onyx/galaxy/note/editor/ui/CounterBundle;",
        "counterBundle",
        "Lcom/onyx/galaxy/note/editor/data/CounterEntry;",
        "i",
        "Lcom/onyx/galaxy/note/editor/data/CounterEntry;",
        "counterEntry",
        "Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;",
        "Lkotlin/Lazy;",
        "getBinding",
        "()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;",
        "Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;",
        "counterProgressDrawable",
        "Lcom/onyx/galaxy/note/editor/view/CounterView$CounterViewState;",
        "Lcom/onyx/galaxy/note/editor/view/CounterView$CounterViewState;",
        "state",
        "m",
        "Lcom/onyx/galaxy/note/editor/view/CounterView$Callback;",
        "n",
        "Landroid/graphics/Rect;",
        "visibleRect",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "o",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "segmentCounterDisposable",
        "Lcom/onyx/android/sdk/base/rx/RxFilter;",
        "",
        "p",
        "Lcom/onyx/android/sdk/base/rx/RxFilter;",
        "collapseTimeListFilter",
        "Ljava/lang/Runnable;",
        "q",
        "getRefreshSplitTimeButtonRunnable",
        "()Ljava/lang/Runnable;",
        "refreshSplitTimeButtonRunnable",
        "Lcom/onyx/galaxy/note/editor/data/CounterEntryState;",
        "getEntryState",
        "()Lcom/onyx/galaxy/note/editor/data/CounterEntryState;",
        "entryState",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;Lcom/onyx/galaxy/note/editor/data/CounterEntry;Landroid/content/Context;)V",
        "(Landroid/content/Context;)V",
        "Callback",
        "CounterViewState",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final h:Lcom/onyx/galaxy/note/editor/ui/CounterBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/onyx/galaxy/note/editor/data/CounterEntry;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Lcom/onyx/galaxy/note/editor/view/CounterView$CounterViewState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Lcom/onyx/galaxy/note/editor/view/CounterView$Callback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public n:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o:Lio/reactivex/rxjava3/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final p:Lcom/onyx/android/sdk/base/rx/RxFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/base/rx/RxFilter<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final q:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/CounterBundle;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/ui/CounterBundle;-><init>()V

    new-instance v1, Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    new-instance v2, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;

    invoke-direct {v2}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;-><init>()V

    invoke-direct {v1, v2}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;-><init>(Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;)V

    invoke-direct {p0, v0, v1, p1}, Lcom/onyx/galaxy/note/editor/view/CounterView;-><init>(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;Lcom/onyx/galaxy/note/editor/data/CounterEntry;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;Lcom/onyx/galaxy/note/editor/data/CounterEntry;Landroid/content/Context;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/ui/CounterBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/editor/data/CounterEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "counterBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "counterEntry"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p3}, Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->h:Lcom/onyx/galaxy/note/editor/ui/CounterBundle;

    .line 3
    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->i:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    .line 4
    new-instance p1, Lcom/onyx/galaxy/note/editor/view/CounterView$binding$2;

    invoke-direct {p1, p3, p0}, Lcom/onyx/galaxy/note/editor/view/CounterView$binding$2;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/CounterView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->j:Lkotlin/Lazy;

    .line 5
    new-instance p1, Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->k:Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;

    .line 6
    sget-object p1, Lcom/onyx/galaxy/note/editor/view/CounterView$CounterViewState;->COLLAPSE:Lcom/onyx/galaxy/note/editor/view/CounterView$CounterViewState;

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->l:Lcom/onyx/galaxy/note/editor/view/CounterView$CounterViewState;

    .line 7
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->n:Landroid/graphics/Rect;

    .line 8
    new-instance p1, Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-direct {p1}, Lcom/onyx/android/sdk/base/rx/RxFilter;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->p:Lcom/onyx/android/sdk/base/rx/RxFilter;

    .line 9
    new-instance p2, Lcom/onyx/galaxy/note/editor/view/CounterView$refreshSplitTimeButtonRunnable$2;

    invoke-direct {p2, p0}, Lcom/onyx/galaxy/note/editor/view/CounterView$refreshSplitTimeButtonRunnable$2;-><init>(Lcom/onyx/galaxy/note/editor/view/CounterView;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->q:Lkotlin/Lazy;

    .line 10
    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 11
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->r()V

    .line 12
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->y()V

    .line 13
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->l()V

    .line 14
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->refreshUI()V

    .line 15
    sget-object p2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p3, Lcom/onyx/galaxy/note/R$integer;->counter_count_up_segment_auto_collapse_delay:I

    invoke-virtual {p2, p3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLong(I)J

    move-result-wide p2

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/CounterView$a;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/CounterView$a;-><init>(Lcom/onyx/galaxy/note/editor/view/CounterView;)V

    invoke-virtual {p1, p2, p3, v0}, Lcom/onyx/android/sdk/base/rx/RxFilter;->subscribeDebounce(JLio/reactivex/rxjava3/functions/Consumer;)V

    return-void
.end method

.method public static final synthetic access$autoCollapseTimeListIf(Lcom/onyx/galaxy/note/editor/view/CounterView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->j()V

    return-void
.end method

.method public static final synthetic access$getBinding(Lcom/onyx/galaxy/note/editor/view/CounterView;)Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;
    .locals 0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCounterBundle$p(Lcom/onyx/galaxy/note/editor/view/CounterView;)Lcom/onyx/galaxy/note/editor/ui/CounterBundle;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->h:Lcom/onyx/galaxy/note/editor/ui/CounterBundle;

    return-object p0
.end method

.method public static final synthetic access$getCounterEntry$p(Lcom/onyx/galaxy/note/editor/view/CounterView;)Lcom/onyx/galaxy/note/editor/data/CounterEntry;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->i:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    return-object p0
.end method

.method public static final synthetic access$getEntryState(Lcom/onyx/galaxy/note/editor/view/CounterView;)Lcom/onyx/galaxy/note/editor/data/CounterEntryState;
    .locals 0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getEntryState()Lcom/onyx/galaxy/note/editor/data/CounterEntryState;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateByCounterState(Lcom/onyx/galaxy/note/editor/view/CounterView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->B()V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/galaxy/note/editor/view/CounterView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/CounterView;->p(Lcom/onyx/galaxy/note/editor/view/CounterView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/editor/view/CounterView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/CounterView;->x(Lcom/onyx/galaxy/note/editor/view/CounterView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/galaxy/note/editor/view/CounterView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/CounterView;->n(Lcom/onyx/galaxy/note/editor/view/CounterView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/onyx/galaxy/note/editor/view/CounterView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/CounterView;->q(Lcom/onyx/galaxy/note/editor/view/CounterView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/onyx/galaxy/note/editor/view/CounterView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/CounterView;->m(Lcom/onyx/galaxy/note/editor/view/CounterView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/onyx/galaxy/note/editor/view/CounterView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/CounterView;->v(Lcom/onyx/galaxy/note/editor/view/CounterView;Landroid/view/View;)V

    return-void
.end method

.method private final getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->j:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    return-object p0
.end method

.method private final getEntryState()Lcom/onyx/galaxy/note/editor/data/CounterEntryState;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->i:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getEntryState()Lcom/onyx/galaxy/note/editor/data/CounterEntryState;

    move-result-object p0

    return-object p0
.end method

.method private final getRefreshSplitTimeButtonRunnable()Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->q:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic h(Lcom/onyx/galaxy/note/editor/view/CounterView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/CounterView;->t(Lcom/onyx/galaxy/note/editor/view/CounterView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/onyx/galaxy/note/editor/view/CounterView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/CounterView;->o(Lcom/onyx/galaxy/note/editor/view/CounterView;Landroid/view/View;)V

    return-void
.end method

.method public static final m(Lcom/onyx/galaxy/note/editor/view/CounterView;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->toggleState()V

    return-void
.end method

.method public static final n(Lcom/onyx/galaxy/note/editor/view/CounterView;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->toggleState()V

    return-void
.end method

.method public static final o(Lcom/onyx/galaxy/note/editor/view/CounterView;Landroid/view/View;)V
    .locals 7

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getEntryState()Lcom/onyx/galaxy/note/editor/data/CounterEntryState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->getCountTimes()I

    move-result p1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$integer;->counter_count_up_max_segment:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/galaxy/note/R$string;->counter_segment_exceed_limit:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->o:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->isDisposed(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Lcom/onyx/galaxy/note/editor/action/counter/SegmentCounterAction;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->i:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    invoke-direct {p1, v0}, Lcom/onyx/galaxy/note/editor/action/counter/SegmentCounterAction;-><init>(Lcom/onyx/galaxy/note/editor/data/CounterEntry;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/CounterView$b;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/CounterView$b;-><init>(Lcom/onyx/galaxy/note/editor/view/CounterView;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/CounterView$c;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/CounterView$c;-><init>(Lcom/onyx/galaxy/note/editor/view/CounterView;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/CounterView$d;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/CounterView$d;-><init>(Lcom/onyx/galaxy/note/editor/view/CounterView;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const-string p1, "doOnNext(...)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->o:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public static final p(Lcom/onyx/galaxy/note/editor/view/CounterView;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setWarning(Z)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p1

    sget v0, Lcom/onyx/galaxy/note/R$string;->hint:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setTitle(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p1

    sget v0, Lcom/onyx/galaxy/note/R$string;->counter_reset_warning:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setMessage(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/CounterView$initEvent$4$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/CounterView$initEvent$4$1;-><init>(Lcom/onyx/galaxy/note/editor/view/CounterView;)V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setConfirmCallback(Lkotlin/jvm/functions/Function2;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->create()Lcom/onyx/android/sdk/ui/CommonDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/CommonDialog;->show()V

    return-void
.end method

.method public static final q(Lcom/onyx/galaxy/note/editor/view/CounterView;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setWarning(Z)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p1

    sget v0, Lcom/onyx/galaxy/note/R$string;->hint:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setTitle(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p1

    sget v0, Lcom/onyx/galaxy/note/R$string;->counter_shutdown_warning:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setMessage(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/CounterView$initEvent$5$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/CounterView$initEvent$5$1;-><init>(Lcom/onyx/galaxy/note/editor/view/CounterView;)V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setConfirmCallback(Lkotlin/jvm/functions/Function2;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->create()Lcom/onyx/android/sdk/ui/CommonDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/CommonDialog;->show()V

    return-void
.end method

.method public static final t(Lcom/onyx/galaxy/note/editor/view/CounterView;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->i:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->start()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->y()V

    return-void
.end method

.method public static final v(Lcom/onyx/galaxy/note/editor/view/CounterView;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->i:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->resume()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->y()V

    return-void
.end method

.method public static final x(Lcom/onyx/galaxy/note/editor/view/CounterView;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->i:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->pause()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->y()V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 3

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->counterTimeList:Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;->setVisible(Z)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->tvCollapseCounting:Lcom/onyx/galaxy/note/editor/view/CountingTextView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->stop()V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->flCollapse:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->ctlExpand:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->tvCollapseCounting:Lcom/onyx/galaxy/note/editor/view/CountingTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->flControl:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->flControl:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->k:Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->tvExpandCounting:Lcom/onyx/galaxy/note/editor/view/CountingTextView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->i:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->isCountUp()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->setCountUp(Z)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->i:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->startCount(Lcom/onyx/galaxy/note/editor/data/CounterEntry;)V

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->refresh()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->refreshUI()V

    return-void
.end method

.method public final B()V
    .locals 3

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->tvSplitTime:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->i:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->isCounting()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->tvReset:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->i:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->hasStart()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->i:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->isCountUp()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->tvSplitTime:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$string;->counter_split_time:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->D()V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getEntryState()Lcom/onyx/galaxy/note/editor/data/CounterEntryState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->getState()Lcom/onyx/android/sdk/replicator/counter/data/CounterState;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/editor/view/CounterView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->u()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->w()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->s()V

    :goto_0
    return-void
.end method

.method public final C()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->i:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->isMultipleCountDown()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->k:Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->i:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getCountPercent()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;->setProgress(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->k:Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->i:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getCurrentCountPercent()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;->setProgress(F)V

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->D()V

    return-void
.end method

.method public final D()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->i:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getTaskModel()Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/utils/CounterUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/CounterUtils;

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/utils/CounterUtils;->getFormatedTaskName(Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->i:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->isMultipleCountDown()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->i:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->hasStart()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->i:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getCurrentTimeSetting()Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;

    move-result-object v3

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->tvCountName:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;->getCountList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getEntryState()Lcom/onyx/galaxy/note/editor/data/CounterEntryState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->getCountTimes()I

    move-result p0

    invoke-virtual {v1, v0, p0}, Lcom/onyx/galaxy/note/utils/CounterUtils;->getFormatedSegmentName(Ljava/util/List;I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->tvCountName:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method public final E()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->i:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->hasStart()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->i:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->isCounting()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->i:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getTaskModel()Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;->getDuration()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->i:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getCurrentTimeSetting()Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;->getDuration()J

    move-result-wide v0

    :goto_1
    long-to-int v0, v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->tvCollapseCounting:Lcom/onyx/galaxy/note/editor/view/CountingTextView;

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->setTotalCountTime(I)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->tvExpandCounting:Lcom/onyx/galaxy/note/editor/view/CountingTextView;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->setTotalCountTime(I)V

    return-void
.end method

.method public final interceptTouchEventIf(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->p:Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/rx/RxFilter;->onNext(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isDownAction(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->counterTimeList:Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->counterTimeList:Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;->interceptTouchEventIf(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public final isExpanded()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->l:Lcom/onyx/galaxy/note/editor/view/CounterView$CounterViewState;

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/CounterView$CounterViewState;->EXPAND:Lcom/onyx/galaxy/note/editor/view/CounterView$CounterViewState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->p:Lcom/onyx/android/sdk/base/rx/RxFilter;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/rx/RxFilter;->onNext(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getRefreshSplitTimeButtonRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getRefreshSplitTimeButtonRunnable()Ljava/lang/Runnable;

    move-result-object p0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$integer;->counter_count_up_segment_refresh_delay:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final k(I)Landroid/graphics/drawable/StateListDrawable;
    .locals 2

    invoke-static {p1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const-string v0, "mutate(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const v1, 0x10100a7

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const p0, 0x101009e

    filled-new-array {p0}, [I

    move-result-object p0

    invoke-static {p1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public final l()V
    .locals 7

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->flCollapse:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    new-instance v1, Lcom/sunia/HTREnginev2/ffe;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ffe;-><init>(Lcom/onyx/galaxy/note/editor/view/CounterView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->ivCollapse:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v1, Lcom/sunia/HTREnginev2/gfe;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/gfe;-><init>(Lcom/onyx/galaxy/note/editor/view/CounterView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->tvSplitTime:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/hfe;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/hfe;-><init>(Lcom/onyx/galaxy/note/editor/view/CounterView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->tvReset:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvReset"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/ife;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/ife;-><init>(Lcom/onyx/galaxy/note/editor/view/CounterView;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->tvShutdown:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvShutdown"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/jfe;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/jfe;-><init>(Lcom/onyx/galaxy/note/editor/view/CounterView;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->i:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getTimerHandler()Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->registerListener(Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler$CounterListener;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->i:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getTimerHandler()Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->unregisterListener(Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler$CounterListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->m:Lcom/onyx/galaxy/note/editor/view/CounterView$Callback;

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler$CounterListener$DefaultImpls;->onTick(Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler$CounterListener;J)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->i:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->isCountUp()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->E()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->C()V

    return-void
.end method

.method public final r()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->counterTimeList:Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->i:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;->setCounterEntry(Lcom/onyx/galaxy/note/editor/data/CounterEntry;)V

    return-void
.end method

.method public final refreshUI()V
    .locals 3

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->tvSplitTime:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/onyx/galaxy/note/R$color;->selector_color_enabled_black_gray:I

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->tvSplitTime:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->i:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getTaskModel()Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;->getType()I

    move-result v1

    sget-object v2, Lcom/onyx/android/sdk/replicator/counter/data/CounterType;->COUNT_UP:Lcom/onyx/android/sdk/replicator/counter/data/CounterType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->B()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->E()V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->tvExpandCounting:Lcom/onyx/galaxy/note/editor/view/CountingTextView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->refresh()V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->tvCollapseCounting:Lcom/onyx/galaxy/note/editor/view/CountingTextView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->refresh()V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->counterTimeList:Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;->updateData()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->C()V

    return-void
.end method

.method public final s()V
    .locals 2

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->tvControl:Landroid/widget/TextView;

    sget v1, Lcom/onyx/galaxy/note/R$string;->counter_enable:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->tvControl:Landroid/widget/TextView;

    sget v1, Lcom/onyx/galaxy/note/R$drawable;->shape_counter_circle_button_primary_bg:I

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/view/CounterView;->k(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->tvControl:Landroid/widget/TextView;

    sget v1, Lcom/onyx/android/sdk/skin/R$color;->theme_text_btn_color:I

    invoke-static {v1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->tvControl:Landroid/widget/TextView;

    new-instance v1, Lcom/sunia/HTREnginev2/kfe;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/kfe;-><init>(Lcom/onyx/galaxy/note/editor/view/CounterView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setCallback(Lcom/onyx/galaxy/note/editor/view/CounterView$Callback;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/CounterView$Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->m:Lcom/onyx/galaxy/note/editor/view/CounterView$Callback;

    return-void
.end method

.method public final setInitState(Z)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/CounterView$CounterViewState;->EXPAND:Lcom/onyx/galaxy/note/editor/view/CounterView$CounterViewState;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/editor/view/CounterView$CounterViewState;->COLLAPSE:Lcom/onyx/galaxy/note/editor/view/CounterView$CounterViewState;

    :goto_0
    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->l:Lcom/onyx/galaxy/note/editor/view/CounterView$CounterViewState;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->y()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->m:Lcom/onyx/galaxy/note/editor/view/CounterView$Callback;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/onyx/galaxy/note/editor/view/CounterView$Callback;->onExpandStateChanged(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->refreshUI()V

    return-void
.end method

.method public tint()V
    .locals 0

    invoke-super {p0}, Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;->tint()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->y()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->refreshUI()V

    return-void
.end method

.method public final toggleState()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->l:Lcom/onyx/galaxy/note/editor/view/CounterView$CounterViewState;

    sget-object v1, Lcom/onyx/galaxy/note/editor/view/CounterView$CounterViewState;->COLLAPSE:Lcom/onyx/galaxy/note/editor/view/CounterView$CounterViewState;

    if-ne v0, v1, :cond_0

    sget-object v1, Lcom/onyx/galaxy/note/editor/view/CounterView$CounterViewState;->EXPAND:Lcom/onyx/galaxy/note/editor/view/CounterView$CounterViewState;

    :cond_0
    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->l:Lcom/onyx/galaxy/note/editor/view/CounterView$CounterViewState;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->y()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->refreshUI()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->m:Lcom/onyx/galaxy/note/editor/view/CounterView$Callback;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->isExpanded()Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/onyx/galaxy/note/editor/view/CounterView$Callback;->onExpandStateChanged(Z)V

    :cond_1
    return-void
.end method

.method public final u()V
    .locals 2

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->tvControl:Landroid/widget/TextView;

    sget v1, Lcom/onyx/galaxy/note/R$string;->counter_resume:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->tvControl:Landroid/widget/TextView;

    sget v1, Lcom/onyx/galaxy/note/R$drawable;->shape_counter_circle_button_running_bg:I

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/view/CounterView;->k(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->tvControl:Landroid/widget/TextView;

    sget v1, Lcom/onyx/android/sdk/skin/R$color;->theme_text_color_01:I

    invoke-static {v1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->tvControl:Landroid/widget/TextView;

    new-instance v1, Lcom/sunia/HTREnginev2/efe;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/efe;-><init>(Lcom/onyx/galaxy/note/editor/view/CounterView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final updateVisibleRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->n:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final w()V
    .locals 2

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->tvControl:Landroid/widget/TextView;

    sget v1, Lcom/onyx/galaxy/note/R$string;->counter_pause:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->tvControl:Landroid/widget/TextView;

    sget v1, Lcom/onyx/galaxy/note/R$drawable;->shape_counter_circle_button_pause_bg:I

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/view/CounterView;->k(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->tvControl:Landroid/widget/TextView;

    sget v1, Lcom/onyx/android/sdk/skin/R$color;->theme_primary_color_01:I

    invoke-static {v1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->tvControl:Landroid/widget/TextView;

    new-instance v1, Lcom/sunia/HTREnginev2/dfe;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/dfe;-><init>(Lcom/onyx/galaxy/note/editor/view/CounterView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final y()V
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->l:Lcom/onyx/galaxy/note/editor/view/CounterView$CounterViewState;

    sget-object v1, Lcom/onyx/galaxy/note/editor/view/CounterView$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->z()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->A()V

    :goto_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->k:Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;->setBackgroundArcColor(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->l:Lcom/onyx/galaxy/note/editor/view/CounterView$CounterViewState;

    sget-object v4, Lcom/onyx/galaxy/note/editor/view/CounterView$CounterViewState;->COLLAPSE:Lcom/onyx/galaxy/note/editor/view/CounterView$CounterViewState;

    const/4 v5, 0x3

    if-ne v0, v4, :cond_4

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getEntryState()Lcom/onyx/galaxy/note/editor/data/CounterEntryState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->getState()Lcom/onyx/android/sdk/replicator/counter/data/CounterState;

    move-result-object v0

    sget-object v4, Lcom/onyx/galaxy/note/editor/view/CounterView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_3

    if-ne v0, v5, :cond_2

    sget v0, Lcom/onyx/android/sdk/skin/R$color;->theme_background_color_02:I

    goto :goto_1

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_3
    sget v0, Lcom/onyx/android/sdk/skin/R$color;->theme_bg_primary_color_01:I

    :goto_1
    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v0

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->k:Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;

    invoke-virtual {v4, v0}, Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;->setBackgroundArcColor(I)V

    :cond_4
    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getEntryState()Lcom/onyx/galaxy/note/editor/data/CounterEntryState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->getState()Lcom/onyx/android/sdk/replicator/counter/data/CounterState;

    move-result-object v0

    sget-object v4, Lcom/onyx/galaxy/note/editor/view/CounterView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    if-eq v0, v2, :cond_6

    if-eq v0, v1, :cond_6

    if-ne v0, v5, :cond_5

    sget v0, Lcom/onyx/android/sdk/skin/R$color;->theme_text_color_01:I

    goto :goto_2

    :cond_5
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_6
    sget v0, Lcom/onyx/android/sdk/skin/R$color;->theme_primary_color_01:I

    :goto_2
    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->i:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->isCountUp()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->k:Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;->setProgressArcColor(I)V

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->k:Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;

    invoke-virtual {v1, v3}, Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;->setProgressArcColor(I)V

    :goto_3
    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->tvCollapseCounting:Lcom/onyx/galaxy/note/editor/view/CountingTextView;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->setTextColor(I)V

    return-void
.end method

.method public final z()V
    .locals 3

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->counterTimeList:Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;->setVisible(Z)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->tvExpandCounting:Lcom/onyx/galaxy/note/editor/view/CountingTextView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->stop()V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->tvCollapseCounting:Lcom/onyx/galaxy/note/editor/view/CountingTextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->flControl:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->tvCollapseCounting:Lcom/onyx/galaxy/note/editor/view/CountingTextView;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->k:Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->flCollapse:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->ctlExpand:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->tvCollapseCounting:Lcom/onyx/galaxy/note/editor/view/CountingTextView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->i:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->isCountUp()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->setCountUp(Z)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/CounterView;->i:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->startCount(Lcom/onyx/galaxy/note/editor/data/CounterEntry;)V

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->refresh()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->refreshUI()V

    return-void
.end method
