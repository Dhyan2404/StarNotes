.class public Lorg/mortbay/util/IO;
.super Lorg/mortbay/thread/BoundedThreadPool;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/util/IO$d;,
        Lorg/mortbay/util/IO$a;,
        Lorg/mortbay/util/IO$c;,
        Lorg/mortbay/util/IO$b;,
        Lorg/mortbay/util/IO$e;
    }
.end annotation


# static fields
.field public static final CRLF:Ljava/lang/String; = "\r\n"

.field public static final CRLF_BYTES:[B

.field private static __closedStream:Lorg/mortbay/util/IO$a;

.field private static __nullStream:Lorg/mortbay/util/IO$c;

.field private static __nullWriter:Lorg/mortbay/util/IO$d;

.field public static bufferSize:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/mortbay/util/IO;->CRLF_BYTES:[B

    const/16 v0, 0x4000

    sput v0, Lorg/mortbay/util/IO;->bufferSize:I

    new-instance v0, Lorg/mortbay/util/IO$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mortbay/util/IO$c;-><init>(Lorg/mortbay/util/a;)V

    sput-object v0, Lorg/mortbay/util/IO;->__nullStream:Lorg/mortbay/util/IO$c;

    new-instance v0, Lorg/mortbay/util/IO$a;

    invoke-direct {v0, v1}, Lorg/mortbay/util/IO$a;-><init>(Lorg/mortbay/util/a;)V

    sput-object v0, Lorg/mortbay/util/IO;->__closedStream:Lorg/mortbay/util/IO$a;

    new-instance v0, Lorg/mortbay/util/IO$d;

    invoke-direct {v0, v1}, Lorg/mortbay/util/IO$d;-><init>(Lorg/mortbay/util/a;)V

    sput-object v0, Lorg/mortbay/util/IO;->__nullWriter:Lorg/mortbay/util/IO$d;

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mortbay/thread/BoundedThreadPool;-><init>()V

    return-void
.end method

.method public static close(Ljava/io/InputStream;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-static {p0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static close(Ljava/io/OutputStream;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-static {p0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static copy(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-static {p0, p1}, Lorg/mortbay/util/IO;->copyDir(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0

    .line 24
    :cond_0
    invoke-static {p0, p1}, Lorg/mortbay/util/IO;->copyFile(Ljava/io/File;Ljava/io/File;)V

    :goto_0
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 1
    invoke-static {p0, p1, v0, v1}, Lorg/mortbay/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget v0, Lorg/mortbay/util/IO;->bufferSize:I

    new-array v0, v0, [B

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    const/4 v4, 0x0

    if-ltz v3, :cond_2

    :goto_0
    cmp-long v3, p2, v1

    if-lez v3, :cond_3

    .line 4
    sget v3, Lorg/mortbay/util/IO;->bufferSize:I

    int-to-long v5, v3

    cmp-long v5, p2, v5

    if-gez v5, :cond_0

    long-to-int v3, p2

    .line 5
    invoke-virtual {p0, v0, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p0, v0, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    :goto_1
    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    goto :goto_3

    :cond_1
    int-to-long v5, v3

    sub-long/2addr p2, v5

    .line 7
    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 8
    :cond_2
    :goto_2
    sget p2, Lorg/mortbay/util/IO;->bufferSize:I

    invoke-virtual {p0, v0, v4, p2}, Ljava/io/InputStream;->read([BII)I

    move-result p2

    if-gez p2, :cond_4

    :cond_3
    :goto_3
    return-void

    .line 9
    :cond_4
    invoke-virtual {p1, v0, v4, p2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 2
    invoke-static {p0, p1, v0, v1}, Lorg/mortbay/util/IO;->copy(Ljava/io/Reader;Ljava/io/Writer;J)V

    return-void
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/Writer;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget v0, Lorg/mortbay/util/IO;->bufferSize:I

    new-array v0, v0, [C

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-ltz v3, :cond_2

    :goto_0
    cmp-long v3, p2, v1

    if-lez v3, :cond_5

    .line 11
    sget v3, Lorg/mortbay/util/IO;->bufferSize:I

    int-to-long v6, v3

    cmp-long v6, p2, v6

    if-gez v6, :cond_0

    long-to-int v3, p2

    .line 12
    invoke-virtual {p0, v0, v5, v3}, Ljava/io/Reader;->read([CII)I

    move-result v3

    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {p0, v0, v5, v3}, Ljava/io/Reader;->read([CII)I

    move-result v3

    :goto_1
    if-ne v3, v4, :cond_1

    goto :goto_4

    :cond_1
    int-to-long v6, v3

    sub-long/2addr p2, v6

    .line 14
    invoke-virtual {p1, v0, v5, v3}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 15
    :cond_2
    instance-of p2, p1, Ljava/io/PrintWriter;

    if-eqz p2, :cond_4

    .line 16
    move-object p2, p1

    check-cast p2, Ljava/io/PrintWriter;

    .line 17
    :goto_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->checkError()Z

    move-result p3

    if-nez p3, :cond_5

    .line 18
    sget p3, Lorg/mortbay/util/IO;->bufferSize:I

    invoke-virtual {p0, v0, v5, p3}, Ljava/io/Reader;->read([CII)I

    move-result p3

    if-ne p3, v4, :cond_3

    goto :goto_4

    .line 19
    :cond_3
    invoke-virtual {p1, v0, v5, p3}, Ljava/io/Writer;->write([CII)V

    goto :goto_2

    .line 20
    :cond_4
    :goto_3
    sget p2, Lorg/mortbay/util/IO;->bufferSize:I

    invoke-virtual {p0, v0, v5, p2}, Ljava/io/Reader;->read([CII)I

    move-result p2

    if-ne p2, v4, :cond_6

    :cond_5
    :goto_4
    return-void

    .line 21
    :cond_6
    invoke-virtual {p1, v0, v5, p2}, Ljava/io/Writer;->write([CII)V

    goto :goto_3
.end method

.method public static copyDir(Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_4

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_4

    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, ".."

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    aget-object v2, p0, v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lorg/mortbay/util/IO;->copy(Ljava/io/File;Ljava/io/File;)V

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, p0}, Lorg/mortbay/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method public static copyThread(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lorg/mortbay/util/IO$b;

    invoke-direct {v0, p0, p1}, Lorg/mortbay/util/IO$b;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 2
    invoke-static {}, Lorg/mortbay/util/IO;->instance()Lorg/mortbay/util/IO;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/mortbay/thread/BoundedThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 3
    invoke-virtual {v0}, Lorg/mortbay/util/IO$b;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-static {p0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static copyThread(Ljava/io/Reader;Ljava/io/Writer;)V
    .locals 1

    .line 5
    :try_start_0
    new-instance v0, Lorg/mortbay/util/IO$b;

    invoke-direct {v0, p0, p1}, Lorg/mortbay/util/IO$b;-><init>(Ljava/io/Reader;Ljava/io/Writer;)V

    .line 6
    invoke-static {}, Lorg/mortbay/util/IO;->instance()Lorg/mortbay/util/IO;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/mortbay/thread/BoundedThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 7
    invoke-virtual {v0}, Lorg/mortbay/util/IO$b;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    invoke-static {p0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static delete(Ljava/io/File;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-static {v2}, Lorg/mortbay/util/IO;->delete(Ljava/io/File;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method public static getClosedStream()Ljava/io/InputStream;
    .locals 1

    sget-object v0, Lorg/mortbay/util/IO;->__closedStream:Lorg/mortbay/util/IO$a;

    return-object v0
.end method

.method public static getNullStream()Ljava/io/OutputStream;
    .locals 1

    sget-object v0, Lorg/mortbay/util/IO;->__nullStream:Lorg/mortbay/util/IO$c;

    return-object v0
.end method

.method public static getNullWriter()Ljava/io/Writer;
    .locals 1

    sget-object v0, Lorg/mortbay/util/IO;->__nullWriter:Lorg/mortbay/util/IO$d;

    return-object v0
.end method

.method public static instance()Lorg/mortbay/util/IO;
    .locals 1

    sget-object v0, Lorg/mortbay/util/IO$e;->a:Lorg/mortbay/util/IO;

    return-object v0
.end method

.method public static readBytes(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0, v0}, Lorg/mortbay/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lorg/mortbay/util/IO;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Ljava/io/InputStreamReader;

    invoke-direct {p1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object p1, v1

    .line 4
    :goto_0
    invoke-static {p1, v0}, Lorg/mortbay/util/IO;->copy(Ljava/io/Reader;Ljava/io/Writer;)V

    .line 5
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/io/Reader;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 7
    invoke-static {p0, v0}, Lorg/mortbay/util/IO;->copy(Ljava/io/Reader;Ljava/io/Writer;)V

    .line 8
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
