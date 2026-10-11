.class abstract Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/transfer/COSUploadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseUploadTask"
.end annotation


# instance fields
.field protected cosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

.field protected mTransferMetrics:Lcom/tencent/cos/xml/transfer/TransferTaskMetrics;

.field protected mTransferTaskCts:Lbolts/CancellationTokenSource;

.field protected putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

.field protected taskId:Ljava/lang/String;

.field protected tcs:Lbolts/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbolts/TaskCompletionSource<",
            "Lcom/tencent/cos/xml/model/CosXmlResult;",
            ">;"
        }
    .end annotation
.end field

.field protected totalUploadSize:J


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/crypto/COSDirect;Lcom/tencent/cos/xml/model/object/PutObjectRequest;Lbolts/CancellationTokenSource;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->cosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    iput-object p2, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->putObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    new-instance p1, Lbolts/TaskCompletionSource;

    invoke-direct {p1}, Lbolts/TaskCompletionSource;-><init>()V

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->tcs:Lbolts/TaskCompletionSource;

    iput-object p3, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->mTransferTaskCts:Lbolts/CancellationTokenSource;

    iput-wide p4, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->totalUploadSize:J

    return-void
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract cancel(Z)V
.end method

.method public getTask()Lbolts/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task<",
            "Lcom/tencent/cos/xml/model/CosXmlResult;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {p0}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public setTaskId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$BaseUploadTask;->taskId:Ljava/lang/String;

    return-void
.end method

.method public abstract upload(Lcom/tencent/cos/xml/model/object/PutObjectRequest;)Lcom/tencent/cos/xml/model/CosXmlResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
