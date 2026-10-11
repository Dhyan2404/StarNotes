.class public final Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;
.super Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction<",
        "Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0016\u0010\u0012\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;",
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "n",
        "auth",
        "o",
        "Landroid/content/Context;",
        "g",
        "Landroid/content/Context;",
        "activityContext",
        "Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;",
        "h",
        "Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;",
        "pageTagModel",
        "",
        "i",
        "Z",
        "encrypted",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;)V",
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
.field public final g:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activityContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageTagModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;->g:Landroid/content/Context;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;->h:Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;

    return-void
.end method

.method public static final synthetic access$getActivityContext$p(Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;->g:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getPageTagModel$p(Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;)Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;->h:Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;

    return-object p0
.end method

.method public static final synthetic access$open(Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;->n()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$openNote(Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;->o()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setEncrypted$p(Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;->i:Z

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;->m(Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;Z)V

    return-void
.end method

.method public static final m(Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->INSTANCE:Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;->h:Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;->getDocumentId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->addAutoReLockNoteTask(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final auth()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/category/action/AuthNoteAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;->h:Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;->getDocumentId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/category/action/AuthNoteAction;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/ehk;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ehk;-><init>(Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIfTrue(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/category/action/OpenNotePageAction$auth$2;->INSTANCE:Lcom/onyx/galaxy/note/category/action/OpenNotePageAction$auth$2;

    new-instance v2, Lcom/onyx/galaxy/note/category/action/OpenNotePageAction$auth$3;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/action/OpenNotePageAction$auth$3;-><init>(Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/OpenNotePageAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/OpenNotePageAction$a;-><init>(Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/category/action/CheckNoteEncryptedAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;->h:Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;->getDocumentId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/action/CheckNoteEncryptedAction;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/OpenNotePageAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/OpenNotePageAction$b;-><init>(Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/OpenNotePageAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/OpenNotePageAction$c;-><init>(Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;->auth()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;->o()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final o()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/doc/LoadUserNoteModelsAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;->h:Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;->getDocumentId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/doc/LoadUserNoteModelsAction;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/category/action/OpenNotePageAction$d;->e:Lcom/onyx/galaxy/note/category/action/OpenNotePageAction$d;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/category/action/OpenNotePageAction$e;->e:Lcom/onyx/galaxy/note/category/action/OpenNotePageAction$e;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/OpenNotePageAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/OpenNotePageAction$f;-><init>(Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/OpenNotePageAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/OpenNotePageAction$g;-><init>(Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/OpenNotePageAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/OpenNotePageAction$h;-><init>(Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
