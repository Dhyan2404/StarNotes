.class Lcom/tencent/cos/xml/transfer/COSXMLTask$COSXMLMetrics;
.super Lcom/tencent/qcloud/core/http/HttpTaskMetrics;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/transfer/COSXMLTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "COSXMLMetrics"
.end annotation


# instance fields
.field requestName:Ljava/lang/String;

.field final synthetic this$0:Lcom/tencent/cos/xml/transfer/COSXMLTask;


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/transfer/COSXMLTask;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask$COSXMLMetrics;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLTask;

    invoke-direct {p0}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;-><init>()V

    iput-object p2, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask$COSXMLMetrics;->requestName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onDataReady()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->onDataReady()V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask$COSXMLMetrics;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLTask;

    iget-object v0, v0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->onGetHttpTaskMetrics:Lcom/tencent/cos/xml/transfer/COSXMLTask$OnGetHttpTaskMetrics;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask$COSXMLMetrics;->requestName:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/tencent/cos/xml/transfer/COSXMLTask$OnGetHttpTaskMetrics;->onGetHttpMetrics(Ljava/lang/String;Lcom/tencent/qcloud/core/http/HttpTaskMetrics;)V

    :cond_0
    return-void
.end method
