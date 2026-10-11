.class public final Lcom/onyx/galaxy/note/category/action/template/DeleteCustomTemplateAction;
.super Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0005\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B!\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000b\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000f\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\u0016\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0016\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0007H\u0002R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u001c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/template/DeleteCustomTemplateAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "m",
        "o",
        "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
        "templateModel",
        "l",
        "n",
        "Landroid/content/Context;",
        "f",
        "Landroid/content/Context;",
        "context",
        "",
        "g",
        "Ljava/util/List;",
        "<init>",
        "(Landroid/content/Context;Ljava/util/List;)V",
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
.field public f:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "templateModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/template/DeleteCustomTemplateAction;->f:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/template/DeleteCustomTemplateAction;->g:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/galaxy/note/category/action/template/DeleteCustomTemplateAction;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$deleteList(Lcom/onyx/galaxy/note/category/action/template/DeleteCustomTemplateAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/template/DeleteCustomTemplateAction;->m()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$deleteTemplate(Lcom/onyx/galaxy/note/category/action/template/DeleteCustomTemplateAction;Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/template/DeleteCustomTemplateAction;->n(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$showDeleteConfirmDialog(Lcom/onyx/galaxy/note/category/action/template/DeleteCustomTemplateAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/template/DeleteCustomTemplateAction;->o()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/template/DeleteCustomTemplateAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/template/DeleteCustomTemplateAction$a;-><init>(Lcom/onyx/galaxy/note/category/action/template/DeleteCustomTemplateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/category/action/template/DeleteCustomTemplateAction$b;->e:Lcom/onyx/galaxy/note/category/action/template/DeleteCustomTemplateAction$b;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/template/DeleteCustomTemplateAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/template/DeleteCustomTemplateAction$c;-><init>(Lcom/onyx/galaxy/note/category/action/template/DeleteCustomTemplateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->getCurAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->getCurThumbnailAbsolutePath()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/template/DeleteCustomTemplateAction;->g:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/template/DeleteCustomTemplateAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/template/DeleteCustomTemplateAction$d;-><init>(Lcom/onyx/galaxy/note/category/action/template/DeleteCustomTemplateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "concatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;

    sget-object v1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getSyncUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;->getUserDataProviderInfo(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getDbProviderBundle()Lcom/onyx/android/sdk/bundle/DBProviderBundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/bundle/DBProviderBundle;->getTemplateProvider(Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;)Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/template/DeleteCustomTemplateAction;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;->remove(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/template/DeleteCustomTemplateAction;->l(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final o()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/template/DeleteCustomTemplateAction;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/template/DeleteCustomTemplateAction;->f:Landroid/content/Context;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setWarning(Z)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    sget v1, Lcom/onyx/android/sdk/hwr/R$string;->sure_delete:I

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setMessage(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    sget v1, Lcom/onyx/galaxy/note/R$string;->delete:I

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setTitle(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/template/DeleteCustomTemplateAction$showDeleteConfirmDialog$1;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/category/action/template/DeleteCustomTemplateAction$showDeleteConfirmDialog$1;-><init>(Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setConfirmCallback(Lkotlin/jvm/functions/Function2;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/template/DeleteCustomTemplateAction$showDeleteConfirmDialog$2;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/category/action/template/DeleteCustomTemplateAction$showDeleteConfirmDialog$2;-><init>(Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setCancelCallback(Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/template/DeleteCustomTemplateAction$showDeleteConfirmDialog$3;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/category/action/template/DeleteCustomTemplateAction$showDeleteConfirmDialog$3;-><init>(Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setDismissCallback(Lkotlin/jvm/functions/Function0;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->create()Lcom/onyx/android/sdk/ui/CommonDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/CommonDialog;->show()V

    return-object v0
.end method
