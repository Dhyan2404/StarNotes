.class public abstract Lcom/onyx/android/sdk/hwr/service/manager/HWRBaseResourceDownloader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceDownloader;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0007\u0008&\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0010\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0018\u0010\r\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u000bH\u0016J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0018\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000fH\u0016R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/service/manager/HWRBaseResourceDownloader;",
        "Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceDownloader;",
        "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;",
        "eventBusHolder",
        "setEventPublisher",
        "Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;",
        "event",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;",
        "resource",
        "",
        "publishEvent",
        "",
        "e",
        "onDownloadError",
        "onDownloadSuccess",
        "",
        "progress",
        "onDownloadProgress",
        "a",
        "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;",
        "<init>",
        "()V",
        "sdk-hwr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;-><init>(Lorg/greenrobot/eventbus/EventBus;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/service/manager/HWRBaseResourceDownloader;->a:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    return-void
.end method


# virtual methods
.method public delete(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceDownloader$DefaultImpls;->delete(Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceDownloader;Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V

    return-void
.end method

.method public installDefaultResource()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceDownloader$DefaultImpls;->installDefaultResource(Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceDownloader;)V

    return-void
.end method

.method public onDownloadError(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "resource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->setStatus(I)V

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->setE(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/hwr/service/manager/HWRBaseResourceDownloader;->publishEvent(Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V

    return-void
.end method

.method public onDownloadProgress(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;D)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "resource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->setUrl(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->setStatus(I)V

    double-to-int p2, p2

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->setProgress(I)V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->setResource(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/hwr/service/manager/HWRBaseResourceDownloader;->publishEvent(Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V

    return-void
.end method

.method public onDownloadSuccess(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "resource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->setStatus(I)V

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/hwr/service/manager/HWRBaseResourceDownloader;->publishEvent(Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V

    return-void
.end method

.method public publishEvent(Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->setResource(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/service/manager/HWRBaseResourceDownloader;->a:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setEventPublisher(Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;)Lcom/onyx/android/sdk/hwr/service/manager/HWRBaseResourceDownloader;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "eventBusHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/service/manager/HWRBaseResourceDownloader;->a:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    return-object p0
.end method

.method public bridge synthetic setEventPublisher(Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;)Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceDownloader;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/service/manager/HWRBaseResourceDownloader;->setEventPublisher(Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;)Lcom/onyx/android/sdk/hwr/service/manager/HWRBaseResourceDownloader;

    move-result-object p0

    return-object p0
.end method
