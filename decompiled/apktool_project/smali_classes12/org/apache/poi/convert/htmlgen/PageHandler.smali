.class public abstract Lorg/apache/poi/convert/htmlgen/PageHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/convert/htmlgen/ConverterHandler;


# instance fields
.field private addDividerShowHideScript:Z

.field private addMathJarScript:Z

.field private contentContainer:Lorg/jsoup/nodes/Element;

.field private context:Lorg/apache/poi/convert/htmlgen/ConverterContext;

.field private documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

.field private documentParaSize:I

.field private footerContainer:Lorg/jsoup/nodes/Element;

.field private headerContainer:Lorg/jsoup/nodes/Element;

.field private newDocument:Z

.field private newPage:Z

.field private paraSize:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/convert/htmlgen/ConverterContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->context:Lorg/apache/poi/convert/htmlgen/ConverterContext;

    invoke-virtual {p1}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->getDocumentFacade()Lorg/apache/poi/convert/HtmlDocumentFacade;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    return-void
.end method

.method private addDivider(Lorg/jsoup/nodes/Element;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createBlock()Lorg/jsoup/nodes/Element;

    move-result-object v0

    const-string v1, "name"

    const-string v2, "divider"

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    const-string v1, "onclick"

    const-string v3, "showOrHideHeaderFooter()"

    invoke-virtual {v0, v1, v3}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    const-string v1, "height:16px;background:lightgray;"

    invoke-direct {p0, v0, v2, v1}, Lorg/apache/poi/convert/htmlgen/PageHandler;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    return-void
.end method

.method private addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/convert/HtmlDocumentFacade;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private createContentBlock(Lorg/apache/poi/style/page/PageStyles;Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createBlock()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    const-string p2, "name"

    const-string v1, "content-container"

    invoke-virtual {v0, p2, v1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/convert/htmlgen/PageHandler;->setPageNumberAttribute(Lorg/apache/poi/style/page/PageStyles;Lorg/jsoup/nodes/Element;)V

    invoke-virtual {p1}, Lorg/apache/poi/style/page/PageStyles;->getPageMargin()Lorg/apache/poi/style/page/PageMargin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/style/page/PageMargin;->getPageContentStyle()Ljava/lang/String;

    move-result-object p1

    const-string p2, "d"

    invoke-direct {p0, v0, p2, p1}, Lorg/apache/poi/convert/htmlgen/PageHandler;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private createFooterBlock(Lorg/apache/poi/style/page/PageStyles;Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/style/page/PageStyles;->getPageMargin()Lorg/apache/poi/style/page/PageMargin;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {v1}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createBlock()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    const-string p2, "footer"

    const-string v2, "name"

    invoke-virtual {v1, v2, p2}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    const/4 p2, 0x0

    invoke-direct {p0, v1, p1, p2}, Lorg/apache/poi/convert/htmlgen/PageHandler;->setHeaderFooterBlockStyle(Lorg/jsoup/nodes/Element;Lorg/apache/poi/style/page/PageStyles;Z)V

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/convert/htmlgen/PageHandler;->createFooterLeftAngle(Lorg/apache/poi/style/page/PageMargin;Lorg/jsoup/nodes/Element;)V

    iget-object p1, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {p1}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createBlock()Lorg/jsoup/nodes/Element;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    const-string p2, "footer-container"

    invoke-virtual {v1, v2, p2}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    const-string p2, "grid-area:1/2;"

    const-string v2, "h"

    invoke-direct {p0, v1, v2, p2}, Lorg/apache/poi/convert/htmlgen/PageHandler;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/poi/style/page/PageMargin;->getFooter()F

    move-result p2

    const/4 v3, 0x0

    cmpl-float p2, p2, v3

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "margin-bottom:"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/poi/style/page/PageMargin;->getFooter()F

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "px;"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v2, p2}, Lorg/apache/poi/convert/htmlgen/PageHandler;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, v0, v1}, Lorg/apache/poi/convert/htmlgen/PageHandler;->createFooterRightAngle(Lorg/apache/poi/style/page/PageMargin;Lorg/jsoup/nodes/Element;)V

    return-object p1
.end method

.method private createFooterLeftAngle(Lorg/apache/poi/style/page/PageMargin;Lorg/jsoup/nodes/Element;)V
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createBlock()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "grid-area:1/1;margin-top:auto;height:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/style/page/PageMargin;->getBottom()F

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "px;"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "h"

    invoke-direct {p0, v0, v2, p2}, Lorg/apache/poi/convert/htmlgen/PageHandler;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {p2}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createBlock()Lorg/jsoup/nodes/Element;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    invoke-virtual {p1}, Lorg/apache/poi/style/page/PageMargin;->getBottom()F

    move-result v0

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/style/page/PageMargin;->getLeft()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const-string v4, "border-color:gray;border-width:0.5px;border-style:solid solid none none;"

    invoke-direct {p0, p2, v2, v4}, Lorg/apache/poi/convert/htmlgen/PageHandler;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "px;height:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "px;margin-left:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/style/page/PageMargin;->getLeft()F

    move-result v5

    sub-float/2addr v5, v3

    float-to-double v5, v5

    invoke-static {v5, v6}, Lorg/apache/poi/util/ExtUnits;->getFormatValue(D)F

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "px;margin-top:auto;"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/style/page/PageMargin;->getBottom()F

    move-result v3

    cmpl-float v3, v3, v0

    if-lez v3, :cond_0

    const-string v3, "margin-bottom:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/style/page/PageMargin;->getBottom()F

    move-result p1

    sub-float/2addr p1, v0

    float-to-double v5, p1

    invoke-static {v5, v6}, Lorg/apache/poi/util/ExtUnits;->getFormatValue(D)F

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, v2, p1}, Lorg/apache/poi/convert/htmlgen/PageHandler;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createFooterRightAngle(Lorg/apache/poi/style/page/PageMargin;Lorg/jsoup/nodes/Element;)V
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createBlock()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "grid-area:1/3;margin-top:auto;height:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/style/page/PageMargin;->getBottom()F

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "px;"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "h"

    invoke-direct {p0, v0, v2, p2}, Lorg/apache/poi/convert/htmlgen/PageHandler;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {p2}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createBlock()Lorg/jsoup/nodes/Element;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    invoke-virtual {p1}, Lorg/apache/poi/style/page/PageMargin;->getBottom()F

    move-result v0

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/style/page/PageMargin;->getRight()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const-string v4, "border-color:gray;border-width:0.5px;border-style:solid none none solid;"

    invoke-direct {p0, p2, v2, v4}, Lorg/apache/poi/convert/htmlgen/PageHandler;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "px;height:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "px;margin-top:auto;"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/style/page/PageMargin;->getBottom()F

    move-result v3

    cmpl-float v3, v3, v0

    if-lez v3, :cond_0

    const-string v3, "margin-bottom:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/style/page/PageMargin;->getBottom()F

    move-result p1

    sub-float/2addr p1, v0

    float-to-double v5, p1

    invoke-static {v5, v6}, Lorg/apache/poi/util/ExtUnits;->getFormatValue(D)F

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, v2, p1}, Lorg/apache/poi/convert/htmlgen/PageHandler;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createHeaderBlock(Lorg/apache/poi/style/page/PageStyles;Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/style/page/PageStyles;->getPageMargin()Lorg/apache/poi/style/page/PageMargin;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {v1}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createBlock()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    const-string p2, "header"

    const-string v2, "name"

    invoke-virtual {v1, v2, p2}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    const/4 p2, 0x1

    invoke-direct {p0, v1, p1, p2}, Lorg/apache/poi/convert/htmlgen/PageHandler;->setHeaderFooterBlockStyle(Lorg/jsoup/nodes/Element;Lorg/apache/poi/style/page/PageStyles;Z)V

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/convert/htmlgen/PageHandler;->createHeaderLeftAngle(Lorg/apache/poi/style/page/PageMargin;Lorg/jsoup/nodes/Element;)V

    iget-object p1, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {p1}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createBlock()Lorg/jsoup/nodes/Element;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    const-string p2, "header-container"

    invoke-virtual {v1, v2, p2}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    const-string p2, "grid-area:1/2;"

    const-string v2, "h"

    invoke-direct {p0, p1, v2, p2}, Lorg/apache/poi/convert/htmlgen/PageHandler;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/poi/style/page/PageMargin;->getHeader()F

    move-result p2

    const/4 v3, 0x0

    cmpl-float p2, p2, v3

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "margin-top:"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/poi/style/page/PageMargin;->getHeader()F

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "px;"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v2, p2}, Lorg/apache/poi/convert/htmlgen/PageHandler;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, v0, v1}, Lorg/apache/poi/convert/htmlgen/PageHandler;->createHeaderRightAngle(Lorg/apache/poi/style/page/PageMargin;Lorg/jsoup/nodes/Element;)V

    return-object p1
.end method

.method private createHeaderLeftAngle(Lorg/apache/poi/style/page/PageMargin;Lorg/jsoup/nodes/Element;)V
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createBlock()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "grid-area:1/1;height:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/style/page/PageMargin;->getTop()F

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "px;"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "h"

    invoke-direct {p0, v0, v2, p2}, Lorg/apache/poi/convert/htmlgen/PageHandler;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {p2}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createBlock()Lorg/jsoup/nodes/Element;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    invoke-virtual {p1}, Lorg/apache/poi/style/page/PageMargin;->getTop()F

    move-result v0

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/style/page/PageMargin;->getLeft()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const-string v4, "border-color:gray;border-width:0.5px;border-style:none solid solid none;"

    invoke-direct {p0, p2, v2, v4}, Lorg/apache/poi/convert/htmlgen/PageHandler;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "px;height:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "px;margin-left:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/style/page/PageMargin;->getLeft()F

    move-result v5

    sub-float/2addr v5, v3

    float-to-double v5, v5

    invoke-static {v5, v6}, Lorg/apache/poi/util/ExtUnits;->getFormatValue(D)F

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/style/page/PageMargin;->getTop()F

    move-result v3

    cmpl-float v3, v3, v0

    if-lez v3, :cond_0

    const-string v3, "px;margin-top:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/style/page/PageMargin;->getTop()F

    move-result p1

    sub-float/2addr p1, v0

    float-to-double v5, p1

    invoke-static {v5, v6}, Lorg/apache/poi/util/ExtUnits;->getFormatValue(D)F

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, v2, p1}, Lorg/apache/poi/convert/htmlgen/PageHandler;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createHeaderRightAngle(Lorg/apache/poi/style/page/PageMargin;Lorg/jsoup/nodes/Element;)V
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createBlock()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "grid-area:1/3;height:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/style/page/PageMargin;->getTop()F

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "px;"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "h"

    invoke-direct {p0, v0, v2, p2}, Lorg/apache/poi/convert/htmlgen/PageHandler;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {p2}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createBlock()Lorg/jsoup/nodes/Element;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    invoke-virtual {p1}, Lorg/apache/poi/style/page/PageMargin;->getTop()F

    move-result v0

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/style/page/PageMargin;->getRight()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const-string v4, "border-color:gray;border-width:0.5px;border-style:none none solid solid;"

    invoke-direct {p0, p2, v2, v4}, Lorg/apache/poi/convert/htmlgen/PageHandler;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "px;height:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/style/page/PageMargin;->getTop()F

    move-result v3

    cmpl-float v3, v3, v0

    if-lez v3, :cond_0

    const-string v3, "px;margin-top:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/style/page/PageMargin;->getTop()F

    move-result p1

    sub-float/2addr p1, v0

    float-to-double v5, p1

    invoke-static {v5, v6}, Lorg/apache/poi/util/ExtUnits;->getFormatValue(D)F

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, v2, p1}, Lorg/apache/poi/convert/htmlgen/PageHandler;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private pageBodyElementExceedLimit(Lorg/apache/poi/style/page/PageStyles;)Z
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/style/page/PageStyles;->getBodyElementSize()I

    move-result p0

    const/4 p1, 0x4

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setDocumentBodyStyle(Lorg/apache/poi/style/page/PageStyles;)V
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {p0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->getBody()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/style/page/PageStyles;->getPageSize()Lorg/apache/poi/style/page/PageSize;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/style/page/PageSize;->toStyle()Ljava/lang/String;

    move-result-object p1

    const-string v1, "b"

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/convert/HtmlDocumentFacade;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private setHeaderFooterBlockStyle(Lorg/jsoup/nodes/Element;Lorg/apache/poi/style/page/PageStyles;Z)V
    .locals 5

    invoke-virtual {p2}, Lorg/apache/poi/style/page/PageStyles;->getPageMargin()Lorg/apache/poi/style/page/PageMargin;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/poi/style/page/PageStyles;->getPageSize()Lorg/apache/poi/style/page/PageSize;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/style/page/PageSize;->getWidth()F

    move-result p2

    invoke-virtual {v0}, Lorg/apache/poi/style/page/PageMargin;->getLeft()F

    move-result v1

    sub-float/2addr p2, v1

    invoke-virtual {v0}, Lorg/apache/poi/style/page/PageMargin;->getRight()F

    move-result v1

    sub-float/2addr p2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "display:grid;grid-template-columns:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/poi/style/page/PageMargin;->getLeft()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "px "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-double v3, p2

    invoke-static {v3, v4}, Lorg/apache/poi/util/ExtUnits;->getFormatValue(D)F

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/poi/style/page/PageMargin;->getRight()F

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "px;"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "min-height:"

    if-eqz p3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/poi/style/page/PageMargin;->getTop()F

    move-result p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/poi/style/page/PageMargin;->getBottom()F

    move-result p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p2, "h"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/convert/htmlgen/PageHandler;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setPageNumberAttribute(Lorg/apache/poi/style/page/PageStyles;Lorg/jsoup/nodes/Element;)V
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/style/page/PageStyles;->getPageNumType()Lorg/apache/poi/style/page/PageNumType;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/style/page/PageNumType;->isValid()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/style/page/PageStyles;->getPageNumType()Lorg/apache/poi/style/page/PageNumType;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/style/page/PageNumType;->getStart()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "page-start"

    invoke-virtual {p2, p1, p0}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    :cond_0
    return-void
.end method


# virtual methods
.method public createNewDocument()V
    .locals 3

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->newDocument:Z

    .line 6
    iget-object v0, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->getBody()Lorg/jsoup/nodes/Element;

    move-result-object v0

    const-string v1, "class"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v2, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {v2}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createDocument()Lorg/jsoup/nodes/Document;

    .line 8
    iget-object v2, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {v2}, Lorg/apache/poi/convert/HtmlDocumentFacade;->getBody()Lorg/jsoup/nodes/Element;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 9
    invoke-virtual {p0}, Lorg/apache/poi/convert/htmlgen/PageHandler;->setUpNewDocument()V

    return-void
.end method

.method public createNewDocument(Lorg/apache/poi/style/page/PageStyles;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->newDocument:Z

    .line 2
    iget-object v0, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createDocument()Lorg/jsoup/nodes/Document;

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/convert/htmlgen/PageHandler;->setUpNewDocument()V

    .line 4
    invoke-direct {p0, p1}, Lorg/apache/poi/convert/htmlgen/PageHandler;->setDocumentBodyStyle(Lorg/apache/poi/style/page/PageStyles;)V

    return-void
.end method

.method public createPageBlocks(Lorg/apache/poi/style/page/PageStyles;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->newPage:Z

    iget-boolean v0, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->newDocument:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->getBody()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/htmlgen/PageHandler;->addDivider(Lorg/jsoup/nodes/Element;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createBlock()Lorg/jsoup/nodes/Element;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {v1}, Lorg/apache/poi/convert/HtmlDocumentFacade;->getBody()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    invoke-virtual {p1}, Lorg/apache/poi/style/page/PageStyles;->getPageIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "page-index"

    invoke-virtual {v0, v2, v1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/convert/htmlgen/PageHandler;->createHeaderBlock(Lorg/apache/poi/style/page/PageStyles;Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->headerContainer:Lorg/jsoup/nodes/Element;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/convert/htmlgen/PageHandler;->createContentBlock(Lorg/apache/poi/style/page/PageStyles;Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->contentContainer:Lorg/jsoup/nodes/Element;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/convert/htmlgen/PageHandler;->createFooterBlock(Lorg/apache/poi/style/page/PageStyles;Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->footerContainer:Lorg/jsoup/nodes/Element;

    return-void
.end method

.method public getContentContainer()Lorg/jsoup/nodes/Element;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->contentContainer:Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public getFooterContainer()Lorg/jsoup/nodes/Element;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->footerContainer:Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public getHeaderContainer()Lorg/jsoup/nodes/Element;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->headerContainer:Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public handlePage(Lorg/apache/poi/style/page/PageStyles;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->context:Lorg/apache/poi/convert/htmlgen/ConverterContext;

    invoke-virtual {v0}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->getCurrentPage()Lorg/apache/poi/style/page/PageStyles;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->newDocument:Z

    invoke-virtual {p0}, Lorg/apache/poi/convert/htmlgen/PageHandler;->setUpNewDocument()V

    invoke-direct {p0, p1}, Lorg/apache/poi/convert/htmlgen/PageHandler;->setDocumentBodyStyle(Lorg/apache/poi/style/page/PageStyles;)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/convert/htmlgen/PageHandler;->createPageBlocks(Lorg/apache/poi/style/page/PageStyles;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/style/page/PageStyles;->getPageSize()Lorg/apache/poi/style/page/PageSize;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/style/page/PageStyles;->getPageSize()Lorg/apache/poi/style/page/PageSize;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/poi/convert/htmlgen/PageHandler;->createNewDocument(Lorg/apache/poi/style/page/PageStyles;)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/convert/htmlgen/PageHandler;->createPageBlocks(Lorg/apache/poi/style/page/PageStyles;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/convert/htmlgen/PageHandler;->paragraphSizeExceedLimit()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/convert/htmlgen/PageHandler;->createNewDocument()V

    invoke-virtual {p0, p1}, Lorg/apache/poi/convert/htmlgen/PageHandler;->createPageBlocks(Lorg/apache/poi/style/page/PageStyles;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/style/page/PageStyles;->getPageColumns()Lorg/apache/poi/style/page/PageColumns;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/style/page/PageColumns;->hasColumn()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lorg/apache/poi/convert/htmlgen/PageHandler;->pageBodyElementExceedLimit(Lorg/apache/poi/style/page/PageStyles;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->newDocument:Z

    iput-boolean v1, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->newPage:Z

    goto :goto_1

    :cond_4
    :goto_0
    iput-boolean v1, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->newDocument:Z

    invoke-virtual {p0, p1}, Lorg/apache/poi/convert/htmlgen/PageHandler;->createPageBlocks(Lorg/apache/poi/style/page/PageStyles;)V

    :goto_1
    return-void
.end method

.method public isNewDocument()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->newDocument:Z

    return p0
.end method

.method public isNewPage()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->newPage:Z

    return p0
.end method

.method public paragraphSizeExceedLimit()Z
    .locals 1

    iget v0, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->documentParaSize:I

    if-lez v0, :cond_0

    iget p0, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->paraSize:I

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public resetNewDocument()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->newDocument:Z

    return-void
.end method

.method public setAddDividerShowHideScript(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->addDividerShowHideScript:Z

    return-void
.end method

.method public setAddMathJarScript(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->addMathJarScript:Z

    return-void
.end method

.method public setDocumentParaSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->documentParaSize:I

    return-void
.end method

.method public setParaSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->paraSize:I

    return-void
.end method

.method public setUpNewDocument()V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->addMathJarScript:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->addMathJaxScript()V

    :cond_0
    iget-boolean v0, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->addDividerShowHideScript:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    const-string v1, ".divider1:hover{cursor:pointer;background-color:red;}"

    invoke-virtual {v0, v1}, Lorg/apache/poi/convert/HtmlDocumentFacade;->addStyle(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/convert/htmlgen/PageHandler;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {p0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->addShowOrHideHeaderFooterFunction()V

    :cond_1
    return-void
.end method
