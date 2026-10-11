.class public Lorg/apache/poi/sl/PPTFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/sl/PPTFactory$Creator;,
        Lorg/apache/poi/sl/PPTFactory$Builder;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/apache/logging/log4j/Logger;

.field public static final pptExtensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final pptxExtensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private filePath:Ljava/lang/String;

.field private metaData:Lorg/apache/poi/sl/MetaData;

.field private pageSize:Ljava/awt/Dimension;

.field private password:Ljava/lang/String;

.field private slideCache:Lorg/apache/poi/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/util/LruCache<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/sl/usermodel/Slide<",
            "+",
            "Lorg/apache/poi/sl/usermodel/Shape;",
            "+",
            "Lorg/apache/poi/sl/usermodel/TextParagraph;",
            ">;>;"
        }
    .end annotation
.end field

.field private slideShow:Lorg/apache/poi/sl/usermodel/SlideShow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/sl/usermodel/SlideShow<",
            "+",
            "Lorg/apache/poi/sl/usermodel/Shape;",
            "+",
            "Lorg/apache/poi/sl/usermodel/TextParagraph;",
            ">;"
        }
    .end annotation
.end field

.field private slideSize:I

.field private textHandler:Lorg/apache/poi/text/TextHandler;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/apache/poi/sl/PPTFactory;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/PPTFactory;->LOG:Lorg/apache/logging/log4j/Logger;

    new-instance v0, Lorg/apache/poi/sl/PPTFactory$1;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/apache/poi/sl/PPTFactory$1;-><init>(I)V

    sput-object v0, Lorg/apache/poi/sl/PPTFactory;->pptExtensions:Ljava/util/List;

    new-instance v0, Lorg/apache/poi/sl/PPTFactory$2;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/apache/poi/sl/PPTFactory$2;-><init>(I)V

    sput-object v0, Lorg/apache/poi/sl/PPTFactory;->pptxExtensions:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lorg/apache/poi/sl/PPTFactory$3;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/sl/PPTFactory$3;-><init>(Lorg/apache/poi/sl/PPTFactory;I)V

    iput-object v0, p0, Lorg/apache/poi/sl/PPTFactory;->slideCache:Lorg/apache/poi/util/LruCache;

    .line 4
    new-instance v0, Lorg/apache/poi/sl/MetaData;

    invoke-direct {v0}, Lorg/apache/poi/sl/MetaData;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sl/PPTFactory;->metaData:Lorg/apache/poi/sl/MetaData;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/poi/sl/PPTFactory$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/sl/PPTFactory;-><init>()V

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

    sget-object v0, Lorg/apache/poi/sl/PPTFactory;->pptExtensions:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/poi/sl/PPTFactory;->pptxExtensions:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public static synthetic access$102(Lorg/apache/poi/sl/PPTFactory;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/PPTFactory;->filePath:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$202(Lorg/apache/poi/sl/PPTFactory;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/PPTFactory;->password:Ljava/lang/String;

    return-object p1
.end method

.method private createWithHSLF()Lorg/apache/poi/sl/usermodel/SlideShow;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/SlideShow<",
            "+",
            "Lorg/apache/poi/sl/usermodel/Shape;",
            "+",
            "Lorg/apache/poi/sl/usermodel/TextParagraph;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowFactory;

    invoke-direct {v0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowFactory;-><init>()V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/apache/poi/sl/PPTFactory;->filePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/poi/sl/PPTFactory;->password:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowFactory;->create(Ljava/io/File;Ljava/lang/String;Z)Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/poi/poifs/filesystem/OfficeXmlFileException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    throw p0

    :catch_1
    invoke-direct {p0}, Lorg/apache/poi/sl/PPTFactory;->createWithXSLF()Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object p0

    return-object p0
.end method

.method private createWithXSLF()Lorg/apache/poi/sl/usermodel/SlideShow;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/SlideShow<",
            "+",
            "Lorg/apache/poi/sl/usermodel/Shape;",
            "+",
            "Lorg/apache/poi/sl/usermodel/TextParagraph;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0}, Lorg/apache/poi/common/XmlBeanUtils;->parseDocument(Z)V

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFSlideShowFactory;

    invoke-direct {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideShowFactory;-><init>()V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/apache/poi/sl/PPTFactory;->filePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/poi/sl/PPTFactory;->password:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lorg/apache/poi/xslf/usermodel/XSLFSlideShowFactory;->create(Ljava/io/File;Ljava/lang/String;Z)Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/OLE2NotOfficeXmlFileException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lorg/apache/poi/common/XmlBeanUtils;->parseDocument(Z)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    throw p0

    :catch_1
    invoke-direct {p0}, Lorg/apache/poi/sl/PPTFactory;->createWithHSLF()Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lorg/apache/poi/common/XmlBeanUtils;->parseDocument(Z)V

    return-object p0

    :goto_0
    invoke-static {v1}, Lorg/apache/poi/common/XmlBeanUtils;->parseDocument(Z)V

    throw p0
.end method

.method private getCurrentSlide(I)Lorg/apache/poi/sl/usermodel/Slide;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/poi/sl/usermodel/Slide<",
            "+",
            "Lorg/apache/poi/sl/usermodel/Shape;",
            "+",
            "Lorg/apache/poi/sl/usermodel/TextParagraph;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/sl/PPTFactory;->slideCache:Lorg/apache/poi/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/usermodel/Slide;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/sl/PPTFactory;->slideShow:Lorg/apache/poi/sl/usermodel/SlideShow;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/SlideShow;->getSlides()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/usermodel/Slide;

    iget-object p0, p0, Lorg/apache/poi/sl/PPTFactory;->slideCache:Lorg/apache/poi/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/Slide;->init()V

    return-object v0
.end method

.method private getExtension()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/sl/PPTFactory;->filePath:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/sl/PPTFactory;->filePath:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private handleTextAfter(Ljava/awt/Graphics2D;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/sl/PPTFactory;->textHandler:Lorg/apache/poi/text/TextHandler;

    invoke-virtual {v0}, Lorg/apache/poi/text/TextHandler;->getActiveSheet()Lorg/apache/poi/text/TextSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/text/TextSheet;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/text/ITextHandler;->TEXT_HANDLER:Lorg/apache/poi/text/ITextHandler$Key;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/apache/poi/sl/PPTFactory;->textHandler:Lorg/apache/poi/text/TextHandler;

    invoke-virtual {p1}, Lorg/apache/poi/text/TextHandler;->getActiveSheet()Lorg/apache/poi/text/TextSheet;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/poi/text/TextSheet;->setCompleted(Z)Lorg/apache/poi/text/TextSheet;

    iget-object p1, p0, Lorg/apache/poi/sl/PPTFactory;->textHandler:Lorg/apache/poi/text/TextHandler;

    invoke-virtual {p1}, Lorg/apache/poi/text/TextHandler;->getActiveSheet()Lorg/apache/poi/text/TextSheet;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/text/TextSheet;->handleTextCompleted()V

    iget-object p0, p0, Lorg/apache/poi/sl/PPTFactory;->textHandler:Lorg/apache/poi/text/TextHandler;

    invoke-virtual {p0, v1}, Lorg/apache/poi/text/TextHandler;->bindGraphics(Ljava/awt/Graphics2D;)V

    :cond_0
    return-void
.end method

.method private handleTextBefore(Ljava/awt/Graphics2D;I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/PPTFactory;->textHandler:Lorg/apache/poi/text/TextHandler;

    invoke-virtual {v0, p2}, Lorg/apache/poi/text/TextHandler;->setActiveSheet(I)V

    iget-object p2, p0, Lorg/apache/poi/sl/PPTFactory;->textHandler:Lorg/apache/poi/text/TextHandler;

    invoke-virtual {p2}, Lorg/apache/poi/text/TextHandler;->getActiveSheet()Lorg/apache/poi/text/TextSheet;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/text/TextSheet;->isCompleted()Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lorg/apache/poi/text/ITextHandler;->TEXT_HANDLER:Lorg/apache/poi/text/ITextHandler$Key;

    iget-object v0, p0, Lorg/apache/poi/sl/PPTFactory;->textHandler:Lorg/apache/poi/text/TextHandler;

    invoke-virtual {p1, p2, v0}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object p2

    iget-object v0, p0, Lorg/apache/poi/sl/PPTFactory;->textHandler:Lorg/apache/poi/text/TextHandler;

    invoke-virtual {v0, p2}, Lorg/apache/poi/text/TextHandler;->setTransform(Ljava/awt/geom/AffineTransform;)Lorg/apache/poi/text/TextHandler;

    iget-object p0, p0, Lorg/apache/poi/sl/PPTFactory;->textHandler:Lorg/apache/poi/text/TextHandler;

    invoke-virtual {p0, p1}, Lorg/apache/poi/text/TextHandler;->bindGraphics(Ljava/awt/Graphics2D;)V

    :cond_0
    return-void
.end method

.method private hasText(Lorg/apache/poi/sl/usermodel/ShapeContainer;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/ShapeContainer<",
            "+",
            "Lorg/apache/poi/sl/usermodel/Shape;",
            "+",
            "Lorg/apache/poi/sl/usermodel/TextParagraph;",
            ">;)Z"
        }
    .end annotation

    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/usermodel/Shape;

    .line 13
    instance-of v1, v0, Lorg/apache/poi/sl/usermodel/TextShape;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 14
    :cond_1
    instance-of v1, v0, Lorg/apache/poi/sl/usermodel/TableShape;

    if-eqz v1, :cond_2

    .line 15
    check-cast v0, Lorg/apache/poi/sl/usermodel/TableShape;

    invoke-direct {p0, v0}, Lorg/apache/poi/sl/PPTFactory;->hasText(Lorg/apache/poi/sl/usermodel/TableShape;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 16
    :cond_2
    instance-of v1, v0, Lorg/apache/poi/sl/usermodel/ShapeContainer;

    if-eqz v1, :cond_0

    .line 17
    check-cast v0, Lorg/apache/poi/sl/usermodel/ShapeContainer;

    invoke-direct {p0, v0}, Lorg/apache/poi/sl/PPTFactory;->hasText(Lorg/apache/poi/sl/usermodel/ShapeContainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private hasText(Lorg/apache/poi/sl/usermodel/TableShape;)Z
    .locals 5

    .line 18
    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/TableShape;->getNumberOfRows()I

    move-result p0

    .line 19
    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/TableShape;->getNumberOfColumns()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_2

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_1

    .line 20
    invoke-interface {p1, v2, v3}, Lorg/apache/poi/sl/usermodel/TableShape;->getCell(II)Lorg/apache/poi/sl/usermodel/TableCell;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/PPTFactory;->slideCache:Lorg/apache/poi/util/LruCache;

    invoke-virtual {v0}, Lorg/apache/poi/util/LruCache;->evictAll()V

    iget-object p0, p0, Lorg/apache/poi/sl/PPTFactory;->slideShow:Lorg/apache/poi/sl/usermodel/SlideShow;

    invoke-static {p0}, Lorg/apache/poi/util/CloseUtils;->close(Ljava/io/Closeable;)V

    return-void
.end method

.method public drawSlide(Ljava/awt/Graphics2D;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/sl/PPTFactory;->handleTextBefore(Ljava/awt/Graphics2D;I)V

    invoke-direct {p0, p2}, Lorg/apache/poi/sl/PPTFactory;->getCurrentSlide(I)Lorg/apache/poi/sl/usermodel/Slide;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/apache/poi/sl/usermodel/Sheet;->draw(Ljava/awt/Graphics2D;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/PPTFactory;->handleTextAfter(Ljava/awt/Graphics2D;)V

    return-void
.end method

.method public drawTextBounds(Ljava/awt/Graphics2D;I)V
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/sl/PPTFactory;->textHandler:Lorg/apache/poi/text/TextHandler;

    invoke-virtual {p0, p2}, Lorg/apache/poi/text/TextHandler;->getTextSheet(I)Lorg/apache/poi/text/TextSheet;

    move-result-object p0

    sget-object p2, Ljava/awt/Color;->RED:Ljava/awt/Color;

    invoke-virtual {p1, p2}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    invoke-virtual {p0}, Lorg/apache/poi/text/TextSheet;->getPieces()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/text/Piece;

    invoke-virtual {p2}, Lorg/apache/poi/text/Piece;->getLines()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/text/Line;

    invoke-virtual {v0}, Lorg/apache/poi/text/Line;->getWords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/text/OneWord;

    invoke-virtual {v1}, Lorg/apache/poi/text/OneWord;->getRectangle()Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/awt/Graphics2D;->draw(Ljava/awt/Shape;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/PPTFactory;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method public getMetaData()Lorg/apache/poi/sl/MetaData;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/PPTFactory;->metaData:Lorg/apache/poi/sl/MetaData;

    return-object p0
.end method

.method public getPageSize()Ljava/awt/Dimension;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/PPTFactory;->pageSize:Ljava/awt/Dimension;

    return-object p0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/PPTFactory;->password:Ljava/lang/String;

    return-object p0
.end method

.method public getSlideShow()Lorg/apache/poi/sl/usermodel/SlideShow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/SlideShow<",
            "+",
            "Lorg/apache/poi/sl/usermodel/Shape;",
            "+",
            "Lorg/apache/poi/sl/usermodel/TextParagraph;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/sl/PPTFactory;->slideShow:Lorg/apache/poi/sl/usermodel/SlideShow;

    return-object p0
.end method

.method public getSlideSize()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/sl/PPTFactory;->slideSize:I

    return p0
.end method

.method public getSlideTitle(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/sl/PPTFactory;->slideShow:Lorg/apache/poi/sl/usermodel/SlideShow;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/SlideShow;->getSlides()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/usermodel/Slide;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/Slide;->init()V

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/Slide;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/Slide;->getSlideName()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/sl/PPTFactory;->slideCache:Lorg/apache/poi/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/Slide;->free()V

    :cond_1
    return-object v1
.end method

.method public getTextHandler()Lorg/apache/poi/text/TextHandler;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/PPTFactory;->textHandler:Lorg/apache/poi/text/TextHandler;

    return-object p0
.end method

.method public getThumbnail()Ljava/io/InputStream;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/sl/PPTFactory;->slideShow:Lorg/apache/poi/sl/usermodel/SlideShow;

    instance-of v0, p0, Lorg/apache/poi/POIDocument;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p0, Lorg/apache/poi/POIDocument;

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getSummaryInformation()Lorg/apache/poi/hpsf/SummaryInformation;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->getThumbnail()[B

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :goto_0
    return-object v1

    :cond_2
    instance-of v0, p0, Lorg/apache/poi/ooxml/POIXMLDocument;

    if-eqz v0, :cond_3

    :try_start_0
    check-cast p0, Lorg/apache/poi/ooxml/POIXMLDocument;

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocument;->getProperties()Lorg/apache/poi/ooxml/POIXMLProperties;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLProperties;->getThumbnailImage()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lorg/apache/poi/sl/PPTFactory;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/logging/log4j/LogBuilder;->log()V

    :cond_3
    return-object v1
.end method

.method public handleText(Ljava/awt/Graphics2D;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/poi/sl/PPTFactory;->textHandler:Lorg/apache/poi/text/TextHandler;

    invoke-virtual {v0, p2}, Lorg/apache/poi/text/TextHandler;->getTextSheet(I)Lorg/apache/poi/text/TextSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/text/TextSheet;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/sl/PPTFactory;->handleTextBefore(Ljava/awt/Graphics2D;I)V

    .line 3
    invoke-direct {p0, p2}, Lorg/apache/poi/sl/PPTFactory;->getCurrentSlide(I)Lorg/apache/poi/sl/usermodel/Slide;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/apache/poi/sl/usermodel/Sheet;->draw(Ljava/awt/Graphics2D;)V

    .line 4
    invoke-direct {p0, p1}, Lorg/apache/poi/sl/PPTFactory;->handleTextAfter(Ljava/awt/Graphics2D;)V

    return-void
.end method

.method public handleText(Lorg/apache/poi/sl/PPTFactory$Creator;I)V
    .locals 1

    .line 5
    iget-object v0, p0, Lorg/apache/poi/sl/PPTFactory;->textHandler:Lorg/apache/poi/text/TextHandler;

    invoke-virtual {v0, p2}, Lorg/apache/poi/text/TextHandler;->getTextSheet(I)Lorg/apache/poi/text/TextSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/text/TextSheet;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/sl/PPTFactory$Creator;->create()Ljava/awt/Graphics2D;

    move-result-object p1

    .line 7
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/sl/PPTFactory;->handleTextBefore(Ljava/awt/Graphics2D;I)V

    .line 8
    invoke-direct {p0, p2}, Lorg/apache/poi/sl/PPTFactory;->getCurrentSlide(I)Lorg/apache/poi/sl/usermodel/Slide;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/apache/poi/sl/usermodel/Sheet;->draw(Ljava/awt/Graphics2D;)V

    .line 9
    invoke-direct {p0, p1}, Lorg/apache/poi/sl/PPTFactory;->handleTextAfter(Ljava/awt/Graphics2D;)V

    .line 10
    invoke-virtual {p1}, Ljava/awt/Graphics2D;->dispose()V

    return-void
.end method

.method public hasText(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/poi/sl/PPTFactory;->textHandler:Lorg/apache/poi/text/TextHandler;

    invoke-virtual {v0, p1}, Lorg/apache/poi/text/TextHandler;->setActiveSheet(I)V

    .line 2
    iget-object v0, p0, Lorg/apache/poi/sl/PPTFactory;->textHandler:Lorg/apache/poi/text/TextHandler;

    invoke-virtual {v0}, Lorg/apache/poi/text/TextHandler;->getActiveSheet()Lorg/apache/poi/text/TextSheet;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lorg/apache/poi/text/TextSheet;->getTextState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    .line 4
    invoke-virtual {v0}, Lorg/apache/poi/text/TextSheet;->getPieces()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 5
    invoke-virtual {v0, v3}, Lorg/apache/poi/text/TextSheet;->setTextState(I)V

    return v2

    .line 6
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/sl/PPTFactory;->slideShow:Lorg/apache/poi/sl/usermodel/SlideShow;

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/SlideShow;->getSlides()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/sl/usermodel/Slide;

    .line 7
    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/Slide;->init()V

    .line 8
    invoke-direct {p0, v1}, Lorg/apache/poi/sl/PPTFactory;->hasText(Lorg/apache/poi/sl/usermodel/ShapeContainer;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    .line 9
    :cond_1
    invoke-virtual {v0, v2}, Lorg/apache/poi/text/TextSheet;->setTextState(I)V

    .line 10
    iget-object p0, p0, Lorg/apache/poi/sl/PPTFactory;->slideCache:Lorg/apache/poi/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    .line 11
    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/Slide;->free()V

    :cond_2
    return v4

    :cond_3
    return v2

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public openPPT()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/poi/sl/PPTFactory;->getExtension()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/sl/PPTFactory;->pptExtensions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/sl/PPTFactory;->createWithHSLF()Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/PPTFactory;->slideShow:Lorg/apache/poi/sl/usermodel/SlideShow;

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/apache/poi/sl/PPTFactory;->pptxExtensions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/apache/poi/sl/PPTFactory;->createWithXSLF()Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/PPTFactory;->slideShow:Lorg/apache/poi/sl/usermodel/SlideShow;

    :goto_0
    iget-object v0, p0, Lorg/apache/poi/sl/PPTFactory;->metaData:Lorg/apache/poi/sl/MetaData;

    iget-object v1, p0, Lorg/apache/poi/sl/PPTFactory;->slideShow:Lorg/apache/poi/sl/usermodel/SlideShow;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sl/MetaData;->readProperties(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/poi/sl/PPTFactory;->slideShow:Lorg/apache/poi/sl/usermodel/SlideShow;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/SlideShow;->getSlides()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/sl/PPTFactory;->slideSize:I

    iget-object v0, p0, Lorg/apache/poi/sl/PPTFactory;->slideShow:Lorg/apache/poi/sl/usermodel/SlideShow;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/SlideShow;->getPageSize()Ljava/awt/Dimension;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sl/PPTFactory;->pageSize:Ljava/awt/Dimension;

    new-instance v0, Lorg/apache/poi/text/TextHandler;

    iget v1, p0, Lorg/apache/poi/sl/PPTFactory;->slideSize:I

    invoke-direct {v0, v1}, Lorg/apache/poi/text/TextHandler;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/sl/PPTFactory;->textHandler:Lorg/apache/poi/text/TextHandler;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/sl/PPTFactory;->filePath:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
