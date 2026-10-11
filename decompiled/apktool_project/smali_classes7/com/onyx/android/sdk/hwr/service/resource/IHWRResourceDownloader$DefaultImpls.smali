.class public final Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceDownloader$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIHWRResourceDownloader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IHWRResourceDownloader.kt\ncom/onyx/android/sdk/hwr/service/resource/IHWRResourceDownloader$DefaultImpls\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,25:1\n1#2:26\n*E\n"
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nIHWRResourceDownloader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IHWRResourceDownloader.kt\ncom/onyx/android/sdk/hwr/service/resource/IHWRResourceDownloader$DefaultImpls\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,25:1\n1#2:26\n*E\n"
    }
.end annotation


# direct methods
.method public static delete(Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceDownloader;Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceDownloader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "resource"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static installDefaultResource(Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceDownloader;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceDownloader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static onDownloadError(Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceDownloader;Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;Ljava/lang/Throwable;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceDownloader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "resource"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "e"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onDownloadProgress(Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceDownloader;Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;D)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceDownloader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "resource"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onDownloadSuccess(Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceDownloader;Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceDownloader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "resource"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static publishEvent(Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceDownloader;Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceDownloader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "event"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "resource"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static setEventPublisher(Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceDownloader;Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;)Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceDownloader;
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceDownloader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "eventBusHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
