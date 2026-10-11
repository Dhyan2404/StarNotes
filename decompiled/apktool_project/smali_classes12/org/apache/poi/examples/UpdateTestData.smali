.class public Lorg/apache/poi/examples/UpdateTestData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final TEST_DATA_PATH:Ljava/lang/String;

.field private format:Ljava/text/DecimalFormat;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "./test-data/ext/"

    iput-object v0, p0, Lorg/apache/poi/examples/UpdateTestData;->TEST_DATA_PATH:Ljava/lang/String;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "000.png"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/examples/UpdateTestData;->format:Ljava/text/DecimalFormat;

    return-void
.end method

.method public static synthetic a(Ljava/io/File;)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/examples/UpdateTestData;->lambda$updateWord$1(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/io/File;)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/examples/UpdateTestData;->lambda$updatePPT$0(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method private drawSingleSlide(Lorg/apache/poi/sl/PPTFactory;Ljava/awt/Dimension;Ljava/lang/String;I)V
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

    invoke-virtual {p1, p2, p4}, Lorg/apache/poi/sl/PPTFactory;->drawSlide(Ljava/awt/Graphics2D;I)V

    new-instance p1, Ljava/io/File;

    iget-object p0, p0, Lorg/apache/poi/examples/UpdateTestData;->format:Ljava/text/DecimalFormat;

    add-int/lit8 p4, p4, 0x1

    int-to-long v3, p4

    invoke-virtual {p0, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string p2, "png"

    invoke-static {v2, p2, p0}, Ljavax/imageio/ImageIO;->write(Ljava/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/OutputStream;)Z

    invoke-static {p0}, Lorg/apache/poi/util/CloseUtils;->close(Ljava/io/Closeable;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Save image success : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", duration : "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    sub-long/2addr p3, v0

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private getSaveDir(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$updatePPT$0(Ljava/io/File;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/sl/PPTFactory;->accept(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$updateWord$1(Ljava/io/File;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/convert/WordConvertFactory;->accept(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
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

    new-instance p0, Lorg/apache/poi/examples/UpdateTestData;

    invoke-direct {p0}, Lorg/apache/poi/examples/UpdateTestData;-><init>()V

    return-void
.end method


# virtual methods
.method public updatePPT()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    invoke-static {v0, v1}, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->setMinInflateRatio(D)V

    new-instance v0, Ljava/io/File;

    const-string v1, "./test-data/ext/ppt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/sunia/HTREnginev2/lxn;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/lxn;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start Open ppt : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lorg/apache/poi/examples/UpdateTestData;->getSaveDir(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/apache/poi/sl/PPTFactory$Builder;

    invoke-direct {v6}, Lorg/apache/poi/sl/PPTFactory$Builder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/poi/sl/PPTFactory$Builder;->setFilePath(Ljava/lang/String;)Lorg/apache/poi/sl/PPTFactory$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/sl/PPTFactory$Builder;->build()Lorg/apache/poi/sl/PPTFactory;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/sl/PPTFactory;->openPPT()V

    invoke-virtual {v6}, Lorg/apache/poi/sl/PPTFactory;->getPageSize()Ljava/awt/Dimension;

    move-result-object v7

    move v8, v2

    :goto_1
    invoke-virtual {v6}, Lorg/apache/poi/sl/PPTFactory;->getSlideSize()I

    move-result v9

    if-ge v8, v9, :cond_0

    invoke-direct {p0, v6, v7, v5, v8}, Lorg/apache/poi/examples/UpdateTestData;->drawSingleSlide(Lorg/apache/poi/sl/PPTFactory;Ljava/awt/Dimension;Ljava/lang/String;I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Lorg/apache/poi/sl/PPTFactory;->close()V

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "End Open ppt : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateWord()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    const-string v1, "./test-data/ext/convert"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/sunia/HTREnginev2/kxn;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/kxn;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "f.getName() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lorg/apache/poi/examples/UpdateTestData;->getSaveDir(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/apache/poi/convert/WordConvertFactory$Builder;

    invoke-direct {v5}, Lorg/apache/poi/convert/WordConvertFactory$Builder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lorg/apache/poi/convert/WordConvertFactory$Builder;->setFilePath(Ljava/lang/String;)Lorg/apache/poi/convert/WordConvertFactory$Builder;

    move-result-object v3

    const/16 v5, 0x7d0

    invoke-virtual {v3, v5}, Lorg/apache/poi/convert/WordConvertFactory$Builder;->setDocumentParaSize(I)Lorg/apache/poi/convert/WordConvertFactory$Builder;

    move-result-object v3

    new-instance v5, Lorg/apache/poi/picture/BufferedImagePicturesManager;

    invoke-direct {v5, v4}, Lorg/apache/poi/picture/BufferedImagePicturesManager;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lorg/apache/poi/convert/WordConvertFactory$Builder;->setPicturesManager(Lorg/apache/poi/picture/PicturesManager;)Lorg/apache/poi/convert/WordConvertFactory$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/convert/WordConvertFactory$Builder;->build()Lorg/apache/poi/convert/WordConvertFactory;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/convert/WordConvertFactory;->convertWord()V

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/apache/poi/convert/WordConvertFactory;->write(Ljava/lang/String;Z)V

    invoke-virtual {v3}, Lorg/apache/poi/convert/WordConvertFactory;->close()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
