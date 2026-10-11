.class public final Lcom/onyx/android/sdk/cloudstorage/common/action/CloudAuthAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B-\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\u001a\u001a\u00020\u0013\u0012\u0006\u0010\"\u001a\u00020\u001b\u0012\n\u0008\u0002\u0010*\u001a\u0004\u0018\u00010#\u00a2\u0006\u0004\u0008+\u0010,J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u0012\u0010\n\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0002R$\u0010\u0012\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\"\u0010\u001a\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\"\u0010\"\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R$\u0010*\u001a\u0004\u0018\u00010#8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)\u00a8\u0006-"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/common/action/CloudAuthAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "result",
        "o",
        "",
        "throwable",
        "",
        "n",
        "Landroid/content/Context;",
        "e",
        "Landroid/content/Context;",
        "getActivityContext",
        "()Landroid/content/Context;",
        "setActivityContext",
        "(Landroid/content/Context;)V",
        "activityContext",
        "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
        "f",
        "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
        "getProvider",
        "()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
        "setProvider",
        "(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V",
        "provider",
        "Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;",
        "g",
        "Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;",
        "getUserInfo",
        "()Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;",
        "setUserInfo",
        "(Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;)V",
        "userInfo",
        "",
        "h",
        "Ljava/lang/String;",
        "getTag",
        "()Ljava/lang/String;",
        "setTag",
        "(Ljava/lang/String;)V",
        "tag",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;Ljava/lang/String;)V",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public e:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "provider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/common/action/CloudAuthAction;->e:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/common/action/CloudAuthAction;->f:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    .line 5
    iput-object p3, p0, Lcom/onyx/android/sdk/cloudstorage/common/action/CloudAuthAction;->g:Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;

    .line 6
    iput-object p4, p0, Lcom/onyx/android/sdk/cloudstorage/common/action/CloudAuthAction;->h:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/cloudstorage/common/action/CloudAuthAction;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$postErrorEvent(Lcom/onyx/android/sdk/cloudstorage/common/action/CloudAuthAction;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/common/action/CloudAuthAction;->n(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$postResult(Lcom/onyx/android/sdk/cloudstorage/common/action/CloudAuthAction;Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;)Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/common/action/CloudAuthAction;->o(Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;)Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/cloudstorage/common/action/CloudAuthAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/cloudstorage/common/action/CloudAuthAction;->m(Lcom/onyx/android/sdk/cloudstorage/common/action/CloudAuthAction;)V

    return-void
.end method

.method public static final m(Lcom/onyx/android/sdk/cloudstorage/common/action/CloudAuthAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/common/action/CloudAuthAction;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->Companion:Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;->getOurInstance()Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/common/action/CloudAuthAction;->f:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/common/action/CloudAuthAction;->g:Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;

    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/common/action/CloudAuthAction;->e:Landroid/content/Context;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->authenticate(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;Landroid/content/Context;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/common/action/CloudAuthAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/cloudstorage/common/action/CloudAuthAction$a;-><init>(Lcom/onyx/android/sdk/cloudstorage/common/action/CloudAuthAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/common/action/CloudAuthAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/cloudstorage/common/action/CloudAuthAction$b;-><init>(Lcom/onyx/android/sdk/cloudstorage/common/action/CloudAuthAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/kvd;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/kvd;-><init>(Lcom/onyx/android/sdk/cloudstorage/common/action/CloudAuthAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnDispose(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnDispose(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getActivityContext()Landroid/content/Context;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/common/action/CloudAuthAction;->e:Landroid/content/Context;

    return-object p0
.end method

.method public final getProvider()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/common/action/CloudAuthAction;->f:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/common/action/CloudAuthAction;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final getUserInfo()Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/common/action/CloudAuthAction;->g:Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;

    return-object p0
.end method

.method public final n(Ljava/lang/Throwable;)V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/event/CloudAuthEvent;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/common/action/CloudAuthAction;->h:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/event/CloudAuthEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/event/BaseCloudStorageEvent;->setThrowable(Ljava/lang/Throwable;)V

    sget-object p0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->Companion:Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;->getOurInstance()Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final o(Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;)Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/common/action/CloudAuthAction;->f:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;->setAuthName(Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/event/CloudAuthEvent;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/common/action/CloudAuthAction;->h:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/event/CloudAuthEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/event/CloudAuthEvent;->setAuthResult(Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;)V

    sget-object p0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->Companion:Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;->getOurInstance()Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final setActivityContext(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/common/action/CloudAuthAction;->e:Landroid/content/Context;

    return-void
.end method

.method public final setProvider(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/common/action/CloudAuthAction;->f:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    return-void
.end method

.method public final setTag(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/common/action/CloudAuthAction;->h:Ljava/lang/String;

    return-void
.end method

.method public final setUserInfo(Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/common/action/CloudAuthAction;->g:Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;

    return-void
.end method
