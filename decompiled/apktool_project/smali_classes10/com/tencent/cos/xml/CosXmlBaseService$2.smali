.class Lcom/tencent/cos/xml/CosXmlBaseService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qcloud/core/task/QCloudTask$OnRequestWeightListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/cos/xml/CosXmlBaseService;->setProgressListener(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/qcloud/core/http/HttpTask;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/cos/xml/CosXmlBaseService;

.field final synthetic val$cosXmlRequest:Lcom/tencent/cos/xml/model/CosXmlRequest;


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/CosXmlBaseService;Lcom/tencent/cos/xml/model/CosXmlRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/CosXmlBaseService$2;->this$0:Lcom/tencent/cos/xml/CosXmlBaseService;

    iput-object p2, p0, Lcom/tencent/cos/xml/CosXmlBaseService$2;->val$cosXmlRequest:Lcom/tencent/cos/xml/model/CosXmlRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWeight()I
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlBaseService$2;->val$cosXmlRequest:Lcom/tencent/cos/xml/model/CosXmlRequest;

    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getWeight()I

    move-result p0

    return p0
.end method
