.class public Lcom/onyx/poi/POIFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "POIFactory"

.field public static b:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    :try_start_0
    new-instance v0, Lorg/apache/logging/NeoLoggerContextFactory;

    invoke-direct {v0}, Lorg/apache/logging/NeoLoggerContextFactory;-><init>()V

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->setFactory(Lorg/apache/logging/log4j/spi/LoggerContextFactory;)V

    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    invoke-static {v0, v1}, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->setMinInflateRatio(D)V

    const/high16 v0, 0x100000

    invoke-static {v0}, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;->setThresholdBytesForTempFiles(I)V

    const-string v0, "px"

    invoke-static {v0}, Lorg/apache/poi/convert/AbstractConverter;->setFontUnit(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;

    invoke-direct {v0}, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;-><init>()V

    invoke-virtual {v0}, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/XmlOptions;->setLoadUseXMLReader(Lorg/xml/sax/XMLReader;)Lorg/apache/xmlbeans/XmlOptions;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/onyx/poi/POIFactory;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/onyx/common/util/JLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/onyx/poi/POIFactory;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/onyx/poi/POIFactory;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/onyx/tex/MathLaTeX;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static openPPT(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/sl/PPTFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/sl/PPTFactory$Builder;

    invoke-direct {v0}, Lorg/apache/poi/sl/PPTFactory$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/poi/sl/PPTFactory$Builder;->setFilePath(Ljava/lang/String;)Lorg/apache/poi/sl/PPTFactory$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/PPTFactory$Builder;->setPassword(Ljava/lang/String;)Lorg/apache/poi/sl/PPTFactory$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/sl/PPTFactory$Builder;->build()Lorg/apache/poi/sl/PPTFactory;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/sl/PPTFactory;->openPPT()V

    return-object p0
.end method

.method public static openWord(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/convert/WordConvertFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9
    new-instance v0, Lorg/apache/poi/convert/WordConvertFactory$Builder;

    invoke-direct {v0}, Lorg/apache/poi/convert/WordConvertFactory$Builder;-><init>()V

    .line 10
    invoke-virtual {v0, p0}, Lorg/apache/poi/convert/WordConvertFactory$Builder;->setFilePath(Ljava/lang/String;)Lorg/apache/poi/convert/WordConvertFactory$Builder;

    move-result-object p0

    .line 11
    invoke-virtual {p0, p1}, Lorg/apache/poi/convert/WordConvertFactory$Builder;->setPassword(Ljava/lang/String;)Lorg/apache/poi/convert/WordConvertFactory$Builder;

    move-result-object p0

    const/16 p1, 0x7d0

    .line 12
    invoke-virtual {p0, p1}, Lorg/apache/poi/convert/WordConvertFactory$Builder;->setDocumentParaSize(I)Lorg/apache/poi/convert/WordConvertFactory$Builder;

    move-result-object p0

    const p1, 0x3e4ccccd    # 0.2f

    .line 13
    invoke-virtual {p0, p1}, Lorg/apache/poi/convert/WordConvertFactory$Builder;->setTableIndentRatio(F)Lorg/apache/poi/convert/WordConvertFactory$Builder;

    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lorg/apache/poi/convert/WordConvertFactory$Builder;->build()Lorg/apache/poi/convert/WordConvertFactory;

    move-result-object p0

    return-object p0
.end method

.method public static openWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/convert/WordConvertFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/poi/convert/BitmapPicturesManager;

    invoke-direct {v0, p2}, Lorg/apache/poi/convert/BitmapPicturesManager;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p2, Lorg/apache/poi/convert/WordConvertFactory$Builder;

    invoke-direct {p2}, Lorg/apache/poi/convert/WordConvertFactory$Builder;-><init>()V

    .line 3
    invoke-virtual {p2, p0}, Lorg/apache/poi/convert/WordConvertFactory$Builder;->setFilePath(Ljava/lang/String;)Lorg/apache/poi/convert/WordConvertFactory$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/poi/convert/WordConvertFactory$Builder;->setPassword(Ljava/lang/String;)Lorg/apache/poi/convert/WordConvertFactory$Builder;

    move-result-object p0

    const/16 p1, 0x7d0

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/poi/convert/WordConvertFactory$Builder;->setDocumentParaSize(I)Lorg/apache/poi/convert/WordConvertFactory$Builder;

    move-result-object p0

    const p1, 0x3e4ccccd    # 0.2f

    .line 6
    invoke-virtual {p0, p1}, Lorg/apache/poi/convert/WordConvertFactory$Builder;->setTableIndentRatio(F)Lorg/apache/poi/convert/WordConvertFactory$Builder;

    move-result-object p0

    .line 7
    invoke-virtual {p0, v0}, Lorg/apache/poi/convert/WordConvertFactory$Builder;->setPicturesManager(Lorg/apache/poi/picture/PicturesManager;)Lorg/apache/poi/convert/WordConvertFactory$Builder;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lorg/apache/poi/convert/WordConvertFactory$Builder;->build()Lorg/apache/poi/convert/WordConvertFactory;

    move-result-object p0

    return-object p0
.end method

.method public static printPOIThrowable(Ljava/lang/Throwable;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.apache.poi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/onyx/poi/POIFactory;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/onyx/poi/POIFactory;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/onyx/common/util/JLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static setLimitXWPFDocumentSize(I)V
    .locals 0

    sput p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->DOCUMENT_MAX_SIZE:I

    return-void
.end method
