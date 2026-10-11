.class public final Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler;->d(Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;

.field public final synthetic f:Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;

.field public final synthetic g:Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler$c;->e:Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;

    iput-object p2, p0, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler$c;->f:Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;

    iput-object p3, p0, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler$c;->g:Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;->INSTANCE:Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler$c;->e:Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->getTask()Lcom/liulishuo/okdownload/DownloadTask;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;->existTask(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler$c;->e:Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->getTask()Lcom/liulishuo/okdownload/DownloadTask;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;->removeTask(Ljava/lang/Object;)V

    new-instance p1, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    invoke-direct {p1}, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;-><init>()V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->setStatus(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler$c;->f:Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;

    invoke-static {v0, p1}, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadEventKt;->createDownloadStatusEvent(Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;)Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadEvent;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler$c;->g:Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->safelyPostEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler$c;->a(Ljava/lang/Throwable;)V

    return-void
.end method
