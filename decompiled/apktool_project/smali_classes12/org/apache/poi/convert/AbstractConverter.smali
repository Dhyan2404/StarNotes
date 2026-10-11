.class public abstract Lorg/apache/poi/convert/AbstractConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/convert/WordConverter;


# static fields
.field protected static FONT_UNIT:Ljava/lang/String; = "pt"


# instance fields
.field protected final LOG:Lorg/apache/logging/log4j/Logger;

.field protected abort:Z

.field protected decimalFormat:Ljava/text/DecimalFormat;

.field protected documentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/jsoup/nodes/Document;",
            ">;"
        }
    .end annotation
.end field

.field protected documentMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lorg/jsoup/nodes/Document;",
            ">;"
        }
    .end annotation
.end field

.field protected documentParaSize:I

.field protected metaData:Lorg/apache/poi/sl/MetaData;

.field protected picturesManager:Lorg/apache/poi/picture/PicturesManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/picture/PicturesManager<",
            "*>;"
        }
    .end annotation
.end field

.field protected styleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/poi/convert/WPStyle;",
            ">;"
        }
    .end annotation
.end field

.field protected tableIndentRatio:F

.field protected wpToc:Lorg/apache/poi/convert/WPToc;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/String;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/convert/AbstractConverter;->LOG:Lorg/apache/logging/log4j/Logger;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/convert/AbstractConverter;->documentMap:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/convert/AbstractConverter;->documentList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/convert/AbstractConverter;->styleList:Ljava/util/ArrayList;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0000.html"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/convert/AbstractConverter;->decimalFormat:Ljava/text/DecimalFormat;

    new-instance v0, Lorg/apache/poi/sl/MetaData;

    invoke-direct {v0}, Lorg/apache/poi/sl/MetaData;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/convert/AbstractConverter;->metaData:Lorg/apache/poi/sl/MetaData;

    new-instance v0, Lorg/apache/poi/convert/WPToc;

    invoke-direct {v0}, Lorg/apache/poi/convert/WPToc;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/convert/AbstractConverter;->wpToc:Lorg/apache/poi/convert/WPToc;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/apache/poi/convert/AbstractConverter;->tableIndentRatio:F

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/convert/AbstractConverter;->documentParaSize:I

    return-void
.end method

.method private buildConfig()Lorg/jsoup/nodes/Document;
    .locals 10

    new-instance v0, Lorg/jsoup/nodes/Document;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v1

    sget-object v2, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->xml:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Document$OutputSettings;->syntax(Lorg/jsoup/nodes/Document$OutputSettings$Syntax;)Lorg/jsoup/nodes/Document$OutputSettings;

    new-instance v1, Lorg/jsoup/nodes/XmlDeclaration;

    const/4 v2, 0x0

    const-string v3, "xml"

    invoke-direct {v1, v3, v2}, Lorg/jsoup/nodes/XmlDeclaration;-><init>(Ljava/lang/String;Z)V

    const-string v2, "version"

    const-string v4, "1.0"

    invoke-virtual {v1, v2, v4}, Lorg/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    const-string v2, "encoding"

    const-string v4, "UTF-8"

    invoke-virtual {v1, v2, v4}, Lorg/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    invoke-virtual {v0, v3}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/Element;->appendTo(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    const-string v2, "htmlList"

    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/jsoup/nodes/Element;->appendTo(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/convert/AbstractConverter;->documentMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "li"

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-virtual {v0, v5}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lorg/jsoup/nodes/Element;->text(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/jsoup/nodes/Element;->appendTo(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    const-string v2, "styleList"

    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/jsoup/nodes/Element;->appendTo(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/convert/AbstractConverter;->styleList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/convert/WPStyle;

    invoke-virtual {v0, v5}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v6

    invoke-virtual {v4}, Lorg/apache/poi/convert/WPStyle;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/jsoup/nodes/Element;->text(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/jsoup/nodes/Element;->appendTo(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    goto :goto_1

    :cond_1
    const-string v2, "toc"

    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v2

    const-string v3, "toc.html"

    invoke-virtual {v2, v3}, Lorg/jsoup/nodes/Element;->text(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/jsoup/nodes/Element;->appendTo(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    const-string v2, "metadata"

    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/jsoup/nodes/Element;->appendTo(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    const-string v2, "meta"

    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v3

    const-string v4, "application"

    const-string v5, "name"

    invoke-virtual {v3, v5, v4}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/poi/convert/AbstractConverter;->metaData:Lorg/apache/poi/sl/MetaData;

    invoke-virtual {v4}, Lorg/apache/poi/sl/MetaData;->getApplication()Ljava/lang/String;

    move-result-object v4

    const-string v6, "content"

    invoke-virtual {v3, v6, v4}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/jsoup/nodes/Element;->appendTo(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v3

    const-string v4, "author"

    invoke-virtual {v3, v5, v4}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/poi/convert/AbstractConverter;->metaData:Lorg/apache/poi/sl/MetaData;

    invoke-virtual {v4}, Lorg/apache/poi/sl/MetaData;->getAuthor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/jsoup/nodes/Element;->appendTo(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v3, v5, v4}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/poi/convert/AbstractConverter;->metaData:Lorg/apache/poi/sl/MetaData;

    invoke-virtual {v4}, Lorg/apache/poi/sl/MetaData;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/jsoup/nodes/Element;->appendTo(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v3

    const-string v4, "subject"

    invoke-virtual {v3, v5, v4}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/poi/convert/AbstractConverter;->metaData:Lorg/apache/poi/sl/MetaData;

    invoke-virtual {v4}, Lorg/apache/poi/sl/MetaData;->getSubject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/jsoup/nodes/Element;->appendTo(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v3

    const-string v4, "category"

    invoke-virtual {v3, v5, v4}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/poi/convert/AbstractConverter;->metaData:Lorg/apache/poi/sl/MetaData;

    invoke-virtual {v4}, Lorg/apache/poi/sl/MetaData;->getCategory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/jsoup/nodes/Element;->appendTo(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v3

    const-string v4, "company"

    invoke-virtual {v3, v5, v4}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/poi/convert/AbstractConverter;->metaData:Lorg/apache/poi/sl/MetaData;

    invoke-virtual {v4}, Lorg/apache/poi/sl/MetaData;->getCompany()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/jsoup/nodes/Element;->appendTo(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v3

    const-string v4, "keywords"

    invoke-virtual {v3, v5, v4}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/poi/convert/AbstractConverter;->metaData:Lorg/apache/poi/sl/MetaData;

    invoke-virtual {v4}, Lorg/apache/poi/sl/MetaData;->getKeywords()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/jsoup/nodes/Element;->appendTo(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v3

    const-string v4, "description"

    invoke-virtual {v3, v5, v4}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/poi/convert/AbstractConverter;->metaData:Lorg/apache/poi/sl/MetaData;

    invoke-virtual {v4}, Lorg/apache/poi/sl/MetaData;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/jsoup/nodes/Element;->appendTo(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v3

    const-string v4, "identifier"

    invoke-virtual {v3, v5, v4}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/poi/convert/AbstractConverter;->metaData:Lorg/apache/poi/sl/MetaData;

    invoke-virtual {v4}, Lorg/apache/poi/sl/MetaData;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/jsoup/nodes/Element;->appendTo(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v4

    const-string v7, "created"

    invoke-virtual {v4, v5, v7}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v4

    new-instance v7, Ljava/util/Date;

    iget-object v8, p0, Lorg/apache/poi/convert/AbstractConverter;->metaData:Lorg/apache/poi/sl/MetaData;

    invoke-virtual {v8}, Lorg/apache/poi/sl/MetaData;->getCreated()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/jsoup/nodes/Element;->appendTo(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v2

    const-string v4, "modified"

    invoke-virtual {v2, v5, v4}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v2

    new-instance v4, Ljava/util/Date;

    iget-object p0, p0, Lorg/apache/poi/convert/AbstractConverter;->metaData:Lorg/apache/poi/sl/MetaData;

    invoke-virtual {p0}, Lorg/apache/poi/sl/MetaData;->getModified()J

    move-result-wide v7

    invoke-direct {v4, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v6, p0}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/Element;->appendTo(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    return-object v0
.end method

.method public static final getFontUnit()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/poi/convert/AbstractConverter;->FONT_UNIT:Ljava/lang/String;

    return-object v0
.end method

.method public static final setFontUnit(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lorg/apache/poi/convert/AbstractConverter;->FONT_UNIT:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addHtmlDocumentStyle(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lorg/apache/poi/convert/WPStyle;

    invoke-direct {v0}, Lorg/apache/poi/convert/WPStyle;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/convert/AbstractConverter;->styleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/convert/AbstractConverter;->styleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "style%d.css"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/convert/WPStyle;->setName(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/poi/convert/WPStyle;->setData(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/convert/AbstractConverter;->styleList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public documentName(I)Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/convert/AbstractConverter;->decimalFormat:Ljava/text/DecimalFormat;

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDocument()Lorg/jsoup/nodes/Document;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/convert/AbstractConverter;->documentList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/Document;

    return-object p0
.end method

.method public getDocumentList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/Document;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/convert/AbstractConverter;->documentList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getDocumentParaSize()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/convert/AbstractConverter;->documentParaSize:I

    return p0
.end method

.method public getDocuments()Ljava/util/LinkedHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lorg/jsoup/nodes/Document;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/convert/AbstractConverter;->documentMap:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public getMetaData()Lorg/apache/poi/sl/MetaData;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/AbstractConverter;->metaData:Lorg/apache/poi/sl/MetaData;

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

    iget-object p0, p0, Lorg/apache/poi/convert/AbstractConverter;->picturesManager:Lorg/apache/poi/picture/PicturesManager;

    return-object p0
.end method

.method public getStyleList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/convert/WPStyle;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/convert/AbstractConverter;->styleList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getTableIndentRatio()F
    .locals 0

    iget p0, p0, Lorg/apache/poi/convert/AbstractConverter;->tableIndentRatio:F

    return p0
.end method

.method public getToc()Lorg/apache/poi/convert/WPToc;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/AbstractConverter;->wpToc:Lorg/apache/poi/convert/WPToc;

    return-object p0
.end method

.method public isAbort()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/convert/AbstractConverter;->abort:Z

    return p0
.end method

.method public setAbort(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/convert/AbstractConverter;->abort:Z

    return-void
.end method

.method public setDocumentParaSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/convert/AbstractConverter;->documentParaSize:I

    return-void
.end method

.method public setPicturesManager(Lorg/apache/poi/picture/PicturesManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/picture/PicturesManager<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/convert/AbstractConverter;->picturesManager:Lorg/apache/poi/picture/PicturesManager;

    return-void
.end method

.method public setTableIndentRatio(F)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/convert/AbstractConverter;->tableIndentRatio:F

    return-void
.end method

.method public write(Ljava/lang/String;Z)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->forceMkdir(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/apache/poi/convert/AbstractConverter;->documentMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Document;

    invoke-virtual {v2}, Lorg/jsoup/nodes/Document;->outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v3

    invoke-virtual {v3, p2}, Lorg/jsoup/nodes/Document$OutputSettings;->prettyPrint(Z)Lorg/jsoup/nodes/Document$OutputSettings;

    new-instance v3, Ljava/io/File;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lorg/apache/poi/util/DocumentUtils;->saveDocument(Lorg/jsoup/nodes/Document;Ljava/io/File;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/convert/AbstractConverter;->styleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/convert/WPStyle;

    invoke-virtual {v1}, Lorg/apache/poi/convert/WPStyle;->getAllData()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Lorg/apache/poi/convert/WPStyle;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lorg/apache/poi/util/DocumentUtils;->saveContentToFile(Ljava/lang/String;Ljava/io/File;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/convert/AbstractConverter;->wpToc:Lorg/apache/poi/convert/WPToc;

    invoke-static {v0}, Lorg/apache/poi/convert/TocUtils;->buildHtml(Lorg/apache/poi/convert/WPToc;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/jsoup/nodes/Document$OutputSettings;->prettyPrint(Z)Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->html()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "toc.html"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/apache/poi/util/DocumentUtils;->saveContentToFile(Ljava/lang/String;Ljava/io/File;)Z

    invoke-direct {p0}, Lorg/apache/poi/convert/AbstractConverter;->buildConfig()Lorg/jsoup/nodes/Document;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/jsoup/nodes/Document$OutputSettings;->prettyPrint(Z)Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->html()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/io/File;

    const-string v0, "config.xml"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p2}, Lorg/apache/poi/util/DocumentUtils;->saveContentToFile(Ljava/lang/String;Ljava/io/File;)Z

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
