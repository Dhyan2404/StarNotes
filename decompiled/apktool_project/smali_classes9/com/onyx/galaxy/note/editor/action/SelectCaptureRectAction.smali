.class public final Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \r2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\rB\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "l",
        "m",
        "Landroid/content/Context;",
        "e",
        "Landroid/content/Context;",
        "activityContext",
        "<init>",
        "(Landroid/content/Context;)V",
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


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final e:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction;->Companion:Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activityContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction;->e:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$showEditWithCheck(Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction;->l()V

    return-void
.end method

.method public static final synthetic access$showEditorDialog(Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction;->m()V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction$a;-><init>(Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()V
    .locals 3

    sget-object v0, Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction;->Companion:Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction$Companion;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction;->e:Landroid/content/Context;

    new-instance v2, Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction$showEditWithCheck$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction$showEditWithCheck$1;-><init>(Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction;)V

    invoke-virtual {v0, v1, v2}, Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction$Companion;->requestPermission(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final m()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;-><init>()V

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction$showEditorDialog$1$1;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction$showEditorDialog$1$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->setListener(Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup$ScreenCaptureListener;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getAppContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "null cannot be cast to non-null type android.app.Application"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/app/Application;

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->show(Landroid/app/Application;)V

    return-void
.end method
