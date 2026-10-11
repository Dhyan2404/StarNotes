.class public final Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptArgsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "toUpdateTextExcerptArgs",
        "Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;",
        "Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;",
        "sdk-note_overseasRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final toUpdateTextExcerptArgs(Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;)Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;
    .locals 2
    .param p0    # Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->getQuote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;->setQuote(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->getDisplayRectFList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;->setDisplayRectFList(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->getStartPosition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;->setStartPosition(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->getEndPosition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;->setEndPosition(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->getWritingMode()Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;->setWritingMode(Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;->setVirtualPageBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    return-object v0
.end method
