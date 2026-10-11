.class Lcom/tencent/cos/xml/transfer/TaskStateMonitor$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/cos/xml/transfer/TaskStateMonitor;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/cos/xml/transfer/TaskStateMonitor;


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/transfer/TaskStateMonitor;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/TaskStateMonitor$1;->this$0:Lcom/tencent/cos/xml/transfer/TaskStateMonitor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/tencent/cos/xml/transfer/TaskStateMonitor$StructMsg;

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/TaskStateMonitor$1;->this$0:Lcom/tencent/cos/xml/transfer/TaskStateMonitor;

    iget-object v1, p1, Lcom/tencent/cos/xml/transfer/TaskStateMonitor$StructMsg;->cosxmlTask:Lcom/tencent/cos/xml/transfer/COSXMLTask;

    iget-object v2, p1, Lcom/tencent/cos/xml/transfer/TaskStateMonitor$StructMsg;->transferState:Lcom/tencent/cos/xml/transfer/TransferState;

    iget-object v3, p1, Lcom/tencent/cos/xml/transfer/TaskStateMonitor$StructMsg;->exception:Ljava/lang/Exception;

    iget-object v4, p1, Lcom/tencent/cos/xml/transfer/TaskStateMonitor$StructMsg;->result:Lcom/tencent/cos/xml/model/CosXmlResult;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/cos/xml/transfer/TaskStateMonitor;->stateTransform(Lcom/tencent/cos/xml/transfer/COSXMLTask;Lcom/tencent/cos/xml/transfer/TransferState;Ljava/lang/Exception;Lcom/tencent/cos/xml/model/CosXmlResult;Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/TaskStateMonitor$1;->this$0:Lcom/tencent/cos/xml/transfer/TaskStateMonitor;

    invoke-static {p0}, Lcom/tencent/cos/xml/transfer/TaskStateMonitor;->access$000(Lcom/tencent/cos/xml/transfer/TaskStateMonitor;)V

    goto :goto_0

    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/tencent/cos/xml/transfer/TaskStateMonitor$StructMsg;

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/TaskStateMonitor$1;->this$0:Lcom/tencent/cos/xml/transfer/TaskStateMonitor;

    iget-object v1, p1, Lcom/tencent/cos/xml/transfer/TaskStateMonitor$StructMsg;->cosxmlTask:Lcom/tencent/cos/xml/transfer/COSXMLTask;

    iget-object v2, p1, Lcom/tencent/cos/xml/transfer/TaskStateMonitor$StructMsg;->transferState:Lcom/tencent/cos/xml/transfer/TransferState;

    iget-object v3, p1, Lcom/tencent/cos/xml/transfer/TaskStateMonitor$StructMsg;->exception:Ljava/lang/Exception;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/cos/xml/transfer/TaskStateMonitor;->stateTransform(Lcom/tencent/cos/xml/transfer/COSXMLTask;Lcom/tencent/cos/xml/transfer/TransferState;Ljava/lang/Exception;Lcom/tencent/cos/xml/model/CosXmlResult;Z)V

    goto :goto_0

    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/tencent/cos/xml/transfer/TaskStateMonitor$StructMsg;

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/TaskStateMonitor$1;->this$0:Lcom/tencent/cos/xml/transfer/TaskStateMonitor;

    iget-object v1, p1, Lcom/tencent/cos/xml/transfer/TaskStateMonitor$StructMsg;->cosxmlTask:Lcom/tencent/cos/xml/transfer/COSXMLTask;

    iget-object v2, p1, Lcom/tencent/cos/xml/transfer/TaskStateMonitor$StructMsg;->transferState:Lcom/tencent/cos/xml/transfer/TransferState;

    iget-object v3, p1, Lcom/tencent/cos/xml/transfer/TaskStateMonitor$StructMsg;->exception:Ljava/lang/Exception;

    iget-object v4, p1, Lcom/tencent/cos/xml/transfer/TaskStateMonitor$StructMsg;->result:Lcom/tencent/cos/xml/model/CosXmlResult;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/cos/xml/transfer/TaskStateMonitor;->stateTransform(Lcom/tencent/cos/xml/transfer/COSXMLTask;Lcom/tencent/cos/xml/transfer/TransferState;Ljava/lang/Exception;Lcom/tencent/cos/xml/model/CosXmlResult;Z)V

    :goto_0
    return-void
.end method
