.class public final Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;->u(Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;Lkotlin/Pair;)Lio/reactivex/rxjava3/disposables/Disposable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;

.field public final synthetic f:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;Lkotlin/Pair;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction$j;->e:Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction$j;->f:Lkotlin/Pair;

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

    iget-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction$j;->e:Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction$j;->f:Lkotlin/Pair;

    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;->access$setFileSyncStatus(Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction$j;->a(Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;)V

    return-void
.end method
