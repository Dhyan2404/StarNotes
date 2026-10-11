.class Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;
.super Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/convert/htmlgen/ParagraphHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler<",
        "Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;",
        ">;",
        "Lorg/apache/poi/convert/htmlgen/ParagraphHandler<",
        "Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;",
        ">;"
    }
.end annotation


# instance fields
.field private bookmarkEndList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;",
            ">;"
        }
    .end annotation
.end field

.field private bookmarkStartList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;",
            ">;"
        }
    .end annotation
.end field

.field private commentRangeEndList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;",
            ">;"
        }
    .end annotation
.end field

.field private commentRangeStartList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;",
            ">;"
        }
    .end annotation
.end field

.field private iruns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/IRunElement;",
            ">;"
        }
    .end annotation
.end field

.field private levelEntry:Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;

.field private paragraph:Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

.field private paragraphStyles:Lorg/apache/poi/style/ParagraphStyles;

.field private reviseState:Lorg/apache/poi/xwpf/usermodel/ReviseState;


# direct methods
.method public constructor <init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;-><init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->bookmarkStartList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->bookmarkEndList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->commentRangeStartList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->commentRangeEndList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->iruns:Ljava/util/List;

    iput-object p2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->paragraph:Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-direct {p0}, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->init()V

    return-void
.end method

.method private addFetcher(Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyListFetcher;Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;Lorg/apache/poi/xwpf/usermodel/XWPFStyle;)V
    .locals 1

    invoke-static {p3}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->getCTStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrGeneral;

    move-result-object p3

    invoke-static {p3}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;

    invoke-direct {v0, p3}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;)V

    invoke-virtual {p1, v0}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyListFetcher;->addFetcher(Lorg/apache/poi/convert/xwpf/property/IParagraphPropertyFetcher;)V

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lorg/apache/poi/convert/xwpf/property/RunPropertyFetcher;

    invoke-direct {p1, p0}, Lorg/apache/poi/convert/xwpf/property/RunPropertyFetcher;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;)V

    invoke-virtual {p2, p1}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->addFetcher(Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;)V

    :cond_2
    return-void
.end method

.method private addNumberFetcher(Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyListFetcher;Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;)V
    .locals 0

    iget-object p2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->levelEntry:Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;

    invoke-static {p2}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->levelEntry:Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;->getCtLvl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrGeneral;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Lorg/apache/poi/convert/xwpf/property/NumberingParagraphPropertyFetcher;

    invoke-direct {p2, p0}, Lorg/apache/poi/convert/xwpf/property/NumberingParagraphPropertyFetcher;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;)V

    invoke-virtual {p1, p2}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyListFetcher;->addFetcher(Lorg/apache/poi/convert/xwpf/property/IParagraphPropertyFetcher;)V

    :cond_1
    return-void
.end method

.method private addXWPFMarkupRun(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/IRunElement;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/IRunElement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->bookmarkStartList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lorg/apache/poi/xwpf/usermodel/XWPFBookmarkRun;

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFBookmarkRun;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;)V

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->bookmarkEndList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->commentRangeStartList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p2, Lorg/apache/poi/xwpf/usermodel/XWPFCommentRun;

    invoke-direct {p2, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFCommentRun;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;)V

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->iruns:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFCommentRun;->getIruns()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->commentRangeEndList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->iruns:Ljava/util/List;

    return-object p0

    :cond_3
    return-object p2
.end method

.method private afterHandleParagraph(Lorg/jsoup/nodes/Element;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {v0}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->getDocumentFacade()Lorg/apache/poi/convert/HtmlDocumentFacade;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->childNodeSize()I

    move-result v1

    const-string v2, "\u00a0"

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createSpan()Lorg/jsoup/nodes/Element;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->appendTo(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    invoke-virtual {v0, v2}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createText(Ljava/lang/String;)Lorg/jsoup/nodes/TextNode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->paragraphStyles:Lorg/apache/poi/style/ParagraphStyles;

    invoke-virtual {p0}, Lorg/apache/poi/style/ParagraphStyles;->hasTextChild()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createSpan()Lorg/jsoup/nodes/Element;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->appendTo(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    invoke-virtual {v0, v2}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createText(Ljava/lang/String;)Lorg/jsoup/nodes/TextNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    :cond_1
    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->compactSpans(Lorg/jsoup/nodes/Element;)V

    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->compactTextNode(Lorg/jsoup/nodes/Element;)V

    :goto_0
    return-void
.end method

.method private getLineHeightStyle()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->paragraphStyles:Lorg/apache/poi/style/ParagraphStyles;

    invoke-virtual {v0}, Lorg/apache/poi/style/ParagraphStyles;->hasTextChild()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->paragraphStyles:Lorg/apache/poi/style/ParagraphStyles;

    invoke-virtual {v0}, Lorg/apache/poi/style/ParagraphStyles;->getTextStyles()Lorg/apache/poi/style/TextStyles;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {v0}, Lorg/apache/poi/style/TextStyles;->getFontFamily()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/style/TextStyles;->getFontSize()Lorg/apache/poi/style/UnitValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/style/UnitValue;->getNumberValue()F

    move-result v0

    invoke-virtual {v1, v2, v0}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->getFontHeight(Ljava/lang/String;F)F

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->paragraphStyles:Lorg/apache/poi/style/ParagraphStyles;

    invoke-virtual {p0}, Lorg/apache/poi/style/ParagraphStyles;->getLineHeight()Lorg/apache/poi/style/LineHeight;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/apache/poi/style/LineHeight;->toStyle(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleRunElement(Lorg/apache/poi/xwpf/usermodel/IRunElement;Lorg/jsoup/nodes/Element;III)V
    .locals 7

    instance-of v0, p1, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Paragraph sdt: paragraph:{}/{}, depth:{}"

    invoke-interface {v0, v4, v1, v2, v3}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->paragraphSize:I

    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    move-object v2, p1

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/IBodyElement;

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->handleBodyElement(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/IBodyElement;Lorg/jsoup/nodes/Element;III)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->paragraphSize:I

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    move-object v2, p1

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->handleRun(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/XWPFRun;Lorg/jsoup/nodes/Element;III)Lorg/apache/poi/convert/xwpf/handler/XWPFIRunHandler;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lorg/apache/poi/xwpf/usermodel/XWPFMarkupRun;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    move-object v2, p1

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFMarkupRun;

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Lorg/apache/poi/convert/xwpf/handler/XWPFMarkupHandler;->handleRun(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/XWPFMarkupRun;Lorg/jsoup/nodes/Element;III)Lorg/apache/poi/convert/xwpf/handler/XWPFMarkupHandler;

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lorg/apache/poi/xwpf/usermodel/XWPFMathRun;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    move-object v2, p1

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFMathRun;

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Lorg/apache/poi/convert/xwpf/handler/XWPFMathHandler;->handleRun(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/XWPFMathRun;Lorg/jsoup/nodes/Element;III)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    const-string v1, "Unknown run :{}, {}/{}, depth:{}"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private init()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->rebuildFromXml()V

    invoke-direct {p0}, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->readReviseState()V

    invoke-direct {p0}, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->initParagraphNumbering()V

    invoke-direct {p0}, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->initParagraphStyles()V

    return-void
.end method

.method private initParagraphNumbering()V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    iget-object v1, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->numberingHandler:Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;

    iget-object v0, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->styles:Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    iget-object v2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->paragraph:Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {v1, v0, v2}, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->getParagraphCTLvl(Lorg/apache/poi/xwpf/usermodel/XWPFStyles;Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->levelEntry:Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;

    return-void
.end method

.method private initParagraphStyles()V
    .locals 4

    new-instance v0, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyListFetcher;

    invoke-direct {v0}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyListFetcher;-><init>()V

    new-instance v1, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;

    iget-object v2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    iget-object v2, v2, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->theme:Lorg/apache/poi/xwpf/usermodel/XWPFTheme;

    invoke-direct {v1, v2}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFTheme;)V

    iget-object v2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->paragraph:Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;

    invoke-direct {v3, v2}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;)V

    invoke-virtual {v0, v3}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyListFetcher;->addFetcher(Lorg/apache/poi/convert/xwpf/property/IParagraphPropertyFetcher;)V

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;

    invoke-direct {v3, v2}, Lorg/apache/poi/convert/xwpf/property/ParagraphRunPropertyFetcher;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;)V

    invoke-virtual {v1, v3}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->addFetcher(Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;)V

    :cond_0
    invoke-direct {p0, v0, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->addNumberFetcher(Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyListFetcher;Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;)V

    iget-object v2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->paragraph:Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getStyle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    iget-object v2, v2, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->defaultStyle:Lorg/apache/poi/xwpf/usermodel/XWPFStyle;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->addFetcher(Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyListFetcher;Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;Lorg/apache/poi/xwpf/usermodel/XWPFStyle;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    iget-object v3, v3, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->styles:Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    invoke-virtual {v3, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->getStyle(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFStyle;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    iget-object v3, v3, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->styles:Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    invoke-virtual {v3, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->getUsedStyleList(Lorg/apache/poi/xwpf/usermodel/XWPFStyle;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;

    invoke-direct {p0, v0, v1, v3}, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->addFetcher(Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyListFetcher;Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;Lorg/apache/poi/xwpf/usermodel/XWPFStyle;)V

    goto :goto_0

    :cond_2
    :goto_1
    new-instance v2, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;

    iget-object v3, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    iget-object v3, v3, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->styles:Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->getDefaultParagraphStyle()Lorg/apache/poi/xwpf/usermodel/XWPFDefaultParagraphStyle;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultParagraphStyle;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrGeneral;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyFetcher;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;)V

    invoke-virtual {v0, v2}, Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyListFetcher;->addFetcher(Lorg/apache/poi/convert/xwpf/property/IParagraphPropertyFetcher;)V

    new-instance v2, Lorg/apache/poi/convert/xwpf/property/RunPropertyFetcher;

    iget-object v3, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    iget-object v3, v3, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->styles:Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->getDefaultRunStyle()Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/convert/xwpf/property/RunPropertyFetcher;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;)V

    invoke-virtual {v1, v2}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->addFetcher(Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;)V

    new-instance v2, Lorg/apache/poi/style/ParagraphStyles;

    invoke-direct {v2, v0, v1}, Lorg/apache/poi/style/ParagraphStyles;-><init>(Lorg/apache/poi/convert/xwpf/property/ParagraphPropertyListFetcher;Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;)V

    iput-object v2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->paragraphStyles:Lorg/apache/poi/style/ParagraphStyles;

    invoke-virtual {v2}, Lorg/apache/poi/style/ParagraphStyles;->getLineHeight()Lorg/apache/poi/style/LineHeight;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    iget-boolean v1, v1, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->docGridLine:Z

    invoke-virtual {v0, v1}, Lorg/apache/poi/style/LineHeight;->setDocGridLine(Z)V

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->paragraphStyles:Lorg/apache/poi/style/ParagraphStyles;

    invoke-virtual {v0}, Lorg/apache/poi/style/ParagraphStyles;->getLineHeight()Lorg/apache/poi/style/LineHeight;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->linePitch:Lorg/apache/poi/style/UnitValue;

    invoke-virtual {v0, p0}, Lorg/apache/poi/style/LineHeight;->setLinePitch(Lorg/apache/poi/style/UnitValue;)V

    return-void
.end method

.method private isDisplay(Lorg/jsoup/nodes/Element;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private isParagraphDelete()Z
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->paragraph:Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->isSetDel()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private readReviseState()V
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->iruns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->isParagraphDelete()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/ReviseState;->DELETE:Lorg/apache/poi/xwpf/usermodel/ReviseState;

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->reviseState:Lorg/apache/poi/xwpf/usermodel/ReviseState;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->iruns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    move v3, v2

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xwpf/usermodel/IRunElement;

    instance-of v5, v4, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    if-eqz v5, :cond_2

    check-cast v4, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-virtual {v4}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getCTR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->getReviseState(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;)Lorg/apache/poi/xwpf/usermodel/ReviseState;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/xwpf/usermodel/ReviseState;->DELETE:Lorg/apache/poi/xwpf/usermodel/ReviseState;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_3

    move v2, v4

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    if-nez v1, :cond_5

    if-nez v3, :cond_6

    invoke-direct {p0}, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->isParagraphDelete()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    sget-object v0, Lorg/apache/poi/xwpf/usermodel/ReviseState;->DELETE:Lorg/apache/poi/xwpf/usermodel/ReviseState;

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->reviseState:Lorg/apache/poi/xwpf/usermodel/ReviseState;

    :cond_6
    return-void
.end method

.method private rebuildFromXml()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->paragraph:Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->paragraph:Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getBody()Lorg/apache/poi/xwpf/usermodel/IBody;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->bookmarkStartList:Ljava/util/List;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getBookmarkStartList()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/poi/util/CollectionUtils;->ensureAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 4
    iget-object v2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->bookmarkEndList:Ljava/util/List;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getBookmarkEndList()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/poi/util/CollectionUtils;->ensureAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 5
    iget-object v2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->commentRangeStartList:Ljava/util/List;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getCommentRangeStartList()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/poi/util/CollectionUtils;->ensureAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 6
    iget-object v2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->commentRangeEndList:Ljava/util/List;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getCommentRangeEndList()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/poi/util/CollectionUtils;->ensureAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 7
    iget-object v2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->iruns:Ljava/util/List;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->rebuildFromXml(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xwpf/usermodel/IBody;Ljava/util/List;)V

    return-void
.end method

.method private rebuildFromXml(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xwpf/usermodel/IBody;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/xmlbeans/XmlObject;",
            "Lorg/apache/poi/xwpf/usermodel/IBody;",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/IRunElement;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p1

    const-string v0, "child::*"

    .line 9
    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 11
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    .line 12
    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    if-eqz v1, :cond_1

    .line 13
    move-object v1, v0

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    invoke-direct {p0, v1, p3}, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->addXWPFMarkupRun(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    .line 14
    :cond_1
    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    if-eqz v1, :cond_2

    .line 15
    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    move-object v2, v0

    check-cast v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    iget-object v3, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->paragraph:Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_2
    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 17
    move-object v1, v0

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;

    .line 18
    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;->getRArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v3

    array-length v4, v3

    if-lez v4, :cond_3

    aget-object v3, v3, v2

    .line 19
    new-instance v4, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;

    iget-object v5, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->paragraph:Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-direct {v4, v1, v3, v5}, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_3
    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;

    if-eqz v1, :cond_4

    .line 21
    move-object v1, v0

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;

    .line 22
    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;->getRArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v3

    array-length v4, v3

    if-lez v4, :cond_4

    aget-object v3, v3, v2

    .line 23
    new-instance v4, Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;

    iget-object v5, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->paragraph:Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-direct {v4, v1, v3, v5}, Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_4
    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    if-eqz v1, :cond_5

    .line 25
    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    move-object v3, v0

    check-cast v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    invoke-direct {v1, v3, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 26
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_5
    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;

    if-eqz v1, :cond_6

    .line 28
    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    move-object v3, v0

    check-cast v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;

    invoke-direct {v1, v3, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 29
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_6
    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;

    if-eqz v1, :cond_7

    .line 31
    move-object v3, v0

    check-cast v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;->getRArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v3

    array-length v4, v3

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_7

    aget-object v6, v3, v5

    .line 32
    new-instance v7, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    iget-object v8, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->paragraph:Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-direct {v7, v6, v8}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)V

    invoke-interface {p3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 33
    :cond_7
    instance-of v3, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSmartTagRun;

    if-eqz v3, :cond_8

    .line 34
    invoke-direct {p0, v0, p2, p3}, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->rebuildFromXml(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xwpf/usermodel/IBody;Ljava/util/List;)V

    :cond_8
    if-eqz v1, :cond_9

    .line 35
    move-object v1, v0

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;->getInsArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;

    move-result-object v1

    array-length v3, v1

    :goto_2
    if-ge v2, v3, :cond_9

    aget-object v4, v1, v2

    .line 36
    invoke-direct {p0, v4, p2, p3}, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->rebuildFromXml(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xwpf/usermodel/IBody;Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 37
    :cond_9
    instance-of v1, v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;

    if-eqz v1, :cond_a

    .line 38
    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFMathRun;

    move-object v2, v0

    check-cast v2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;

    invoke-direct {v1, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFMathRun;-><init>(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;)V

    .line 39
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_a
    instance-of v1, v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;

    if-eqz v1, :cond_0

    .line 41
    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFMathRun;

    check-cast v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;

    invoke-direct {v1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFMathRun;-><init>(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;)V

    .line 42
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 43
    :cond_b
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-void
.end method

.method private setPElementTocAttr(Lorg/jsoup/nodes/Element;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->getOutlineLevel()Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    iget v1, v1, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->tocIndex:I

    invoke-static {p1, v0, v1}, Lorg/apache/poi/convert/TocUtils;->setPElementTocAttr(Lorg/jsoup/nodes/Element;Ljava/lang/Integer;I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    iget p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->tocIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->tocIndex:I

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->bookmarkStartList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    invoke-static {v1}, Lorg/apache/poi/common/XmlBeanUtils;->freeMemory(Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->bookmarkEndList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    invoke-static {v1}, Lorg/apache/poi/common/XmlBeanUtils;->freeMemory(Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->commentRangeStartList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    invoke-static {v1}, Lorg/apache/poi/common/XmlBeanUtils;->freeMemory(Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->commentRangeEndList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    invoke-static {v1}, Lorg/apache/poi/common/XmlBeanUtils;->freeMemory(Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->iruns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/IRunElement;

    invoke-static {v1}, Lorg/apache/poi/util/CloseUtils;->close(Ljava/io/Closeable;)V

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->paragraph:Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-static {v0}, Lorg/apache/poi/util/CloseUtils;->close(Ljava/io/Closeable;)V

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->bookmarkStartList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->bookmarkEndList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->commentRangeStartList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->commentRangeEndList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->iruns:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getOutlineLevel()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->paragraph:Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getOutlineLvl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->getVal()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->paragraph:Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getStyle()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->styles:Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->getStyle(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFStyle;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->getCTStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrGeneral;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getOutlineLvl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->getVal()Ljava/math/BigInteger;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v1
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->iruns:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/IRunElement;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    instance-of v2, v1, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;->getContent()Lorg/apache/poi/xwpf/usermodel/ISDTContent;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/xwpf/usermodel/ISDTContent;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleBodyElement(Lorg/jsoup/nodes/Element;III)V
    .locals 8

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->reviseState:Lorg/apache/poi/xwpf/usermodel/ReviseState;

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/ReviseState;->DELETE:Lorg/apache/poi/xwpf/usermodel/ReviseState;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->iruns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p4, :cond_1

    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    const/4 p3, 0x0

    iput-object p3, p2, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->fldCharState:Lorg/apache/poi/xwpf/usermodel/FldCharState;

    invoke-virtual {p2}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->checkAbortConvert()V

    iget-object p2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    iget-object p3, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->paragraphStyles:Lorg/apache/poi/style/ParagraphStyles;

    invoke-virtual {p2, p3}, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->addLast(Lorg/apache/poi/style/ParagraphStyles;)V

    iget-object p2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {p2}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->getDocumentFacade()Lorg/apache/poi/convert/HtmlDocumentFacade;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createParagraph()Lorg/jsoup/nodes/Element;

    move-result-object p3

    invoke-direct {p0, p3}, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->setPElementTocAttr(Lorg/jsoup/nodes/Element;)V

    invoke-virtual {p1, p3}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    iget-object p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->iruns:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p4, p4, 0x1

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->iruns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v0, 0x0

    move-object v2, p3

    move v3, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/IRunElement;

    add-int/lit8 v7, v3, 0x1

    move-object v0, p0

    move v4, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->handleRunElement(Lorg/apache/poi/xwpf/usermodel/IRunElement;Lorg/jsoup/nodes/Element;III)V

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {v0}, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->isInFldChar()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    iget-object v0, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->fldContainer:Lorg/jsoup/nodes/Element;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    iget-object v0, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->fldContainer:Lorg/jsoup/nodes/Element;

    move-object v2, v0

    goto :goto_1

    :cond_2
    move-object v2, p3

    :goto_1
    move v3, v7

    goto :goto_0

    :cond_3
    invoke-direct {p0, p3}, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->afterHandleParagraph(Lorg/jsoup/nodes/Element;)V

    iget-object p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    iget-object p4, p1, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->numberingHandler:Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->paragraphStyles:Lorg/apache/poi/style/ParagraphStyles;

    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->levelEntry:Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;

    invoke-virtual {p4, p1, v0, v1, p3}, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;->handleNumbering(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/style/ParagraphStyles;Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$LevelEntry;Lorg/jsoup/nodes/Element;)V

    iget-object p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->paragraphStyles:Lorg/apache/poi/style/ParagraphStyles;

    invoke-virtual {p1}, Lorg/apache/poi/style/ParagraphStyles;->toStyle()Ljava/lang/String;

    move-result-object p1

    const-string p4, "p"

    invoke-virtual {p2, p3, p4, p1}, Lorg/apache/poi/convert/HtmlDocumentFacade;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->paragraphStyles:Lorg/apache/poi/style/ParagraphStyles;

    invoke-virtual {p1}, Lorg/apache/poi/style/ParagraphStyles;->getTextStyles()Lorg/apache/poi/style/TextStyles;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/style/TextStyles;->toStyle()Ljava/lang/String;

    move-result-object p1

    const-string p4, "s"

    invoke-virtual {p2, p3, p4, p1}, Lorg/apache/poi/convert/HtmlDocumentFacade;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "l"

    invoke-direct {p0}, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->getLineHeightStyle()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p1, p4}, Lorg/apache/poi/convert/HtmlDocumentFacade;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {p1, p3}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->setBreakElement(Lorg/jsoup/nodes/Element;)V

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->pollLast()Lorg/apache/poi/style/ParagraphStyles;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XWPFParagraphHandler{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/handler/XWPFParagraphHandler;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
