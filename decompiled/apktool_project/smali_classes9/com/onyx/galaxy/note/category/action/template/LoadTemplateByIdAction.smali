.class public final Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByIdAction;
.super Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction<",
        "Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByIdAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R$\u0010\u0011\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByIdAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "l",
        "",
        "f",
        "Ljava/lang/String;",
        "templateId",
        "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
        "g",
        "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
        "getTemplateModel",
        "()Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
        "setTemplateModel",
        "(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V",
        "templateModel",
        "<init>",
        "(Ljava/lang/String;)V",
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
.field public final f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "templateId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByIdAction;->f:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$loadTemplate(Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByIdAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByIdAction;->l()V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByIdAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->loadOnyxAccountObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByIdAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByIdAction$a;-><init>(Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByIdAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByIdAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByIdAction$b;-><init>(Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByIdAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getTemplateModel()Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByIdAction;->g:Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    return-object p0
.end method

.method public final l()V
    .locals 2

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

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByIdAction;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;->loadTemplateListById(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByIdAction;->g:Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    return-void
.end method

.method public final setTemplateModel(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByIdAction;->g:Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    return-void
.end method
