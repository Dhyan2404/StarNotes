.class public final Lcom/onyx/galaxy/note/datarepository/action/HandleShareResourceAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u000f\u001a\u00020\n\u0012\u0006\u0010\u0015\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J\u0016\u0010\t\u001a\u00020\u00022\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0002R\u0017\u0010\u000f\u001a\u00020\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR\u0017\u0010\u0015\u001a\u00020\u00108\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/datarepository/action/HandleShareResourceAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/data/account/bean/DataResponse;",
        "Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceBean;",
        "m",
        "response",
        "l",
        "Landroid/content/Context;",
        "e",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "context",
        "",
        "f",
        "Ljava/lang/String;",
        "getCode",
        "()Ljava/lang/String;",
        "code",
        "<init>",
        "(Landroid/content/Context;Ljava/lang/String;)V",
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
.field public final e:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "code"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/datarepository/action/HandleShareResourceAction;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/onyx/galaxy/note/datarepository/action/HandleShareResourceAction;->f:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$handleResponse(Lcom/onyx/galaxy/note/datarepository/action/HandleShareResourceAction;Lcom/onyx/android/sdk/data/account/bean/DataResponse;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/action/HandleShareResourceAction;->l(Lcom/onyx/android/sdk/data/account/bean/DataResponse;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$loadShLoadShareResource(Lcom/onyx/galaxy/note/datarepository/action/HandleShareResourceAction;)Lcom/onyx/android/sdk/data/account/bean/DataResponse;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/action/HandleShareResourceAction;->m()Lcom/onyx/android/sdk/data/account/bean/DataResponse;

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

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/datarepository/action/HandleShareResourceAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/datarepository/action/HandleShareResourceAction$a;-><init>(Lcom/onyx/galaxy/note/datarepository/action/HandleShareResourceAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/datarepository/action/HandleShareResourceAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/datarepository/action/HandleShareResourceAction$b;-><init>(Lcom/onyx/galaxy/note/datarepository/action/HandleShareResourceAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getCode()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/action/HandleShareResourceAction;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/action/HandleShareResourceAction;->e:Landroid/content/Context;

    return-object p0
.end method

.method public final l(Lcom/onyx/android/sdk/data/account/bean/DataResponse;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceBean;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/onyx/android/sdk/data/account/bean/DataResponseKt;->isSuccess(Lcom/onyx/android/sdk/data/account/bean/DataResponse;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/DataResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceBean;

    const/4 v0, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez p1, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/galaxy/note/R$string;->command_password_does_not_exist:I

    invoke-static {p0, p1, v1, v2, v0}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return v3

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceBean;->getExpired()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/galaxy/note/R$string;->command_password_has_expired:I

    invoke-static {p0, p1, v1, v2, v0}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return v3

    :cond_2
    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/onyx/galaxy/note/datarepository/action/HandleShareResourceAction;->e:Landroid/content/Context;

    const-class v2, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "args"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/action/HandleShareResourceAction;->e:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v3
.end method

.method public final m()Lcom/onyx/android/sdk/data/account/bean/DataResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceBean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/datarepository/request/LoadShareResourceRequest;

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/action/HandleShareResourceAction;->f:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/datarepository/request/LoadShareResourceRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/datarepository/request/LoadShareResourceRequest;->execute()Lcom/onyx/android/sdk/data/account/bean/DataResponse;

    move-result-object p0

    return-object p0
.end method
