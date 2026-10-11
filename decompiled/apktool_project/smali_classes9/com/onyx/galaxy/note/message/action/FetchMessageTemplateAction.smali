.class public final Lcom/onyx/galaxy/note/message/action/FetchMessageTemplateAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0002H\u0002R\u0016\u0010\n\u001a\u00020\u00078\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/message/action/FetchMessageTemplateAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "l",
        "m",
        "Lcom/onyx/galaxy/note/message/cloud/MessageService;",
        "e",
        "Lcom/onyx/galaxy/note/message/cloud/MessageService;",
        "service",
        "<init>",
        "()V",
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
.field public e:Lcom/onyx/galaxy/note/message/cloud/MessageService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    return-void
.end method

.method public static final synthetic access$createService(Lcom/onyx/galaxy/note/message/action/FetchMessageTemplateAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/action/FetchMessageTemplateAction;->l()V

    return-void
.end method

.method public static final synthetic access$queryMessageTemplate(Lcom/onyx/galaxy/note/message/action/FetchMessageTemplateAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/action/FetchMessageTemplateAction;->m()V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getNetworkScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/message/action/FetchMessageTemplateAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/message/action/FetchMessageTemplateAction$a;-><init>(Lcom/onyx/galaxy/note/message/action/FetchMessageTemplateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/message/action/FetchMessageTemplateAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/message/action/FetchMessageTemplateAction$b;-><init>(Lcom/onyx/galaxy/note/message/action/FetchMessageTemplateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    const-class v1, Lcom/onyx/galaxy/note/message/cloud/MessageService;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxApiV2Service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/message/cloud/MessageService;

    iput-object v0, p0, Lcom/onyx/galaxy/note/message/action/FetchMessageTemplateAction;->e:Lcom/onyx/galaxy/note/message/cloud/MessageService;

    return-void
.end method

.method public final m()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->INSTANCE:Lcom/onyx/android/sdk/data/utils/RetrofitExt;

    iget-object p0, p0, Lcom/onyx/galaxy/note/message/action/FetchMessageTemplateAction;->e:Lcom/onyx/galaxy/note/message/cloud/MessageService;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "service"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v1

    :cond_0
    invoke-interface {p0}, Lcom/onyx/galaxy/note/message/cloud/MessageService;->getMessageTemplates()Lretrofit2/Call;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, p0, v2, v3, v1}, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->executeAndGetResponse$default(Lcom/onyx/android/sdk/data/utils/RetrofitExt;Lretrofit2/Call;ZILjava/lang/Object;)Lcom/onyx/android/sdk/data/account/bean/DataResponse;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/message/data/GetMessageTemplatesResponse;

    invoke-static {p0}, Lcom/onyx/galaxy/note/message/data/MessageTemplateDatasKt;->convertToLocal(Lcom/onyx/galaxy/note/message/data/GetMessageTemplatesResponse;)Lcom/onyx/android/sdk/data/common/data/MessageTemplateSet;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/data/common/data/MessageTemplateKt;->save(Lcom/onyx/android/sdk/data/common/data/MessageTemplateSet;)V

    return-void
.end method
