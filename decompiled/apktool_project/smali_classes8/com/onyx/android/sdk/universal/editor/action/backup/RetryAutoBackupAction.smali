.class public final Lcom/onyx/android/sdk/universal/editor/action/backup/RetryAutoBackupAction;
.super Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/backup/RetryAutoBackupAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0010\u001a\u00020\u000b\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0008\u0010\n\u001a\u00020\tH\u0002R\u0017\u0010\u0010\u001a\u00020\u000b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/backup/RetryAutoBackupAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "o",
        "Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;",
        "autoBackupModel",
        "",
        "n",
        "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
        "m",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "f",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getEditorBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;",
        "g",
        "Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;",
        "autoBackupContext",
        "Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;",
        "h",
        "Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;",
        "provider",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "autoBackupContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/RetryAutoBackupAction;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/RetryAutoBackupAction;->g:Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;

    return-void
.end method

.method public static final synthetic access$insertAutoBackupTask(Lcom/onyx/android/sdk/universal/editor/action/backup/RetryAutoBackupAction;Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/RetryAutoBackupAction;->n(Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;)V

    return-void
.end method

.method public static final synthetic access$retry(Lcom/onyx/android/sdk/universal/editor/action/backup/RetryAutoBackupAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/RetryAutoBackupAction;->o()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setProvider$p(Lcom/onyx/android/sdk/universal/editor/action/backup/RetryAutoBackupAction;Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/RetryAutoBackupAction;->h:Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/backup/RetryAutoBackupAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/RetryAutoBackupAction;->g:Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;->backupEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-wide/16 v1, 0x1e

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/backup/RetryAutoBackupAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/backup/RetryAutoBackupAction$a;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/backup/RetryAutoBackupAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/RetryAutoBackupAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/RetryAutoBackupAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/backup/RetryAutoBackupAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/RetryAutoBackupAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/RetryAutoBackupAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/RetryAutoBackupAction;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final m()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .locals 5

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "status"

    invoke-virtual {v1, v4, v3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->notEqualExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/RetryAutoBackupAction;->g:Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;->getDocumentId()Ljava/lang/String;

    move-result-object p0

    const-string v3, "documentId"

    invoke-virtual {v1, v3, p0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    const/4 p0, 0x1

    new-array p0, p0, [Lcom/couchbase/lite/Ordering;

    const-string v3, "updatedAt"

    invoke-virtual {v1, v3, v2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->getOrdering(Ljava/lang/String;Z)Lcom/couchbase/lite/Ordering;

    move-result-object v1

    aput-object v1, p0, v2

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setVarargOrdering([Lcom/couchbase/lite/Ordering;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    return-object v0
.end method

.method public final n(Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;)V
    .locals 2

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;->getDocumentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;->isLocalBackup()Z

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;->isCloudBackup()Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;-><init>(Ljava/lang/String;ZZ)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle;->insertAutoBackupTask(Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;)V

    return-void
.end method

.method public final o()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/backup/RetryAutoBackupAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/RetryAutoBackupAction;->h:Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;

    if-nez v0, :cond_0

    const-string v0, "provider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/RetryAutoBackupAction;->m()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;->loadAutoBackupList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/backup/RetryAutoBackupAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/RetryAutoBackupAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/RetryAutoBackupAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/backup/RetryAutoBackupAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/RetryAutoBackupAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/RetryAutoBackupAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
