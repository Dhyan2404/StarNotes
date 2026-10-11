.class public final Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler$b;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;

.field public final synthetic f:Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler$b;->e:Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;

    iput-object p2, p0, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler$b;->f:Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus<",
            "Lcom/liulishuo/okdownload/DownloadTask;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler$b;->e:Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;

    invoke-static {v0, p1}, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadEventKt;->createDownloadStatusEvent(Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;)Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadEvent;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler$b;->f:Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->safelyPostEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler$b;->a(Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;)V

    return-void
.end method
