.class public final Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadEventKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u001c\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "createDownloadStatusEvent",
        "Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadEvent;",
        "downloadArgs",
        "Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;",
        "status",
        "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;",
        "Lcom/liulishuo/okdownload/DownloadTask;",
        "note_overseasRelease"
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
.method public static final createDownloadStatusEvent(Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;)Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadEvent;
    .locals 3
    .param p0    # Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;",
            "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus<",
            "Lcom/liulishuo/okdownload/DownloadTask;",
            ">;)",
            "Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadEvent;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "downloadArgs"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadEvent;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadEvent;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadEvent;->setStatus(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->getProgress()D

    move-result-wide v1

    double-to-int p1, v1

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadEvent;->setProgress(I)V

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadEvent;->setDownloadArgs(Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;)V

    return-object v0
.end method
