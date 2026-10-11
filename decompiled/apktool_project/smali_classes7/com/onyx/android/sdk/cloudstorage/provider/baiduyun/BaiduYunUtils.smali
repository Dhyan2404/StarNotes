.class public final Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunUtils;",
        "",
        "()V",
        "createAccountInfoBean",
        "Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;",
        "userBean",
        "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;",
        "logoutAccount",
        "",
        "accountId",
        "",
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


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createAccountInfoBean(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;)Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "userBean"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;->getBaiduName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;->setAccountName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;->getBaiduName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;->setNickName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;->getUk()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;->setId(Ljava/lang/String;)V

    return-object p0
.end method

.method public final logoutAccount(Ljava/lang/String;)J
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "accountId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/utils/ProviderAccountModelUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/common/utils/ProviderAccountModelUtils;

    sget-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->BAIDU_YUN:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/common/utils/ProviderAccountModelUtils;->deleteAccount(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method
