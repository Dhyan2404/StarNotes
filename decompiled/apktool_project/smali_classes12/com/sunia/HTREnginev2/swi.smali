.class public Lcom/sunia/HTREnginev2/swi;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final e:Ljava/io/InputStream;

.field public final f:Lorg/apache/http/client/entity/InputStreamFactory;

.field public g:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/http/client/entity/InputStreamFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/swi;->e:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/swi;->f:Lorg/apache/http/client/entity/InputStreamFactory;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/swi;->f()V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/swi;->g:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    return p0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/swi;->g:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/swi;->e:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/swi;->e:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public final f()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/swi;->g:Ljava/io/InputStream;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/swi;->f:Lorg/apache/http/client/entity/InputStreamFactory;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/swi;->e:Ljava/io/InputStream;

    invoke-interface {v0, v1}, Lorg/apache/http/client/entity/InputStreamFactory;->create(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/swi;->g:Ljava/io/InputStream;

    :cond_0
    return-void
.end method

.method public markSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public read()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/swi;->f()V

    .line 2
    iget-object p0, p0, Lcom/sunia/HTREnginev2/swi;->g:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    return p0
.end method

.method public read([B)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/swi;->f()V

    .line 4
    iget-object p0, p0, Lcom/sunia/HTREnginev2/swi;->g:Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/swi;->f()V

    .line 6
    iget-object p0, p0, Lcom/sunia/HTREnginev2/swi;->g:Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public skip(J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/swi;->f()V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/swi;->g:Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p0

    return-wide p0
.end method
