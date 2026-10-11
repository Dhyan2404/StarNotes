.class public interface abstract Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceDownloader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceDownloader$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00072\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0008\u001a\u00020\u0003H\u0016J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0018\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0015H\u0016\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceDownloader;",
        "",
        "delete",
        "",
        "resource",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;",
        "download",
        "Lio/reactivex/rxjava3/core/Observable;",
        "installDefaultResource",
        "onDownloadError",
        "e",
        "",
        "onDownloadProgress",
        "progress",
        "",
        "onDownloadSuccess",
        "publishEvent",
        "event",
        "Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;",
        "setEventPublisher",
        "eventBusHolder",
        "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;",
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


# virtual methods
.method public abstract delete(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract download(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)Lio/reactivex/rxjava3/core/Observable;
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract installDefaultResource()V
.end method

.method public abstract onDownloadError(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;Ljava/lang/Throwable;)V
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onDownloadProgress(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;D)V
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onDownloadSuccess(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract publishEvent(Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V
    .param p1    # Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setEventPublisher(Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;)Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceDownloader;
    .param p1    # Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
