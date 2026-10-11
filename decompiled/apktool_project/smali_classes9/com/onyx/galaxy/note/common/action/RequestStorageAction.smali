.class public final Lcom/onyx/galaxy/note/common/action/RequestStorageAction;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRequestStorageAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RequestStorageAction.kt\ncom/onyx/galaxy/note/common/action/RequestStorageAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,85:1\n1#2:86\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0002\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0011\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0002J\u0008\u0010\u0008\u001a\u00020\u0007H\u0002J\u0008\u0010\t\u001a\u00020\u0007H\u0002J\u0008\u0010\n\u001a\u00020\u0002H\u0002J\u0008\u0010\u000b\u001a\u00020\u0002H\u0002J\u0008\u0010\u000c\u001a\u00020\u0007H\u0002J\u0008\u0010\r\u001a\u00020\u0007H\u0002R\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0014\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0005\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0013\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/common/action/RequestStorageAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "autoRequest",
        "setAutoRequest",
        "",
        "l",
        "o",
        "m",
        "n",
        "p",
        "q",
        "",
        "e",
        "Ljava/lang/Object;",
        "nextEvent",
        "f",
        "Z",
        "hasPermission",
        "g",
        "<init>",
        "(Ljava/lang/Object;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRequestStorageAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RequestStorageAction.kt\ncom/onyx/galaxy/note/common/action/RequestStorageAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,85:1\n1#2:86\n*E\n"
    }
.end annotation


# instance fields
.field public final e:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/onyx/galaxy/note/common/action/RequestStorageAction;-><init>(Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "nextEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/onyx/galaxy/note/common/action/RequestStorageAction;->e:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/onyx/galaxy/note/common/action/RequestStorageAction;->g:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/common/action/RequestStorageAction;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$checkPermission(Lcom/onyx/galaxy/note/common/action/RequestStorageAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/RequestStorageAction;->l()V

    return-void
.end method

.method public static final synthetic access$getHasPermission$p(Lcom/onyx/galaxy/note/common/action/RequestStorageAction;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/common/action/RequestStorageAction;->f:Z

    return p0
.end method

.method public static final synthetic access$requestPermission(Lcom/onyx/galaxy/note/common/action/RequestStorageAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/RequestStorageAction;->o()V

    return-void
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

    new-instance v1, Lcom/onyx/galaxy/note/common/action/RequestStorageAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/common/action/RequestStorageAction$a;-><init>(Lcom/onyx/galaxy/note/common/action/RequestStorageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/common/action/RequestStorageAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/common/action/RequestStorageAction$b;-><init>(Lcom/onyx/galaxy/note/common/action/RequestStorageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/common/action/RequestStorageAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/common/action/RequestStorageAction$c;-><init>(Lcom/onyx/galaxy/note/common/action/RequestStorageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()V
    .locals 1

    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/BuildKt;->isApiLevelBelow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/RequestStorageAction;->n()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/RequestStorageAction;->m()Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/onyx/galaxy/note/common/action/RequestStorageAction;->f:Z

    return-void
.end method

.method public final m()Z
    .locals 1

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {}, Lcom/sunia/HTREnginev2/wbe;->a()Z

    move-result p0

    return p0
.end method

.method public final n()Z
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lcom/permissionx/guolindev/PermissionX;->isGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final o()V
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/common/action/RequestStorageAction;->f:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/action/RequestStorageAction;->e:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/onyx/galaxy/note/common/action/RequestStorageAction;->g:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/RequestStorageAction;->m()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/RequestStorageAction;->p()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/RequestStorageAction;->n()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/RequestStorageAction;->q()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final p()V
    .locals 3

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final q()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/app/RequestPermissionEvent;

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/action/RequestStorageAction;->e:Ljava/lang/Object;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/events/app/RequestPermissionEvent;-><init>(Ljava/lang/Object;)V

    const-string p0, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/events/app/RequestPermissionEvent;->setPermissions([Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/events/app/RequestPermissionEvent;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final setAutoRequest(Z)Lcom/onyx/galaxy/note/common/action/RequestStorageAction;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/common/action/RequestStorageAction;->g:Z

    return-object p0
.end method
