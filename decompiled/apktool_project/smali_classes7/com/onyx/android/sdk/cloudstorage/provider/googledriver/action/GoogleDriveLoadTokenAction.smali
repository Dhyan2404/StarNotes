.class public final Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriveLoadTokenAction;
.super Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction<",
        "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/GoogleDriveTokenResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u000e\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\tH\u0014J\u0008\u0010\n\u001a\u00020\u0004H\u0016J\u0008\u0010\u000b\u001a\u00020\u0002H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriveLoadTokenAction;",
        "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/GoogleDriveTokenResponse;",
        "googleDriverProvider",
        "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;",
        "code",
        "",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Ljava/lang/String;)V",
        "create",
        "Lio/reactivex/rxjava3/core/Observable;",
        "getProvider",
        "load",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final code:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final googleDriverProvider:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "googleDriverProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "code"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriveLoadTokenAction;->googleDriverProvider:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriveLoadTokenAction;->code:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$load(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriveLoadTokenAction;)Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/GoogleDriveTokenResponse;
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriveLoadTokenAction;->load()Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/GoogleDriveTokenResponse;

    move-result-object p0

    return-object p0
.end method

.method private final load()Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/GoogleDriveTokenResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleLoadTokenRequest;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriveLoadTokenAction;->code:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleLoadTokenRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleLoadTokenRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/GoogleDriveTokenResponse;

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
            "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/GoogleDriveTokenResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriveLoadTokenAction$create$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriveLoadTokenAction$create$1;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriveLoadTokenAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic getProvider()Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriveLoadTokenAction;->getProvider()Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;

    move-result-object p0

    return-object p0
.end method

.method public getProvider()Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriveLoadTokenAction;->googleDriverProvider:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;

    return-object p0
.end method
