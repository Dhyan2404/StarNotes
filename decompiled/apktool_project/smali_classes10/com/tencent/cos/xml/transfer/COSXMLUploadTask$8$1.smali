.class Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8;->onSuccess(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8;

.field final synthetic val$result:Lcom/tencent/cos/xml/model/CosXmlResult;


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8;Lcom/tencent/cos/xml/model/CosXmlResult;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8$1;->this$1:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8;

    iput-object p2, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8$1;->val$result:Lcom/tencent/cos/xml/model/CosXmlResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8$1;->this$1:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8;

    iget-object v1, v1, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;

    invoke-static {v1}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->access$1500(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8$1;->this$1:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8;

    iget-object v1, v1, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8$1;->val$result:Lcom/tencent/cos/xml/model/CosXmlResult;

    check-cast v2, Lcom/tencent/cos/xml/model/object/ListPartsResult;

    iget-object v2, v2, Lcom/tencent/cos/xml/model/object/ListPartsResult;->listParts:Lcom/tencent/cos/xml/model/tag/ListParts;

    invoke-static {v1, v2, v0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->access$1600(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;Lcom/tencent/cos/xml/model/tag/ListParts;Ljava/io/InputStream;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-static {v0}, Lcom/tencent/cos/xml/utils/CloseUtil;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_1
    .catch Lcom/tencent/cos/xml/exception/CosXmlClientException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_0

    :try_start_3
    invoke-static {v0}, Lcom/tencent/cos/xml/utils/CloseUtil;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_3
    .catch Lcom/tencent/cos/xml/exception/CosXmlClientException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8$1;->this$1:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8;

    iget-object v0, v0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8$1;->val$result:Lcom/tencent/cos/xml/model/CosXmlResult;

    check-cast v1, Lcom/tencent/cos/xml/model/object/ListPartsResult;

    invoke-static {v0, v1}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->access$1400(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;Lcom/tencent/cos/xml/model/object/ListPartsResult;)V

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8$1;->this$1:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;

    invoke-static {p0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->access$800(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$MultiUploadsStateListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$MultiUploadsStateListener;->onListParts()V

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8$1;->this$1:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;

    invoke-static {p0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->access$1700(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)V

    :goto_2
    return-void

    :goto_3
    if-eqz v0, :cond_3

    :try_start_4
    invoke-static {v0}, Lcom/tencent/cos/xml/utils/CloseUtil;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_4
    .catch Lcom/tencent/cos/xml/exception/CosXmlClientException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_4
    throw p0
.end method
