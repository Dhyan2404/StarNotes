.class public final Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction;
.super Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction<",
        "Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMigrateOnAccountLoginAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MigrateOnAccountLoginAction.kt\ncom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,75:1\n1#2:76\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000c\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0002H\u0002J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0002H\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0008\u0010\u000b\u001a\u00020\tH\u0002R\u0017\u0010\u0011\u001a\u00020\u000c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction;",
        "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "m",
        "Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;",
        "l",
        "",
        "e",
        "",
        "n",
        "o",
        "Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;",
        "g",
        "Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;",
        "getArgs",
        "()Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;",
        "args",
        "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;",
        "h",
        "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;",
        "copyNoteListArgs",
        "<init>",
        "(Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)V",
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
        "SMAP\nMigrateOnAccountLoginAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MigrateOnAccountLoginAction.kt\ncom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,75:1\n1#2:76\n*E\n"
    }
.end annotation


# instance fields
.field public final g:Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction;->g:Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    return-void
.end method

.method public static final synthetic access$createNoteSyncObservable(Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction;->l()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$importOfficialTemplateCover(Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction;->m()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onFail(Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction;->n(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$onNoteDataImportDone(Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction;->o()V

    return-void
.end method

.method public static final synthetic access$setCopyNoteListArgs$p(Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction;Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction;->h:Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction$a;->e:Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction$a;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction$b;-><init>(Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction$c;->e:Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction$c;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction$d;-><init>(Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction$e;-><init>(Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction$f;-><init>(Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction$g;-><init>(Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction$h;-><init>(Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction$i;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction$i;-><init>(Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getArgs()Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction;->g:Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    return-object p0
.end method

.method public final l()Lio/reactivex/rxjava3/core/Observable;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;",
            ">;"
        }
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;->setCheckConfig(Z)V

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7f

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;-><init>(IZZZLjava/util/List;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->setSyncAll(Z)V

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;

    invoke-direct {v1, v0, p0}, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;-><init>(Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction$j;

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction$j;-><init>(Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->onErrorReturn(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "onErrorReturn(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    const-class v0, Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "migrate start import office template"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->wTag(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction;-><init>(Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction$k;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction$k;-><init>(Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnError(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n(Ljava/lang/Throwable;)V
    .locals 3

    sget-object p0, Lcom/onyx/android/sdk/base/utils/LogFileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/LogFileUtils;

    const-class v0, Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MigrateOnAccountLogin fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/base/utils/LogFileUtils;->e(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public final o()V
    .locals 3

    sget-object v0, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->reset()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction;->h:Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/events/app/UserNoteListImportedEvent;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/universal/editor/events/app/UserNoteListImportedEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;)V

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    :cond_0
    const-class v0, Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "migrate note data done, post imported event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction;->h:Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->wTag(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
