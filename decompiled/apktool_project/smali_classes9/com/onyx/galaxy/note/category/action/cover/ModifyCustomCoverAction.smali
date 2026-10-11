.class public final Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction;
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
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001b\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u000e\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0003H\u0002J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002R$\u0010\u0011\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "name",
        "l",
        "n",
        "m",
        "Landroid/content/Context;",
        "f",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "context",
        "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;",
        "g",
        "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;",
        "coverModel",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;)V",
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

.field public g:Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "coverModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction;->g:Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;)V

    return-void
.end method

.method public static final synthetic access$checkRepeat(Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction;->l(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getCoverModel$p(Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction;)Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction;->g:Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    return-object p0
.end method

.method public static final synthetic access$modifyCover(Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction;->m(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$showModifyDialog(Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction;->n()Lio/reactivex/rxjava3/core/Observable;

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

    new-instance v1, Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction$a;-><init>(Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction$b;->e:Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction$b;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction$c;-><init>(Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction$d;-><init>(Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction$e;->e:Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction$e;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction$f;-><init>(Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction;->f:Landroid/content/Context;

    return-object p0
.end method

.method public final l(Ljava/lang/String;)Z
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getSyncUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;->getUserDataProviderInfo(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getDbProviderBundle()Lcom/onyx/android/sdk/bundle/DBProviderBundle;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/bundle/DBProviderBundle;->getCoverProvider(Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;)Lcom/onyx/android/sdk/replicator/note/db/CoverProvider;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/CoverProvider;->checkTemplateNameRepeat(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$string;->name_exist:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final m(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;

    sget-object v1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getSyncUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;->getUserDataProviderInfo(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction;->g:Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->setTitle(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction;->g:Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->resetRevisionId()V

    sget-object p1, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getDbProviderBundle()Lcom/onyx/android/sdk/bundle/DBProviderBundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/bundle/DBProviderBundle;->getCoverProvider(Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;)Lcom/onyx/android/sdk/replicator/note/db/CoverProvider;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction;->g:Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/note/db/CoverProvider;->save(Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;)Z

    move-result p0

    return p0
.end method

.method public final n()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p0, ""

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

    new-instance v1, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction;->f:Landroid/content/Context;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/onyx/galaxy/note/R$string;->rename:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->setTitle(I)Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;

    move-result-object v1

    sget v2, Lcom/onyx/galaxy/note/R$string;->title:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->setEditTitle(I)Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction;->g:Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->setEditTextContent(Ljava/lang/String;)Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;

    move-result-object p0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$integer;->custom_template_max_length:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->setMaxLength(IZ)Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;

    move-result-object p0

    sget v1, Lcom/onyx/galaxy/note/R$string;->modify:I

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->setConfirmText(I)Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction$showModifyDialog$1;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction$showModifyDialog$1;-><init>(Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->setCancelCallback(Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction$showModifyDialog$2;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction$showModifyDialog$2;-><init>(Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->setConfirmCallback(Lkotlin/jvm/functions/Function2;)Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction$showModifyDialog$3;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction$showModifyDialog$3;-><init>(Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->setDismissCallback(Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->create()Lcom/onyx/android/sdk/ui/NameEditDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-object v0
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction;->f:Landroid/content/Context;

    return-void
.end method
