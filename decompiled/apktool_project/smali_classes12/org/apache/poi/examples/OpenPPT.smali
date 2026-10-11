.class public Lorg/apache/poi/examples/OpenPPT;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private appendSuffix:Z

.field private index:I

.field private pptDir:Ljava/lang/String;

.field private pptName:Ljava/lang/String;

.field private saveDir:Ljava/lang/String;

.field private suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/Users/luoxg/Resources/\u5de5\u4f5c\u8d44\u6599/books/office/ppt/"

    iput-object v0, p0, Lorg/apache/poi/examples/OpenPPT;->pptDir:Ljava/lang/String;

    const-string v0, "\u6d4b\u8bd5\u7528\u4f8b.pptx"

    iput-object v0, p0, Lorg/apache/poi/examples/OpenPPT;->pptName:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/examples/OpenPPT;->appendSuffix:Z

    const-string v1, "_2"

    iput-object v1, p0, Lorg/apache/poi/examples/OpenPPT;->suffix:Ljava/lang/String;

    iput v0, p0, Lorg/apache/poi/examples/OpenPPT;->index:I

    return-void
.end method

.method public static synthetic a(Ljava/io/File;)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/examples/OpenPPT;->lambda$openAll$0(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method private drawSingleSlide(Lorg/apache/poi/sl/PPTFactory;Ljava/awt/Dimension;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/awt/image/BufferedImage;

    iget v3, p2, Ljava/awt/Dimension;->width:I

    iget p2, p2, Ljava/awt/Dimension;->height:I

    const/4 v4, 0x2

    invoke-direct {v2, v3, p2, v4}, Ljava/awt/image/BufferedImage;-><init>(III)V

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lorg/apache/poi/sl/PPTFactory;->drawSlide(Ljava/awt/Graphics2D;I)V

    new-instance p1, Ljava/text/DecimalFormat;

    const-string p2, "000.png"

    invoke-direct {p1, p2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/io/File;

    iget-object p0, p0, Lorg/apache/poi/examples/OpenPPT;->saveDir:Ljava/lang/String;

    add-int/lit8 p3, p3, 0x1

    int-to-long v3, p3

    invoke-virtual {p1, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string p1, "png"

    invoke-static {v2, p1, p0}, Ljavax/imageio/ImageIO;->write(Ljava/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/OutputStream;)Z

    invoke-static {p0}, Lorg/apache/poi/util/CloseUtils;->close(Ljava/io/Closeable;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Save image success : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", duration : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private getSaveDir()V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/examples/OpenPPT;->pptName:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/apache/poi/examples/OpenPPT;->pptDir:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/apache/poi/examples/OpenPPT;->appendSuffix:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/examples/OpenPPT;->suffix:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/examples/OpenPPT;->saveDir:Ljava/lang/String;

    return-void
.end method

.method private static synthetic lambda$openAll$0(Ljava/io/File;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".ppt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".pptx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "~$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lorg/apache/poi/examples/MacInit;->init()V

    new-instance p0, Lorg/apache/poi/examples/OpenPPT;

    invoke-direct {p0}, Lorg/apache/poi/examples/OpenPPT;-><init>()V

    invoke-direct {p0}, Lorg/apache/poi/examples/OpenPPT;->openSingle()V

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method private open()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/examples/OpenPPT;->pptDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/examples/OpenPPT;->pptName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start Open ppt : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-wide v1, 0x3f50624dd2f1a9fcL    # 0.001

    invoke-static {v1, v2}, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->setMinInflateRatio(D)V

    new-instance v1, Lorg/apache/poi/sl/PPTFactory$Builder;

    invoke-direct {v1}, Lorg/apache/poi/sl/PPTFactory$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lorg/apache/poi/sl/PPTFactory$Builder;->setFilePath(Ljava/lang/String;)Lorg/apache/poi/sl/PPTFactory$Builder;

    move-result-object v1

    const-string v2, "123456"

    invoke-virtual {v1, v2}, Lorg/apache/poi/sl/PPTFactory$Builder;->setPassword(Ljava/lang/String;)Lorg/apache/poi/sl/PPTFactory$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/sl/PPTFactory$Builder;->build()Lorg/apache/poi/sl/PPTFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/sl/PPTFactory;->openPPT()V

    invoke-virtual {v1}, Lorg/apache/poi/sl/PPTFactory;->getPageSize()Ljava/awt/Dimension;

    move-result-object v2

    iget v3, p0, Lorg/apache/poi/examples/OpenPPT;->index:I

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/apache/poi/sl/PPTFactory;->getSlideSize()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/poi/examples/OpenPPT;->drawSingleSlide(Lorg/apache/poi/sl/PPTFactory;Ljava/awt/Dimension;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr v3, v4

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/poi/examples/OpenPPT;->drawSingleSlide(Lorg/apache/poi/sl/PPTFactory;Ljava/awt/Dimension;I)V

    :cond_1
    invoke-virtual {v1}, Lorg/apache/poi/sl/PPTFactory;->close()V

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End Open ppt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private openAll()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/poi/examples/OpenPPT;->pptDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/sunia/HTREnginev2/fhk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/fhk;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/examples/OpenPPT;->pptName:Ljava/lang/String;

    invoke-direct {p0}, Lorg/apache/poi/examples/OpenPPT;->openSingle()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private openSingle()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/poi/examples/OpenPPT;->getSaveDir()V

    invoke-direct {p0}, Lorg/apache/poi/examples/OpenPPT;->open()V

    return-void
.end method
