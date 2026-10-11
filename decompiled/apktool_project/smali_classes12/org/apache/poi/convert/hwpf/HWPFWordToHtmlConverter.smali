.class public Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlConverter;
.super Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlConverter$BlockProperties;
    }
.end annotation


# instance fields
.field private final blocksProperties:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlConverter$BlockProperties;",
            ">;"
        }
    .end annotation
.end field

.field private notes:Lorg/jsoup/nodes/Element;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hwpf/HWPFDocumentCore;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;-><init>(Lorg/apache/poi/hwpf/HWPFDocumentCore;)V

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlConverter;->blocksProperties:Ljava/util/Deque;

    return-void
.end method

.method private setPElementTocAttr(Lorg/apache/poi/hwpf/usermodel/Paragraph;Lorg/jsoup/nodes/Element;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/usermodel/Paragraph;->getLvl()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v0, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->tocIndex:I

    invoke-static {p2, p1, v0}, Lorg/apache/poi/convert/TocUtils;->setPElementTocAttr(Lorg/jsoup/nodes/Element;Ljava/lang/Integer;I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->tocIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->tocIndex:I

    :cond_0
    return-void
.end method


# virtual methods
.method public afterProcess(Lorg/apache/poi/hwpf/HWPFDocumentCore;)V
    .locals 1

    iget-object p1, p0, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlConverter;->notes:Lorg/jsoup/nodes/Element;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {p1}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createBlock()Lorg/jsoup/nodes/Element;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->getBody()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    iget-object v0, p0, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlConverter;->notes:Lorg/jsoup/nodes/Element;

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/convert/AbstractWordConverter;->compactDocument()Z

    iget-object p1, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->numberingState:Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils$NumberingState;

    invoke-virtual {p1}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils$NumberingState;->clear()V

    iget-object p1, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->bookmarkStack:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    invoke-virtual {p0}, Lorg/apache/poi/convert/AbstractWordConverter;->reconstructDocumentLink()V

    iget-object p1, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {p1}, Lorg/apache/poi/convert/HtmlDocumentFacade;->buildStylesheet()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/convert/AbstractConverter;->addHtmlDocumentStyle(Ljava/lang/String;)V

    return-void
.end method

.method public outputCharacters(Lorg/jsoup/nodes/Element;Lorg/apache/poi/hwpf/usermodel/CharacterRun;Ljava/lang/String;)V
    .locals 7

    sget-object v0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->PATTERN_TOC:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createSpan()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlConverter;->blocksProperties:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlConverter$BlockProperties;

    invoke-virtual {p0, p2}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->getCharacterRunTriplet(Lorg/apache/poi/hwpf/usermodel/CharacterRun;)Lorg/apache/poi/hwpf/converter/FontReplacer$Triplet;

    move-result-object v2

    iget-object v3, v2, Lorg/apache/poi/hwpf/converter/FontReplacer$Triplet;->fontName:Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lorg/apache/poi/hwpf/converter/FontReplacer$Triplet;->fontName:Ljava/lang/String;

    iget-object v4, v1, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlConverter$BlockProperties;->pFontName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "font-family:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lorg/apache/poi/hwpf/converter/FontReplacer$Triplet;->fontName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p2}, Lorg/apache/poi/hwpf/usermodel/CharacterRun;->getFontSize()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget v1, v1, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlConverter$BlockProperties;->pFontSize:I

    if-eq v3, v1, :cond_2

    const-string v1, "font-size:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/poi/hwpf/usermodel/CharacterRun;->getFontSize()I

    move-result v1

    int-to-double v3, v1

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v5

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/apache/poi/convert/AbstractConverter;->getFontUnit()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3b

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    iget-boolean v1, v2, Lorg/apache/poi/hwpf/converter/FontReplacer$Triplet;->bold:Z

    if-eqz v1, :cond_3

    const-string v1, "font-weight:bold;"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-boolean v1, v2, Lorg/apache/poi/hwpf/converter/FontReplacer$Triplet;->italic:Z

    if-eqz v1, :cond_4

    const-string v1, "font-style:italic;"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-static {p2, p1}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils;->addCharactersProperties(Lorg/apache/poi/hwpf/usermodel/CharacterRun;Ljava/lang/StringBuilder;)V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    const-string v1, "s"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, v1, p1}, Lorg/apache/poi/convert/HtmlDocumentFacade;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_5
    iget-object p0, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {p0, p3}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createText(Ljava/lang/String;)Lorg/jsoup/nodes/TextNode;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    return-void
.end method

.method public processBookmarks(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/jsoup/nodes/Element;Lorg/apache/poi/hwpf/usermodel/Range;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hwpf/HWPFDocumentCore;",
            "Lorg/jsoup/nodes/Element;",
            "Lorg/apache/poi/hwpf/usermodel/Range;",
            "I",
            "Ljava/util/List<",
            "Lorg/apache/poi/hwpf/usermodel/Bookmark;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hwpf/usermodel/Bookmark;

    iget-object v1, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-interface {v0}, Lorg/apache/poi/hwpf/usermodel/Bookmark;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createBookmark(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    move-object p2, v0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0, p1, p4, p3, p2}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processCharacters(Lorg/apache/poi/hwpf/HWPFDocumentCore;ILorg/apache/poi/hwpf/usermodel/Range;Lorg/jsoup/nodes/Element;)Z

    :cond_1
    return-void
.end method

.method public processDocumentInformation(Lorg/apache/poi/hpsf/SummaryInformation;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/SummaryInformation;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/SummaryInformation;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/convert/HtmlDocumentFacade;->setTitle(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/SummaryInformation;->getAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/SummaryInformation;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/convert/HtmlDocumentFacade;->addAuthor(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/SummaryInformation;->getKeywords()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/SummaryInformation;->getKeywords()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/convert/HtmlDocumentFacade;->addKeywords(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/SummaryInformation;->getComments()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/SummaryInformation;->getComments()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/convert/HtmlDocumentFacade;->addDescription(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public processDocumentPart(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/apache/poi/hwpf/usermodel/Range;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processDocumentPart(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/apache/poi/hwpf/usermodel/Range;)V

    return-void
.end method

.method public processDrawnObject(Lorg/apache/poi/hwpf/HWPFDocument;Lorg/apache/poi/hwpf/usermodel/CharacterRun;Lorg/apache/poi/hwpf/usermodel/OfficeDrawing;Lorg/jsoup/nodes/Element;)V
    .locals 6

    new-instance p1, Lorg/apache/poi/hwpf/usermodel/HWPFDrawing;

    invoke-virtual {p2}, Lorg/apache/poi/hwpf/usermodel/Range;->getStartOffset()I

    move-result v0

    invoke-direct {p1, p3, v0}, Lorg/apache/poi/hwpf/usermodel/HWPFDrawing;-><init>(Lorg/apache/poi/hwpf/usermodel/OfficeDrawing;I)V

    invoke-virtual {p0}, Lorg/apache/poi/convert/AbstractConverter;->getPicturesManager()Lorg/apache/poi/picture/PicturesManager;

    move-result-object p3

    invoke-virtual {p3, p1}, Lorg/apache/poi/picture/PicturesManager;->processPicture(Lorg/apache/poi/wp/usermodel/IPicture;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/apache/poi/convert/WordToHtmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Image link to \'s"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/poi/hwpf/usermodel/Range;->getStartOffset()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\' can be here"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createComment(Ljava/lang/String;)Lorg/jsoup/nodes/Comment;

    move-result-object p0

    invoke-virtual {p4, p0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    return-void

    :cond_0
    iget-object p2, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {p2, p3}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createImage(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/usermodel/HWPFDrawing;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object p1

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/poi/convert/AbstractWordConverter;->pageSize:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    const-string v0, "float:right;"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    const-string v0, "float:left;"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    const-wide v2, 0x4072c00000000000L    # 300.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v0

    const-wide/high16 v2, 0x4079000000000000L    # 400.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/ExtUnits;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "px;height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/ExtUnits;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "px;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "style"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    :cond_3
    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v0

    const-wide/high16 v2, 0x4040000000000000L    # 32.0

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_4

    const-string p1, "vertical-align:middle;"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string p1, "vertical-align:text-bottom;"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    iget-object p0, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    const-string p1, "img"

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p1, p3}, Lorg/apache/poi/convert/HtmlDocumentFacade;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p4, p2}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    return-void
.end method

.method public processDropDownList(Lorg/jsoup/nodes/Element;Lorg/apache/poi/hwpf/usermodel/CharacterRun;[Ljava/lang/String;I)V
    .locals 5

    iget-object p2, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {p2}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createSelect()Lorg/jsoup/nodes/Element;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    aget-object v3, p3, v1

    if-ne p4, v1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createOption(Ljava/lang/String;Z)Lorg/jsoup/nodes/Element;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    return-void
.end method

.method public processEndnoteAutonumbered(Lorg/apache/poi/hwpf/HWPFDocument;ILorg/jsoup/nodes/Element;Lorg/apache/poi/hwpf/usermodel/Range;)V
    .locals 6

    const-string v2, "end"

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlConverter;->processNoteAutonumbered(Lorg/apache/poi/hwpf/HWPFDocument;Ljava/lang/String;ILorg/jsoup/nodes/Element;Lorg/apache/poi/hwpf/usermodel/Range;)V

    return-void
.end method

.method public processFootnoteAutonumbered(Lorg/apache/poi/hwpf/HWPFDocument;ILorg/jsoup/nodes/Element;Lorg/apache/poi/hwpf/usermodel/Range;)V
    .locals 6

    const-string v2, "foot"

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlConverter;->processNoteAutonumbered(Lorg/apache/poi/hwpf/HWPFDocument;Ljava/lang/String;ILorg/jsoup/nodes/Element;Lorg/apache/poi/hwpf/usermodel/Range;)V

    return-void
.end method

.method public processHyperlink(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/jsoup/nodes/Element;Lorg/apache/poi/hwpf/usermodel/Range;ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {v0, p5}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createHyperlink(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p5

    invoke-virtual {p2, p5}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p4, p3, p5}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processCharacters(Lorg/apache/poi/hwpf/HWPFDocumentCore;ILorg/apache/poi/hwpf/usermodel/Range;Lorg/jsoup/nodes/Element;)Z

    :cond_0
    return-void
.end method

.method public processImage(Lorg/jsoup/nodes/Element;ZLorg/apache/poi/hwpf/usermodel/Picture;Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/hwpf/usermodel/Picture;->getHorizontalScalingFactor()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/hwpf/usermodel/Picture;->getVerticalScalingFactor()I

    move-result v3

    const/high16 v4, 0x447a0000    # 1000.0f

    if-lez v2, :cond_0

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/hwpf/usermodel/Picture;->getDxaGoal()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-double v5, v5

    invoke-static {v5, v6}, Lorg/apache/poi/util/ExtUnits;->twipsToPx(D)D

    move-result-wide v5

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/hwpf/usermodel/Picture;->getDxaCropRight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v2

    float-to-double v7, v7

    invoke-static {v7, v8}, Lorg/apache/poi/util/ExtUnits;->twipsToPx(D)D

    move-result-wide v7

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/hwpf/usermodel/Picture;->getDxaCropLeft()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v2, v9

    float-to-double v9, v2

    invoke-static {v9, v10}, Lorg/apache/poi/util/ExtUnits;->twipsToPx(D)D

    move-result-wide v9

    goto :goto_0

    :cond_0
    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/hwpf/usermodel/Picture;->getDxaGoal()I

    move-result v2

    int-to-double v5, v2

    invoke-static {v5, v6}, Lorg/apache/poi/util/ExtUnits;->twipsToPx(D)D

    move-result-wide v5

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/hwpf/usermodel/Picture;->getDxaCropRight()I

    move-result v2

    int-to-double v7, v2

    invoke-static {v7, v8}, Lorg/apache/poi/util/ExtUnits;->twipsToPx(D)D

    move-result-wide v7

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/hwpf/usermodel/Picture;->getDxaCropLeft()I

    move-result v2

    int-to-double v9, v2

    invoke-static {v9, v10}, Lorg/apache/poi/util/ExtUnits;->twipsToPx(D)D

    move-result-wide v9

    :goto_0
    if-lez v3, :cond_1

    int-to-float v2, v3

    div-float/2addr v2, v4

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/hwpf/usermodel/Picture;->getDyaGoal()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-double v3, v3

    invoke-static {v3, v4}, Lorg/apache/poi/util/ExtUnits;->twipsToPx(D)D

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/hwpf/usermodel/Picture;->getDyaCropTop()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v2

    float-to-double v11, v11

    invoke-static {v11, v12}, Lorg/apache/poi/util/ExtUnits;->twipsToPx(D)D

    move-result-wide v11

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/hwpf/usermodel/Picture;->getDyaCropBottom()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v2, v13

    float-to-double v13, v2

    invoke-static {v13, v14}, Lorg/apache/poi/util/ExtUnits;->twipsToPx(D)D

    move-result-wide v13

    goto :goto_1

    :cond_1
    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/hwpf/usermodel/Picture;->getDyaGoal()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Lorg/apache/poi/util/ExtUnits;->twipsToPx(D)D

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/hwpf/usermodel/Picture;->getDyaCropTop()I

    move-result v2

    int-to-double v11, v2

    invoke-static {v11, v12}, Lorg/apache/poi/util/ExtUnits;->twipsToPx(D)D

    move-result-wide v11

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/hwpf/usermodel/Picture;->getDyaCropBottom()I

    move-result v2

    int-to-double v13, v2

    invoke-static {v13, v14}, Lorg/apache/poi/util/ExtUnits;->twipsToPx(D)D

    move-result-wide v13

    :goto_1
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v17

    add-double v15, v15, v17

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v17

    add-double v15, v15, v17

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v17

    add-double v15, v15, v17

    const-wide/16 v1, 0x0

    cmpl-double v15, v15, v1

    const-string v1, "px;"

    const-string v2, "px;height:"

    if-lez v15, :cond_2

    sub-double v15, v5, v9

    sub-double v7, v15, v7

    move-wide v15, v5

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    sub-double v17, v3, v11

    sub-double v13, v17, v13

    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    iget-object v13, v0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {v13}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createBlock()Lorg/jsoup/nodes/Element;

    move-result-object v13

    iget-object v14, v0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    move-wide/from16 p2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vertical-align:text-bottom;width:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v8}, Lorg/apache/poi/util/ExtUnits;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lorg/apache/poi/util/ExtUnits;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "d"

    invoke-virtual {v14, v13, v4, v3}, Lorg/apache/poi/convert/HtmlDocumentFacade;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, v0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {v3}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createBlock()Lorg/jsoup/nodes/Element;

    move-result-object v3

    iget-object v14, v0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    move-object/from16 v17, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v18, v15

    const-string v15, "position:relative;width:"

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v8}, Lorg/apache/poi/util/ExtUnits;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lorg/apache/poi/util/ExtUnits;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "px;overflow:hidden;"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v3, v4, v1}, Lorg/apache/poi/convert/HtmlDocumentFacade;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v13, v3}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    iget-object v1, v0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    move-object/from16 v4, p4

    invoke-virtual {v1, v4}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createImage(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    iget-object v0, v0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "position:absolute;left:-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Lorg/apache/poi/util/ExtUnits;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "px;top:-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Lorg/apache/poi/util/ExtUnits;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "px;width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v19}, Lorg/apache/poi/util/ExtUnits;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p3}, Lorg/apache/poi/util/ExtUnits;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v17

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "i"

    invoke-virtual {v0, v1, v4, v2}, Lorg/apache/poi/convert/HtmlDocumentFacade;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v3, v1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    :goto_2
    move-object/from16 v0, p1

    goto :goto_5

    :cond_2
    move-wide/from16 p2, v3

    move-wide/from16 v18, v5

    move-object/from16 v4, p4

    move-object v5, v1

    iget-object v1, v0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {v1, v4}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createImage(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v3, 0x4072c00000000000L    # 300.0

    cmpg-double v3, v18, v3

    if-gtz v3, :cond_3

    const-wide/high16 v3, 0x4079000000000000L    # 400.0

    move-wide/from16 v6, p2

    cmpg-double v3, v6, v3

    if-gtz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "width:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v19}, Lorg/apache/poi/util/ExtUnits;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Lorg/apache/poi/util/ExtUnits;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "style"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto :goto_3

    :cond_3
    move-wide/from16 v6, p2

    :cond_4
    :goto_3
    const-wide/high16 v2, 0x4040000000000000L    # 32.0

    cmpg-double v2, v6, v2

    if-gtz v2, :cond_5

    const-string v2, "vertical-align:middle;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_5
    const-string v2, "vertical-align:text-bottom;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    iget-object v0, v0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    const-string v2, "img"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v13, v2, v1}, Lorg/apache/poi/convert/HtmlDocumentFacade;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :goto_5
    invoke-virtual {v0, v13}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    return-void
.end method

.method public processImageWithoutPicturesManager(Lorg/jsoup/nodes/Element;ZLorg/apache/poi/hwpf/usermodel/Picture;)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Image link to \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lorg/apache/poi/hwpf/usermodel/Picture;->suggestFullFileName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\' can be here"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createComment(Ljava/lang/String;)Lorg/jsoup/nodes/Comment;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    return-void
.end method

.method public processLineBreak(Lorg/jsoup/nodes/Element;Lorg/apache/poi/hwpf/usermodel/CharacterRun;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {p0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createLineBreak()Lorg/jsoup/nodes/Element;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    return-void
.end method

.method public processNoteAutonumbered(Lorg/apache/poi/hwpf/HWPFDocument;Ljava/lang/String;ILorg/jsoup/nodes/Element;Lorg/apache/poi/hwpf/usermodel/Range;)V
    .locals 9

    add-int/lit8 p3, p3, 0x1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    const-string v1, "vertical-align:super;font-size:smaller;"

    const-string v2, "a"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/convert/HtmlDocumentFacade;->getOrCreateCssClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "note_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "note_back_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createHyperlink(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v4, v5, v3}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "noteanchor"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "class"

    invoke-virtual {v4, v8, v7}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    invoke-virtual {p4, v4}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    invoke-virtual {v4, p3}, Lorg/jsoup/nodes/Element;->text(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    iget-object p4, p0, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlConverter;->notes:Lorg/jsoup/nodes/Element;

    if-nez p4, :cond_0

    iget-object p4, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {p4}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createUnorderedList()Lorg/jsoup/nodes/Element;

    move-result-object p4

    iput-object p4, p0, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlConverter;->notes:Lorg/jsoup/nodes/Element;

    const-string v4, "notes"

    invoke-virtual {p4, v8, v4}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    :cond_0
    iget-object p4, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {p4}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createListItem()Lorg/jsoup/nodes/Element;

    move-result-object p4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "note"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v8, v4}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    iget-object v4, p0, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlConverter;->notes:Lorg/jsoup/nodes/Element;

    invoke-virtual {v4, p4}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    iget-object v4, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    const-string v7, "font-size:smaller;"

    invoke-virtual {v4, v2, v7}, Lorg/apache/poi/convert/HtmlDocumentFacade;->getOrCreateCssClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createHyperlink(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "noteindex"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "footnote"

    filled-new-array {v6, v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lorg/apache/poi/convert/WordToHtmlUtils;->addClass(Lorg/jsoup/nodes/Element;[Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    invoke-virtual {v3, v5, v1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    invoke-virtual {p4, v3}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    invoke-virtual {v3, p3}, Lorg/jsoup/nodes/Element;->text(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    iget-object p3, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {p3, v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createText(Ljava/lang/String;)Lorg/jsoup/nodes/TextNode;

    move-result-object p3

    invoke-virtual {p4, p3}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    iget-object p3, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {p3}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createSpan()Lorg/jsoup/nodes/Element;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "notetext"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v8, p2}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    invoke-virtual {p4, p3}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    iget-object p2, p0, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlConverter;->blocksProperties:Ljava/util/Deque;

    new-instance p4, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlConverter$BlockProperties;

    const-string v0, ""

    const/4 v1, -0x1

    invoke-direct {p4, v0, v1}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlConverter$BlockProperties;-><init>(Ljava/lang/String;I)V

    invoke-interface {p2, p4}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    const/high16 p2, -0x80000000

    :try_start_0
    invoke-virtual {p0, p1, p2, p5, p3}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processCharacters(Lorg/apache/poi/hwpf/HWPFDocumentCore;ILorg/apache/poi/hwpf/usermodel/Range;Lorg/jsoup/nodes/Element;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlConverter;->blocksProperties:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlConverter;->blocksProperties:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    throw p1
.end method

.method public processPageBreak(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/jsoup/nodes/Element;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {p0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createLineBreak()Lorg/jsoup/nodes/Element;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    return-void
.end method

.method public processPageref(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/jsoup/nodes/Element;Lorg/apache/poi/hwpf/usermodel/Range;ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p5}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createHyperlink(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p5

    invoke-virtual {p2, p5}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p4, p3, p5}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processCharacters(Lorg/apache/poi/hwpf/HWPFDocumentCore;ILorg/apache/poi/hwpf/usermodel/Range;Lorg/jsoup/nodes/Element;)Z

    :cond_0
    return-void
.end method

.method public processParagraph(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/jsoup/nodes/Element;ILorg/apache/poi/hwpf/usermodel/Paragraph;Ljava/lang/String;Lorg/apache/poi/convert/BodyElementType;)V
    .locals 9

    iget-object v0, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createParagraph()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    invoke-direct {p0, p4, v0}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlConverter;->setPElementTocAttr(Lorg/apache/poi/hwpf/usermodel/Paragraph;Lorg/jsoup/nodes/Element;)V

    sget-object p2, Lorg/apache/poi/convert/BodyElementType;->BODY_TABLE:Lorg/apache/poi/convert/BodyElementType;

    if-ne p6, p2, :cond_0

    iget p2, p0, Lorg/apache/poi/convert/AbstractConverter;->tableIndentRatio:F

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p4, p6, p2}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils;->addParagraphProperties(Lorg/apache/poi/hwpf/usermodel/Paragraph;Ljava/lang/StringBuilder;F)V

    invoke-virtual {p4}, Lorg/apache/poi/hwpf/usermodel/Range;->numCharacterRuns()I

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p4, p2}, Lorg/apache/poi/hwpf/usermodel/Range;->getCharacterRun(I)Lorg/apache/poi/hwpf/usermodel/CharacterRun;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->getCharacterRunTriplet(Lorg/apache/poi/hwpf/usermodel/CharacterRun;)Lorg/apache/poi/hwpf/converter/FontReplacer$Triplet;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/usermodel/CharacterRun;->getFontSize()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, v2, Lorg/apache/poi/hwpf/converter/FontReplacer$Triplet;->fontName:Ljava/lang/String;

    invoke-static {v2, p6}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils;->addFontFamily(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-static {v1, p6}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils;->addFontSize(ILjava/lang/StringBuilder;)V

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    const-string v2, ""

    :goto_1
    iget-object v3, p0, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlConverter;->blocksProperties:Ljava/util/Deque;

    new-instance v4, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlConverter$BlockProperties;

    invoke-direct {v4, v2, v1}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlConverter$BlockProperties;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v4}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    :try_start_0
    invoke-static {p5}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0xa0

    if-eqz v1, :cond_4

    const-string v1, "\t"

    invoke-virtual {p5, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p4}, Lorg/apache/poi/hwpf/usermodel/Paragraph;->getIndentFromLeft()I

    move-result v1

    invoke-virtual {p4}, Lorg/apache/poi/hwpf/usermodel/Paragraph;->getFirstLineIndent()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    const/high16 v3, 0x41a00000    # 20.0f

    add-float/2addr v1, v3

    const/high16 v3, 0x44340000    # 720.0f

    div-float v3, v1, v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    const-wide v5, 0x4086800000000000L    # 720.0

    mul-double/2addr v3, v5

    double-to-float v3, v3

    sub-float/2addr v3, v1

    iget-object v1, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {v1}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createSpan()Lorg/jsoup/nodes/Element;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    const-string v5, "s"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "min-width: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-double v7, v3

    invoke-static {v7, v8}, Lorg/apache/poi/util/ExtUnits;->twipsToEM(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/apache/poi/util/ExtUnits;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "em;"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1, v5, v3}, Lorg/apache/poi/convert/HtmlDocumentFacade;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    iget-object v3, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p5, p2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x200b

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createText(Ljava/lang/String;)Lorg/jsoup/nodes/TextNode;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {p2, p5}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createText(Ljava/lang/String;)Lorg/jsoup/nodes/TextNode;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    :cond_4
    :goto_2
    invoke-virtual {p0, p1, p3, p4, v0}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processCharacters(Lorg/apache/poi/hwpf/HWPFDocumentCore;ILorg/apache/poi/hwpf/usermodel/Range;Lorg/jsoup/nodes/Element;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlConverter;->blocksProperties:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->childNodeSize()I

    move-result p1

    if-nez p1, :cond_5

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Element;->text(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    :cond_5
    invoke-virtual {p6}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_6

    iget-object p0, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    const-string p1, "p"

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/poi/convert/HtmlDocumentFacade;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_6
    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->compactSpans(Lorg/jsoup/nodes/Element;)V

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->compactTextNode(Lorg/jsoup/nodes/Element;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlConverter;->blocksProperties:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    throw p1
.end method

.method public processSection(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/apache/poi/hwpf/usermodel/Section;I)V
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/convert/AbstractWordConverter;->checkSplitDocument()Z

    invoke-virtual {p0, p2}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->createBlock(Lorg/apache/poi/hwpf/usermodel/Section;)Lorg/jsoup/nodes/Element;

    move-result-object v2

    const/high16 v4, -0x80000000

    sget-object v5, Lorg/apache/poi/convert/BodyElementType;->BODY:Lorg/apache/poi/convert/BodyElementType;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processParagraphes(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/jsoup/nodes/Element;Lorg/apache/poi/hwpf/usermodel/Range;ILorg/apache/poi/convert/BodyElementType;)V

    return-void
.end method

.method public processTable(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/jsoup/nodes/Element;Lorg/apache/poi/hwpf/usermodel/Table;)V
    .locals 27

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/convert/AbstractWordConverter;->checkAbortConvert()V

    iget-object v0, v6, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createTableHeader()Lorg/jsoup/nodes/Element;

    move-result-object v8

    iget-object v0, v6, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createTableBody()Lorg/jsoup/nodes/Element;

    move-result-object v9

    invoke-static/range {p3 .. p3}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils;->buildTableCellEdgesArray(Lorg/apache/poi/hwpf/usermodel/Table;)[I

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/hwpf/usermodel/Table;->numRows()I

    move-result v11

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v11, :cond_0

    invoke-virtual {v7, v1}, Lorg/apache/poi/hwpf/usermodel/Table;->getRow(I)Lorg/apache/poi/hwpf/usermodel/TableRow;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hwpf/usermodel/TableRow;->numCells()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_1
    const-string v14, "class"

    if-ge v13, v11, :cond_f

    invoke-virtual {v7, v13}, Lorg/apache/poi/hwpf/usermodel/Table;->getRow(I)Lorg/apache/poi/hwpf/usermodel/TableRow;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils;->getTableCellTotalWidth(Lorg/apache/poi/hwpf/usermodel/TableRow;)I

    move-result v24

    iget-object v0, v6, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createTableRow()Lorg/jsoup/nodes/Element;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5, v3}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils;->addTableRowProperties(Lorg/apache/poi/hwpf/usermodel/TableRow;Ljava/lang/StringBuilder;)V

    invoke-virtual {v5}, Lorg/apache/poi/hwpf/usermodel/TableRow;->numCells()I

    move-result v2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/convert/AbstractWordConverter;->checkAbortConvert()V

    invoke-virtual {v5, v1}, Lorg/apache/poi/hwpf/usermodel/TableRow;->getCell(I)Lorg/apache/poi/hwpf/usermodel/TableCell;

    move-result-object v15

    invoke-virtual {v15}, Lorg/apache/poi/hwpf/usermodel/TableCell;->isVerticallyMerged()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-virtual {v15}, Lorg/apache/poi/hwpf/usermodel/TableCell;->isFirstVerticallyMerged()Z

    move-result v16

    if-nez v16, :cond_1

    invoke-virtual {v6, v10, v0, v15}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->getNumberColumnsSpanned([IILorg/apache/poi/hwpf/usermodel/TableCell;)I

    move-result v15

    add-int/2addr v0, v15

    :goto_3
    move/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v5

    move-object/from16 v20, v10

    move-object v10, v4

    goto/16 :goto_a

    :cond_1
    invoke-virtual {v5}, Lorg/apache/poi/hwpf/usermodel/TableRow;->isTableHeader()Z

    move-result v16

    if-eqz v16, :cond_2

    iget-object v12, v6, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {v12}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createTableHeaderCell()Lorg/jsoup/nodes/Element;

    move-result-object v12

    goto :goto_4

    :cond_2
    iget-object v12, v6, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {v12}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createTableCell()Lorg/jsoup/nodes/Element;

    move-result-object v12

    :goto_4
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v13, :cond_3

    const/16 v17, 0x1

    goto :goto_5

    :cond_3
    const/16 v17, 0x0

    :goto_5
    add-int/lit8 v7, v11, -0x1

    if-ne v13, v7, :cond_4

    const/16 v18, 0x1

    goto :goto_6

    :cond_4
    const/16 v18, 0x0

    :goto_6
    if-nez v1, :cond_5

    const/16 v19, 0x1

    goto :goto_7

    :cond_5
    const/16 v19, 0x0

    :goto_7
    add-int/lit8 v7, v2, -0x1

    if-ne v1, v7, :cond_6

    const/16 v20, 0x1

    goto :goto_8

    :cond_6
    const/16 v20, 0x0

    :goto_8
    iget v7, v6, Lorg/apache/poi/convert/AbstractConverter;->tableIndentRatio:F

    move-object/from16 v26, v15

    move-object v15, v5

    move-object/from16 v16, v26

    move-object/from16 v21, v25

    move/from16 v22, v24

    move/from16 v23, v7

    invoke-static/range {v15 .. v23}, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils;->addTableCellProperties(Lorg/apache/poi/hwpf/usermodel/TableRow;Lorg/apache/poi/hwpf/usermodel/TableCell;ZZZZLjava/lang/StringBuilder;IF)V

    move-object/from16 v7, v26

    invoke-virtual {v6, v10, v0, v7}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->getNumberColumnsSpanned([IILorg/apache/poi/hwpf/usermodel/TableCell;)I

    move-result v15

    if-nez v15, :cond_7

    goto :goto_3

    :cond_7
    move/from16 v16, v0

    const/4 v0, 0x1

    if-eq v15, v0, :cond_8

    const-string v0, "colspan"

    move/from16 v17, v1

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto :goto_9

    :cond_8
    move/from16 v17, v1

    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v18, v2

    move-object v2, v10

    move-object/from16 v19, v3

    move v3, v13

    move-object/from16 v20, v10

    move-object v10, v4

    move/from16 v4, v16

    move-object/from16 v21, v5

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->getNumberRowsSpanned(Lorg/apache/poi/hwpf/usermodel/Table;[IIILorg/apache/poi/hwpf/usermodel/TableCell;)I

    move-result v0

    add-int v15, v16, v15

    const/4 v1, 0x1

    if-le v0, v1, :cond_9

    const-string v1, "rowspan"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v1, v0}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    :cond_9
    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/hwpf/usermodel/Table;->getTableLevel()I

    move-result v4

    sget-object v5, Lorg/apache/poi/convert/BodyElementType;->BODY_TABLE:Lorg/apache/poi/convert/BodyElementType;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move-object v3, v7

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processParagraphes(Lorg/apache/poi/hwpf/HWPFDocumentCore;Lorg/jsoup/nodes/Element;Lorg/apache/poi/hwpf/usermodel/Range;ILorg/apache/poi/convert/BodyElementType;)V

    invoke-virtual {v12}, Lorg/jsoup/nodes/Element;->childNodeSize()I

    move-result v0

    if-gtz v0, :cond_a

    iget-object v0, v6, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createParagraph()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v12, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    const/16 v1, 0xa0

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->text(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    :cond_a
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_b

    iget-object v0, v6, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {v12}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v12, v1, v2}, Lorg/apache/poi/convert/HtmlDocumentFacade;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_b
    invoke-virtual {v10, v12}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    move v0, v15

    :goto_a
    add-int/lit8 v1, v17, 0x1

    move-object/from16 v7, p3

    move-object v4, v10

    move/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v10, v20

    move-object/from16 v5, v21

    goto/16 :goto_2

    :cond_c
    move-object/from16 v19, v3

    move-object/from16 v21, v5

    move-object/from16 v20, v10

    move-object v10, v4

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_d

    iget-object v0, v6, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    const-string v1, "r"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/convert/HtmlDocumentFacade;->getOrCreateCssClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v14, v0}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    :cond_d
    invoke-virtual/range {v21 .. v21}, Lorg/apache/poi/hwpf/usermodel/TableRow;->isTableHeader()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v8, v10}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto :goto_b

    :cond_e
    invoke-virtual {v9, v10}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    :goto_b
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v7, p3

    move-object/from16 v10, v20

    goto/16 :goto_1

    :cond_f
    iget-object v0, v6, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createTable()Lorg/jsoup/nodes/Element;

    move-result-object v0

    iget-object v1, v6, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    const-string v2, "t"

    const-string v3, "table-layout:fixed;border-collapse:collapse;border-spacing:0;"

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/convert/HtmlDocumentFacade;->getOrCreateCssClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v14, v1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    invoke-virtual {v8}, Lorg/jsoup/nodes/Element;->childNodeSize()I

    move-result v1

    if-lez v1, :cond_10

    invoke-virtual {v0, v8}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    :cond_10
    invoke-virtual {v9}, Lorg/jsoup/nodes/Element;->childNodeSize()I

    move-result v1

    if-lez v1, :cond_11

    invoke-virtual {v0, v9}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto :goto_c

    :cond_11
    iget-object v0, v6, Lorg/apache/poi/convert/AbstractConverter;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/hwpf/usermodel/Range;->getStartOffset()I

    move-result v1

    invoke-static {v1}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/hwpf/usermodel/Range;->getEndOffset()I

    move-result v2

    invoke-static {v2}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Table without body starting at [{}; {})"

    invoke-interface {v0, v3, v1, v2}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_c
    return-void
.end method
