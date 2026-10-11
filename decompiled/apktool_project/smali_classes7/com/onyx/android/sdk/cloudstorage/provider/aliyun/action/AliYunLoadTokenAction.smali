.class public final Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunLoadTokenAction;
.super Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction<",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u0012\u0006\u0010\u000f\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0005H\u0014J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002R\u0014\u0010\u000b\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u0014\u0010\u000f\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunLoadTokenAction;",
        "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;",
        "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;",
        "getProvider",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "l",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;",
        "e",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;",
        "aliYunProvider",
        "",
        "f",
        "Ljava/lang/String;",
        "code",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Ljava/lang/String;)V",
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
.field public final e:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "aliYunProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "code"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunLoadTokenAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunLoadTokenAction;->f:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$load(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunLoadTokenAction;)Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunLoadTokenAction;->l()Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;

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
            "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunLoadTokenAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunLoadTokenAction$a;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunLoadTokenAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getProvider()Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunLoadTokenAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    return-object p0
.end method

.method public final l()Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunLoadTokenRequest;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunLoadTokenAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunLoadTokenAction;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunLoadTokenRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunLoadTokenRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunLoadTokenAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->setTokenResponse(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;)V

    return-object v0
.end method
