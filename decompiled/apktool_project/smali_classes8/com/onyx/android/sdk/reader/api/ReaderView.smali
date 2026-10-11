.class public interface abstract Lcom/onyx/android/sdk/reader/api/ReaderView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/api/ReaderView$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\n\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0007H&J\u0008\u0010\u0008\u001a\u00020\tH&J\u0008\u0010\n\u001a\u00020\u000bH&J\n\u0010\u000c\u001a\u0004\u0018\u00010\rH&J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0014H&\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/api/ReaderView;",
        "",
        "getNavigator",
        "Lcom/onyx/android/sdk/reader/api/ReaderNavigator;",
        "getPagination",
        "Lcom/onyx/android/sdk/reader/api/ReaderPagination;",
        "getReaderHitTestManager",
        "Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;",
        "getRenderer",
        "Lcom/onyx/android/sdk/reader/api/ReaderRenderer;",
        "getSearchManager",
        "Lcom/onyx/android/sdk/reader/api/ReaderSearchManager;",
        "getTextStyleManager",
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;",
        "setupDisplayMetrics",
        "",
        "displayMetrics",
        "Lcom/onyx/engine/sdk/DisplayMetrics;",
        "updateViewSize",
        "size",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "sdk-readercore_overseasRelease"
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
.method public abstract getNavigator()Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPagination()Lcom/onyx/android/sdk/reader/api/ReaderPagination;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getReaderHitTestManager()Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getRenderer()Lcom/onyx/android/sdk/reader/api/ReaderRenderer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getSearchManager()Lcom/onyx/android/sdk/reader/api/ReaderSearchManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getTextStyleManager()Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract setupDisplayMetrics(Lcom/onyx/engine/sdk/DisplayMetrics;)V
    .param p1    # Lcom/onyx/engine/sdk/DisplayMetrics;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract updateViewSize(Lcom/onyx/android/sdk/base/data/Size;)V
    .param p1    # Lcom/onyx/android/sdk/base/data/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
