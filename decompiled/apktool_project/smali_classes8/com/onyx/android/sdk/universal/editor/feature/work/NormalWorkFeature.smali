.class public Lcom/onyx/android/sdk/universal/editor/feature/work/NormalWorkFeature;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/feature/work/NormalWorkFeature;",
        "Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;",
        "()V",
        "createBoxManager",
        "Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;",
        "workBundle",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "scaleRange",
        "Lorg/apache/commons/lang3/Range;",
        "",
        "sdk-universal_overseasRelease"
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createBoxManager(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "workBundle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->getDisplayPageColumnCount(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)I

    move-result p0

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->getLayoutType(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const/4 v4, 0x2

    if-ne p0, v4, :cond_1

    move p0, v2

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-nez v0, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    if-ne v0, v2, :cond_3

    move v1, v2

    :cond_3
    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->isEnabledContinuousPage(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Z

    move-result p1

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    if-eqz p1, :cond_4

    new-instance p0, Lcom/onyx/android/sdk/geometry/boxmanager/HBoxContinuousManager;

    invoke-direct {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HBoxContinuousManager;-><init>()V

    goto :goto_3

    :cond_4
    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    if-nez p1, :cond_5

    new-instance p0, Lcom/onyx/android/sdk/geometry/boxmanager/HBoxManager;

    invoke-direct {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HBoxManager;-><init>()V

    goto :goto_3

    :cond_5
    if-eqz v3, :cond_6

    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    new-instance p0, Lcom/onyx/android/sdk/geometry/boxmanager/VBoxContinuousManager;

    invoke-direct {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/VBoxContinuousManager;-><init>()V

    goto :goto_3

    :cond_6
    if-eqz v3, :cond_7

    if-eqz v1, :cond_7

    if-nez p1, :cond_7

    new-instance p0, Lcom/onyx/android/sdk/geometry/boxmanager/VBoxManager;

    invoke-direct {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/VBoxManager;-><init>()V

    goto :goto_3

    :cond_7
    if-eqz p0, :cond_8

    if-eqz v4, :cond_8

    if-eqz p1, :cond_8

    new-instance p0, Lcom/onyx/android/sdk/geometry/boxmanager/HBoxContinuousManager;

    invoke-direct {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HBoxContinuousManager;-><init>()V

    goto :goto_3

    :cond_8
    if-eqz p0, :cond_9

    if-eqz v4, :cond_9

    if-nez p1, :cond_9

    new-instance p0, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;

    invoke-direct {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;-><init>()V

    goto :goto_3

    :cond_9
    if-eqz p0, :cond_a

    if-eqz v1, :cond_a

    if-nez p1, :cond_a

    new-instance p0, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxManager;

    invoke-direct {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxManager;-><init>()V

    goto :goto_3

    :cond_a
    if-eqz p0, :cond_b

    if-eqz v1, :cond_b

    if-eqz p1, :cond_b

    new-instance p0, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;

    invoke-direct {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;-><init>()V

    goto :goto_3

    :cond_b
    new-instance p0, Lcom/onyx/android/sdk/geometry/boxmanager/VBoxContinuousManager;

    invoke-direct {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/VBoxContinuousManager;-><init>()V

    :goto_3
    return-object p0
.end method

.method public scaleRange(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lorg/apache/commons/lang3/Range;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
            ")",
            "Lorg/apache/commons/lang3/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "workBundle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getCustomScaleRange()Lorg/apache/commons/lang3/Range;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getCustomScaleRange()Lorg/apache/commons/lang3/Range;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->isEnabledContinuousPage(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->getContinuousPageScaleRange()Lorg/apache/commons/lang3/Range;

    move-result-object p0

    const-string p1, "<get-continuousPageScaleRange>(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->getPageScaleRange()Lorg/apache/commons/lang3/Range;

    move-result-object p0

    const-string p1, "<get-pageScaleRange>(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public supportAutoScaleToViewport()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature$DefaultImpls;->supportAutoScaleToViewport(Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;)Z

    move-result p0

    return p0
.end method

.method public supportCoverPage()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature$DefaultImpls;->supportCoverPage(Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;)Z

    move-result p0

    return p0
.end method

.method public supportMultiPage()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature$DefaultImpls;->supportMultiPage(Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;)Z

    move-result p0

    return p0
.end method

.method public supportPageBackground()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature$DefaultImpls;->supportPageBackground(Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;)Z

    move-result p0

    return p0
.end method

.method public useFirstPageAsCoverPage()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature$DefaultImpls;->useFirstPageAsCoverPage(Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;)Z

    move-result p0

    return p0
.end method
