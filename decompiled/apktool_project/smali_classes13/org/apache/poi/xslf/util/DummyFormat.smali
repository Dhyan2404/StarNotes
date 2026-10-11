.class public Lorg/apache/poi/xslf/util/DummyFormat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xslf/util/OutputFormat;


# instance fields
.field private final bos:Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

.field private final dummy2d:Lorg/apache/poi/xslf/util/DummyGraphics2d;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    invoke-direct {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xslf/util/DummyFormat;->bos:Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    new-instance v1, Lorg/apache/poi/xslf/util/DummyGraphics2d;

    new-instance v2, Ljava/io/PrintStream;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v0, v4, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/apache/poi/xslf/util/DummyGraphics2d;-><init>(Ljava/io/PrintStream;)V

    iput-object v1, p0, Lorg/apache/poi/xslf/util/DummyFormat;->dummy2d:Lorg/apache/poi/xslf/util/DummyGraphics2d;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public addSlide(DD)Ljava/awt/Graphics2D;
    .locals 0

    iget-object p1, p0, Lorg/apache/poi/xslf/util/DummyFormat;->bos:Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    invoke-virtual {p1}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->reset()V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyFormat;->dummy2d:Lorg/apache/poi/xslf/util/DummyGraphics2d;

    return-object p0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyFormat;->bos:Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    invoke-virtual {p0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->reset()V

    return-void
.end method

.method public writeDocument(Lorg/apache/poi/xslf/util/MFProxy;Ljava/io/File;)V
    .locals 0

    return-void
.end method

.method public writeSlide(Lorg/apache/poi/xslf/util/MFProxy;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    iget-object p2, p0, Lorg/apache/poi/xslf/util/DummyFormat;->bos:Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    invoke-virtual {p2, p1}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyFormat;->bos:Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    invoke-virtual {p0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2
.end method
