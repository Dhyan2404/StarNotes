.class public abstract Lorg/apache/poi/convert/AbstractWordConverter;
.super Lorg/apache/poi/convert/AbstractConverter;
.source "SourceFile"


# static fields
.field protected static final IMAGE_MIDDLE_HEIGHT:I = 0x20

.field protected static final IMAGE_SETTING_HEIGHT:I = 0x190

.field protected static final IMAGE_SETTING_WIDTH:I = 0x12c


# instance fields
.field protected documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

.field protected pageSize:Ljava/awt/geom/Rectangle2D;

.field protected paraSize:I

.field protected startTime:J


# direct methods
.method public constructor <init>()V
    .locals 10

    invoke-direct {p0}, Lorg/apache/poi/convert/AbstractConverter;-><init>()V

    new-instance v9, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/high16 v1, 0x405e000000000000L    # 120.0

    const-wide/high16 v3, 0x4058000000000000L    # 96.0

    const-wide v5, 0x4081500000000000L    # 554.0

    const-wide v7, 0x408d200000000000L    # 932.0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    iput-object v9, p0, Lorg/apache/poi/convert/AbstractWordConverter;->pageSize:Ljava/awt/geom/Rectangle2D;

    new-instance v0, Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-direct {v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/convert/AbstractWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/convert/AbstractWordConverter;->startTime:J

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/convert/AbstractWordConverter;->paraSize:I

    return-void
.end method

.method public static synthetic f(Lorg/apache/poi/convert/AbstractWordConverter;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/convert/AbstractWordConverter;->lambda$close$0()V

    return-void
.end method

.method private synthetic lambda$close$0()V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/convert/AbstractWordConverter;->closeImpl()V

    iget-object v0, p0, Lorg/apache/poi/convert/AbstractConverter;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/apache/poi/convert/AbstractWordConverter;->startTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v1, "Cache pictures duration = {}"

    invoke-interface {v0, v1, p0}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public checkAbortConvert()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/convert/AbstractConverter;->abort:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lorg/apache/poi/convert/exception/AbortConvertException;

    invoke-direct {v0}, Lorg/apache/poi/convert/exception/AbortConvertException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/poi/convert/AbstractWordConverter;->close()V

    throw v0
.end method

.method public checkSplitDocument()Z
    .locals 4

    iget v0, p0, Lorg/apache/poi/convert/AbstractConverter;->documentParaSize:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget v2, p0, Lorg/apache/poi/convert/AbstractWordConverter;->paraSize:I

    if-lt v2, v0, :cond_0

    iput v1, p0, Lorg/apache/poi/convert/AbstractWordConverter;->paraSize:I

    iget-object v0, p0, Lorg/apache/poi/convert/AbstractWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->getBody()Lorg/jsoup/nodes/Element;

    move-result-object v0

    const-string v1, "class"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/poi/convert/AbstractConverter;->documentList:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/apache/poi/convert/AbstractWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {v3}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createDocument()Lorg/jsoup/nodes/Document;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/apache/poi/convert/AbstractWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {v2}, Lorg/apache/poi/convert/HtmlDocumentFacade;->getBody()Lorg/jsoup/nodes/Element;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    invoke-virtual {p0}, Lorg/apache/poi/convert/AbstractWordConverter;->setUpNewDocument()V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/convert/AbstractConverter;->picturesManager:Lorg/apache/poi/picture/PicturesManager;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sunia/HTREnginev2/j5;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/j5;-><init>(Lorg/apache/poi/convert/AbstractWordConverter;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/picture/PicturesManager;->finished(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/convert/AbstractWordConverter;->closeImpl()V

    :goto_0
    return-void
.end method

.method public abstract closeImpl()V
.end method

.method public compactDocument()Z
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/convert/AbstractConverter;->documentList:Ljava/util/ArrayList;

    iget v1, p0, Lorg/apache/poi/convert/AbstractConverter;->documentParaSize:I

    iget v2, p0, Lorg/apache/poi/convert/AbstractWordConverter;->paraSize:I

    invoke-static {v0, v1, v2}, Lorg/apache/poi/convert/WordToHtmlUtils;->compactDocument(Ljava/util/List;II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/poi/convert/AbstractWordConverter;->paraSize:I

    iget v1, p0, Lorg/apache/poi/convert/AbstractConverter;->documentParaSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/poi/convert/AbstractWordConverter;->paraSize:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public incrementParaSize()V
    .locals 1

    iget v0, p0, Lorg/apache/poi/convert/AbstractWordConverter;->paraSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/convert/AbstractWordConverter;->paraSize:I

    return-void
.end method

.method public reconstructDocumentLink()V
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/convert/AbstractConverter;->documentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/Document;

    invoke-virtual {v3}, Lorg/jsoup/nodes/Document;->outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/jsoup/nodes/Document$OutputSettings;->prettyPrint(Z)Lorg/jsoup/nodes/Document$OutputSettings;

    iget-object v4, p0, Lorg/apache/poi/convert/AbstractConverter;->documentMap:Ljava/util/LinkedHashMap;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lorg/apache/poi/convert/AbstractConverter;->documentName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/convert/AbstractConverter;->documentMap:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lorg/apache/poi/util/DocumentUtils;->reconstructDocumentLink(Ljava/util/Map;)V

    iget-object v0, p0, Lorg/apache/poi/convert/AbstractConverter;->documentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Document;

    invoke-static {v1}, Lorg/apache/poi/util/DocumentUtils;->updateDocumentPosition(Lorg/jsoup/nodes/Document;)I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/convert/AbstractConverter;->wpToc:Lorg/apache/poi/convert/WPToc;

    iget-object p0, p0, Lorg/apache/poi/convert/AbstractConverter;->documentMap:Ljava/util/LinkedHashMap;

    invoke-static {v0, p0}, Lorg/apache/poi/convert/TocUtils;->parseWPToc(Lorg/apache/poi/convert/WPToc;Ljava/util/LinkedHashMap;)Z

    return-void
.end method

.method public setUpNewDocument()V
    .locals 0

    return-void
.end method
