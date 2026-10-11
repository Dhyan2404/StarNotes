.class public Lorg/apache/poi/convert/WordConvertFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/convert/WordConvertFactory$Builder;
    }
.end annotation


# static fields
.field public static final DOCX_EXTENSION:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOC_EXTENSION:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private abort:Z

.field private converter:Lorg/apache/poi/convert/WordConverter;

.field private documentSize:I

.field private filePath:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private picturesCache:Lorg/apache/poi/picture/PicturesCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/picture/PicturesCache<",
            "*>;"
        }
    .end annotation
.end field

.field private picturesManager:Lorg/apache/poi/picture/PicturesManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/picture/PicturesManager<",
            "*>;"
        }
    .end annotation
.end field

.field private tableIndentRatio:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/poi/convert/WordConvertFactory$1;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/apache/poi/convert/WordConvertFactory$1;-><init>(I)V

    sput-object v0, Lorg/apache/poi/convert/WordConvertFactory;->DOC_EXTENSION:Ljava/util/List;

    new-instance v0, Lorg/apache/poi/convert/WordConvertFactory$2;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/apache/poi/convert/WordConvertFactory$2;-><init>(I)V

    sput-object v0, Lorg/apache/poi/convert/WordConvertFactory;->DOCX_EXTENSION:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/poi/convert/WordConvertFactory$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/convert/WordConvertFactory;-><init>()V

    return-void
.end method

.method public static accept(Ljava/lang/String;)Z
    .locals 3

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/convert/WordConvertFactory;->DOC_EXTENSION:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/poi/convert/WordConvertFactory;->DOCX_EXTENSION:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public static synthetic access$102(Lorg/apache/poi/convert/WordConvertFactory;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/convert/WordConvertFactory;->filePath:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$202(Lorg/apache/poi/convert/WordConvertFactory;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/convert/WordConvertFactory;->password:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$302(Lorg/apache/poi/convert/WordConvertFactory;I)I
    .locals 0

    iput p1, p0, Lorg/apache/poi/convert/WordConvertFactory;->documentSize:I

    return p1
.end method

.method public static synthetic access$402(Lorg/apache/poi/convert/WordConvertFactory;F)F
    .locals 0

    iput p1, p0, Lorg/apache/poi/convert/WordConvertFactory;->tableIndentRatio:F

    return p1
.end method

.method public static synthetic access$502(Lorg/apache/poi/convert/WordConvertFactory;Lorg/apache/poi/picture/PicturesManager;)Lorg/apache/poi/picture/PicturesManager;
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/convert/WordConvertFactory;->picturesManager:Lorg/apache/poi/picture/PicturesManager;

    return-object p1
.end method

.method private createConvert()Lorg/apache/poi/convert/WordConverter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/poi/convert/WordConvertFactory;->getExtension()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/convert/WordConvertFactory;->DOC_EXTENSION:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/convert/WordConvertFactory;->createWithHWPF()Lorg/apache/poi/convert/WordConverter;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/apache/poi/convert/WordConvertFactory;->DOCX_EXTENSION:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/apache/poi/convert/WordConvertFactory;->createWithXWPF()Lorg/apache/poi/convert/WordConverter;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/convert/WordConvertFactory;->filePath:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createHtmlWordToHtmlConvert()Lorg/apache/poi/convert/WordConverter;
    .locals 1

    .line 6
    new-instance v0, Lorg/apache/poi/convert/hwpf/HtmlWordToHtmlConverter;

    iget-object p0, p0, Lorg/apache/poi/convert/WordConvertFactory;->filePath:Ljava/lang/String;

    invoke-direct {v0, p0}, Lorg/apache/poi/convert/hwpf/HtmlWordToHtmlConverter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private createHtmlWordToHtmlConvert(Lorg/apache/poi/hwpf/OLE2InternalFileException;)Lorg/apache/poi/convert/WordConverter;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/hwpf/OLE2InternalFileException;->getData()[B

    move-result-object p0

    .line 2
    invoke-static {p0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf([B)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object p1

    .line 3
    sget-object v0, Lorg/apache/poi/poifs/filesystem/FileMagic;->HTML:Lorg/apache/poi/poifs/filesystem/FileMagic;

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/apache/poi/poifs/filesystem/FileMagic;->XML:Lorg/apache/poi/poifs/filesystem/FileMagic;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    :goto_0
    new-instance p1, Lorg/apache/poi/convert/hwpf/HtmlWordToHtmlConverter;

    invoke-direct {p1, p0}, Lorg/apache/poi/convert/hwpf/HtmlWordToHtmlConverter;-><init>([B)V

    return-object p1
.end method

.method private createSMTPConvert()Lorg/apache/poi/convert/WordConverter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/smtp/SMTPDocument;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lorg/apache/poi/convert/WordConvertFactory;->filePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/poi/smtp/SMTPDocument;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    new-instance v1, Lorg/apache/poi/convert/smtp/SMTPConverter;

    invoke-direct {v1, v0}, Lorg/apache/poi/convert/smtp/SMTPConverter;-><init>(Lorg/apache/poi/smtp/SMTPDocument;)V

    invoke-direct {p0, v1}, Lorg/apache/poi/convert/WordConvertFactory;->setPicturesManager(Lorg/apache/poi/convert/WordConverter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/poi/smtp/SMTPDocument;->close()V

    return-object v1

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_2
    invoke-virtual {v0}, Lorg/apache/poi/smtp/SMTPDocument;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method private createWithHWPF()Lorg/apache/poi/convert/WordConverter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/poi/convert/WordConvertFactory;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/poi/convert/WordConvertFactory;->password:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils;->loadDoc(Ljava/io/File;Ljava/lang/String;)Lorg/apache/poi/hwpf/HWPFDocumentCore;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlConverter;

    invoke-direct {v1, v0}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlConverter;-><init>(Lorg/apache/poi/hwpf/HWPFDocumentCore;)V

    iget v0, p0, Lorg/apache/poi/convert/WordConvertFactory;->tableIndentRatio:F

    invoke-virtual {v1, v0}, Lorg/apache/poi/convert/AbstractConverter;->setTableIndentRatio(F)V

    iget v0, p0, Lorg/apache/poi/convert/WordConvertFactory;->documentSize:I

    invoke-virtual {v1, v0}, Lorg/apache/poi/convert/AbstractConverter;->setDocumentParaSize(I)V

    invoke-direct {p0, v1}, Lorg/apache/poi/convert/WordConvertFactory;->setPicturesManager(Lorg/apache/poi/convert/WordConverter;)V
    :try_end_0
    .catch Lorg/apache/poi/hwpf/OLE2InternalFileException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/apache/poi/poifs/filesystem/SMTPFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/poi/poifs/filesystem/HTMLFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/poi/poifs/filesystem/OfficeXmlFileException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    throw p0

    :catch_1
    invoke-direct {p0}, Lorg/apache/poi/convert/WordConvertFactory;->createWithXWPF()Lorg/apache/poi/convert/WordConverter;

    move-result-object p0

    return-object p0

    :catch_2
    invoke-direct {p0}, Lorg/apache/poi/convert/WordConvertFactory;->createHtmlWordToHtmlConvert()Lorg/apache/poi/convert/WordConverter;

    move-result-object p0

    return-object p0

    :catch_3
    invoke-direct {p0}, Lorg/apache/poi/convert/WordConvertFactory;->createSMTPConvert()Lorg/apache/poi/convert/WordConverter;

    move-result-object p0

    return-object p0

    :catch_4
    move-exception v0

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/WordConvertFactory;->createHtmlWordToHtmlConvert(Lorg/apache/poi/hwpf/OLE2InternalFileException;)Lorg/apache/poi/convert/WordConverter;

    move-result-object p0

    return-object p0
.end method

.method private createWithXWPF()Lorg/apache/poi/convert/WordConverter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lorg/apache/poi/common/XmlBeanUtils;->parseDocument(Z)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/poi/convert/WordConvertFactory;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/poi/convert/WordConvertFactory;->password:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->loadDoc(Ljava/io/File;Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/apache/poi/common/XmlBeanUtils;->parseDocument(Z)V

    new-instance v1, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlConverter;

    invoke-direct {v1, v0}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlConverter;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;)V

    iget v0, p0, Lorg/apache/poi/convert/WordConvertFactory;->tableIndentRatio:F

    invoke-virtual {v1, v0}, Lorg/apache/poi/convert/AbstractConverter;->setTableIndentRatio(F)V

    iget v0, p0, Lorg/apache/poi/convert/WordConvertFactory;->documentSize:I

    invoke-virtual {v1, v0}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlConverter;->setDocumentParaSize(I)V

    invoke-direct {p0, v1}, Lorg/apache/poi/convert/WordConvertFactory;->setPicturesManager(Lorg/apache/poi/convert/WordConverter;)V
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/OLE2NotOfficeXmlFileException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/poi/poifs/filesystem/SMTPFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/poi/poifs/filesystem/HTMLFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    throw p0

    :catch_1
    invoke-direct {p0}, Lorg/apache/poi/convert/WordConvertFactory;->createHtmlWordToHtmlConvert()Lorg/apache/poi/convert/WordConverter;

    move-result-object p0

    return-object p0

    :catch_2
    invoke-direct {p0}, Lorg/apache/poi/convert/WordConvertFactory;->createSMTPConvert()Lorg/apache/poi/convert/WordConverter;

    move-result-object p0

    return-object p0

    :catch_3
    invoke-direct {p0}, Lorg/apache/poi/convert/WordConvertFactory;->createWithHWPF()Lorg/apache/poi/convert/WordConverter;

    move-result-object p0

    return-object p0
.end method

.method private getExtension()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/convert/WordConvertFactory;->filePath:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/convert/WordConvertFactory;->filePath:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private setPicturesManager(Lorg/apache/poi/convert/WordConverter;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/convert/WordConvertFactory;->picturesManager:Lorg/apache/poi/picture/PicturesManager;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lorg/apache/poi/convert/WordConverter;->setPicturesManager(Lorg/apache/poi/picture/PicturesManager;)V

    iget-object p1, p0, Lorg/apache/poi/convert/WordConvertFactory;->picturesManager:Lorg/apache/poi/picture/PicturesManager;

    invoke-virtual {p1}, Lorg/apache/poi/picture/PicturesManager;->getPicturesCache()Lorg/apache/poi/picture/PicturesCache;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/convert/WordConvertFactory;->picturesCache:Lorg/apache/poi/picture/PicturesCache;

    :cond_0
    return-void
.end method

.method public static setXWPFDocumentSupportedSize(I)V
    .locals 0

    sput p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->DOCUMENT_MAX_SIZE:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/WordConvertFactory;->picturesManager:Lorg/apache/poi/picture/PicturesManager;

    invoke-static {p0}, Lorg/apache/poi/util/CloseUtils;->close(Ljava/io/Closeable;)V

    return-void
.end method

.method public convertWord()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/poi/convert/WordConvertFactory;->createConvert()Lorg/apache/poi/convert/WordConverter;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/convert/WordConvertFactory;->converter:Lorg/apache/poi/convert/WordConverter;

    iget-boolean v1, p0, Lorg/apache/poi/convert/WordConvertFactory;->abort:Z

    invoke-interface {v0, v1}, Lorg/apache/poi/convert/WordConverter;->setAbort(Z)V

    iget-object v0, p0, Lorg/apache/poi/convert/WordConvertFactory;->converter:Lorg/apache/poi/convert/WordConverter;

    invoke-interface {v0}, Lorg/apache/poi/convert/WordConverter;->convert()V

    iget-object p0, p0, Lorg/apache/poi/convert/WordConvertFactory;->converter:Lorg/apache/poi/convert/WordConverter;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public getConverter()Lorg/apache/poi/convert/WordConverter;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/WordConvertFactory;->converter:Lorg/apache/poi/convert/WordConverter;

    return-object p0
.end method

.method public getDocumentSize()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/convert/WordConvertFactory;->documentSize:I

    return p0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/WordConvertFactory;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method public getMetaData()Lorg/apache/poi/sl/MetaData;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/WordConvertFactory;->converter:Lorg/apache/poi/convert/WordConverter;

    invoke-interface {p0}, Lorg/apache/poi/convert/WordConverter;->getMetaData()Lorg/apache/poi/sl/MetaData;

    move-result-object p0

    return-object p0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/WordConvertFactory;->password:Ljava/lang/String;

    return-object p0
.end method

.method public getPicturesCache()Lorg/apache/poi/picture/PicturesCache;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/picture/PicturesCache<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/convert/WordConvertFactory;->picturesCache:Lorg/apache/poi/picture/PicturesCache;

    return-object p0
.end method

.method public getPicturesManager()Lorg/apache/poi/picture/PicturesManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/picture/PicturesManager<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/convert/WordConvertFactory;->picturesManager:Lorg/apache/poi/picture/PicturesManager;

    return-object p0
.end method

.method public getTableIndentRatio()F
    .locals 0

    iget p0, p0, Lorg/apache/poi/convert/WordConvertFactory;->tableIndentRatio:F

    return p0
.end method

.method public isAbort()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/convert/WordConvertFactory;->abort:Z

    return p0
.end method

.method public setAbort(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/convert/WordConvertFactory;->abort:Z

    iget-object p0, p0, Lorg/apache/poi/convert/WordConvertFactory;->converter:Lorg/apache/poi/convert/WordConverter;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/apache/poi/convert/WordConverter;->setAbort(Z)V

    :cond_0
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/apache/poi/convert/WordConvertFactory;->converter:Lorg/apache/poi/convert/WordConverter;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lorg/apache/poi/convert/WordConverter;->write(Ljava/lang/String;Z)V

    return-void
.end method

.method public write(Ljava/lang/String;Z)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/poi/convert/WordConvertFactory;->converter:Lorg/apache/poi/convert/WordConverter;

    invoke-interface {p0, p1, p2}, Lorg/apache/poi/convert/WordConverter;->write(Ljava/lang/String;Z)V

    return-void
.end method
