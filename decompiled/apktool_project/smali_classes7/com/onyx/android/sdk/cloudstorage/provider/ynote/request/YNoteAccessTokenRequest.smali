.class public final Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteAccessTokenRequest;
.super Lcom/onyx/android/sdk/base/rx/RxBaseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest<",
        "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/AccessTokenResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteAccessTokenRequest;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/AccessTokenResponse;",
        "execute",
        "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;",
        "a",
        "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;",
        "provider",
        "",
        "b",
        "Ljava/lang/String;",
        "authCode",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;Ljava/lang/String;)V",
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
.field public final a:Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteAccessTokenRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteAccessTokenRequest;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute()Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/AccessTokenResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteAccessTokenRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;->getNoteClient()Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;

    move-result-object v0

    const-string v1, "https://note.youdao.com/"

    .line 3
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;->getYNoteService(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteService;

    move-result-object v2

    .line 4
    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteAccessTokenRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;->getProviderContext()Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 5
    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteAccessTokenRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;->getProviderContext()Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;->getSecret()Ljava/lang/String;

    move-result-object v4

    const-string v5, "authorization_code"

    const-string v6, "http://www.onyx-international.com/"

    .line 6
    iget-object v7, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteAccessTokenRequest;->b:Ljava/lang/String;

    .line 7
    invoke-interface/range {v2 .. v7}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteService;->getAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    .line 8
    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "body(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/AccessTokenResponse;

    return-object p0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-virtual {p0}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteAccessTokenRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/AccessTokenResponse;

    move-result-object p0

    return-object p0
.end method
