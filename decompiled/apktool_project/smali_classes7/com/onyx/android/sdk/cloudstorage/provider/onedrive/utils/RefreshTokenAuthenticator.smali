.class public final Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/RefreshTokenAuthenticator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Authenticator;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0013\u001a\u00020\u0011\u00a2\u0006\u0004\u0008!\u0010\"J\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0008\u0010\t\u001a\u00020\u0008H\u0002J\u0012\u0010\u000c\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\rH\u0002J\u0010\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R\u0014\u0010\u0013\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0012R$\u0010\u001a\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001b\u0010\u001f\u001a\u00020\u001b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001eR\u001b\u0010 \u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001c\u001a\u0004\u0008\u0014\u0010\u0017\u00a8\u0006#"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/RefreshTokenAuthenticator;",
        "Lokhttp3/Authenticator;",
        "Lokhttp3/Route;",
        "route",
        "Lokhttp3/Response;",
        "response",
        "Lokhttp3/Request;",
        "authenticate",
        "",
        "e",
        "",
        "token",
        "c",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;",
        "",
        "f",
        "a",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;",
        "oneDriveProvider",
        "b",
        "Ljava/lang/String;",
        "getRefreshToken",
        "()Ljava/lang/String;",
        "setRefreshToken",
        "(Ljava/lang/String;)V",
        "refreshToken",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;",
        "Lkotlin/Lazy;",
        "d",
        "()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;",
        "oneDriveClient",
        "accountId",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;)V",
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
.field public final a:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final c:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "oneDriveProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/RefreshTokenAuthenticator;->a:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;

    new-instance p1, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/RefreshTokenAuthenticator$oneDriveClient$2;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/RefreshTokenAuthenticator$oneDriveClient$2;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/RefreshTokenAuthenticator;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/RefreshTokenAuthenticator;->c:Lkotlin/Lazy;

    new-instance p1, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/RefreshTokenAuthenticator$accountId$2;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/RefreshTokenAuthenticator$accountId$2;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/RefreshTokenAuthenticator;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/RefreshTokenAuthenticator;->d:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getOneDriveProvider$p(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/RefreshTokenAuthenticator;)Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/RefreshTokenAuthenticator;->a:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;

    return-object p0
.end method


# virtual methods
.method public final a(Lokhttp3/Response;)Lokhttp3/Request;
    .locals 7

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "Authorization"

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/RefreshTokenAuthenticator;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/OneDriverUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/OneDriverUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/RefreshTokenAuthenticator;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/OneDriverUtils;->getOneDriveAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    sget-object v4, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v5, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/RefreshTokenAuthenticator;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n after refresh token, use new accessToken:"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n for "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/RefreshTokenAuthenticator;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v5, p1, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/RefreshTokenAuthenticator;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method public authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .locals 0
    .param p1    # Lokhttp3/Route;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/RefreshTokenAuthenticator;->e()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/RefreshTokenAuthenticator;->a(Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/RefreshTokenAuthenticator;->d:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bearer "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final d()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/RefreshTokenAuthenticator;->c:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;

    return-object p0
.end method

.method public final e()Z
    .locals 7

    const-class v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/RefreshTokenAuthenticator;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/RefreshTokenAuthenticator;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/OneDriverUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/OneDriverUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/RefreshTokenAuthenticator;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/OneDriverUtils;->getOneDriveRefreshToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-object v4, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/RefreshTokenAuthenticator;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/RefreshTokenAuthenticator;->b:Ljava/lang/String;

    :cond_2
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    move v4, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v4, v3

    :goto_3
    if-nez v4, :cond_6

    sget-object v4, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "authenticator refresh token:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v5, v6}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverRefreshTokenRequest;

    iget-object v6, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/RefreshTokenAuthenticator;->a:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;

    invoke-direct {v5, v6, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverRefreshTokenRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverRefreshTokenRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;

    move-result-object v2

    sget-object v5, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse$Companion;

    invoke-virtual {v5, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse$Companion;->isValid(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/RefreshTokenAuthenticator;->a:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;

    invoke-virtual {v5, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;->setDriveToken(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;)V

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/RefreshTokenAuthenticator;->f(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;)V

    const-string v2, "onedrive authenticate refresh token success"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v2, v5}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_5
    new-instance v2, Lcom/onyx/android/sdk/cloudstorage/common/exception/TokenExpiredException;

    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/RefreshTokenAuthenticator;->a:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getProviderType()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/onyx/android/sdk/cloudstorage/common/exception/TokenExpiredException;-><init>(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V

    throw v2

    :cond_6
    new-instance v2, Lcom/onyx/android/sdk/cloudstorage/common/exception/TokenExpiredException;

    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/RefreshTokenAuthenticator;->a:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getProviderType()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/onyx/android/sdk/cloudstorage/common/exception/TokenExpiredException;-><init>(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->ONE_DRIVE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " refresh authentication"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;->Companion:Lcom/onyx/android/sdk/data/common/exception/CloudNoteException$Companion;

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException$Companion;->isOneDriveInvalidGrantError(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException$Companion;->isTokenInvalid(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/RefreshTokenAuthenticator;->a:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->onAuthorizationInvalid()V

    :cond_8
    return v1
.end method

.method public final f(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;)V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/RefreshTokenAuthenticator;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/OneDriverUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/OneDriverUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/RefreshTokenAuthenticator;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/OneDriverUtils;->getProviderAccountModel(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    sget-object v1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;->setAccountCredentialJson(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/OneDriverUtils;->saveProviderAccount(Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;)V

    return-void
.end method

.method public final getRefreshToken()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/RefreshTokenAuthenticator;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final setRefreshToken(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/RefreshTokenAuthenticator;->b:Ljava/lang/String;

    return-void
.end method
