.class public abstract Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;
.super Lcom/onyx/android/sdk/base/rx/RxBaseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest<",
        "Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008&\u0018\u0000 *2\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001:\u0001*B\u0019\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008(\u0010)J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0006\u0010\u0004\u001a\u00020\u0002J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0004J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0004J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0002H\u0014J\u0014\u0010\u000c\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0006H$J\n\u0010\r\u001a\u0004\u0018\u00010\u0002H\u0002R\"\u0010\u000f\u001a\u00020\u000e8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\"\u0010\u0016\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR$\u0010\u000b\u001a\u0004\u0018\u00010\u00068\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R$\u0010\"\u001a\u0004\u0018\u00010!8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'\u00a8\u0006+"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;",
        "Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;",
        "execute",
        "executeSafety",
        "loadFromCache",
        "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;",
        "loadAccountModelFromCache",
        "accountInfo",
        "",
        "saveAccountInfo",
        "providerAccountModel",
        "loadFromCloud",
        "a",
        "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
        "provider",
        "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
        "getProvider",
        "()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
        "setProvider",
        "(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V",
        "",
        "forceLoadFromCloud",
        "Z",
        "getForceLoadFromCloud",
        "()Z",
        "setForceLoadFromCloud",
        "(Z)V",
        "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;",
        "getProviderAccountModel",
        "()Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;",
        "setProviderAccountModel",
        "(Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;)V",
        "",
        "accountId",
        "Ljava/lang/String;",
        "getAccountId",
        "()Ljava/lang/String;",
        "setAccountId",
        "(Ljava/lang/String;)V",
        "<init>",
        "(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Z)V",
        "Companion",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final retryCount:I = 0x3


# instance fields
.field private accountId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private forceLoadFromCloud:Z

.field private provider:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private providerAccountModel:Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Z)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;->provider:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    .line 4
    iput-boolean p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;->forceLoadFromCloud:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;-><init>(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Z)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;->loadAccountModelFromCache()Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;->loadFromCloud(Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;)Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-object v1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Throwable;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public execute()Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    iget-boolean v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;->forceLoadFromCloud:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;->loadFromCache()Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->isNoneBlank([Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;->a()Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;->saveAccountInfo(Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;)V

    return-object v0

    :cond_2
    return-object v1
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;

    move-result-object p0

    return-object p0
.end method

.method public final executeSafety()Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, ""

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, ""

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    :goto_0
    return-object p0
.end method

.method public final getAccountId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;->accountId:Ljava/lang/String;

    return-object p0
.end method

.method public final getForceLoadFromCloud()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;->forceLoadFromCloud:Z

    return p0
.end method

.method public final getProvider()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;->provider:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    return-object p0
.end method

.method public final getProviderAccountModel()Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;->providerAccountModel:Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;

    return-object p0
.end method

.method public final loadAccountModelFromCache()Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;->providerAccountModel:Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;->accountId:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/provider/common/utils/ProviderAccountModelUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/common/utils/ProviderAccountModelUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;->provider:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/utils/ProviderAccountModelUtils;->queryAccount(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final loadFromCache()Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;->loadAccountModelFromCache()Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;->providerAccountModel:Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;->getAccountInfoBean()Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public abstract loadFromCloud(Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;)Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public saveAccountInfo(Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "accountInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;->providerAccountModel:Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;->setAccountInfoBean(Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;)V

    sget-object p1, Lcom/onyx/android/sdk/cloudstorage/provider/common/utils/ProviderAccountModelUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/common/utils/ProviderAccountModelUtils;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;->provider:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/utils/ProviderAccountModelUtils;->saveAccount(Ljava/util/List;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setAccountId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;->accountId:Ljava/lang/String;

    return-void
.end method

.method public final setForceLoadFromCloud(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;->forceLoadFromCloud:Z

    return-void
.end method

.method public final setProvider(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;->provider:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    return-void
.end method

.method public final setProviderAccountModel(Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;->providerAccountModel:Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;

    return-void
.end method
