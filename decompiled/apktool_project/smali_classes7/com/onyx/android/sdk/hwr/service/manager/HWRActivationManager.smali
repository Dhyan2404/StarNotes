.class public final Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHWRActivationManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRActivationManager.kt\ncom/onyx/android/sdk/hwr/service/manager/HWRActivationManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 JSONUtils.kt\ncom/onyx/android/sdk/data/utils/JSONUtils\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,89:1\n288#2,2:90\n46#3:92\n1#4:93\n*S KotlinDebug\n*F\n+ 1 HWRActivationManager.kt\ncom/onyx/android/sdk/hwr/service/manager/HWRActivationManager\n*L\n23#1:90,2\n33#1:92\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u000c\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u0008J\u000e\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;",
        "",
        "()V",
        "getHWRActivationConfig",
        "Lcom/onyx/android/sdk/data/account/bean/HWRActivationConfig;",
        "engine",
        "",
        "getHWREngineActivationState",
        "Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;",
        "isActivationRequired",
        "",
        "isEngineActivated",
        "isEngineExceedDeviceLimit",
        "isModelActivated",
        "model",
        "isRecognizerActivated",
        "recognizer",
        "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;",
        "isTrialPeriod",
        "showProMenu",
        "showTrialMenu",
        "sdk-hwr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHWRActivationManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRActivationManager.kt\ncom/onyx/android/sdk/hwr/service/manager/HWRActivationManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 JSONUtils.kt\ncom/onyx/android/sdk/data/utils/JSONUtils\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,89:1\n288#2,2:90\n46#3:92\n1#4:93\n*S KotlinDebug\n*F\n+ 1 HWRActivationManager.kt\ncom/onyx/android/sdk/hwr/service/manager/HWRActivationManager\n*L\n23#1:90,2\n33#1:92\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHWRActivationConfig(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/bean/HWRActivationConfig;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;->getHWREngineActivationState(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->getEncryptedContent()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    new-instance p0, Lcom/onyx/android/sdk/data/account/bean/HWRActivationConfig;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/bean/HWRActivationConfig;-><init>()V

    return-object p0

    :cond_1
    sget-object p1, Lcom/onyx/android/sdk/data/utils/OnyxEncryptUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/OnyxEncryptUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->getEncryptedContent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/utils/OnyxEncryptUtils;->decryptConfigJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    const-class v0, Lcom/onyx/android/sdk/data/account/bean/HWRActivationConfig;

    invoke-virtual {p1, p0, v0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/account/bean/HWRActivationConfig;

    if-nez p0, :cond_2

    new-instance p0, Lcom/onyx/android/sdk/data/account/bean/HWRActivationConfig;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/bean/HWRActivationConfig;-><init>()V

    :cond_2
    return-object p0
.end method

.method public final getHWREngineActivationState(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "engine"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getHwrActivationStates()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->getEngine()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;

    if-nez v0, :cond_2

    new-instance v0, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;-><init>()V

    :cond_2
    return-object v0
.end method

.method public final isActivationRequired(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "engine"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "SuNia"

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isEngineActivated(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;->isActivationRequired(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;->getHWREngineActivationState(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;->isModelActivated(Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;)Z

    move-result p0

    return p0
.end method

.method public final isEngineExceedDeviceLimit(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;->getHWREngineActivationState(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->getExceedDeviceLimit()Z

    move-result p0

    return p0
.end method

.method public final isModelActivated(Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;)Z
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "model"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->isEmpty()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->getState()I

    move-result p0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->getDeviceActivated()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public final isRecognizerActivated(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "recognizer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerTypeKt;->getEngineType(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;->isEngineActivated(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isTrialPeriod(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;->getHWREngineActivationState(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->getState()I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final showProMenu(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;->getHWREngineActivationState(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->Companion:Lcom/onyx/android/sdk/data/account/model/HWRActivationModel$Companion;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel$Companion;->isTimeExpired(Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Integer;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p1, v2

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->getState()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :cond_1
    :goto_0
    return v0
.end method

.method public final showTrialMenu(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;->getHWREngineActivationState(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->Companion:Lcom/onyx/android/sdk/data/account/model/HWRActivationModel$Companion;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel$Companion;->isTimeExpired(Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x3

    new-array v1, p1, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->getState()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method
