.class public Lcom/sunia/HTREnginev2/wkl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# instance fields
.field public final e:Lorg/apache/http/HttpEntity;

.field public f:Z


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/wkl;->f:Z

    iput-object p1, p0, Lcom/sunia/HTREnginev2/wkl;->e:Lorg/apache/http/HttpEntity;

    return-void
.end method

.method public static a(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .locals 2

    invoke-interface {p0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/sunia/HTREnginev2/wkl;->d(Lorg/apache/http/HttpEntity;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/sunia/HTREnginev2/wkl;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/wkl;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-interface {p0, v1}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_0
    return-void
.end method

.method public static d(Lorg/apache/http/HttpEntity;)Z
    .locals 0

    instance-of p0, p0, Lcom/sunia/HTREnginev2/wkl;

    return p0
.end method

.method public static e(Lorg/apache/http/HttpRequest;)Z
    .locals 2

    instance-of v0, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    check-cast p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {p0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/sunia/HTREnginev2/wkl;->d(Lorg/apache/http/HttpEntity;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/sunia/HTREnginev2/wkl;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/wkl;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method


# virtual methods
.method public b()Lorg/apache/http/HttpEntity;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wkl;->e:Lorg/apache/http/HttpEntity;

    return-object p0
.end method

.method public c()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/wkl;->f:Z

    return p0
.end method

.method public consumeContent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/wkl;->f:Z

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wkl;->e:Lorg/apache/http/HttpEntity;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wkl;->e:Lorg/apache/http/HttpEntity;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wkl;->e:Lorg/apache/http/HttpEntity;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object p0

    return-object p0
.end method

.method public getContentLength()J
    .locals 2

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wkl;->e:Lorg/apache/http/HttpEntity;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wkl;->e:Lorg/apache/http/HttpEntity;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object p0

    return-object p0
.end method

.method public isChunked()Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wkl;->e:Lorg/apache/http/HttpEntity;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result p0

    return p0
.end method

.method public isRepeatable()Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wkl;->e:Lorg/apache/http/HttpEntity;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result p0

    return p0
.end method

.method public isStreaming()Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wkl;->e:Lorg/apache/http/HttpEntity;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestEntityProxy{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wkl;->e:Lorg/apache/http/HttpEntity;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/wkl;->f:Z

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wkl;->e:Lorg/apache/http/HttpEntity;

    invoke-interface {p0, p1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
