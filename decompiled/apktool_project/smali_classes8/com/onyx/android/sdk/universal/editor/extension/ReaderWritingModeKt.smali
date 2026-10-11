.class public final Lcom/onyx/android/sdk/universal/editor/extension/ReaderWritingModeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/extension/ReaderWritingModeKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "toAnnotationWritingMode",
        "Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;",
        "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
        "Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;",
        "sdk-universal_overseasRelease"
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
.method public static final toAnnotationWritingMode(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderSelection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {p0}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->writingMode()Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/ReaderWritingModeKt;->toAnnotationWritingMode(Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;)Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;

    move-result-object p0

    return-object p0
.end method

.method public static final toAnnotationWritingMode(Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;)Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/extension/ReaderWritingModeKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 2
    sget-object p0, Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;->VERTICAL_RL:Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 3
    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;->VERTICAL_LR:Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;

    goto :goto_0

    .line 4
    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;->HORIZONTAL:Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;

    goto :goto_0

    .line 5
    :cond_3
    sget-object p0, Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;->UNKNOWN:Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;

    :goto_0
    return-object p0
.end method
