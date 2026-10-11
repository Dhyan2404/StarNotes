.class public final Lcom/onyx/android/sdk/hwr/request/HWRResourceLoadRequest;
.super Lcom/onyx/android/sdk/hwr/request/HWRBaseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/hwr/request/HWRResourceLoadRequest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/hwr/request/HWRBaseRequest<",
        "Ljava/util/List<",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHWRResourceLoadRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRResourceLoadRequest.kt\ncom/onyx/android/sdk/hwr/request/HWRResourceLoadRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,97:1\n766#2:98\n857#2,2:99\n*S KotlinDebug\n*F\n+ 1 HWRResourceLoadRequest.kt\ncom/onyx/android/sdk/hwr/request/HWRResourceLoadRequest\n*L\n64#1:98\n64#1:99,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00182\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0001\u0018B\u0011\u0008\u0016\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u001c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u001c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0016\u0010\u000b\u001a\u00020\n2\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\tH\u0002J\u0016\u0010\u000c\u001a\u00020\n2\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002R(\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/request/HWRResourceLoadRequest;",
        "Lcom/onyx/android/sdk/hwr/request/HWRBaseRequest;",
        "",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;",
        "execute",
        "e",
        "resources",
        "d",
        "c",
        "",
        "",
        "b",
        "f",
        "",
        "Ljava/util/List;",
        "getReservedResources",
        "()Ljava/util/List;",
        "setReservedResources",
        "(Ljava/util/List;)V",
        "reservedResources",
        "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;",
        "bundle",
        "<init>",
        "(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;)V",
        "Companion",
        "sdk-hwr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHWRResourceLoadRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRResourceLoadRequest.kt\ncom/onyx/android/sdk/hwr/request/HWRResourceLoadRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,97:1\n766#2:98\n857#2,2:99\n*S KotlinDebug\n*F\n+ 1 HWRResourceLoadRequest.kt\ncom/onyx/android/sdk/hwr/request/HWRResourceLoadRequest\n*L\n64#1:98\n64#1:99,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/hwr/request/HWRResourceLoadRequest$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/onyx/android/sdk/hwr/request/HWRResourceLoadRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/hwr/request/HWRResourceLoadRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/hwr/request/HWRResourceLoadRequest;->Companion:Lcom/onyx/android/sdk/hwr/request/HWRResourceLoadRequest$Companion;

    const-string v2, "ar"

    const-string v3, "fa_IR"

    const-string v4, "he_IL"

    const-string v5, "hi_IN"

    const-string v6, "th_TH"

    const-string v7, "ur_PK"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/hwr/request/HWRResourceLoadRequest;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/hwr/request/HWRBaseRequest;-><init>(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/request/HWRResourceLoadRequest;->b:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/hwr/request/HWRResourceLoadRequest;->g(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getOFFSCREEN_RESOURCES$cp()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/hwr/request/HWRResourceLoadRequest;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public static final g(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->setExist(Z)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->getEngineType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MyScript"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/hwr/utils/MSResourceUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/MSResourceUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->getLang()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/hwr/utils/MSResourceUtils;->isMyscriptResourceExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->setExist(Z)V

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->getEngineType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GoogleML"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->selectModel(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->isModelDownloaded(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->setExist(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final c(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;",
            ">;"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;

    sget-object v3, Lcom/onyx/android/sdk/hwr/request/HWRResourceLoadRequest;->c:[Ljava/lang/String;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->getLang()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/request/HWRResourceLoadRequest;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;

    iget-object v2, p0, Lcom/onyx/android/sdk/hwr/request/HWRResourceLoadRequest;->b:Ljava/util/List;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->getLang()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public final d(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/hwr/utils/MSResourceUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/MSResourceUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/utils/MSResourceUtils;->getDownloadResList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    new-instance v1, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;

    invoke-direct {v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lonyx/org/apache/commons/io/FilenameUtils;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "getBaseName(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->setLang(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->setExist(Z)V

    const-string v0, "2.1"

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->setVersion(Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/hwr/utils/MSResourceUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/MSResourceUtils;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/utils/MSResourceUtils;->isResourceExist(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public final e()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/request/HWRBaseRequest;->getBundle()Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->getClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->getInternationalCloudDataUrl()Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/onyx/android/sdk/hwr/service/http/OnyxHWRResourceService;

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxSpecifyService(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/hwr/service/http/OnyxHWRResourceService;

    sget-object v0, Lcom/onyx/android/sdk/data/utils/RetrofitUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/RetrofitUtils;

    const-string v1, "2.1"

    invoke-interface {p0, v1}, Lcom/onyx/android/sdk/hwr/service/http/OnyxHWRResourceService;->getMyscriptResource(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/utils/RetrofitUtils;->executeCall(Lretrofit2/Call;)Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "body(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/request/HWRResourceLoadRequest;->execute()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public execute()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/request/HWRResourceLoadRequest;->e()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/request/HWRResourceLoadRequest;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 4
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/request/HWRResourceLoadRequest;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 6
    :cond_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/request/HWRResourceLoadRequest;->b(Ljava/util/List;)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/request/HWRResourceLoadRequest;->f(Ljava/util/List;)V

    return-object v0
.end method

.method public final f(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;",
            ">;)V"
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/hwr/request/HWRResourceLoadRequest$sortResources$1;->INSTANCE:Lcom/onyx/android/sdk/hwr/request/HWRResourceLoadRequest$sortResources$1;

    new-instance v0, Lcom/sunia/HTREnginev2/dfh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/dfh;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public final getReservedResources()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/request/HWRResourceLoadRequest;->b:Ljava/util/List;

    return-object p0
.end method

.method public final setReservedResources(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/request/HWRResourceLoadRequest;->b:Ljava/util/List;

    return-void
.end method
