.class Lorg/apache/poi/convert/xwpf/handler/XWPFCTTextHandler;
.super Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;
.source "SourceFile"


# static fields
.field private static final PATTERN_HYPERLINK_EXTERNAL:Ljava/util/regex/Pattern;

.field private static final PATTERN_HYPERLINK_LOCAL:Ljava/util/regex/Pattern;

.field private static final PATTERN_PAGEREF:Ljava/util/regex/Pattern;

.field private static final PATTERN_REF:Ljava/util/regex/Pattern;

.field private static final PATTERN_RUBY:Ljava/util/regex/Pattern;

.field private static final PATTERN_TOC:Ljava/util/regex/Pattern;


# instance fields
.field private ctText:Lorg/apache/poi/xwpf/usermodel/XWPFCTText;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "^[ \\t\\r\\n]*HYPERLINK \\\\l ([^ ]*)[ \\t\\r\\n]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/convert/xwpf/handler/XWPFCTTextHandler;->PATTERN_HYPERLINK_LOCAL:Ljava/util/regex/Pattern;

    const-string v0, "^[ \\t\\r\\n]*HYPERLINK \"(.*)\".*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/convert/xwpf/handler/XWPFCTTextHandler;->PATTERN_HYPERLINK_EXTERNAL:Ljava/util/regex/Pattern;

    const-string v0, "^[ \\t\\r\\n]*PAGEREF ([^ ]*)[ \\t\\r\\n\\\\h]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/convert/xwpf/handler/XWPFCTTextHandler;->PATTERN_PAGEREF:Ljava/util/regex/Pattern;

    const-string v0, "^[ \\t\\r\\n]*REF ([^ ]*)[ \\t\\r\\n]*\\\\h ([^ ]*)[ \\t\\r\\n]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/convert/xwpf/handler/XWPFCTTextHandler;->PATTERN_REF:Ljava/util/regex/Pattern;

    const-string v0, "^[ \\t\\r\\n]*TOC \\\\o \"(.*)\".*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/convert/xwpf/handler/XWPFCTTextHandler;->PATTERN_TOC:Ljava/util/regex/Pattern;

    const-string v0, "^[ \\t\\r\\n]*EQ \\\\\\* jc0 \\\\\\* \"Font:(.*)\" \\\\\\* hps20 \\\\o \\\\ad\\(\\\\s \\\\up \\d*\\((.*)\\),([^ ]*).*\\)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/convert/xwpf/handler/XWPFCTTextHandler;->PATTERN_RUBY:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/XWPFCTText;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;-><init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;)V

    iput-object p2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFCTTextHandler;->ctText:Lorg/apache/poi/xwpf/usermodel/XWPFCTText;

    return-void
.end method

.method private getLineHeightStyle(Lorg/apache/poi/style/TextRunStyles;Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/style/TextRunStyles;->getLineHeight()Lorg/apache/poi/style/LineHeight;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {v0}, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->getLineHeight()Lorg/apache/poi/style/LineHeight;

    move-result-object v0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {p1, p2}, Lorg/apache/poi/style/TextRunStyles;->getFontFamily(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2}, Lorg/apache/poi/style/TextRunStyles;->getFontSize(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/style/UnitValue;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/style/UnitValue;->getNumberValue()F

    move-result p1

    invoke-virtual {p0, v1, p1}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->getFontHeight(Ljava/lang/String;F)F

    move-result p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/style/LineHeight;->toStyle(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleInstrHyperlink(Ljava/util/regex/Matcher;Lorg/jsoup/nodes/Element;Z)Z
    .locals 3

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "a"

    invoke-static {v0, v1}, Lorg/apache/poi/util/StringUtils;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    if-eqz p3, :cond_1

    iget-object p3, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {p3}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->getDocumentFacade()Lorg/apache/poi/convert/HtmlDocumentFacade;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createHyperlink(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {p3}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->getDocumentFacade()Lorg/apache/poi/convert/HtmlDocumentFacade;

    move-result-object p3

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createHyperlink(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p1

    :goto_0
    invoke-virtual {p2, p1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    iput-object p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->fldContainer:Lorg/jsoup/nodes/Element;

    :cond_2
    return v1
.end method

.method private handleInstrRuby(Ljava/util/regex/Matcher;Lorg/jsoup/nodes/Element;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {v0}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->getDocumentFacade()Lorg/apache/poi/convert/HtmlDocumentFacade;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createRuby()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    const-string p2, "font-family"

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/jsoup/nodes/Element;->text(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {p0}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->getDocumentFacade()Lorg/apache/poi/convert/HtmlDocumentFacade;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createRt()Lorg/jsoup/nodes/Element;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->text(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    return v1
.end method

.method private handleInstrText(Lorg/jsoup/nodes/Element;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFCTTextHandler;->ctText:Lorg/apache/poi/xwpf/usermodel/XWPFCTText;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFCTText;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lorg/apache/poi/convert/xwpf/handler/XWPFCTTextHandler;->PATTERN_HYPERLINK_EXTERNAL:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2}, Lorg/apache/poi/convert/xwpf/handler/XWPFCTTextHandler;->handleInstrHyperlink(Ljava/util/regex/Matcher;Lorg/jsoup/nodes/Element;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    sget-object v2, Lorg/apache/poi/convert/xwpf/handler/XWPFCTTextHandler;->PATTERN_HYPERLINK_LOCAL:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, v2}, Lorg/apache/poi/convert/xwpf/handler/XWPFCTTextHandler;->handleInstrHyperlink(Ljava/util/regex/Matcher;Lorg/jsoup/nodes/Element;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    :cond_2
    sget-object v3, Lorg/apache/poi/convert/xwpf/handler/XWPFCTTextHandler;->PATTERN_PAGEREF:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    invoke-direct {p0, v1, p1, v2}, Lorg/apache/poi/convert/xwpf/handler/XWPFCTTextHandler;->handleInstrHyperlink(Ljava/util/regex/Matcher;Lorg/jsoup/nodes/Element;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    :cond_3
    sget-object v3, Lorg/apache/poi/convert/xwpf/handler/XWPFCTTextHandler;->PATTERN_REF:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    invoke-direct {p0, v1, p1, v2}, Lorg/apache/poi/convert/xwpf/handler/XWPFCTTextHandler;->handleInstrHyperlink(Ljava/util/regex/Matcher;Lorg/jsoup/nodes/Element;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    :cond_4
    sget-object v2, Lorg/apache/poi/convert/xwpf/handler/XWPFCTTextHandler;->PATTERN_RUBY:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    invoke-direct {p0, v1, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFCTTextHandler;->handleInstrRuby(Ljava/util/regex/Matcher;Lorg/jsoup/nodes/Element;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    :cond_5
    sget-object p1, Lorg/apache/poi/convert/xwpf/handler/XWPFCTTextHandler;->PATTERN_TOC:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    :cond_6
    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p1, "Unknown instr text {}"

    invoke-interface {p0, p1, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private handleTextImpl(Lorg/jsoup/nodes/Element;Lorg/apache/poi/style/TextRunStyles;)V
    .locals 4

    invoke-virtual {p2}, Lorg/apache/poi/style/TextRunStyles;->increaseTextChildSize()V

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {v0}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->getDocumentFacade()Lorg/apache/poi/convert/HtmlDocumentFacade;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createSpan()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    iget-object p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFCTTextHandler;->ctText:Lorg/apache/poi/xwpf/usermodel/XWPFCTText;

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFCTText;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createText(Ljava/lang/String;)Lorg/jsoup/nodes/TextNode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    invoke-static {p1}, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->getFontGroupFirst(Ljava/lang/String;)Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    move-result-object p1

    const-string v2, "s"

    invoke-virtual {p2, p1}, Lorg/apache/poi/style/TextRunStyles;->toStyle(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/poi/convert/HtmlDocumentFacade;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "l"

    invoke-direct {p0, p2, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFCTTextHandler;->getLineHeightStyle(Lorg/apache/poi/style/TextRunStyles;Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFCTTextHandler;->ctText:Lorg/apache/poi/xwpf/usermodel/XWPFCTText;

    invoke-static {p0}, Lorg/apache/poi/util/CloseUtils;->close(Ljava/io/Closeable;)V

    return-void
.end method

.method public handleRunPart(Lorg/jsoup/nodes/Element;Lorg/apache/poi/style/TextRunStyles;III)V
    .locals 0

    iget-object p3, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFCTTextHandler;->ctText:Lorg/apache/poi/xwpf/usermodel/XWPFCTText;

    invoke-virtual {p3}, Lorg/apache/poi/xwpf/usermodel/XWPFCTText;->isDelete()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFCTTextHandler;->ctText:Lorg/apache/poi/xwpf/usermodel/XWPFCTText;

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFCTText;->getText()Ljava/lang/String;

    move-result-object p0

    const-string p2, "deleted content {}"

    invoke-interface {p1, p2, p0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFCTTextHandler;->ctText:Lorg/apache/poi/xwpf/usermodel/XWPFCTText;

    invoke-virtual {p3}, Lorg/apache/poi/xwpf/usermodel/XWPFCTText;->isInstr()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {p3}, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->isInFldChar()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-direct {p0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFCTTextHandler;->handleInstrText(Lorg/jsoup/nodes/Element;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/convert/xwpf/handler/XWPFCTTextHandler;->handleTextImpl(Lorg/jsoup/nodes/Element;Lorg/apache/poi/style/TextRunStyles;)V

    :goto_0
    return-void
.end method
