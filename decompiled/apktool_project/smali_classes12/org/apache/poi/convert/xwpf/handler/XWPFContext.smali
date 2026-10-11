.class public Lorg/apache/poi/convert/xwpf/handler/XWPFContext;
.super Lorg/apache/poi/convert/htmlgen/ConverterContext;
.source "SourceFile"


# instance fields
.field commentContainer:Lorg/jsoup/nodes/Element;

.field defaultStyle:Lorg/apache/poi/xwpf/usermodel/XWPFStyle;

.field docGridLine:Z

.field document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

.field fldCharState:Lorg/apache/poi/xwpf/usermodel/FldCharState;

.field fldContainer:Lorg/jsoup/nodes/Element;

.field lineHeight:Lorg/apache/poi/style/LineHeight;

.field linePitch:Lorg/apache/poi/style/UnitValue;

.field noteContainer:Lorg/jsoup/nodes/Element;

.field numberingHandler:Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;

.field paragraphStylesDeque:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lorg/apache/poi/style/ParagraphStyles;",
            ">;"
        }
    .end annotation
.end field

.field settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

.field styles:Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

.field theme:Lorg/apache/poi/xwpf/usermodel/XWPFTheme;

.field tocIndex:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;Lorg/apache/poi/convert/HtmlDocumentFacade;)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/apache/poi/convert/htmlgen/ConverterContext;-><init>(Lorg/apache/poi/convert/HtmlDocumentFacade;)V

    iput-object p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-direct {p0}, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->init()V

    new-instance p2, Ljava/util/ArrayDeque;

    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->paragraphStylesDeque:Ljava/util/Deque;

    new-instance p2, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getNumbering()Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;)V

    iput-object p2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->numberingHandler:Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;

    return-void
.end method

.method private getDefaultStyle(Lorg/apache/poi/xwpf/usermodel/XWPFStyles;)Lorg/apache/poi/xwpf/usermodel/XWPFStyle;
    .locals 3

    iget-object p0, p1, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->listStyle:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->getCTStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleType;->PARAGRAPH:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleType$Enum;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;->getType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STStyleType$Enum;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;->xgetDefault()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseOnOff(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private init()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getTheme()Lorg/apache/poi/xwpf/usermodel/XWPFTheme;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->theme:Lorg/apache/poi/xwpf/usermodel/XWPFTheme;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFTheme;

    invoke-direct {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTheme;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->theme:Lorg/apache/poi/xwpf/usermodel/XWPFTheme;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getSettings()Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    invoke-direct {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getStyles()Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->styles:Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    invoke-direct {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->styles:Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    sget-object p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    invoke-virtual {v0, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->setStyles(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->styles:Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->getDefaultStyle(Lorg/apache/poi/xwpf/usermodel/XWPFStyles;)Lorg/apache/poi/xwpf/usermodel/XWPFStyle;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->defaultStyle:Lorg/apache/poi/xwpf/usermodel/XWPFStyle;

    :goto_0
    return-void
.end method

.method private readBodySectPr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;)V
    .locals 2

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;->isSetDocGrid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;->getDocGrid()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocGrid;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocGrid;->getType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocGrid$Enum;

    move-result-object v0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocGrid;->getLinePitch()Ljava/math/BigInteger;

    move-result-object p1

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocGrid;->LINES:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocGrid$Enum;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->docGridLine:Z

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    int-to-double v0, p1

    invoke-static {v0, v1}, Lorg/apache/poi/util/ExtUnits;->dxaToPixel(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/style/UnitValue;->fromPX(D)Lorg/apache/poi/style/UnitValue;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->linePitch:Lorg/apache/poi/style/UnitValue;

    :cond_0
    return-void
.end method


# virtual methods
.method public addLast(Lorg/apache/poi/style/ParagraphStyles;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->paragraphStylesDeque:Ljava/util/Deque;

    invoke-interface {p0, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public getLineHeight()Lorg/apache/poi/style/LineHeight;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->lineHeight:Lorg/apache/poi/style/LineHeight;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/style/LineHeight;

    invoke-direct {v0}, Lorg/apache/poi/style/LineHeight;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->lineHeight:Lorg/apache/poi/style/LineHeight;

    iget-boolean v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->docGridLine:Z

    invoke-virtual {v0, v1}, Lorg/apache/poi/style/LineHeight;->setDocGridLine(Z)V

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->lineHeight:Lorg/apache/poi/style/LineHeight;

    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->linePitch:Lorg/apache/poi/style/UnitValue;

    invoke-virtual {v0, v1}, Lorg/apache/poi/style/LineHeight;->setLinePitch(Lorg/apache/poi/style/UnitValue;)V

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->lineHeight:Lorg/apache/poi/style/LineHeight;

    return-object p0
.end method

.method public isInFldChar()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->fldCharState:Lorg/apache/poi/xwpf/usermodel/FldCharState;

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/FldCharState;->BEGIN:Lorg/apache/poi/xwpf/usermodel/FldCharState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/FldCharState;->SEPARATE:Lorg/apache/poi/xwpf/usermodel/FldCharState;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public peekLast()Lorg/apache/poi/style/ParagraphStyles;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->paragraphStylesDeque:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/style/ParagraphStyles;

    return-object p0
.end method

.method public pollLast()Lorg/apache/poi/style/ParagraphStyles;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->paragraphStylesDeque:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/style/ParagraphStyles;

    return-object p0
.end method

.method public setCurrentSectPr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->readBodySectPr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->lineHeight:Lorg/apache/poi/style/LineHeight;

    return-void
.end method
