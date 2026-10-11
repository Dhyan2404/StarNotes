.class public Lorg/mortbay/io/WriterOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field protected _encoding:Ljava/lang/String;

.field protected _writer:Ljava/io/Writer;

.field public e:[B


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 6
    iput-object v0, p0, Lorg/mortbay/io/WriterOutputStream;->e:[B

    .line 7
    iput-object p1, p0, Lorg/mortbay/io/WriterOutputStream;->_writer:Ljava/io/Writer;

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lorg/mortbay/io/WriterOutputStream;->e:[B

    .line 3
    iput-object p1, p0, Lorg/mortbay/io/WriterOutputStream;->_writer:Ljava/io/Writer;

    .line 4
    iput-object p2, p0, Lorg/mortbay/io/WriterOutputStream;->_encoding:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/io/WriterOutputStream;->_writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/io/WriterOutputStream;->_writer:Ljava/io/Writer;

    iput-object v0, p0, Lorg/mortbay/io/WriterOutputStream;->_encoding:Ljava/lang/String;

    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/mortbay/io/WriterOutputStream;->_writer:Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public declared-synchronized write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/io/WriterOutputStream;->e:[B

    const/4 v1, 0x0

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 8
    invoke-virtual {p0, v0}, Lorg/mortbay/io/WriterOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/mortbay/io/WriterOutputStream;->_encoding:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lorg/mortbay/io/WriterOutputStream;->_writer:Ljava/io/Writer;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lorg/mortbay/io/WriterOutputStream;->_writer:Ljava/io/Writer;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lorg/mortbay/io/WriterOutputStream;->_encoding:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 5
    iget-object p0, p0, Lorg/mortbay/io/WriterOutputStream;->_writer:Ljava/io/Writer;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, Lorg/mortbay/io/WriterOutputStream;->_writer:Ljava/io/Writer;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
