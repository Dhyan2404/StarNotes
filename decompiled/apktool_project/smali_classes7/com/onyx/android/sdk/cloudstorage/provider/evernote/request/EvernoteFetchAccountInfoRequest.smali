.class public final Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteFetchAccountInfoRequest;
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
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteFetchAccountInfoRequest;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/FetchAccountInfoRequest;",
        "",
        "credential",
        "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;",
        "fetch",
        "Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;",
        "a",
        "Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;",
        "everNoteProvider",
        "accountId",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;Ljava/lang/String;)V",
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
.field public final a:Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "everNoteProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->EVER_NOTE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/FetchAccountInfoRequest;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteFetchAccountInfoRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;

    return-void
.end method


# virtual methods
.method public bridge synthetic fetch(Ljava/lang/Object;)Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteFetchAccountInfoRequest;->fetch(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;

    move-result-object p0

    return-object p0
.end method

.method public fetch(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;
    .locals 18
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "credential"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider$Companion;->getSession()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/evernote/client/android/EvernoteSession;->isLoggedIn()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider$Companion;->getSession()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/evernote/client/android/EvernoteSession;->getEvernoteClientFactory()Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->getUserStoreClient()Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;->getUser()Lcom/evernote/edam/type/User;

    move-result-object v1

    .line 7
    new-instance v8, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    invoke-virtual {v1}, Lcom/evernote/edam/type/User;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;->setAccountName(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Lcom/evernote/edam/type/User;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;->setNickName(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v8, v0}, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;->setId(Ljava/lang/String;)V

    .line 11
    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x3f

    const/16 v17, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v17}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;->setAccountId(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1, v8}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;->setAccountInfoBean(Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;)V

    .line 14
    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;->setAccountCredentialJson(Ljava/lang/String;)V

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/FetchAccountInfoRequest;->getProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;->setProviderName(Ljava/lang/String;)V

    move-object/from16 v0, p0

    .line 16
    iget-object v0, v0, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteFetchAccountInfoRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;->getEnableFeatures()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;->setEnableFeatures(Ljava/util/Set;)V

    return-object v1
.end method
