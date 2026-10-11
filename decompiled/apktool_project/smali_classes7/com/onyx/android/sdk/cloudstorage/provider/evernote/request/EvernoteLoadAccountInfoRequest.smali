.class public final Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteLoadAccountInfoRequest;
.super Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0014\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteLoadAccountInfoRequest;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;",
        "()V",
        "loadFromCloud",
        "Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;",
        "providerAccountModel",
        "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;",
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


# direct methods
.method public constructor <init>()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->EVER_NOTE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;-><init>(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public loadFromCloud(Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;)Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p1, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider$Companion;->getSession()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/client/android/EvernoteSession;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider$Companion;->getSession()Lcom/evernote/client/android/EvernoteSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/evernote/client/android/EvernoteSession;->getEvernoteClientFactory()Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->getUserStoreClient()Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;->getUser()Lcom/evernote/edam/type/User;

    move-result-object p1

    new-instance v6, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;->setAccountName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/edam/type/User;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;->setNickName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;->getAccountId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;->setId(Ljava/lang/String;)V

    return-object v6
.end method
