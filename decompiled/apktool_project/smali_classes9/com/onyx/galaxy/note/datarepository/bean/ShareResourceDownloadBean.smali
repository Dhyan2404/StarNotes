.class public final Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;",
        "",
        "attachmentBean",
        "Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;",
        "progressInfo",
        "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
        "(Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V",
        "getAttachmentBean",
        "()Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;",
        "getProgressInfo",
        "()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
        "setProgressInfo",
        "(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V",
        "isDownloadFailed",
        "",
        "isDownloadFinished",
        "note_overseasRelease"
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
.field private final attachmentBean:Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private progressInfo:Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "attachmentBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;->attachmentBean:Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;

    iput-object p2, p0, Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;->progressInfo:Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;-><init>(Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V

    return-void
.end method


# virtual methods
.method public final getAttachmentBean()Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;->attachmentBean:Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;

    return-object p0
.end method

.method public final getProgressInfo()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;->progressInfo:Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    return-object p0
.end method

.method public final isDownloadFailed()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;->progressInfo:Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isDownloadFinished()Z
    .locals 2

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;->progressInfo:Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->isComplete()Z

    move-result p0

    if-ne p0, v0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    return v0
.end method

.method public final setProgressInfo(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;->progressInfo:Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    return-void
.end method
