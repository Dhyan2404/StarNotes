.class public final Lcom/onyx/android/sdk/rxgesture/GestureFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0010\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008L\u0010MJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u000c\u0010\u0012\u001a\u0006\u0012\u0002\u0008\u00030\u0011H\u0002J\u0014\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u0002R(\u0010\u001a\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\"\u0010 \u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\"\u0010#\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\u001b\u001a\u0004\u0008!\u0010\u001d\"\u0004\u0008\"\u0010\u001fR\"\u0010&\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u001b\u001a\u0004\u0008$\u0010\u001d\"\u0004\u0008%\u0010\u001fR\"\u0010)\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u001b\u001a\u0004\u0008\'\u0010\u001d\"\u0004\u0008(\u0010\u001fR\"\u0010,\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u001b\u001a\u0004\u0008*\u0010\u001d\"\u0004\u0008+\u0010\u001fR\"\u0010/\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u001b\u001a\u0004\u0008-\u0010\u001d\"\u0004\u0008.\u0010\u001fR\"\u00102\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010\u001b\u001a\u0004\u00080\u0010\u001d\"\u0004\u00081\u0010\u001fR\"\u00105\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\u001b\u001a\u0004\u00083\u0010\u001d\"\u0004\u00084\u0010\u001fR\"\u00108\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\u001b\u001a\u0004\u00086\u0010\u001d\"\u0004\u00087\u0010\u001fR\"\u0010;\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u001b\u001a\u0004\u00089\u0010\u001d\"\u0004\u0008:\u0010\u001fR.\u0010D\u001a\u000e\u0012\u0004\u0012\u00020=\u0012\u0004\u0012\u00020>0<8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010?\u001a\u0004\u0008@\u0010A\"\u0004\u0008B\u0010CR\"\u0010G\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u001b\u001a\u0004\u0008E\u0010\u001d\"\u0004\u0008F\u0010\u001fR\"\u0010K\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008H\u0010\u001b\u001a\u0004\u0008I\u0010\u001d\"\u0004\u0008J\u0010\u001f\u00a8\u0006N"
    }
    d2 = {
        "Lcom/onyx/android/sdk/rxgesture/GestureFilter;",
        "",
        "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;",
        "gestureContext",
        "",
        "l",
        "h",
        "k",
        "i",
        "j",
        "b",
        "a",
        "c",
        "e",
        "d",
        "f",
        "g",
        "Ljava/lang/Class;",
        "m",
        "Lio/reactivex/rxjava3/core/Observable;",
        "apply",
        "Ljava/lang/Class;",
        "getClazz",
        "()Ljava/lang/Class;",
        "setClazz",
        "(Ljava/lang/Class;)V",
        "clazz",
        "Z",
        "getFilterLongPress",
        "()Z",
        "setFilterLongPress",
        "(Z)V",
        "filterLongPress",
        "getFilterScale",
        "setFilterScale",
        "filterScale",
        "getFilterMove",
        "setFilterMove",
        "filterMove",
        "getFilterSingleTouch",
        "setFilterSingleTouch",
        "filterSingleTouch",
        "getFilterTouchUpPoint",
        "setFilterTouchUpPoint",
        "filterTouchUpPoint",
        "getFilterTouchUpEvent",
        "setFilterTouchUpEvent",
        "filterTouchUpEvent",
        "getFilterFling",
        "setFilterFling",
        "filterFling",
        "getFilterSingleTap",
        "setFilterSingleTap",
        "filterSingleTap",
        "getFilterDoubleTap",
        "setFilterDoubleTap",
        "filterDoubleTap",
        "getFilterByCancel",
        "setFilterByCancel",
        "filterByCancel",
        "Lkotlin/Function1;",
        "Landroid/view/MotionEvent;",
        "",
        "Lkotlin/jvm/functions/Function1;",
        "getFilterByCancelCallback",
        "()Lkotlin/jvm/functions/Function1;",
        "setFilterByCancelCallback",
        "(Lkotlin/jvm/functions/Function1;)V",
        "filterByCancelCallback",
        "getFilterByUpToDownDistance",
        "setFilterByUpToDownDistance",
        "filterByUpToDownDistance",
        "n",
        "getFilterByUpToDownTime",
        "setFilterByUpToDownTime",
        "filterByUpToDownTime",
        "<init>",
        "()V",
        "sdk-rxgesture_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/MotionEvent;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Z

.field public n:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->b:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->c:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->e:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->f:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->h:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->k:Z

    sget-object v0, Lcom/onyx/android/sdk/rxgesture/GestureFilter$filterByCancelCallback$1;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/GestureFilter$filterByCancelCallback$1;

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->l:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$filterByCancel(Lcom/onyx/android/sdk/rxgesture/GestureFilter;Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->a(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$filterByScale(Lcom/onyx/android/sdk/rxgesture/GestureFilter;Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->b(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$filterBySingleTouch(Lcom/onyx/android/sdk/rxgesture/GestureFilter;Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->c(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$filterByTouchUpEvent(Lcom/onyx/android/sdk/rxgesture/GestureFilter;Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->d(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$filterByTouchUpPoint(Lcom/onyx/android/sdk/rxgesture/GestureFilter;Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->e(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$filterByUpToDownDistance(Lcom/onyx/android/sdk/rxgesture/GestureFilter;Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->f(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$filterByUpToDownTime(Lcom/onyx/android/sdk/rxgesture/GestureFilter;Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->g(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$filterDoubleTap(Lcom/onyx/android/sdk/rxgesture/GestureFilter;Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->h(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$filterFling(Lcom/onyx/android/sdk/rxgesture/GestureFilter;Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->i(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$filterLongPress(Lcom/onyx/android/sdk/rxgesture/GestureFilter;Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->j(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$filterMove(Lcom/onyx/android/sdk/rxgesture/GestureFilter;Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->k(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$filterSingleTap(Lcom/onyx/android/sdk/rxgesture/GestureFilter;Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->l(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->k:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getCurMotionEvent()Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    sget-object p1, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->m()Ljava/lang/Class;

    move-result-object p0

    const-string v1, "filter by not has current motion"

    invoke-virtual {p1, p0, v1}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    iget-object v1, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->l:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->m()Ljava/lang/Class;

    move-result-object p0

    const-string v1, "filter by cancel"

    invoke-virtual {p1, p0, v1}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    return v0

    :cond_2
    return v1
.end method

.method public final apply(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "gestureContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/GestureFilter$d;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/rxgesture/GestureFilter$d;-><init>(Lcom/onyx/android/sdk/rxgesture/GestureFilter;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/GestureFilter$e;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/rxgesture/GestureFilter$e;-><init>(Lcom/onyx/android/sdk/rxgesture/GestureFilter;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/GestureFilter$f;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/rxgesture/GestureFilter$f;-><init>(Lcom/onyx/android/sdk/rxgesture/GestureFilter;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/GestureFilter$g;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/rxgesture/GestureFilter$g;-><init>(Lcom/onyx/android/sdk/rxgesture/GestureFilter;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/GestureFilter$h;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/rxgesture/GestureFilter$h;-><init>(Lcom/onyx/android/sdk/rxgesture/GestureFilter;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/GestureFilter$i;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/rxgesture/GestureFilter$i;-><init>(Lcom/onyx/android/sdk/rxgesture/GestureFilter;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/GestureFilter$j;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/rxgesture/GestureFilter$j;-><init>(Lcom/onyx/android/sdk/rxgesture/GestureFilter;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/GestureFilter$k;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/rxgesture/GestureFilter$k;-><init>(Lcom/onyx/android/sdk/rxgesture/GestureFilter;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/GestureFilter$l;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/rxgesture/GestureFilter$l;-><init>(Lcom/onyx/android/sdk/rxgesture/GestureFilter;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/GestureFilter$a;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/rxgesture/GestureFilter$a;-><init>(Lcom/onyx/android/sdk/rxgesture/GestureFilter;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/GestureFilter$b;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/rxgesture/GestureFilter$b;-><init>(Lcom/onyx/android/sdk/rxgesture/GestureFilter;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/GestureFilter$c;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/rxgesture/GestureFilter$c;-><init>(Lcom/onyx/android/sdk/rxgesture/GestureFilter;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "filter(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final b(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->isScale()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->m()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "filter by scale"

    invoke-virtual {p1, p0, v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final c(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 2

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->e:Z

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->isSinglePointTouch()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-nez p0, :cond_2

    sget-object p1, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    const-class v0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;

    const-string v1, "filter by single touch"

    invoke-virtual {p1, v0, v1}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_2
    return p0
.end method

.method public final d(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->g:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getCurMotionEvent()Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    sget-object p1, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->m()Ljava/lang/Class;

    move-result-object p0

    const-string v1, "filter by not has current motion"

    invoke-virtual {p1, p0, v1}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v1, :cond_2

    sget-object p1, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->m()Ljava/lang/Class;

    move-result-object p0

    const-string v1, "filter by up"

    invoke-virtual {p1, p0, v1}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    return v0

    :cond_2
    return v1
.end method

.method public final e(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->f:Z

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getUpPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final f(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->m:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getMaxMoveDistance()F

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getConfig()Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->getSingleTapDistanceThreshold()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_2

    sget-object v0, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->m()Ljava/lang/Class;

    move-result-object p0

    const-string v1, "filter by up to down distance"

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_2
    return p1
.end method

.method public final g(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 6

    iget-boolean v0, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->n:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->upToDownTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getConfig()Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->getSingleTapTimeMsMin()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->getConfig()Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->getSingleTapTimeMsMax()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    sget-object p1, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->m()Ljava/lang/Class;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filter by up to down time:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_2
    return v1
.end method

.method public final getClazz()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->a:Ljava/lang/Class;

    return-object p0
.end method

.method public final getFilterByCancel()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->k:Z

    return p0
.end method

.method public final getFilterByCancelCallback()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/view/MotionEvent;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->l:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getFilterByUpToDownDistance()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->m:Z

    return p0
.end method

.method public final getFilterByUpToDownTime()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->n:Z

    return p0
.end method

.method public final getFilterDoubleTap()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->j:Z

    return p0
.end method

.method public final getFilterFling()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->h:Z

    return p0
.end method

.method public final getFilterLongPress()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->b:Z

    return p0
.end method

.method public final getFilterMove()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->d:Z

    return p0
.end method

.method public final getFilterScale()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->c:Z

    return p0
.end method

.method public final getFilterSingleTap()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->i:Z

    return p0
.end method

.method public final getFilterSingleTouch()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->e:Z

    return p0
.end method

.method public final getFilterTouchUpEvent()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->g:Z

    return p0
.end method

.method public final getFilterTouchUpPoint()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->f:Z

    return p0
.end method

.method public final h(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->j:Z

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->isDoubleTap()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final i(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->h:Z

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->isFling()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final j(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->b:Z

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->isLongPress()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final k(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->d:Z

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->hasMoved()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final l(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->i:Z

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->isSingleTap()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final m()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->a:Ljava/lang/Class;

    if-nez p0, :cond_0

    const-class p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;

    :cond_0
    return-object p0
.end method

.method public final setClazz(Ljava/lang/Class;)V
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->a:Ljava/lang/Class;

    return-void
.end method

.method public final setFilterByCancel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->k:Z

    return-void
.end method

.method public final setFilterByCancelCallback(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/MotionEvent;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->l:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setFilterByUpToDownDistance(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->m:Z

    return-void
.end method

.method public final setFilterByUpToDownTime(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->n:Z

    return-void
.end method

.method public final setFilterDoubleTap(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->j:Z

    return-void
.end method

.method public final setFilterFling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->h:Z

    return-void
.end method

.method public final setFilterLongPress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->b:Z

    return-void
.end method

.method public final setFilterMove(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->d:Z

    return-void
.end method

.method public final setFilterScale(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->c:Z

    return-void
.end method

.method public final setFilterSingleTap(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->i:Z

    return-void
.end method

.method public final setFilterSingleTouch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->e:Z

    return-void
.end method

.method public final setFilterTouchUpEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->g:Z

    return-void
.end method

.method public final setFilterTouchUpPoint(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/rxgesture/GestureFilter;->f:Z

    return-void
.end method
