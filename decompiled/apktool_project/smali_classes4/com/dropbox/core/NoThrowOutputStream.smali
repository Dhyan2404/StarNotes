.class public final Lcom/dropbox/core/NoThrowOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/NoThrowOutputStream$HiddenException;
    }
.end annotation


# instance fields
.field public final e:Ljava/io/OutputStream;

.field public f:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dropbox/core/NoThrowOutputStream;->f:J

    iput-object p1, p0, Lcom/dropbox/core/NoThrowOutputStream;->e:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "don\'t call close()"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public flush()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/NoThrowOutputStream;->e:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/dropbox/core/NoThrowOutputStream$HiddenException;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/NoThrowOutputStream$HiddenException;-><init>(Lcom/dropbox/core/NoThrowOutputStream;Ljava/io/IOException;)V

    throw v1
.end method

.method public getBytesWritten()J
    .locals 2

    iget-wide v0, p0, Lcom/dropbox/core/NoThrowOutputStream;->f:J

    return-wide v0
.end method

.method public write(I)V
    .locals 4

    .line 7
    :try_start_0
    iget-wide v0, p0, Lcom/dropbox/core/NoThrowOutputStream;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dropbox/core/NoThrowOutputStream;->f:J

    .line 8
    iget-object v0, p0, Lcom/dropbox/core/NoThrowOutputStream;->e:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9
    new-instance v0, Lcom/dropbox/core/NoThrowOutputStream$HiddenException;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/NoThrowOutputStream$HiddenException;-><init>(Lcom/dropbox/core/NoThrowOutputStream;Ljava/io/IOException;)V

    throw v0
.end method

.method public write([B)V
    .locals 4

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/dropbox/core/NoThrowOutputStream;->f:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dropbox/core/NoThrowOutputStream;->f:J

    .line 5
    iget-object v0, p0, Lcom/dropbox/core/NoThrowOutputStream;->e:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Lcom/dropbox/core/NoThrowOutputStream$HiddenException;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/NoThrowOutputStream$HiddenException;-><init>(Lcom/dropbox/core/NoThrowOutputStream;Ljava/io/IOException;)V

    throw v0
.end method

.method public write([BII)V
    .locals 4

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/dropbox/core/NoThrowOutputStream;->f:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dropbox/core/NoThrowOutputStream;->f:J

    .line 2
    iget-object v0, p0, Lcom/dropbox/core/NoThrowOutputStream;->e:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Lcom/dropbox/core/NoThrowOutputStream$HiddenException;

    invoke-direct {p2, p0, p1}, Lcom/dropbox/core/NoThrowOutputStream$HiddenException;-><init>(Lcom/dropbox/core/NoThrowOutputStream;Ljava/io/IOException;)V

    throw p2
.end method
