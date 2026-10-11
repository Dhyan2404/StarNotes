.class public interface abstract Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0006\u001a\u00020\u0005H&J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0008H&J\u0008\u0010\t\u001a\u00020\nH&J\u0008\u0010\u000b\u001a\u00020\nH&J\u0008\u0010\u000c\u001a\u00020\nH&J\u0008\u0010\r\u001a\u00020\u0005H&J\n\u0010\u000e\u001a\u0004\u0018\u00010\u000fH&J\n\u0010\u0010\u001a\u0004\u0018\u00010\u0011H&J\u0012\u0010\u0012\u001a\u00020\u00032\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H&\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;",
        "",
        "abortChapterContentSearch",
        "",
        "contextLength",
        "",
        "fromPage",
        "fromPosition",
        "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "isCaseSensitive",
        "",
        "isExcludeStartPosition",
        "isMatchWholeWord",
        "limit",
        "pattern",
        "",
        "progressCallback",
        "Lcom/onyx/android/sdk/reader/api/ReaderSearchProgressCallback;",
        "setCurrentChapterAbortCall",
        "closeable",
        "Ljava/io/Closeable;",
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
.method public abstract abortChapterContentSearch()V
.end method

.method public abstract contextLength()I
.end method

.method public abstract fromPage()I
.end method

.method public abstract fromPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract isCaseSensitive()Z
.end method

.method public abstract isExcludeStartPosition()Z
.end method

.method public abstract isMatchWholeWord()Z
.end method

.method public abstract limit()I
.end method

.method public abstract pattern()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract progressCallback()Lcom/onyx/android/sdk/reader/api/ReaderSearchProgressCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract setCurrentChapterAbortCall(Ljava/io/Closeable;)V
    .param p1    # Ljava/io/Closeable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
