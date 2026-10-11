.class public Lorg/apache/commons/compress/harmony/unpack200/Archive;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/io/InputStream;

.field public final b:Ljava/util/jar/JarOutputStream;

.field public c:Z

.field public d:I

.field public e:Ljava/io/FileOutputStream;

.field public f:Z

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/util/jar/JarOutputStream;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->d:I

    .line 9
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->a:Ljava/io/InputStream;

    .line 10
    iput-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->b:Ljava/util/jar/JarOutputStream;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->d:I

    .line 3
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->h:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->i:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->a:Ljava/io/InputStream;

    .line 6
    new-instance p1, Ljava/util/jar/JarOutputStream;

    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p1, v0}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->b:Ljava/util/jar/JarOutputStream;

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Ljava/io/InputStream;->mark(I)V

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    const/4 p1, -0x1

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setDeflateHint(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->f:Z

    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->g:Z

    return-void
.end method

.method public setLogFile(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->e:Ljava/io/FileOutputStream;

    return-void
.end method

.method public setLogFile(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->e:Ljava/io/FileOutputStream;

    return-void
.end method

.method public setQuiet(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->d:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->d:I

    if-nez p1, :cond_1

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->d:I

    :cond_1
    :goto_0
    return-void
.end method

.method public setRemovePackFile(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->c:Z

    return-void
.end method

.method public setVerbose(Z)V
    .locals 1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->d:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->d:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->d:I

    :cond_1
    :goto_0
    return-void
.end method

.method public unpack()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->b:Ljava/util/jar/JarOutputStream;

    const-string v1, "PACK200"

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipOutputStream;->setComment(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->a:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->a:Ljava/io/InputStream;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->a:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    const v2, 0x8b1f

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/util/zip/GZIPInputStream;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->a:Ljava/io/InputStream;

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->a:Ljava/io/InputStream;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    :goto_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->a:Ljava/io/InputStream;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->mark(I)V

    const/16 v0, 0xca

    const/16 v3, 0xfe

    const/16 v4, 0xd0

    const/16 v5, 0xd

    filled-new-array {v0, v3, v4, v5}, [I

    move-result-object v0

    new-array v3, v2, [I

    const/4 v4, 0x0

    move v5, v4

    :goto_2
    if-ge v5, v2, :cond_3

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->a:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v6

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    move v5, v4

    move v6, v5

    :goto_3
    const/4 v7, 0x1

    if-ge v5, v2, :cond_5

    aget v8, v3, v5

    aget v9, v0, v5

    if-eq v8, v9, :cond_4

    move v6, v7

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    if-eqz v6, :cond_7

    new-instance v0, Ljava/util/jar/JarInputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->a:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/util/jar/JarInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_4
    invoke-virtual {v0}, Ljava/util/jar/JarInputStream;->getNextJarEntry()Ljava/util/jar/JarEntry;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->b:Ljava/util/jar/JarOutputStream;

    invoke-virtual {v2, v1}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const/16 v1, 0x4000

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    :goto_5
    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->b:Ljava/util/jar/JarOutputStream;

    invoke-virtual {v3, v1, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    goto :goto_5

    :cond_6
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->b:Ljava/util/jar/JarOutputStream;

    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    goto :goto_4

    :cond_7
    move v0, v4

    :cond_8
    :goto_6
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->a:Ljava/io/InputStream;

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/harmony/unpack200/Archive;->a(Ljava/io/InputStream;)Z

    move-result v2

    if-eqz v2, :cond_c

    add-int/2addr v0, v7

    new-instance v2, Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-direct {v2}, Lorg/apache/commons/compress/harmony/unpack200/Segment;-><init>()V

    iget v3, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->d:I

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->setLogLevel(I)V

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->e:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_9

    goto :goto_7

    :cond_9
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    :goto_7
    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->setLogStream(Ljava/io/OutputStream;)V

    invoke-virtual {v2, v4}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->setPreRead(Z)V

    if-ne v0, v7, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unpacking from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->h:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->i:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->log(ILjava/lang/String;)V

    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reading segment "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->log(ILjava/lang/String;)V

    iget-boolean v3, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->f:Z

    if-eqz v3, :cond_b

    iget-boolean v3, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->g:Z

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->overrideDeflateHint(Z)V

    :cond_b
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->a:Ljava/io/InputStream;

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->b:Ljava/util/jar/JarOutputStream;

    invoke-virtual {v2, v3, v5}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->unpack(Ljava/io/InputStream;Ljava/util/jar/JarOutputStream;)V

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->b:Ljava/util/jar/JarOutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->a:Ljava/io/InputStream;

    instance-of v3, v2, Ljava/io/FileInputStream;

    if-eqz v3, :cond_8

    check-cast v2, Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->h:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :cond_c
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :try_start_2
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->b:Ljava/util/jar/JarOutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->e:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_d

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :cond_d
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->c:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->h:Ljava/lang/String;

    if-eqz v0, :cond_e

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->h:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v4

    :cond_e
    if-eqz v4, :cond_f

    goto :goto_8

    :cond_f
    new-instance p0, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    const-string v0, "Failed to delete the input file."

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    :goto_8
    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->a:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :try_start_5
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->b:Ljava/util/jar/JarOutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/Archive;->e:Ljava/io/FileOutputStream;

    if-eqz p0, :cond_11

    :try_start_6
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    :cond_11
    throw v0
.end method
