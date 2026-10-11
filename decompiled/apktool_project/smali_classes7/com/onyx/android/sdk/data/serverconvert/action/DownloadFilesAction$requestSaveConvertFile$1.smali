.class public final Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction$requestSaveConvertFile$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction;->requestSaveConvertFile(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J$\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction$requestSaveConvertFile$1",
        "Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;",
        "onProgress",
        "",
        "progress",
        "",
        "total",
        "onResult",
        "isSuccess",
        "",
        "fileKey",
        "",
        "filePath",
        "sdk-data_release"
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
.field final synthetic $convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

.field final synthetic $endValue:I

.field final synthetic $startValue:I

.field final synthetic $subject:Lio/reactivex/rxjava3/subjects/ReplaySubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/ReplaySubject<",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction;


# direct methods
.method public constructor <init>(IILcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction;Lio/reactivex/rxjava3/subjects/ReplaySubject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            "Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction;",
            "Lio/reactivex/rxjava3/subjects/ReplaySubject<",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction$requestSaveConvertFile$1;->$endValue:I

    iput p2, p0, Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction$requestSaveConvertFile$1;->$startValue:I

    iput-object p3, p0, Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction$requestSaveConvertFile$1;->$convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    iput-object p4, p0, Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction$requestSaveConvertFile$1;->this$0:Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction;

    iput-object p5, p0, Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction$requestSaveConvertFile$1;->$subject:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(JJ)V
    .locals 3

    iget v0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction$requestSaveConvertFile$1;->$endValue:I

    iget v1, p0, Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction$requestSaveConvertFile$1;->$startValue:I

    sub-int/2addr v0, v1

    iget-object v2, p0, Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction$requestSaveConvertFile$1;->$convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    int-to-float v1, v1

    int-to-float v0, v0

    long-to-float p1, p1

    long-to-float p2, p3

    div-float/2addr p1, p2

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    float-to-int p1, v1

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setProgressValue(I)V

    iget-object p1, p0, Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction$requestSaveConvertFile$1;->this$0:Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction;

    iget-object p2, p0, Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction$requestSaveConvertFile$1;->$convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction;->getLocalConvertList()Ljava/util/List;

    move-result-object p3

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction$requestSaveConvertFile$1;->this$0:Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction;->getNetworkConvertList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p2, p3, p0}, Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;->handleProgress(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public onResult(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction$requestSaveConvertFile$1;->$convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    invoke-virtual {p1, p3}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setDownloadLocalPath(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction$requestSaveConvertFile$1;->$convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    sget-object p2, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_SUCCESS:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setStatus(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string p2, "convert  [download] end"

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction$requestSaveConvertFile$1;->$convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    sget-object p2, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_FAILED:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setStatus(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string p2, "convert  [download] failed!"

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction$requestSaveConvertFile$1;->$convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    const/16 p2, 0x5f

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setProgressValue(I)V

    iget-object p1, p0, Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction$requestSaveConvertFile$1;->this$0:Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction;

    iget-object p2, p0, Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction$requestSaveConvertFile$1;->$convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction;->getLocalConvertList()Ljava/util/List;

    move-result-object p3

    iget-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction$requestSaveConvertFile$1;->this$0:Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction;->getNetworkConvertList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;->handleProgress(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Ljava/util/List;Ljava/util/List;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction$requestSaveConvertFile$1;->$subject:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction$requestSaveConvertFile$1;->$convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V

    return-void
.end method
