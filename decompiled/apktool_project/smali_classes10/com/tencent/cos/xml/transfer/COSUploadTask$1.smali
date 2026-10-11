.class Lcom/tencent/cos/xml/transfer/COSUploadTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/cos/xml/listener/CosXmlProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/cos/xml/transfer/COSUploadTask;->checking()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/cos/xml/transfer/COSUploadTask;


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/transfer/COSUploadTask;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$1;->this$0:Lcom/tencent/cos/xml/transfer/COSUploadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(JJ)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$1;->this$0:Lcom/tencent/cos/xml/transfer/COSUploadTask;

    invoke-static {p0}, Lcom/tencent/cos/xml/transfer/COSUploadTask;->access$100(Lcom/tencent/cos/xml/transfer/COSUploadTask;)J

    move-result-wide p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->onTransferProgressChange(JJ)V

    return-void
.end method
