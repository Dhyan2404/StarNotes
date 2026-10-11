.class public Lcom/alibaba/sdk/android/oss/internal/ResponseMessage;
.super Lcom/sunia/HTREnginev2/i0i;
.source "SourceFile"


# instance fields
.field public e:Lokhttp3/Response;

.field public f:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/i0i;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sunia/HTREnginev2/i0i;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lcom/sunia/HTREnginev2/i0i;->close()V

    return-void
.end method

.method public bridge synthetic getContent()Ljava/io/InputStream;
    .locals 0

    invoke-super {p0}, Lcom/sunia/HTREnginev2/i0i;->getContent()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getContentLength()J
    .locals 2

    invoke-super {p0}, Lcom/sunia/HTREnginev2/i0i;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getHeaders()Ljava/util/Map;
    .locals 0

    invoke-super {p0}, Lcom/sunia/HTREnginev2/i0i;->getHeaders()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getRequest()Lcom/alibaba/sdk/android/oss/internal/RequestMessage;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/internal/ResponseMessage;->f:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    return-object p0
.end method

.method public getResponse()Lokhttp3/Response;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/internal/ResponseMessage;->e:Lokhttp3/Response;

    return-object p0
.end method

.method public getStatusCode()I
    .locals 0

    iget p0, p0, Lcom/alibaba/sdk/android/oss/internal/ResponseMessage;->g:I

    return p0
.end method

.method public bridge synthetic getStringBody()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/sunia/HTREnginev2/i0i;->getStringBody()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setContent(Ljava/io/InputStream;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sunia/HTREnginev2/i0i;->setContent(Ljava/io/InputStream;)V

    return-void
.end method

.method public bridge synthetic setContentLength(J)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sunia/HTREnginev2/i0i;->setContentLength(J)V

    return-void
.end method

.method public bridge synthetic setHeaders(Ljava/util/Map;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sunia/HTREnginev2/i0i;->setHeaders(Ljava/util/Map;)V

    return-void
.end method

.method public setRequest(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/ResponseMessage;->f:Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    return-void
.end method

.method public setResponse(Lokhttp3/Response;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/ResponseMessage;->e:Lokhttp3/Response;

    return-void
.end method

.method public setStatusCode(I)V
    .locals 0

    iput p1, p0, Lcom/alibaba/sdk/android/oss/internal/ResponseMessage;->g:I

    return-void
.end method

.method public bridge synthetic setStringBody(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sunia/HTREnginev2/i0i;->setStringBody(Ljava/lang/String;)V

    return-void
.end method
