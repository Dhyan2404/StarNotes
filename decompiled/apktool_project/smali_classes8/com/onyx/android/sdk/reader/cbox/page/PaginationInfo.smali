.class public final Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0013\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008+\u0010,R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R$\u0010\u0011\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\"\u0010\u001d\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\"\u0010\"\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008!\u0010\u001c\u001a\u0004\u0008\"\u0010\u001e\"\u0004\u0008#\u0010 R\"\u0010%\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010\u001c\u001a\u0004\u0008%\u0010\u001e\"\u0004\u0008&\u0010 R\"\u0010*\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\'\u0010\u001c\u001a\u0004\u0008(\u0010\u001e\"\u0004\u0008)\u0010 \u00a8\u0006-"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;",
        "",
        "",
        "a",
        "Ljava/lang/String;",
        "getChapterID",
        "()Ljava/lang/String;",
        "setChapterID",
        "(Ljava/lang/String;)V",
        "chapterID",
        "Lcom/onyx/engine/sdk/PageRange;",
        "b",
        "Lcom/onyx/engine/sdk/PageRange;",
        "getPageRange",
        "()Lcom/onyx/engine/sdk/PageRange;",
        "setPageRange",
        "(Lcom/onyx/engine/sdk/PageRange;)V",
        "pageRange",
        "",
        "c",
        "I",
        "getProgress",
        "()I",
        "setProgress",
        "(I)V",
        "progress",
        "",
        "d",
        "Z",
        "isPaginationComplete",
        "()Z",
        "setPaginationComplete",
        "(Z)V",
        "e",
        "isFirstChapter",
        "setFirstChapter",
        "f",
        "isLastChapter",
        "setLastChapter",
        "g",
        "getUpdateReaderPageInfo",
        "setUpdateReaderPageInfo",
        "updateReaderPageInfo",
        "<init>",
        "()V",
        "sdk-readercore_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Lcom/onyx/engine/sdk/PageRange;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:I

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getChapterID()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getPageRange()Lcom/onyx/engine/sdk/PageRange;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;->b:Lcom/onyx/engine/sdk/PageRange;

    return-object p0
.end method

.method public final getProgress()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;->c:I

    return p0
.end method

.method public final getUpdateReaderPageInfo()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;->g:Z

    return p0
.end method

.method public final isFirstChapter()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;->e:Z

    return p0
.end method

.method public final isLastChapter()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;->f:Z

    return p0
.end method

.method public final isPaginationComplete()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;->d:Z

    return p0
.end method

.method public final setChapterID(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public final setFirstChapter(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;->e:Z

    return-void
.end method

.method public final setLastChapter(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;->f:Z

    return-void
.end method

.method public final setPageRange(Lcom/onyx/engine/sdk/PageRange;)V
    .locals 0
    .param p1    # Lcom/onyx/engine/sdk/PageRange;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;->b:Lcom/onyx/engine/sdk/PageRange;

    return-void
.end method

.method public final setPaginationComplete(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;->d:Z

    return-void
.end method

.method public final setProgress(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;->c:I

    return-void
.end method

.method public final setUpdateReaderPageInfo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/PaginationInfo;->g:Z

    return-void
.end method
