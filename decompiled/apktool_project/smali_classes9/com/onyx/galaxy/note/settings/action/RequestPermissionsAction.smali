.class public final Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;
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
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010%\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B-\u0012\u0006\u0010!\u001a\u00020\u001c\u0012\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000f\u0012\u0006\u0010\'\u001a\u00020\n\u0012\u0006\u0010)\u001a\u00020\n\u00a2\u0006\u0004\u0008/\u00100J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\u0016\u0010\t\u001a\u00020\u00082\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0006H\u0002J\u001e\u0010\u000c\u001a\u00020\u00082\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0002J&\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000fH\u0002J\u0016\u0010\u0012\u001a\u00020\u00082\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0006H\u0002J\u0016\u0010\u0013\u001a\u00020\u00082\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000fH\u0002J\u0008\u0010\u0014\u001a\u00020\nH\u0002J\u0008\u0010\u0015\u001a\u00020\u0002H\u0002J\u0010\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\nH\u0002J\u0008\u0010\u0018\u001a\u00020\u0008H\u0002J\u0008\u0010\u0019\u001a\u00020\u0008H\u0002J\u0010\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\nH\u0002J\u0016\u0010\u001b\u001a\u00020\n2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000fH\u0002R\u0017\u0010!\u001a\u00020\u001c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 R\u001a\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0014\u0010\'\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0014\u0010)\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008(\u0010&R \u0010.\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020+0*8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008,\u0010-\u00a8\u00061"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "z",
        "Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "publishSubject",
        "",
        "A",
        "",
        "requestDesc",
        "t",
        "Lcom/permissionx/guolindev/request/ExplainScope;",
        "scope",
        "",
        "deniedList",
        "w",
        "x",
        "y",
        "n",
        "r",
        "permission",
        "o",
        "q",
        "B",
        "s",
        "p",
        "Landroidx/fragment/app/FragmentActivity;",
        "e",
        "Landroidx/fragment/app/FragmentActivity;",
        "getActivity",
        "()Landroidx/fragment/app/FragmentActivity;",
        "activity",
        "f",
        "Ljava/util/List;",
        "permissionList",
        "g",
        "Ljava/lang/String;",
        "functionName",
        "h",
        "intentName",
        "",
        "",
        "i",
        "Ljava/util/Map;",
        "deniedPermissionMap",
        "<init>",
        "(Landroidx/fragment/app/FragmentActivity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V",
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

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "functionName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intentName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->e:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->f:Ljava/util/List;

    iput-object p3, p0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->h:Ljava/lang/String;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->i:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$permissionRequest(Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;Lio/reactivex/rxjava3/subjects/PublishSubject;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->t(Lio/reactivex/rxjava3/subjects/PublishSubject;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;Ljava/lang/String;Lcom/permissionx/guolindev/request/ExplainScope;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->u(Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;Ljava/lang/String;Lcom/permissionx/guolindev/request/ExplainScope;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;Lio/reactivex/rxjava3/subjects/PublishSubject;ZLjava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->v(Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;Lio/reactivex/rxjava3/subjects/PublishSubject;ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static final u(Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;Ljava/lang/String;Lcom/permissionx/guolindev/request/ExplainScope;Ljava/util/List;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$requestDesc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deniedList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/PermissionCompatUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/PermissionCompatUtils;

    iget-object v1, p0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/PermissionCompatUtils;->hasMediaOfUserSelectedPermission(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->w(Ljava/lang/String;Lcom/permissionx/guolindev/request/ExplainScope;Ljava/util/List;)V

    return-void
.end method

.method public static final v(Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;Lio/reactivex/rxjava3/subjects/PublishSubject;ZLjava/util/List;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$publishSubject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantedList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "deniedList"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p3, Lcom/onyx/android/sdk/base/utils/PermissionCompatUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/PermissionCompatUtils;

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/onyx/android/sdk/base/utils/PermissionCompatUtils;->hasMediaOfUserSelectedPermission(Ljava/util/Collection;)Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0, p4}, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->y(Ljava/util/List;)V

    :cond_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final A(Lio/reactivex/rxjava3/subjects/PublishSubject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->n()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;

    iget-object v2, p0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->e:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/onyx/android/sdk/ui/R$string;->go_to_authorization:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->setConfirmTextRes(I)Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->setMessageText(Ljava/lang/String;)Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction$showPermissionDescriptionDialog$1;

    invoke-direct {v2, p1}, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction$showPermissionDescriptionDialog$1;-><init>(Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->setCancelCallback(Lkotlin/jvm/functions/Function0;)Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction$showPermissionDescriptionDialog$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction$showPermissionDescriptionDialog$2;-><init>(Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;Lio/reactivex/rxjava3/subjects/PublishSubject;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->setConfirmCallback(Lkotlin/jvm/functions/Function0;)Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->create()Lcom/onyx/android/sdk/ui/PermissionDialog;

    return-void
.end method

.method public final B()V
    .locals 2

    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/BuildKt;->isApiLevelAbove(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sunia/HTREnginev2/wbe;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sunia/HTREnginev2/wbe;->a()Z

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->i:Ljava/util/Map;

    sget v0, Lcom/onyx/galaxy/note/R$string;->permission_name_file_manager:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->e:Landroidx/fragment/app/FragmentActivity;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lcom/permissionx/guolindev/PermissionX;->isGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->i:Ljava/util/Map;

    sget v0, Lcom/onyx/galaxy/note/R$string;->permission_name_storage:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 0
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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->z()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final getActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->e:Landroidx/fragment/app/FragmentActivity;

    return-object p0
.end method

.method public final n()Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v4, v3, 0x1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v6, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    iget-object v7, p0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->i:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1

    :cond_0
    const/4 v5, -0x1

    :goto_1
    invoke-virtual {v6, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v7, 0x1

    if-lez v6, :cond_1

    move v6, v7

    goto :goto_2

    :cond_1
    move v6, v2

    :goto_2
    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x22

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->i:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    sub-int/2addr v5, v7

    if-eq v3, v5, :cond_2

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$string;->permission_request_common_description:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->h:Ljava/lang/String;

    filled-new-array {v2, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x3

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "format(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final o(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->isGrantedDrawOverlays()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->i:Ljava/util/Map;

    sget p1, Lcom/onyx/galaxy/note/R$string;->permission_floating_window:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "permission_floating_window"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final p(Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v4, v3, 0x1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v6, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    iget-object v7, p0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->i:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1

    :cond_0
    const/4 v5, -0x1

    :goto_1
    invoke-virtual {v6, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v7, 0x1

    if-lez v6, :cond_1

    move v6, v7

    goto :goto_2

    :cond_1
    move v6, v2

    :goto_2
    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x22

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v7

    if-eq v3, v5, :cond_2

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final q()V
    .locals 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v3, "android.permission.READ_MEDIA_IMAGES"

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v1, Lcom/onyx/android/sdk/base/utils/PermissionCompatUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/PermissionCompatUtils;

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/base/utils/PermissionCompatUtils;->hasMediaOfUserSelectedPermission(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_6

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->e:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v5, v4}, Lcom/permissionx/guolindev/PermissionX;->isGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x1e

    invoke-static {v5}, Lcom/onyx/android/sdk/base/extension/BuildKt;->isApiLevelAbove(I)Z

    move-result v5

    if-eqz v5, :cond_3

    sget v5, Lcom/onyx/galaxy/note/R$string;->permission_name_media:I

    goto :goto_2

    :cond_3
    sget v5, Lcom/onyx/galaxy/note/R$string;->permission_name_storage:I

    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_3

    :cond_4
    sget-object v5, Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;

    invoke-virtual {v5}, Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;->getPermissionMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    :goto_3
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->i:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method public final r()Z
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x6ad98ff5

    if-eq v2, v3, :cond_4

    const v3, -0x592e8427

    if-eq v2, v3, :cond_2

    const v3, 0x4b3efaeb    # 1.2516075E7f

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "permission_image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->q()V

    goto :goto_0

    :cond_2
    const-string v2, "permission_floating_window"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->o(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v2, "permission_storage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->B()V

    goto :goto_0

    :cond_5
    :goto_1
    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->s(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->i:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final s(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->e:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0, p1}, Lcom/permissionx/guolindev/PermissionX;->isGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;->getPermissionMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->i:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final t(Lio/reactivex/rxjava3/subjects/PublishSubject;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getFirst(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "permission_floating_window"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->x(Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getFirst(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/AppUtils;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->e:Landroidx/fragment/app/FragmentActivity;

    const/16 v0, 0x7d5

    invoke-virtual {p0, p2, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->e:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/permissionx/guolindev/PermissionX;->init(Landroidx/fragment/app/FragmentActivity;)Lcom/permissionx/guolindev/PermissionMediator;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/permissionx/guolindev/PermissionMediator;->permissions(Ljava/util/List;)Lcom/permissionx/guolindev/request/PermissionBuilder;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/ill;

    invoke-direct {v1, p0, p2}, Lcom/sunia/HTREnginev2/ill;-><init>(Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/permissionx/guolindev/request/PermissionBuilder;->onExplainRequestReason(Lcom/permissionx/guolindev/callback/ExplainReasonCallback;)Lcom/permissionx/guolindev/request/PermissionBuilder;

    move-result-object p2

    new-instance v0, Lcom/sunia/HTREnginev2/jll;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/jll;-><init>(Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    invoke-virtual {p2, v0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->request(Lcom/permissionx/guolindev/callback/RequestCallback;)V

    return-void
.end method

.method public final w(Ljava/lang/String;Lcom/permissionx/guolindev/request/ExplainScope;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/permissionx/guolindev/request/ExplainScope;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->e:Landroidx/fragment/app/FragmentActivity;

    sget v1, Lcom/onyx/galaxy/note/R$string;->permission_allow:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->e:Landroidx/fragment/app/FragmentActivity;

    sget v2, Lcom/onyx/galaxy/note/R$string;->permission_deny:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3, p1, v0, p0}, Lcom/permissionx/guolindev/request/ExplainScope;->showRequestReasonDialog(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final x(Lio/reactivex/rxjava3/subjects/PublishSubject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance p0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction$requestFloatingWindowPermission$1;

    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction$requestFloatingWindowPermission$1;-><init>(Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    invoke-static {p0}, Lcom/blankj/utilcode/util/PermissionUtils;->requestDrawOverlays(Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;)V

    return-void
.end method

.method public final y(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->p(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$string;->permission_denied_tips:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->g:Ljava/lang/String;

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "format(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;

    iget-object v1, p0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->e:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/onyx/android/sdk/ui/R$string;->go_to_setting:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->setConfirmTextRes(I)Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->setMessageText(Ljava/lang/String;)Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;

    move-result-object p1

    sget-object v0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction$requestPermissionSettings$1;->INSTANCE:Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction$requestPermissionSettings$1;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->setCancelCallback(Lkotlin/jvm/functions/Function0;)Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction$requestPermissionSettings$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction$requestPermissionSettings$2;-><init>(Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;)V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->setConfirmCallback(Lkotlin/jvm/functions/Function0;)Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->create()Lcom/onyx/android/sdk/ui/PermissionDialog;

    return-void
.end method

.method public final z()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->r()Z

    move-result v0

    if-eqz v0, :cond_0

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

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;->A(Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    return-object v0
.end method
