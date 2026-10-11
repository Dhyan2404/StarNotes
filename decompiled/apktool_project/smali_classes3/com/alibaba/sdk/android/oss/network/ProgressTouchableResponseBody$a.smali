.class public Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$a;
.super Lokio/ForwardingSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;->M(Lokio/Source;)Lokio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public f:J

.field public final synthetic g:Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;Lokio/Source;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$a;->g:Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;

    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$a;->f:J

    return-void
.end method


# virtual methods
.method public read(Lokio/Buffer;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$a;->f:J

    const-wide/16 v2, -0x1

    cmp-long p3, p1, v2

    const-wide/16 v2, 0x0

    if-eqz p3, :cond_0

    move-wide v4, p1

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$a;->f:J

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$a;->g:Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;->w(Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;)Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$a;->f:J

    cmp-long p3, v0, v2

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$a;->g:Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;

    invoke-static {p3}, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;->w(Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;)Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    move-result-object v0

    iget-object p3, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$a;->g:Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;

    invoke-static {p3}, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;->H(Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;)Lcom/alibaba/sdk/android/oss/model/OSSRequest;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$a;->f:J

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody$a;->g:Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;

    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;->I(Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;)Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;->onProgress(Ljava/lang/Object;JJ)V

    :cond_1
    return-wide p1
.end method
