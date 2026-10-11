.class public interface abstract Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0012\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J\u001a\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0016\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000e2\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J\u0008\u0010\u000f\u001a\u00020\u0003H&J\u0010\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0016\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u000e2\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J\u0008\u0010\u0015\u001a\u00020\u000cH\u0017J\u0010\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J\u000e\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000eH\u0016J\u0010\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J)\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u000e2\u0006\u0010\u0006\u001a\u00020\u00032\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u001cH\u0016\u00a2\u0006\u0002\u0010\u001dJ\u0008\u0010\u001e\u001a\u00020\u0003H\u0016J\u0008\u0010\u001f\u001a\u00020\u0003H\u0016J\u0008\u0010 \u001a\u00020\u000cH\u0016J\u0008\u0010!\u001a\u00020\u000cH\u0016J\u0008\u0010\"\u001a\u00020#H\u0016J\u0010\u0010$\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J\u0010\u0010%\u001a\u00020&2\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J\u0010\u0010\'\u001a\u00020&2\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J\u0008\u0010(\u001a\u00020&H\u0016J\u0018\u0010)\u001a\u00020&2\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010*\u001a\u00020&H\u0016J\u0010\u0010+\u001a\u00020&2\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J\u0008\u0010,\u001a\u00020\u0003H\u0016J\u0010\u0010-\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J\u0010\u0010.\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J\u0010\u0010/\u001a\u00020\u00032\u0006\u00100\u001a\u00020\u000cH\u0016J\u0010\u00101\u001a\u00020\u00032\u0006\u00100\u001a\u00020\u000cH\u0016J\u001a\u00102\u001a\u00020\u00032\u0006\u00103\u001a\u00020\u00052\u0008\u0008\u0002\u00104\u001a\u00020&H\u0016J\u0010\u00105\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J\u0010\u00106\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J\u0008\u00107\u001a\u00020&H\u0016J\u0010\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020;H\u0016J\u0010\u00108\u001a\u0002092\u0006\u0010<\u001a\u00020=H\u0016\u00a8\u0006>"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/api/ReaderNavigator;",
        "",
        "firstPage",
        "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "getChapterId",
        "",
        "position",
        "getChapterName",
        "getChapterStartPosition",
        "getImagePage",
        "Lcom/onyx/android/sdk/reader/api/ReaderImage;",
        "column",
        "",
        "getImages",
        "",
        "getInitPosition",
        "getLinkTarget",
        "link",
        "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
        "getLinkTargetSelection",
        "getLinks",
        "getPageIndexInCurrentChapter",
        "getPageLabel",
        "getPageLabelList",
        "getPageNumberByPosition",
        "getRichMedias",
        "Lcom/onyx/android/sdk/reader/api/ReaderRichMedia;",
        "ignoreObjIdList",
        "",
        "(Lcom/onyx/android/sdk/reader/api/ReaderPosition;[Ljava/lang/String;)Ljava/util/List;",
        "getScreenEndPosition",
        "getScreenStartPosition",
        "getTotalPage",
        "getTotalPageCountInCurrentChapter",
        "getTotalReadingProgress",
        "",
        "getXPathByPosition",
        "gotoPosition",
        "",
        "hitPageCache",
        "isFirstPage",
        "isImagePage",
        "isLastPage",
        "isValidPosition",
        "lastPage",
        "nextPage",
        "nextScreen",
        "positionByPageIndex",
        "pageIndex",
        "positionByPositionInt",
        "positionByPositionString",
        "positionString",
        "useJsonPageIndexIfValid",
        "prevPage",
        "prevScreen",
        "supportPageId",
        "updateTocPageIndex",
        "",
        "toc",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;",
        "entry",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;",
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
.method public abstract firstPage()Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getChapterId(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getChapterName(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getChapterStartPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getImagePage(Lcom/onyx/android/sdk/reader/api/ReaderPosition;I)Lcom/onyx/android/sdk/reader/api/ReaderImage;
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getImages(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/util/List;
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderImage;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getInitPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getLinkTarget(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)Ljava/lang/String;
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderSelection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getLinkTargetSelection(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderSelection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getLinks(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/util/List;
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPageIndexInCurrentChapter()I
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation
.end method

.method public abstract getPageLabel(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPageLabelList()Ljava/util/List;
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

.method public abstract getPageNumberByPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract getRichMedias(Lcom/onyx/android/sdk/reader/api/ReaderPosition;[Ljava/lang/String;)Ljava/util/List;
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderRichMedia;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getScreenEndPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getScreenStartPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getTotalPage()I
.end method

.method public abstract getTotalPageCountInCurrentChapter()I
.end method

.method public abstract getTotalReadingProgress()F
.end method

.method public abstract getXPathByPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract gotoPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onyx/android/sdk/reader/api/ReaderException;
        }
    .end annotation
.end method

.method public abstract hitPageCache(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract isFirstPage()Z
.end method

.method public abstract isImagePage(Lcom/onyx/android/sdk/reader/api/ReaderPosition;I)Z
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract isLastPage()Z
.end method

.method public abstract isValidPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract lastPage()Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract nextPage(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onyx/android/sdk/reader/api/ReaderException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract nextScreen(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onyx/android/sdk/reader/api/ReaderException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract positionByPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract positionByPositionInt(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract positionByPositionString(Ljava/lang/String;Z)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract prevPage(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onyx/android/sdk/reader/api/ReaderException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract prevScreen(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onyx/android/sdk/reader/api/ReaderException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract supportPageId()Z
.end method

.method public abstract updateTocPageIndex(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)V
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract updateTocPageIndex(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;)V
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
