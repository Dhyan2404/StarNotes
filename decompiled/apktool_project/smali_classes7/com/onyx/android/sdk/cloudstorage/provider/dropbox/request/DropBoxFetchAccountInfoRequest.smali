.class public final Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAccountInfoRequest;
.super Lcom/onyx/android/sdk/cloudstorage/provider/common/request/FetchAccountInfoRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/FetchAccountInfoRequest<",
        "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\u000f\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAccountInfoRequest;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/FetchAccountInfoRequest;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;",
        "credential",
        "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;",
        "fetch",
        "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;",
        "a",
        "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;",
        "dropProvider",
        "Lcom/onyx/android/sdk/data/account/bean/DropBoxAccount;",
        "b",
        "Lkotlin/Lazy;",
        "getAccount",
        "()Lcom/onyx/android/sdk/data/account/bean/DropBoxAccount;",
        "account",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;)V",
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
.field public final a:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dropProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "credential"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->DROP_BOX:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/FetchAccountInfoRequest;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAccountInfoRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;

    new-instance p1, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAccountInfoRequest$account$2;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAccountInfoRequest$account$2;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAccountInfoRequest;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAccountInfoRequest;->b:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getDropProvider$p(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAccountInfoRequest;)Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAccountInfoRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;

    return-object p0
.end method


# virtual methods
.method public fetch(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;)Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;
    .locals 11
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "credential"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAccountInfoRequest;->getAccount()Lcom/onyx/android/sdk/data/account/bean/DropBoxAccount;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxUtils;->createAccountInfoBean(Lcom/onyx/android/sdk/data/account/bean/DropBoxAccount;)Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;

    move-result-object v0

    .line 3
    new-instance v10, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3f

    const/4 v9, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/FetchAccountInfoRequest;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;->setProviderName(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {v10, v1}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;->setAccountId(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v10, v0}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;->setAccountInfoBean(Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;)V

    .line 7
    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v10, p1}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;->setAccountCredentialJson(Ljava/lang/String;)V

    .line 8
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAccountInfoRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;->getEnableFeatures()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v10, p0}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;->setEnableFeatures(Ljava/util/Set;)V

    return-object v10
.end method

.method public bridge synthetic fetch(Ljava/lang/Object;)Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAccountInfoRequest;->fetch(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;)Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;

    move-result-object p0

    return-object p0
.end method

.method public final getAccount()Lcom/onyx/android/sdk/data/account/bean/DropBoxAccount;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAccountInfoRequest;->b:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/account/bean/DropBoxAccount;

    return-object p0
.end method
