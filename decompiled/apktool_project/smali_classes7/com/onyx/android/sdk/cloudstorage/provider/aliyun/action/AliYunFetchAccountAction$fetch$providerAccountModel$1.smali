.class public final Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunFetchAccountAction$fetch$providerAccountModel$1;
.super Lcom/onyx/android/sdk/cloudstorage/provider/common/request/FetchAccountInfoRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunFetchAccountAction;->l()Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/FetchAccountInfoRequest<",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0014J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0004H\u0014\u00a8\u0006\t"
    }
    d2 = {
        "com/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunFetchAccountAction$fetch$providerAccountModel$1",
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/FetchAccountInfoRequest;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;",
        "fetch",
        "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;",
        "credential",
        "saveAuthAccountInfo",
        "",
        "accountModel",
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
.field public final synthetic a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunFetchAccountAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunFetchAccountAction;Ljava/lang/String;Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunFetchAccountAction$fetch$providerAccountModel$1;->a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunFetchAccountAction;

    invoke-direct {p0, p2, p3}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/FetchAccountInfoRequest;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public fetch(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;)Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;
    .locals 9
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunFetchAccountAction$fetch$providerAccountModel$1;->a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunFetchAccountAction;

    invoke-static {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunFetchAccountAction;->access$getAliYunProvider$p(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunFetchAccountAction;)Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunFetchAccountAction$fetch$providerAccountModel$1$fetch$request$1;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunFetchAccountAction$fetch$providerAccountModel$1$fetch$request$1;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;)V

    .line 3
    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;

    move-result-object v5

    const/4 v0, 0x0

    if-eqz v5, :cond_5

    .line 4
    invoke-virtual {v5}, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    goto :goto_3

    .line 5
    :cond_2
    invoke-virtual {v5}, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;->getId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v2, ""

    :cond_3
    move-object v3, v2

    .line 6
    sget-object v2, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 7
    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunLoadAccountRequest;->getAccount()Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunAccount;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunAccount;->getDefaultDriveId()Ljava/lang/String;

    move-result-object p1

    move-object v6, p1

    goto :goto_2

    :cond_4
    move-object v6, v0

    .line 8
    :goto_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/FetchAccountInfoRequest;->getProviderName()Ljava/lang/String;

    move-result-object v4

    .line 9
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunFetchAccountAction$fetch$providerAccountModel$1;->a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunFetchAccountAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunFetchAccountAction;->access$getAliYunProvider$p(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunFetchAccountAction;)Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->getEnableFeatures()Ljava/util/Set;

    move-result-object v8

    .line 10
    new-instance p0, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    return-object p0

    :cond_5
    :goto_3
    return-object v0
.end method

.method public bridge synthetic fetch(Ljava/lang/Object;)Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunFetchAccountAction$fetch$providerAccountModel$1;->fetch(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;)Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;

    move-result-object p0

    return-object p0
.end method

.method public saveAuthAccountInfo(Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "accountModel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
