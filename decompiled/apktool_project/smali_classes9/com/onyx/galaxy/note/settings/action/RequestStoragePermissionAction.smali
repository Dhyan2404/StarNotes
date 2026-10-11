.class public final Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;
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
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0012\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0016\u0010\u0008\u001a\u00020\u00022\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J\u0008\u0010\n\u001a\u00020\tH\u0002R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "",
        "requestList",
        "p",
        "",
        "q",
        "Landroidx/fragment/app/FragmentActivity;",
        "e",
        "Landroidx/fragment/app/FragmentActivity;",
        "activity",
        "",
        "f",
        "I",
        "titleRes",
        "<init>",
        "(Landroidx/fragment/app/FragmentActivity;I)V",
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
.field public final e:Landroidx/fragment/app/FragmentActivity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;I)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;->e:Landroidx/fragment/app/FragmentActivity;

    iput p2, p0, Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;->f:I

    return-void
.end method

.method public static final synthetic access$getActivity$p(Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;)Landroidx/fragment/app/FragmentActivity;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;->e:Landroidx/fragment/app/FragmentActivity;

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;Lcom/permissionx/guolindev/request/ExplainScope;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;->n(Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;Lcom/permissionx/guolindev/request/ExplainScope;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;Lio/reactivex/rxjava3/subjects/PublishSubject;ZLjava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;->o(Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;Lio/reactivex/rxjava3/subjects/PublishSubject;ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static final n(Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;Lcom/permissionx/guolindev/request/ExplainScope;Ljava/util/List;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deniedList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;->e:Landroidx/fragment/app/FragmentActivity;

    iget v1, p0, Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;->f:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;->e:Landroidx/fragment/app/FragmentActivity;

    sget v3, Lcom/onyx/galaxy/note/R$string;->permission_allow:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;->e:Landroidx/fragment/app/FragmentActivity;

    sget v3, Lcom/onyx/galaxy/note/R$string;->permission_deny:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0, v2, p0}, Lcom/permissionx/guolindev/request/ExplainScope;->showRequestReasonDialog(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final o(Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;Lio/reactivex/rxjava3/subjects/PublishSubject;ZLjava/util/List;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$publishSubject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantedList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "deniedList"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;->q()V

    :cond_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
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

    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0x1e

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/BuildKt;->isApiLevelAbove(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;->p(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    iget-object v2, p0, Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;->e:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v2}, Lcom/permissionx/guolindev/PermissionX;->init(Landroidx/fragment/app/FragmentActivity;)Lcom/permissionx/guolindev/PermissionMediator;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/permissionx/guolindev/PermissionMediator;->permissions(Ljava/util/List;)Lcom/permissionx/guolindev/request/PermissionBuilder;

    move-result-object v1

    new-instance v2, Lcom/sunia/HTREnginev2/kll;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/kll;-><init>(Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;)V

    invoke-virtual {v1, v2}, Lcom/permissionx/guolindev/request/PermissionBuilder;->onExplainRequestReason(Lcom/permissionx/guolindev/callback/ExplainReasonCallback;)Lcom/permissionx/guolindev/request/PermissionBuilder;

    move-result-object v1

    new-instance v2, Lcom/sunia/HTREnginev2/lll;

    invoke-direct {v2, p0, v0}, Lcom/sunia/HTREnginev2/lll;-><init>(Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    invoke-virtual {v1, v2}, Lcom/permissionx/guolindev/request/PermissionBuilder;->request(Lcom/permissionx/guolindev/callback/RequestCallback;)V

    return-object v0
.end method

.method public final p(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x1e

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/BuildKt;->isApiLevelAbove(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sunia/HTREnginev2/wbe;->a()Z

    move-result p0

    return p0

    :cond_1
    iget-object v1, p0, Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;->e:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1, v0}, Lcom/permissionx/guolindev/PermissionX;->isGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final q()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;

    iget-object v1, p0, Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;->e:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/onyx/android/sdk/ui/R$string;->go_to_setting:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->setConfirmTextRes(I)Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;

    move-result-object v0

    sget v1, Lcom/onyx/android/sdk/ui/R$string;->permission_deny_and_guide_desc:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->setMessageTextRes(I)Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction$requestPermissionSettings$1;->INSTANCE:Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction$requestPermissionSettings$1;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->setCancelCallback(Lkotlin/jvm/functions/Function0;)Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction$requestPermissionSettings$2;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction$requestPermissionSettings$2;-><init>(Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->setConfirmCallback(Lkotlin/jvm/functions/Function0;)Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->create()Lcom/onyx/android/sdk/ui/PermissionDialog;

    return-void
.end method
