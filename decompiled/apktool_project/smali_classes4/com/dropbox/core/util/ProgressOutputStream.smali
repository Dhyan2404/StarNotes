.class public Lcom/dropbox/core/util/ProgressOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public e:I

.field public f:Ljava/io/OutputStream;

.field public g:Lcom/dropbox/core/util/IOUtil$ProgressListener;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/dropbox/core/util/ProgressOutputStream;->f:Ljava/io/OutputStream;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/dropbox/core/util/ProgressOutputStream;->e:I

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lcom/dropbox/core/util/IOUtil$ProgressListener;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/dropbox/core/util/ProgressOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 5
    iput-object p2, p0, Lcom/dropbox/core/util/ProgressOutputStream;->g:Lcom/dropbox/core/util/IOUtil$ProgressListener;

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

    iget-object p0, p0, Lcom/dropbox/core/util/ProgressOutputStream;->f:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public final f(I)V
    .locals 2

    iget v0, p0, Lcom/dropbox/core/util/ProgressOutputStream;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/dropbox/core/util/ProgressOutputStream;->e:I

    iget-object p0, p0, Lcom/dropbox/core/util/ProgressOutputStream;->g:Lcom/dropbox/core/util/IOUtil$ProgressListener;

    if-eqz p0, :cond_0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lcom/dropbox/core/util/IOUtil$ProgressListener;->onProgress(J)V

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/dropbox/core/util/ProgressOutputStream;->f:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public setListener(Lcom/dropbox/core/util/IOUtil$ProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/util/ProgressOutputStream;->g:Lcom/dropbox/core/util/IOUtil$ProgressListener;

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/dropbox/core/util/ProgressOutputStream;->f:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lcom/dropbox/core/util/ProgressOutputStream;->f(I)V

    return-void
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/dropbox/core/util/ProgressOutputStream;->f:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 4
    array-length p1, p1

    invoke-virtual {p0, p1}, Lcom/dropbox/core/util/ProgressOutputStream;->f(I)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dropbox/core/util/ProgressOutputStream;->f:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 2
    invoke-virtual {p0, p3}, Lcom/dropbox/core/util/ProgressOutputStream;->f(I)V

    return-void
.end method
