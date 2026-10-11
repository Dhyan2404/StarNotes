.class public interface abstract Lcom/onyx/android/sdk/reader/api/ReaderSearchManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/api/ReaderSearchManager$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0003H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u000e\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/api/ReaderSearchManager;",
        "",
        "searchInPage",
        "",
        "currentPage",
        "",
        "options",
        "Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;",
        "clear",
        "searchNext",
        "searchPrevious",
        "searchResults",
        "",
        "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
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
.method public abstract searchInPage(ILcom/onyx/android/sdk/reader/api/ReaderSearchOptions;Z)Z
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract searchNext(Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;)Z
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract searchPrevious(Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;)Z
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract searchResults()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
