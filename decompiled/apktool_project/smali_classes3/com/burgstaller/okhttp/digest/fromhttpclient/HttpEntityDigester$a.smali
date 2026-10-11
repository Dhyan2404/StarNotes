.class public Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester$a;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;->outputStream()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;


# direct methods
.method public constructor <init>(Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;)V
    .locals 0

    iput-object p1, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester$a;->e:Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester$a;->e:Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;

    invoke-virtual {p0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester$a;->e:Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;

    invoke-static {v0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;->f(Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester$a;->e:Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;

    invoke-virtual {p0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;->flush()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester$a;->e:Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".outputStream()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester$a;->e:Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;

    invoke-static {v0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;->f(Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester$a;->e:Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;

    iget-object v0, v0, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;->h:Lokio/Buffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 3
    iget-object p0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester$a;->e:Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;

    invoke-virtual {p0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;->emitCompleteSegments()Lokio/BufferedSink;

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester$a;->e:Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;

    invoke-static {v0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;->f(Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester$a;->e:Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;

    iget-object v0, v0, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;->h:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    .line 7
    iget-object p0, p0, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester$a;->e:Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;

    invoke-virtual {p0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;->emitCompleteSegments()Lokio/BufferedSink;

    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
