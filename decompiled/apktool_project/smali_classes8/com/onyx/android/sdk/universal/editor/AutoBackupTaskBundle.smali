.class public final Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u000e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\t\u001a\u00020\u0004R\u0017\u0010\u000f\u001a\u00020\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0013\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle;",
        "",
        "Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;",
        "event",
        "",
        "stopTasks",
        "Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;",
        "task",
        "insertAutoBackupTask",
        "cleanAutoLocalBackTasks",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "a",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getAutoBackupTaskEditorBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "autoBackupTaskEditorBundle",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "b",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isAutoBackupRunning",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "c",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "autoBackupDisposable",
        "<init>",
        "()V",
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static b:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static c:Lio/reactivex/rxjava3/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle;

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->Companion:Lcom/onyx/android/sdk/universal/editor/EditorBundle$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle$Companion;->createInstance()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    sput-object v1, Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle;->b()V

    return-void
.end method

.method public static final b()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method public final cleanAutoLocalBackTasks()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle$a;->e:Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle$a;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/gj;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/gj;-><init>()V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p0

    sput-object p0, Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle;->c:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final getAutoBackupTaskEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final insertAutoBackupTask(Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "task"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle$b;->e:Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle$b;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final stopTasks(Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p0, "event"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle;->c:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
