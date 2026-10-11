.class public final Lcom/onyx/android/sdk/universal/editor/helper/ReaderSearch$createReaderSearchOptions$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/helper/ReaderSearch;->createReaderSearchOptions(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Ljava/lang/String;)Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000;\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\nH\u0016J\u0008\u0010\u000c\u001a\u00020\nH\u0016J\u0008\u0010\r\u001a\u00020\u0005H\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\n\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0012\u0010\u0012\u001a\u00020\u00032\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016\u00a8\u0006\u0015"
    }
    d2 = {
        "com/onyx/android/sdk/universal/editor/helper/ReaderSearch$createReaderSearchOptions$1",
        "Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;",
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


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/onyx/android/sdk/reader/api/ReaderPosition;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/ReaderSearch$createReaderSearchOptions$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/helper/ReaderSearch$createReaderSearchOptions$1;->b:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abortChapterContentSearch()V
    .locals 0

    return-void
.end method

.method public contextLength()I
    .locals 0

    const/16 p0, 0x64

    return p0
.end method

.method public fromPage()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/ReaderSearch$createReaderSearchOptions$1;->b:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    invoke-interface {p0}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->getPageIndex()I

    move-result p0

    return p0
.end method

.method public fromPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/ReaderSearch$createReaderSearchOptions$1;->b:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    return-object p0
.end method

.method public isCaseSensitive()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isExcludeStartPosition()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMatchWholeWord()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public limit()I
    .locals 0

    const/16 p0, 0xa

    return p0
.end method

.method public pattern()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/ReaderSearch$createReaderSearchOptions$1;->a:Ljava/lang/String;

    return-object p0
.end method

.method public progressCallback()Lcom/onyx/android/sdk/reader/api/ReaderSearchProgressCallback;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public setCurrentChapterAbortCall(Ljava/io/Closeable;)V
    .locals 0
    .param p1    # Ljava/io/Closeable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method
