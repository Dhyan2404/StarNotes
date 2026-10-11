.class public final Lcom/onyx/android/sdk/hwr/service/predictor/impl/LineVerification;
.super Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u000e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0008H\u0016J\u0008\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/service/predictor/impl/LineVerification;",
        "Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;",
        "()V",
        "output",
        "Lcom/onyx/android/sdk/hwr/service/predictor/VerificationResult;",
        "shapeName",
        "",
        "similarObjectTypes",
        "",
        "verify",
        "",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;-><init>()V

    return-void
.end method


# virtual methods
.method public output()Lcom/onyx/android/sdk/hwr/service/predictor/VerificationResult;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/hwr/service/predictor/VerificationResult;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/LineVerification;->shapeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;->getPointerEvents()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/hwr/service/predictor/VerificationResult;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public shapeName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "Line"

    return-object p0
.end method

.method public similarObjectTypes()Ljava/util/List;
    .locals 7
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

    const-string v0, "Line"

    const-string v1, "line"

    const-string v2, "scroll"

    const-string v3, "squiggle"

    const-string v4, "toothbrush"

    const-string v5, "skis"

    const-string v6, "The Great Wall of China"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public verify()Z
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;->getPointerEvents()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->toTouchPointList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/hwr/utils/LineUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/LineUtils;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/hwr/utils/LineUtils;->isAllPointParallelIgnoreDirection(Ljava/util/List;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/hwr/utils/LineUtils;->isLine(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    sget-object v1, Lcom/onyx/android/sdk/hwr/data/constant/HWRConfigurations;->INSTANCE:Lcom/onyx/android/sdk/hwr/data/constant/HWRConfigurations;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/hwr/data/constant/HWRConfigurations;->getArrowTurningPointThreshold()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1}, Lcom/onyx/android/sdk/hwr/data/constant/HWRConfigurations;->getArrowMinimumLength()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p0, v3, v2, v1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->hasTurningPoint(Ljava/util/List;Ljava/lang/Number;ZLjava/lang/Number;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
