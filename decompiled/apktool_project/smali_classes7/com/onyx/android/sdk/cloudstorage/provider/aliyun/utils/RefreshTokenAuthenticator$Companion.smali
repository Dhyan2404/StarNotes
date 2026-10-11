.class public final Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/RefreshTokenAuthenticator$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/RefreshTokenAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ(\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0006J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/RefreshTokenAuthenticator$Companion;",
        "",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;",
        "provider",
        "Lokhttp3/Response;",
        "response",
        "Lio/reactivex/rxjava3/functions/Consumer;",
        "onNext",
        "Lokhttp3/Request;",
        "refreshToken",
        "",
        "b",
        "a",
        "<init>",
        "()V",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/RefreshTokenAuthenticator$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Lokhttp3/Response;)Lokhttp3/Request;
    .locals 0

    invoke-virtual {p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p0

    const-string p2, "Authorization"

    invoke-virtual {p0, p2}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->getBearAccessToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;)Z
    .locals 6

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, p0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    if-nez v2, :cond_3

    sget-object v2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-class v3, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refresh token:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, p0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunRefreshTokenRequest;

    invoke-direct {v4, p1, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunRefreshTokenRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunRefreshTokenRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;

    move-result-object v0

    sget-object v4, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse$Companion;

    invoke-virtual {v4, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse$Companion;->isValid(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->setDriveToken(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;)V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->saveCredential(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;)V

    const-string v0, "aliyun drive refresh token success"

    new-array v4, p0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v0, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    move p0, v1

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/common/exception/TokenExpiredException;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getProviderType()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/common/exception/TokenExpiredException;-><init>(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/common/exception/TokenExpiredException;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getProviderType()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/common/exception/TokenExpiredException;-><init>(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;->Companion:Lcom/onyx/android/sdk/data/common/exception/CloudNoteException$Companion;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException$Companion;->isTokenInvalid(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->onProviderAuthFail()V

    :cond_4
    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->ALI_YUN:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " refresh authentication"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return p0
.end method

.method public final refreshToken(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Lokhttp3/Response;Lio/reactivex/rxjava3/functions/Consumer;)Lokhttp3/Request;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/functions/Consumer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;",
            "Lokhttp3/Response;",
            "Lio/reactivex/rxjava3/functions/Consumer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lokhttp3/Request;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/RefreshTokenAuthenticator$Companion;->b(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p3, :cond_1

    :try_start_0
    invoke-interface {p3, p1}, Lio/reactivex/rxjava3/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/RefreshTokenAuthenticator$Companion;->a(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method
