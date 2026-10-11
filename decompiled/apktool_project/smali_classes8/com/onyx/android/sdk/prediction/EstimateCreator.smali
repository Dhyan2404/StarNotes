.class public final Lcom/onyx/android/sdk/prediction/EstimateCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/prediction/EstimateCreator$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEstimateCreator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EstimateCreator.kt\ncom/onyx/android/sdk/prediction/EstimateCreator\n+ 2 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n*L\n1#1,78:1\n86#2,4:79\n*S KotlinDebug\n*F\n+ 1 EstimateCreator.kt\ncom/onyx/android/sdk/prediction/EstimateCreator\n*L\n50#1:79,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0006\u0010\u0003\u001a\u00020\u0002J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0006\u001a\u00020\u0002H\u0002J\u0008\u0010\u0007\u001a\u00020\u0004H\u0002R\u0014\u0010\n\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\tR\u0016\u0010\r\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u000cR\u0016\u0010\u000e\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u000cR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/android/sdk/prediction/EstimateCreator;",
        "",
        "Lcom/onyx/android/sdk/prediction/IEstimate;",
        "ensureEstimate",
        "",
        "c",
        "a",
        "b",
        "Landroid/content/Context;",
        "Landroid/content/Context;",
        "appContext",
        "",
        "Z",
        "isCommonCustom",
        "isDeviceEstimateEnable",
        "d",
        "Lcom/onyx/android/sdk/prediction/IEstimate;",
        "estimateImpl",
        "Lcom/onyx/android/sdk/prediction/DeviceType;",
        "e",
        "Lcom/onyx/android/sdk/prediction/DeviceType;",
        "deviceType",
        "<init>",
        "(Landroid/content/Context;)V",
        "sdk-prediction_overseasRelease"
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
        "SMAP\nEstimateCreator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EstimateCreator.kt\ncom/onyx/android/sdk/prediction/EstimateCreator\n+ 2 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n*L\n1#1,78:1\n86#2,4:79\n*S KotlinDebug\n*F\n+ 1 EstimateCreator.kt\ncom/onyx/android/sdk/prediction/EstimateCreator\n*L\n50#1:79,4\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Z

.field public c:Z

.field public d:Lcom/onyx/android/sdk/prediction/IEstimate;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:Lcom/onyx/android/sdk/prediction/DeviceType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/prediction/EstimateCreator;->a:Landroid/content/Context;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/prediction/EstimateCreator;->b:Z

    sget-object p1, Lcom/onyx/android/sdk/prediction/DeviceType;->COMMON:Lcom/onyx/android/sdk/prediction/DeviceType;

    iput-object p1, p0, Lcom/onyx/android/sdk/prediction/EstimateCreator;->e:Lcom/onyx/android/sdk/prediction/DeviceType;

    return-void
.end method


# virtual methods
.method public final a()Lcom/onyx/android/sdk/prediction/IEstimate;
    .locals 3

    iget-object p0, p0, Lcom/onyx/android/sdk/prediction/EstimateCreator;->e:Lcom/onyx/android/sdk/prediction/DeviceType;

    sget-object v0, Lcom/onyx/android/sdk/prediction/EstimateCreator$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    new-instance p0, Lcom/onyx/android/sdk/prediction/CommonEstimateV2;

    invoke-direct {p0}, Lcom/onyx/android/sdk/prediction/CommonEstimateV2;-><init>()V

    goto :goto_0

    :pswitch_1
    const/16 p0, 0x22

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/BuildKt;->isApiLevelAbove(I)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/prediction/HonorEstimate;

    invoke-direct {p0}, Lcom/onyx/android/sdk/prediction/HonorEstimate;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/onyx/android/sdk/prediction/HonorEstimateV2;

    invoke-direct {p0}, Lcom/onyx/android/sdk/prediction/HonorEstimateV2;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance p0, Lcom/onyx/android/sdk/prediction/VivoEstimate;

    invoke-direct {p0}, Lcom/onyx/android/sdk/prediction/VivoEstimate;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance p0, Lcom/onyx/android/sdk/prediction/OppoEstimate;

    invoke-direct {p0}, Lcom/onyx/android/sdk/prediction/OppoEstimate;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance p0, Lcom/onyx/android/sdk/prediction/CommonEstimateV2;

    invoke-direct {p0}, Lcom/onyx/android/sdk/prediction/CommonEstimateV2;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance p0, Lcom/onyx/android/sdk/prediction/CommonEstimateV2;

    invoke-direct {p0}, Lcom/onyx/android/sdk/prediction/CommonEstimateV2;-><init>()V

    :goto_0
    invoke-interface {p0}, Lcom/onyx/android/sdk/prediction/IEstimate;->preInit()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p0, Lcom/onyx/android/sdk/prediction/CommonEstimate;

    invoke-direct {p0}, Lcom/onyx/android/sdk/prediction/CommonEstimate;-><init>()V

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/Debug;->getDebug()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/Debug;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "using estimate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/prediction/EstimateCreator;->e:Lcom/onyx/android/sdk/prediction/DeviceType;

    sget-object v1, Lcom/onyx/android/sdk/prediction/EstimateCreator$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    iput-boolean v1, p0, Lcom/onyx/android/sdk/prediction/EstimateCreator;->c:Z

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/hihonor/android/magicx/app/penengine/estimate/HnStrokeEstimate;->isFeatureEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/onyx/android/sdk/prediction/EstimateCreator;->c:Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/prediction/EstimateCreator;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/penengine/estimate/MiuiStrokeEstimate;->isFeatureEnable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onyx/android/sdk/prediction/EstimateCreator;->c:Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/onyx/android/sdk/prediction/EstimateCreator;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/stylus/penengine/HwPenEngineManager;->isEngineRuntimeAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/huawei/stylus/penengine/estimate/HwStrokeEstimate;->isFeatureEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/onyx/android/sdk/prediction/EstimateCreator;->c:Z

    :goto_1
    iget-boolean v0, p0, Lcom/onyx/android/sdk/prediction/EstimateCreator;->c:Z

    if-nez v0, :cond_4

    sget-object v0, Lcom/onyx/android/sdk/prediction/DeviceType;->COMMON:Lcom/onyx/android/sdk/prediction/DeviceType;

    iput-object v0, p0, Lcom/onyx/android/sdk/prediction/EstimateCreator;->e:Lcom/onyx/android/sdk/prediction/DeviceType;

    :cond_4
    return-void
.end method

.method public final c()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/prediction/DeviceType;->HUAWEI:Lcom/onyx/android/sdk/prediction/DeviceType;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/prediction/DeviceType;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/prediction/DeviceType;->HONOR:Lcom/onyx/android/sdk/prediction/DeviceType;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/prediction/DeviceType;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/prediction/DeviceType;->XIAOMI:Lcom/onyx/android/sdk/prediction/DeviceType;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/prediction/DeviceType;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/onyx/android/sdk/prediction/DeviceType;->VIVO:Lcom/onyx/android/sdk/prediction/DeviceType;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/prediction/DeviceType;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/onyx/android/sdk/prediction/DeviceType;->OPPO:Lcom/onyx/android/sdk/prediction/DeviceType;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/prediction/DeviceType;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/onyx/android/sdk/prediction/DeviceType;->COMMON:Lcom/onyx/android/sdk/prediction/DeviceType;

    :goto_0
    iput-object v0, p0, Lcom/onyx/android/sdk/prediction/EstimateCreator;->e:Lcom/onyx/android/sdk/prediction/DeviceType;

    return-void
.end method

.method public final ensureEstimate()Lcom/onyx/android/sdk/prediction/IEstimate;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/prediction/EstimateCreator;->d:Lcom/onyx/android/sdk/prediction/IEstimate;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/prediction/EstimateCreator;->c()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/prediction/EstimateCreator;->b()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/prediction/EstimateCreator;->a()Lcom/onyx/android/sdk/prediction/IEstimate;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/prediction/EstimateCreator;->d:Lcom/onyx/android/sdk/prediction/IEstimate;

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/prediction/EstimateCreator;->d:Lcom/onyx/android/sdk/prediction/IEstimate;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method
