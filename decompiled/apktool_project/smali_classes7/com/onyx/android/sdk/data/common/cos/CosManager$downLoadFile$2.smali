.class public final Lcom/onyx/android/sdk/data/common/cos/CosManager$downLoadFile$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/cos/xml/listener/CosXmlResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/data/common/cos/CosManager;->downLoadFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J&\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J\u001c\u0010\n\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/onyx/android/sdk/data/common/cos/CosManager$downLoadFile$2",
        "Lcom/tencent/cos/xml/listener/CosXmlResultListener;",
        "onFail",
        "",
        "request",
        "Lcom/tencent/cos/xml/model/CosXmlRequest;",
        "clientException",
        "Lcom/tencent/cos/xml/exception/CosXmlClientException;",
        "serviceException",
        "Lcom/tencent/cos/xml/exception/CosXmlServiceException;",
        "onSuccess",
        "result",
        "Lcom/tencent/cos/xml/model/CosXmlResult;",
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
.field final synthetic $downloadKey:Ljava/lang/String;

.field final synthetic $downloadTask:Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;

.field final synthetic $listener:Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;

.field final synthetic $saveDirPath:Ljava/lang/String;

.field final synthetic $saveName:Ljava/lang/String;

.field final synthetic this$0:Lcom/onyx/android/sdk/data/common/cos/CosManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;Ljava/lang/String;Lcom/onyx/android/sdk/data/common/cos/CosManager;Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/cos/CosManager$downLoadFile$2;->$saveDirPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/onyx/android/sdk/data/common/cos/CosManager$downLoadFile$2;->$saveName:Ljava/lang/String;

    iput-object p3, p0, Lcom/onyx/android/sdk/data/common/cos/CosManager$downLoadFile$2;->$listener:Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;

    iput-object p4, p0, Lcom/onyx/android/sdk/data/common/cos/CosManager$downLoadFile$2;->$downloadKey:Ljava/lang/String;

    iput-object p5, p0, Lcom/onyx/android/sdk/data/common/cos/CosManager$downLoadFile$2;->this$0:Lcom/onyx/android/sdk/data/common/cos/CosManager;

    iput-object p6, p0, Lcom/onyx/android/sdk/data/common/cos/CosManager$downLoadFile$2;->$downloadTask:Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V
    .locals 6
    .param p1    # Lcom/tencent/cos/xml/model/CosXmlRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/tencent/cos/xml/exception/CosXmlClientException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/onyx/android/sdk/data/common/cos/CosManager$downLoadFile$2;->$listener:Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener$DefaultImpls;->onResult$default(Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/data/common/cos/CosManager$downLoadFile$2;->this$0:Lcom/onyx/android/sdk/data/common/cos/CosManager;

    invoke-static {p1}, Lcom/onyx/android/sdk/data/common/cos/CosManager;->access$getRunningTaskQueue$p(Lcom/onyx/android/sdk/data/common/cos/CosManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/cos/CosManager$downLoadFile$2;->$downloadTask:Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onSuccess(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)V
    .locals 2
    .param p1    # Lcom/tencent/cos/xml/model/CosXmlRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/tencent/cos/xml/model/CosXmlResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object p1, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    iget-object p2, p0, Lcom/onyx/android/sdk/data/common/cos/CosManager$downLoadFile$2;->$saveDirPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/extension/Paths;->toPath(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p2

    iget-object v0, p0, Lcom/onyx/android/sdk/data/common/cos/CosManager$downLoadFile$2;->$saveName:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/onyx/android/sdk/base/extension/Paths;->append(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/onyx/android/sdk/data/common/cos/CosManager$downLoadFile$2;->$listener:Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/onyx/android/sdk/data/common/cos/CosManager$downLoadFile$2;->$downloadKey:Ljava/lang/String;

    invoke-interface {p2, v0, v1, p1}, Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;->onResult(ZLjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/data/common/cos/CosManager$downLoadFile$2;->this$0:Lcom/onyx/android/sdk/data/common/cos/CosManager;

    invoke-static {p1}, Lcom/onyx/android/sdk/data/common/cos/CosManager;->access$getRunningTaskQueue$p(Lcom/onyx/android/sdk/data/common/cos/CosManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/cos/CosManager$downLoadFile$2;->$downloadTask:Lcom/tencent/cos/xml/transfer/COSXMLDownloadTask;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    return-void
.end method
