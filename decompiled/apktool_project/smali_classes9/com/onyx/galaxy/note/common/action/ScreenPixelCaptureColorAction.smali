.class public final Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction$PixelCaptureWindow;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u00016B\u000f\u0012\u0006\u0010\u001e\u001a\u00020\u001b\u00a2\u0006\u0004\u00084\u00105J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0007J\u0010\u0010\n\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\tH\u0007J\u0008\u0010\u000b\u001a\u00020\u0007H\u0002J\u0008\u0010\u000c\u001a\u00020\u0007H\u0002J\u0008\u0010\r\u001a\u00020\u0007H\u0002J\u0018\u0010\u0011\u001a\u00020\u00072\u000e\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000eH\u0002J\u0008\u0010\u0013\u001a\u00020\u0012H\u0002J\u000e\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0003H\u0002J\u0016\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0014H\u0002J\u0014\u0010\u001a\u001a\u00020\u00072\n\u0010\u0019\u001a\u0006\u0012\u0002\u0008\u00030\u0018H\u0002R\u0014\u0010\u001e\u001a\u00020\u001b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\'\u0010$\u001a\u0015\u0012\u000c\u0012\n  *\u0004\u0018\u00010\u00140\u00140\u001f\u00a2\u0006\u0002\u0008!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\'\u0010&\u001a\u0015\u0012\u000c\u0012\n  *\u0004\u0018\u00010\u00020\u00020\u001f\u00a2\u0006\u0002\u0008!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010#R\u0014\u0010*\u001a\u00020\'8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u001c\u0010.\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010-R\u001e\u00103\u001a\n\u0012\u0004\u0012\u000200\u0018\u00010/8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u00102\u00a8\u00067"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ScreenBitmapEvent;",
        "event",
        "",
        "onScreenBitmapCaptured",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ScreenBitmapCancelEvent;",
        "onScreenBitmapCancelEvent",
        "r",
        "u",
        "s",
        "Ljava/util/concurrent/atomic/AtomicReference;",
        "Landroid/content/Intent;",
        "reference",
        "o",
        "",
        "n",
        "Landroid/graphics/Bitmap;",
        "t",
        "bitmap",
        "q",
        "Lio/reactivex/rxjava3/core/Observer;",
        "observer",
        "p",
        "Landroid/content/Context;",
        "e",
        "Landroid/content/Context;",
        "componentActivity",
        "Lio/reactivex/rxjava3/subjects/ReplaySubject;",
        "kotlin.jvm.PlatformType",
        "Lio/reactivex/rxjava3/annotations/NonNull;",
        "f",
        "Lio/reactivex/rxjava3/subjects/ReplaySubject;",
        "bitmapPublisher",
        "g",
        "colorPublisher",
        "Lorg/greenrobot/eventbus/EventBus;",
        "h",
        "Lorg/greenrobot/eventbus/EventBus;",
        "eventBus",
        "Lcom/hjq/window/EasyWindow;",
        "i",
        "Lcom/hjq/window/EasyWindow;",
        "currentEasyWindow",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "Landroid/os/Bundle;",
        "j",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "resultLauncher",
        "<init>",
        "(Landroid/content/Context;)V",
        "PixelCaptureWindow",
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
.field public final e:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lio/reactivex/rxjava3/subjects/ReplaySubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/ReplaySubject<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lio/reactivex/rxjava3/subjects/ReplaySubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/ReplaySubject<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lorg/greenrobot/eventbus/EventBus;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lcom/hjq/window/EasyWindow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hjq/window/EasyWindow<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "componentActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;->e:Landroid/content/Context;

    invoke-static {}, Lio/reactivex/rxjava3/subjects/ReplaySubject;->create()Lio/reactivex/rxjava3/subjects/ReplaySubject;

    move-result-object p1

    const-string v0, "create(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;->f:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    invoke-static {}, Lio/reactivex/rxjava3/subjects/ReplaySubject;->create()Lio/reactivex/rxjava3/subjects/ReplaySubject;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;->g:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    new-instance p1, Lorg/greenrobot/eventbus/EventBus;

    invoke-direct {p1}, Lorg/greenrobot/eventbus/EventBus;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;->h:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method public static final synthetic access$getColorPublisher$p(Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;)Lio/reactivex/rxjava3/subjects/ReplaySubject;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;->g:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    return-object p0
.end method

.method public static final synthetic access$getCurrentEasyWindow$p(Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;)Lcom/hjq/window/EasyWindow;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;->i:Lcom/hjq/window/EasyWindow;

    return-object p0
.end method

.method public static final synthetic access$getResultLauncher$p(Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;->j:Landroidx/activity/result/ActivityResultLauncher;

    return-object p0
.end method

.method public static final synthetic access$handleScreenBitmapCaptureResult(Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;->o(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public static final synthetic access$onCaptureCancel(Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;Lio/reactivex/rxjava3/core/Observer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;->p(Lio/reactivex/rxjava3/core/Observer;)V

    return-void
.end method

.method public static final synthetic access$pickScreenPixel(Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;Landroid/graphics/Bitmap;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;->q(Landroid/graphics/Bitmap;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$register(Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;->r()V

    return-void
.end method

.method public static final synthetic access$setCurrentEasyWindow$p(Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;Lcom/hjq/window/EasyWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;->i:Lcom/hjq/window/EasyWindow;

    return-void
.end method

.method public static final synthetic access$startCaptureService(Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;->t()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;->m(Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;)V

    return-void
.end method

.method public static final m(Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;->u()V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction$a;-><init>(Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction$b;-><init>(Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction$c;-><init>(Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction$d;-><init>(Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/g6m;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/g6m;-><init>(Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doFinally(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final o(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;->h:Lorg/greenrobot/eventbus/EventBus;

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/ScreenBitmapCancelEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ScreenBitmapCancelEvent;-><init>()V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService;->Companion:Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService$Companion;

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;->h:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService$Companion;->setEventBus(Lorg/greenrobot/eventbus/EventBus;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService$Companion;->screenBitmapCapture(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public final onScreenBitmapCancelEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ScreenBitmapCancelEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ScreenBitmapCancelEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;->f:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;->p(Lio/reactivex/rxjava3/core/Observer;)V

    return-void
.end method

.method public final onScreenBitmapCaptured(Lcom/onyx/android/sdk/universal/editor/events/note/ScreenBitmapEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ScreenBitmapEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;->f:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ScreenBitmapEvent;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V

    return-void
.end method

.method public final p(Lio/reactivex/rxjava3/core/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/Observer<",
            "*>;)V"
        }
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/data/common/exception/AbortException;

    const-string v0, "Pixel Capture Canceled"

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/data/common/exception/AbortException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final q(Landroid/graphics/Bitmap;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;->e:Landroid/content/Context;

    const-string v1, "null cannot be cast to non-null type androidx.activity.ComponentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/activity/ComponentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/ui/pixelcapture/ScreenPixelView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction$pickScreenPixel$screenPixelView$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction$pickScreenPixel$screenPixelView$1;-><init>(Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;)V

    invoke-direct {v1, v0, p1, v2}, Lcom/onyx/galaxy/note/ui/pixelcapture/ScreenPixelView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/onyx/galaxy/note/ui/pixelcapture/ScreenPixelCaptureCallback;)V

    new-instance p1, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction$PixelCaptureWindow;

    invoke-direct {p1, p0, v0, v1}, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction$PixelCaptureWindow;-><init>(Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;Landroid/app/Application;Lcom/onyx/galaxy/note/ui/pixelcapture/ScreenPixelView;)V

    invoke-virtual {p1}, Lcom/hjq/window/EasyWindow;->show()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;->g:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    return-object p0
.end method

.method public final r()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;->h:Lorg/greenrobot/eventbus/EventBus;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolderKt;->ensureRegister(Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;->s()V

    return-void
.end method

.method public final s()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;->e:Landroid/content/Context;

    const-string v1, "null cannot be cast to non-null type androidx.activity.ComponentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/activity/ComponentActivity;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;->n()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/base/extension/ScreenCapture;

    iget-object v3, p0, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;->e:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/onyx/android/sdk/base/extension/ScreenCapture;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction$e;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction$e;-><init>(Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;)V

    invoke-virtual {v0, v1, v2, v3}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;->j:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public final t()Lio/reactivex/rxjava3/core/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;->f:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    return-object p0
.end method

.method public final u()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;->h:Lorg/greenrobot/eventbus/EventBus;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolderKt;->ensureUnRegister(Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;->j:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    :cond_0
    return-void
.end method
