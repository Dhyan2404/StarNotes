.class public Lorg/mortbay/io/UncheckedPrintWriter;
.super Ljava/io/PrintWriter;
.source "SourceFile"


# instance fields
.field public e:Z

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Lorg/mortbay/io/UncheckedPrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 2

    .line 6
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {p0, v0, p2}, Lorg/mortbay/io/UncheckedPrintWriter;-><init>(Ljava/io/Writer;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/mortbay/io/UncheckedPrintWriter;-><init>(Ljava/io/Writer;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 3
    iput-boolean p2, p0, Lorg/mortbay/io/UncheckedPrintWriter;->e:Z

    const-string p1, "line.separator"

    .line 4
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/io/UncheckedPrintWriter;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->setError()V

    new-instance p0, Lorg/mortbay/io/RuntimeIOException;

    invoke-direct {p0, v0}, Lorg/mortbay/io/RuntimeIOException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public final f()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Stream closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public flush()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lorg/mortbay/io/UncheckedPrintWriter;->f()V

    iget-object v1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->setError()V

    new-instance p0, Lorg/mortbay/io/RuntimeIOException;

    invoke-direct {p0, v0}, Lorg/mortbay/io/RuntimeIOException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public final j()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lorg/mortbay/io/UncheckedPrintWriter;->f()V

    iget-object v1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    iget-object v2, p0, Lorg/mortbay/io/UncheckedPrintWriter;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-boolean v1, p0, Lorg/mortbay/io/UncheckedPrintWriter;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->setError()V

    new-instance p0, Lorg/mortbay/io/RuntimeIOException;

    invoke-direct {p0, v0}, Lorg/mortbay/io/RuntimeIOException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void
.end method

.method public print(C)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/mortbay/io/UncheckedPrintWriter;->write(I)V

    return-void
.end method

.method public print(D)V
    .locals 0

    .line 6
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mortbay/io/UncheckedPrintWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public print(F)V
    .locals 0

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mortbay/io/UncheckedPrintWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public print(I)V
    .locals 0

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mortbay/io/UncheckedPrintWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public print(J)V
    .locals 0

    .line 4
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mortbay/io/UncheckedPrintWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public print(Ljava/lang/Object;)V
    .locals 0

    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mortbay/io/UncheckedPrintWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "null"

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lorg/mortbay/io/UncheckedPrintWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public print(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    .line 1
    :goto_0
    invoke-virtual {p0, p1}, Lorg/mortbay/io/UncheckedPrintWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public print([C)V
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lorg/mortbay/io/UncheckedPrintWriter;->write([C)V

    return-void
.end method

.method public println()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/mortbay/io/UncheckedPrintWriter;->j()V

    return-void
.end method

.method public println(C)V
    .locals 1

    .line 6
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/mortbay/io/UncheckedPrintWriter;->print(C)V

    .line 8
    invoke-virtual {p0}, Lorg/mortbay/io/UncheckedPrintWriter;->println()V

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public println(D)V
    .locals 1

    .line 22
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 23
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/io/UncheckedPrintWriter;->print(D)V

    .line 24
    invoke-virtual {p0}, Lorg/mortbay/io/UncheckedPrintWriter;->println()V

    .line 25
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public println(F)V
    .locals 1

    .line 18
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 19
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/mortbay/io/UncheckedPrintWriter;->print(F)V

    .line 20
    invoke-virtual {p0}, Lorg/mortbay/io/UncheckedPrintWriter;->println()V

    .line 21
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public println(I)V
    .locals 1

    .line 10
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/mortbay/io/UncheckedPrintWriter;->print(I)V

    .line 12
    invoke-virtual {p0}, Lorg/mortbay/io/UncheckedPrintWriter;->println()V

    .line 13
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public println(J)V
    .locals 1

    .line 14
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 15
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/io/UncheckedPrintWriter;->print(J)V

    .line 16
    invoke-virtual {p0}, Lorg/mortbay/io/UncheckedPrintWriter;->println()V

    .line 17
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public println(Ljava/lang/Object;)V
    .locals 1

    .line 34
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 35
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/mortbay/io/UncheckedPrintWriter;->print(Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p0}, Lorg/mortbay/io/UncheckedPrintWriter;->println()V

    .line 37
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public println(Ljava/lang/String;)V
    .locals 1

    .line 30
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 31
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/mortbay/io/UncheckedPrintWriter;->print(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lorg/mortbay/io/UncheckedPrintWriter;->println()V

    .line 33
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public println(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/mortbay/io/UncheckedPrintWriter;->print(Z)V

    .line 4
    invoke-virtual {p0}, Lorg/mortbay/io/UncheckedPrintWriter;->println()V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public println([C)V
    .locals 1

    .line 26
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 27
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/mortbay/io/UncheckedPrintWriter;->print([C)V

    .line 28
    invoke-virtual {p0}, Lorg/mortbay/io/UncheckedPrintWriter;->println()V

    .line 29
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public write(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    invoke-virtual {p0}, Lorg/mortbay/io/UncheckedPrintWriter;->f()V

    .line 3
    iget-object v1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(I)V

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    .line 6
    invoke-virtual {p0}, Ljava/io/PrintWriter;->setError()V

    .line 7
    new-instance p0, Lorg/mortbay/io/RuntimeIOException;

    invoke-direct {p0, p1}, Lorg/mortbay/io/RuntimeIOException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 8
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 2

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/mortbay/io/UncheckedPrintWriter;->write(Ljava/lang/String;II)V

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 2

    .line 18
    :try_start_0
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :try_start_1
    invoke-virtual {p0}, Lorg/mortbay/io/UncheckedPrintWriter;->f()V

    .line 20
    iget-object v1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 21
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 22
    invoke-static {p1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    .line 23
    invoke-virtual {p0}, Ljava/io/PrintWriter;->setError()V

    .line 24
    new-instance p0, Lorg/mortbay/io/RuntimeIOException;

    invoke-direct {p0, p1}, Lorg/mortbay/io/RuntimeIOException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 25
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void
.end method

.method public write([C)V
    .locals 2

    .line 17
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/mortbay/io/UncheckedPrintWriter;->write([CII)V

    return-void
.end method

.method public write([CII)V
    .locals 2

    .line 9
    :try_start_0
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :try_start_1
    invoke-virtual {p0}, Lorg/mortbay/io/UncheckedPrintWriter;->f()V

    .line 11
    iget-object v1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    .line 12
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 13
    invoke-static {p1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    .line 14
    invoke-virtual {p0}, Ljava/io/PrintWriter;->setError()V

    .line 15
    new-instance p0, Lorg/mortbay/io/RuntimeIOException;

    invoke-direct {p0, p1}, Lorg/mortbay/io/RuntimeIOException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 16
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void
.end method
