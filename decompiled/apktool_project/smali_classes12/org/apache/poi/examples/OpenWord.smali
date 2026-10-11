.class public Lorg/apache/poi/examples/OpenWord;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dirSuffix:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private saveDir:Ljava/lang/String;

.field private wordDir:Ljava/lang/String;

.field private wordName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_5.2"

    iput-object v0, p0, Lorg/apache/poi/examples/OpenWord;->dirSuffix:Ljava/lang/String;

    const-string v0, "/Users/luoxg/Resources/\u5de5\u4f5c\u8d44\u6599/books/office/word/"

    iput-object v0, p0, Lorg/apache/poi/examples/OpenWord;->wordDir:Ljava/lang/String;

    const-string v0, "3.1\u94c1\u53ca\u5176\u5316\u5408\u7269\u540c\u6b65\u7ec3\u4e602023-2024\u5b66\u5e74\u9ad8\u4e00\u4e0a\u5b66\u671f\u5316\u5b66\u4eba\u6559\u7248\uff082019\uff09\u5fc5\u4fee\u7b2c\u4e00\u518c.docx"

    iput-object v0, p0, Lorg/apache/poi/examples/OpenWord;->wordName:Ljava/lang/String;

    return-void
.end method

.method private getSaveDir()V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/examples/OpenWord;->wordName:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/examples/OpenWord;->wordDir:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/poi/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/poi/examples/OpenWord;->dirSuffix:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/apache/poi/examples/OpenWord;->wordDir:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/poi/examples/OpenWord;->dirSuffix:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/examples/OpenWord;->saveDir:Ljava/lang/String;

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lorg/apache/poi/examples/MacInit;->init()V

    new-instance v0, Lorg/apache/poi/examples/OpenWord;

    invoke-direct {v0}, Lorg/apache/poi/examples/OpenWord;-><init>()V

    if-eqz p0, :cond_0

    array-length v1, p0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    const-string v1, ""

    iput-object v1, v0, Lorg/apache/poi/examples/OpenWord;->dirSuffix:Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/poi/examples/OpenWord;->wordDir:Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    iput-object v1, v0, Lorg/apache/poi/examples/OpenWord;->wordName:Ljava/lang/String;

    array-length v1, p0

    const/4 v3, 0x2

    if-lt v1, v3, :cond_0

    aget-object p0, p0, v2

    iput-object p0, v0, Lorg/apache/poi/examples/OpenWord;->password:Ljava/lang/String;

    :cond_0
    invoke-direct {v0}, Lorg/apache/poi/examples/OpenWord;->getSaveDir()V

    invoke-direct {v0}, Lorg/apache/poi/examples/OpenWord;->open()V

    return-void
.end method

.method private open()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/examples/OpenWord;->wordDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/examples/OpenWord;->wordName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/convert/WordConvertFactory$Builder;

    invoke-direct {v1}, Lorg/apache/poi/convert/WordConvertFactory$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lorg/apache/poi/convert/WordConvertFactory$Builder;->setFilePath(Ljava/lang/String;)Lorg/apache/poi/convert/WordConvertFactory$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/examples/OpenWord;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/poi/convert/WordConvertFactory$Builder;->setPassword(Ljava/lang/String;)Lorg/apache/poi/convert/WordConvertFactory$Builder;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lorg/apache/poi/convert/WordConvertFactory$Builder;->setDocumentParaSize(I)Lorg/apache/poi/convert/WordConvertFactory$Builder;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/picture/BufferedImagePicturesManager;

    iget-object v2, p0, Lorg/apache/poi/examples/OpenWord;->saveDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/poi/picture/BufferedImagePicturesManager;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/convert/WordConvertFactory$Builder;->setPicturesManager(Lorg/apache/poi/picture/PicturesManager;)Lorg/apache/poi/convert/WordConvertFactory$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/convert/WordConvertFactory$Builder;->build()Lorg/apache/poi/convert/WordConvertFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/convert/WordConvertFactory;->convertWord()V

    invoke-virtual {v0}, Lorg/apache/poi/convert/WordConvertFactory;->close()V

    iget-object p0, p0, Lorg/apache/poi/examples/OpenWord;->saveDir:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/apache/poi/convert/WordConvertFactory;->write(Ljava/lang/String;Z)V

    return-void
.end method
