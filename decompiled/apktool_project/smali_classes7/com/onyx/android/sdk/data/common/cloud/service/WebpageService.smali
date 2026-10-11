.class public final Lcom/onyx/android/sdk/data/common/cloud/service/WebpageService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0013\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000e\u001a\u00020\u0004J\u0006\u0010\u000f\u001a\u00020\u0004J\u0006\u0010\u0010\u001a\u00020\u0004J\u000e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0004J\u0006\u0010\u0013\u001a\u00020\u0004J\u0006\u0010\u0014\u001a\u00020\u0004J\u0006\u0010\u0015\u001a\u00020\u0004J\u0006\u0010\u0016\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/common/cloud/service/WebpageService;",
        "",
        "()V",
        "KEY_FROM",
        "",
        "KEY_TYPE",
        "PATH_ACCOUNT_LOGOFF",
        "PATH_DATA_REPOSITORY_CENTER",
        "PATH_DATA_REPOSITORY_MATERIAL",
        "PATH_MEMBER_CENTER",
        "PATH_MESSAGE_CENTER",
        "PATH_USER_CENTER",
        "TYPE_STICKER",
        "TYPE_TEMPLATE",
        "getAccountLogoffService",
        "getDataRepositoryService",
        "getGalaxyHost",
        "getGalaxyService",
        "path",
        "getMaterialCenterService",
        "getMemberCenterService",
        "getMessageCenterService",
        "getUserCenterService",
        "sdk-data_release"
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/service/WebpageService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_FROM:Ljava/lang/String; = "from"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_TYPE:Ljava/lang/String; = "type"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PATH_ACCOUNT_LOGOFF:Ljava/lang/String; = "delete-account"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PATH_DATA_REPOSITORY_CENTER:Ljava/lang/String; = "library/center"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PATH_DATA_REPOSITORY_MATERIAL:Ljava/lang/String; = "library/material"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PATH_MEMBER_CENTER:Ljava/lang/String; = "member-center"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PATH_MESSAGE_CENTER:Ljava/lang/String; = "message-center"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PATH_USER_CENTER:Ljava/lang/String; = "user-center"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_STICKER:Ljava/lang/String; = "sticker"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_TEMPLATE:Ljava/lang/String; = "template"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/data/common/cloud/service/WebpageService;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/common/cloud/service/WebpageService;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/data/common/cloud/service/WebpageService;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/service/WebpageService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAccountLogoffService()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "delete-account"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/common/cloud/service/WebpageService;->getGalaxyService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDataRepositoryService()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "library/center"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/common/cloud/service/WebpageService;->getGalaxyService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getGalaxyHost()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getCurClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->getClusterHost()Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;->getGalaxyHostBaseUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getGalaxyService(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/cloud/service/WebpageService;->getGalaxyHost()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2f

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMaterialCenterService()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "library/material"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/common/cloud/service/WebpageService;->getGalaxyService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMemberCenterService()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "member-center"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/common/cloud/service/WebpageService;->getGalaxyService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMessageCenterService()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "message-center"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/common/cloud/service/WebpageService;->getGalaxyService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getUserCenterService()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "user-center"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/common/cloud/service/WebpageService;->getGalaxyService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
