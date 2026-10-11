.class Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->listObjectUploadIds()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/tencent/cos/xml/model/tag/ListMultipartUploads$Upload;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask$3;->this$0:Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/tencent/cos/xml/model/tag/ListMultipartUploads$Upload;Lcom/tencent/cos/xml/model/tag/ListMultipartUploads$Upload;)I
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask$3;->this$0:Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;

    iget-object p1, p1, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads$Upload;->initiated:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->access$400(Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 3
    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask$3;->this$0:Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;

    iget-object p2, p2, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads$Upload;->initiated:Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;->access$400(Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-gez p2, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads$Upload;

    check-cast p2, Lcom/tencent/cos/xml/model/tag/ListMultipartUploads$Upload;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/cos/xml/transfer/COSUploadTask$MultipartUploadTask$3;->compare(Lcom/tencent/cos/xml/model/tag/ListMultipartUploads$Upload;Lcom/tencent/cos/xml/model/tag/ListMultipartUploads$Upload;)I

    move-result p0

    return p0
.end method
