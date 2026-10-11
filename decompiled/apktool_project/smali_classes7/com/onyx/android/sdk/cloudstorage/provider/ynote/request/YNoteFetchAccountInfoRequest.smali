.class public final Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteFetchAccountInfoRequest;
.super Lcom/onyx/android/sdk/cloudstorage/provider/common/request/FetchAccountInfoRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/FetchAccountInfoRequest<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteFetchAccountInfoRequest;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/FetchAccountInfoRequest;",
        "",
        "credential",
        "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;",
        "fetch",
        "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;",
        "a",
        "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;",
        "provider",
        "accessToken",
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

    const-string v0, "accessToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->YNOTE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/FetchAccountInfoRequest;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteFetchAccountInfoRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;

    return-void
.end method


# virtual methods
.method public bridge synthetic fetch(Ljava/lang/Object;)Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteFetchAccountInfoRequest;->fetch(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;

    move-result-object p0

    return-object p0
.end method

.method public fetch(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;
    .locals 14
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "credential"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteFetchAccountInfoRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;->getNoteClient()Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;

    move-result-object v0

    const-string v1, "https://note.youdao.com/"

    .line 3
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;->getYNoteService(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteService;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteService;->user()Lretrofit2/Call;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteUser;

    .line 8
    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v2, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteFetchAccountInfoRequest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ynote,account:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v4, v0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteUser;->getUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteUser;->getUser()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteUser;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v2, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3f

    const/4 v13, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v13}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteUser;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;->setAccountId(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;->setAccountInfoBean(Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;)V

    .line 13
    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;->setAccountCredentialJson(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/FetchAccountInfoRequest;->getProviderName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;->setProviderName(Ljava/lang/String;)V

    .line 15
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteFetchAccountInfoRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;->getEnableFeatures()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;->setEnableFeatures(Ljava/util/Set;)V

    return-object v2

    .line 16
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "code: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lretrofit2/Response;->code()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", message: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", error body: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 17
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method
