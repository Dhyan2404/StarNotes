.class public final Lcom/onyx/galaxy/note/settings/request/SubmitFeedbackRequest;
.super Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/settings/request/SubmitFeedbackRequest$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/request/SubmitFeedbackRequest;",
        "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;",
        "",
        "execute",
        "Lcom/onyx/galaxy/note/settings/data/SubmitFeedbackContext;",
        "a",
        "Lcom/onyx/galaxy/note/settings/data/SubmitFeedbackContext;",
        "submitContext",
        "<init>",
        "(Lcom/onyx/galaxy/note/settings/data/SubmitFeedbackContext;)V",
        "Companion",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/settings/request/SubmitFeedbackRequest$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Ljava/lang/String; = "galaxy"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Lcom/onyx/galaxy/note/settings/data/SubmitFeedbackContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/settings/request/SubmitFeedbackRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/settings/request/SubmitFeedbackRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/settings/request/SubmitFeedbackRequest;->Companion:Lcom/onyx/galaxy/note/settings/request/SubmitFeedbackRequest$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/galaxy/note/settings/data/SubmitFeedbackContext;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/settings/data/SubmitFeedbackContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "submitContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/request/SubmitFeedbackRequest;->a:Lcom/onyx/galaxy/note/settings/data/SubmitFeedbackContext;

    return-void
.end method


# virtual methods
.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/request/SubmitFeedbackRequest;->execute()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public execute()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2
    sget-object v1, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    const-class v2, Lcom/onyx/android/sdk/data/common/cloud/v2/OnyxLogService;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxApiV2Service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/data/common/cloud/v2/OnyxLogService;

    .line 3
    sget-object v2, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->Companion:Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest$Companion;

    sget-object v3, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getAccountToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest$Companion;->getBearerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->getModel()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->getManufacturer()Ljava/lang/String;

    move-result-object v4

    .line 6
    sget-object v5, Lcom/onyx/android/sdk/base/utils/PackageUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/PackageUtils;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/utils/PackageUtils;->getAppVersionNameAndCode()Ljava/lang/String;

    move-result-object v5

    .line 7
    sget-object v6, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x2

    const-string v8, "dev_version"

    const/4 v9, 0x0

    invoke-static {v6, v8, v9, v7, v9}, Lcom/onyx/android/sdk/base/extension/ContextKt;->getMetaData$default(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 8
    sget-object v7, Lcom/onyx/android/sdk/base/utils/MarketUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MarketUtils;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/base/utils/MarketUtils;->getMarketChannel()Ljava/lang/String;

    move-result-object v7

    .line 9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " dev_version:"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " channel:"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 10
    new-instance v5, Lcom/onyx/android/sdk/data/common/cloud/v2/FeedbacksParams;

    .line 11
    iget-object v6, v0, Lcom/onyx/galaxy/note/settings/request/SubmitFeedbackRequest;->a:Lcom/onyx/galaxy/note/settings/data/SubmitFeedbackContext;

    invoke-virtual {v6}, Lcom/onyx/galaxy/note/settings/data/SubmitFeedbackContext;->getType()I

    move-result v11

    .line 12
    iget-object v6, v0, Lcom/onyx/galaxy/note/settings/request/SubmitFeedbackRequest;->a:Lcom/onyx/galaxy/note/settings/data/SubmitFeedbackContext;

    invoke-virtual {v6}, Lcom/onyx/galaxy/note/settings/data/SubmitFeedbackContext;->getMemo()Ljava/lang/String;

    move-result-object v12

    .line 13
    iget-object v6, v0, Lcom/onyx/galaxy/note/settings/request/SubmitFeedbackRequest;->a:Lcom/onyx/galaxy/note/settings/data/SubmitFeedbackContext;

    invoke-virtual {v6}, Lcom/onyx/galaxy/note/settings/data/SubmitFeedbackContext;->getEmail()Ljava/lang/String;

    move-result-object v13

    .line 14
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x5f

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 15
    iget-object v3, v0, Lcom/onyx/galaxy/note/settings/request/SubmitFeedbackRequest;->a:Lcom/onyx/galaxy/note/settings/data/SubmitFeedbackContext;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/settings/data/SubmitFeedbackContext;->getKey()Ljava/lang/String;

    move-result-object v16

    .line 16
    iget-object v0, v0, Lcom/onyx/galaxy/note/settings/request/SubmitFeedbackRequest;->a:Lcom/onyx/galaxy/note/settings/data/SubmitFeedbackContext;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/SubmitFeedbackContext;->getZipFileUrl()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    move-object v10, v5

    .line 17
    invoke-direct/range {v10 .. v17}, Lcom/onyx/android/sdk/data/common/cloud/v2/FeedbacksParams;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 18
    sget-object v0, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->INSTANCE:Lcom/onyx/android/sdk/data/utils/RetrofitExt;

    const-string v3, "galaxy"

    .line 19
    invoke-interface {v1, v2, v3, v5}, Lcom/onyx/android/sdk/data/common/cloud/v2/OnyxLogService;->feedbacks(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/data/common/cloud/v2/FeedbacksParams;)Lretrofit2/Call;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 20
    invoke-static {v0, v1, v2, v3, v9}, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->executeAndGetResponse$default(Lcom/onyx/android/sdk/data/utils/RetrofitExt;Lretrofit2/Call;ZILjava/lang/Object;)Lcom/onyx/android/sdk/data/account/bean/DataResponse;

    return-void
.end method
