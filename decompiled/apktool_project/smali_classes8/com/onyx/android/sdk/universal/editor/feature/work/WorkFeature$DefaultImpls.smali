.class public final Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static scaleRange(Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lorg/apache/commons/lang3/Range;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;",
            "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
            ")",
            "Lorg/apache/commons/lang3/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const-string p0, "workBundle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->getPageScaleRange()Lorg/apache/commons/lang3/Range;

    move-result-object p0

    return-object p0
.end method

.method public static supportAutoScaleToViewport(Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 p0, 0x1

    return p0
.end method

.method public static supportCoverPage(Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 p0, 0x1

    return p0
.end method

.method public static supportMultiPage(Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 p0, 0x1

    return p0
.end method

.method public static supportPageBackground(Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public static useFirstPageAsCoverPage(Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method
