.class public final Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader;->download(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader;

.field public final synthetic f:Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader;Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader$a;->e:Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader;

    iput-object p2, p0, Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader$a;->f:Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;)V
    .locals 3
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

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader$a;->e:Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader;

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader$a;->f:Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->getProgress()D

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader;->onDownloadProgress(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;D)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader$a;->a(Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;)V

    return-void
.end method
