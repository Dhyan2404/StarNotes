.class public interface abstract Lcom/onyx/android/sdk/reader/api/ReaderPagination;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/api/ReaderPagination$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008f\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0016J\u0008\u0010\u0005\u001a\u00020\u0006H&J\u0008\u0010\u0007\u001a\u00020\u0006H&J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0004H&J\u0008\u0010\u000b\u001a\u00020\u000cH\'J\u0012\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H&J\u0008\u0010\u0011\u001a\u00020\u000eH&J\u0008\u0010\u0012\u001a\u00020\u000eH&J\u0008\u0010\u0013\u001a\u00020\u000eH&J\u0008\u0010\u0014\u001a\u00020\u000eH&J\u0008\u0010\u0015\u001a\u00020\u0006H\u0016J\u0008\u0010\u0016\u001a\u00020\u0006H&J\u0008\u0010\u0017\u001a\u00020\u000eH\u0016J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0010\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u000eH&J\u0010\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u0004H\u0016\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/api/ReaderPagination;",
        "",
        "chapterList",
        "",
        "",
        "clearPaginationCache",
        "",
        "closePagination",
        "getInitPaginationPosition",
        "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "chapterID",
        "getPaginationProgress",
        "",
        "hasPaginationNext",
        "",
        "info",
        "Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;",
        "isAbortPagination",
        "isAllPaginationComplete",
        "isCurrentChapterPaginationComplete",
        "isNeedClearPaginationCache",
        "layoutPageForSimpleDocument",
        "onPaginationFinally",
        "onPaginationStart",
        "paginationNext",
        "setAbortPagination",
        "abort",
        "updateReaderPageInfo",
        "chapterId",
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
.method public abstract chapterList()Ljava/util/List;
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
.end method

.method public abstract clearPaginationCache()V
.end method

.method public abstract closePagination()V
.end method

.method public abstract getInitPaginationPosition(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPaginationProgress()F
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation
.end method

.method public abstract hasPaginationNext(Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;)Z
    .param p1    # Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract isAbortPagination()Z
.end method

.method public abstract isAllPaginationComplete()Z
.end method

.method public abstract isCurrentChapterPaginationComplete()Z
.end method

.method public abstract isNeedClearPaginationCache()Z
.end method

.method public abstract layoutPageForSimpleDocument()V
.end method

.method public abstract onPaginationFinally()V
.end method

.method public abstract onPaginationStart()Z
.end method

.method public abstract paginationNext(Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;)Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;
    .param p1    # Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract setAbortPagination(Z)V
.end method

.method public abstract updateReaderPageInfo(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
