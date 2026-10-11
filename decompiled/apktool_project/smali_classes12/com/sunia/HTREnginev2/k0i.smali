.class public Lcom/sunia/HTREnginev2/k0i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/client/methods/CloseableHttpResponse;


# instance fields
.field public final e:Lorg/apache/http/HttpResponse;

.field public final f:Lcom/sunia/HTREnginev2/n9e;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpResponse;Lcom/sunia/HTREnginev2/n9e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/k0i;->e:Lorg/apache/http/HttpResponse;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/k0i;->f:Lcom/sunia/HTREnginev2/n9e;

    invoke-static {p1, p2}, Lcom/sunia/HTREnginev2/bml;->b(Lorg/apache/http/HttpResponse;Lcom/sunia/HTREnginev2/n9e;)V

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sunia/HTREnginev2/k0i;->e:Lorg/apache/http/HttpResponse;

    invoke-interface {p0, p1, p2}, Lorg/apache/http/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addHeader(Lorg/apache/http/Header;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sunia/HTREnginev2/k0i;->e:Lorg/apache/http/HttpResponse;

    invoke-interface {p0, p1}, Lorg/apache/http/HttpMessage;->addHeader(Lorg/apache/http/Header;)V

    return-void
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k0i;->f:Lcom/sunia/HTREnginev2/n9e;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/n9e;->close()V

    :cond_0
    return-void
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k0i;->e:Lorg/apache/http/HttpResponse;

    invoke-interface {p0, p1}, Lorg/apache/http/HttpMessage;->containsHeader(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getAllHeaders()[Lorg/apache/http/Header;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k0i;->e:Lorg/apache/http/HttpResponse;

    invoke-interface {p0}, Lorg/apache/http/HttpMessage;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object p0

    return-object p0
.end method

.method public getEntity()Lorg/apache/http/HttpEntity;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k0i;->e:Lorg/apache/http/HttpResponse;

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    return-object p0
.end method

.method public getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k0i;->e:Lorg/apache/http/HttpResponse;

    invoke-interface {p0, p1}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p0

    return-object p0
.end method

.method public getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k0i;->e:Lorg/apache/http/HttpResponse;

    invoke-interface {p0, p1}, Lorg/apache/http/HttpMessage;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object p0

    return-object p0
.end method

.method public getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k0i;->e:Lorg/apache/http/HttpResponse;

    invoke-interface {p0, p1}, Lorg/apache/http/HttpMessage;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p0

    return-object p0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k0i;->e:Lorg/apache/http/HttpResponse;

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getLocale()Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k0i;->e:Lorg/apache/http/HttpResponse;

    invoke-interface {p0}, Lorg/apache/http/HttpMessage;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p0

    return-object p0
.end method

.method public getProtocolVersion()Lorg/apache/http/ProtocolVersion;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k0i;->e:Lorg/apache/http/HttpResponse;

    invoke-interface {p0}, Lorg/apache/http/HttpMessage;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object p0

    return-object p0
.end method

.method public getStatusLine()Lorg/apache/http/StatusLine;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k0i;->e:Lorg/apache/http/HttpResponse;

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p0

    return-object p0
.end method

.method public headerIterator()Lorg/apache/http/HeaderIterator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sunia/HTREnginev2/k0i;->e:Lorg/apache/http/HttpResponse;

    invoke-interface {p0}, Lorg/apache/http/HttpMessage;->headerIterator()Lorg/apache/http/HeaderIterator;

    move-result-object p0

    return-object p0
.end method

.method public headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sunia/HTREnginev2/k0i;->e:Lorg/apache/http/HttpResponse;

    invoke-interface {p0, p1}, Lorg/apache/http/HttpMessage;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object p0

    return-object p0
.end method

.method public removeHeader(Lorg/apache/http/Header;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k0i;->e:Lorg/apache/http/HttpResponse;

    invoke-interface {p0, p1}, Lorg/apache/http/HttpMessage;->removeHeader(Lorg/apache/http/Header;)V

    return-void
.end method

.method public removeHeaders(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k0i;->e:Lorg/apache/http/HttpResponse;

    invoke-interface {p0, p1}, Lorg/apache/http/HttpMessage;->removeHeaders(Ljava/lang/String;)V

    return-void
.end method

.method public setEntity(Lorg/apache/http/HttpEntity;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k0i;->e:Lorg/apache/http/HttpResponse;

    invoke-interface {p0, p1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sunia/HTREnginev2/k0i;->e:Lorg/apache/http/HttpResponse;

    invoke-interface {p0, p1, p2}, Lorg/apache/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHeader(Lorg/apache/http/Header;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sunia/HTREnginev2/k0i;->e:Lorg/apache/http/HttpResponse;

    invoke-interface {p0, p1}, Lorg/apache/http/HttpMessage;->setHeader(Lorg/apache/http/Header;)V

    return-void
.end method

.method public setHeaders([Lorg/apache/http/Header;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k0i;->e:Lorg/apache/http/HttpResponse;

    invoke-interface {p0, p1}, Lorg/apache/http/HttpMessage;->setHeaders([Lorg/apache/http/Header;)V

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k0i;->e:Lorg/apache/http/HttpResponse;

    invoke-interface {p0, p1}, Lorg/apache/http/HttpResponse;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setParams(Lorg/apache/http/params/HttpParams;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k0i;->e:Lorg/apache/http/HttpResponse;

    invoke-interface {p0, p1}, Lorg/apache/http/HttpMessage;->setParams(Lorg/apache/http/params/HttpParams;)V

    return-void
.end method

.method public setReasonPhrase(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k0i;->e:Lorg/apache/http/HttpResponse;

    invoke-interface {p0, p1}, Lorg/apache/http/HttpResponse;->setReasonPhrase(Ljava/lang/String;)V

    return-void
.end method

.method public setStatusCode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k0i;->e:Lorg/apache/http/HttpResponse;

    invoke-interface {p0, p1}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    return-void
.end method

.method public setStatusLine(Lorg/apache/http/ProtocolVersion;I)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sunia/HTREnginev2/k0i;->e:Lorg/apache/http/HttpResponse;

    invoke-interface {p0, p1, p2}, Lorg/apache/http/HttpResponse;->setStatusLine(Lorg/apache/http/ProtocolVersion;I)V

    return-void
.end method

.method public setStatusLine(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/sunia/HTREnginev2/k0i;->e:Lorg/apache/http/HttpResponse;

    invoke-interface {p0, p1, p2, p3}, Lorg/apache/http/HttpResponse;->setStatusLine(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    return-void
.end method

.method public setStatusLine(Lorg/apache/http/StatusLine;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sunia/HTREnginev2/k0i;->e:Lorg/apache/http/HttpResponse;

    invoke-interface {p0, p1}, Lorg/apache/http/HttpResponse;->setStatusLine(Lorg/apache/http/StatusLine;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HttpResponseProxy{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k0i;->e:Lorg/apache/http/HttpResponse;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
