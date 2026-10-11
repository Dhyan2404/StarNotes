.class public final Lcom/onyx/galaxy/note/category/action/template/AddRecentUseTemplateAction;
.super Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction<",
        "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/template/AddRecentUseTemplateAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;",
        "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "l",
        "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;",
        "f",
        "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;",
        "templateJsonBean",
        "<init>",
        "(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V",
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
.field public final f:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "templateJsonBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/template/AddRecentUseTemplateAction;->f:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    return-void
.end method

.method public static final synthetic access$add(Lcom/onyx/galaxy/note/category/action/template/AddRecentUseTemplateAction;)Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/template/AddRecentUseTemplateAction;->l()Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;

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
            "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/template/AddRecentUseTemplateAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/template/AddRecentUseTemplateAction$a;-><init>(Lcom/onyx/galaxy/note/category/action/template/AddRecentUseTemplateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;->Companion:Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel$Companion;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/template/AddRecentUseTemplateAction;->f:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel$Companion;->create(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getUserTemplateProvider()Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;->addRecentUseTemplate(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;)Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;

    return-object p0
.end method
