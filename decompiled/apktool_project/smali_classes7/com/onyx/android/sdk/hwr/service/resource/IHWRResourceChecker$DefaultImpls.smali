.class public final Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker;
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
.method public static checkExtendResource(Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "input"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static checkGestureResource(Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "input"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static checkResource(Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "input"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static checkShapeResource(Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "input"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static checkTextResource(Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "input"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static isDefaultResourceInstalled(Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public static isResourceDownloaded(Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker;Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "resource"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static isResourceDownloading(Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker;Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "resource"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
