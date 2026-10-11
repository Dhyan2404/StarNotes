.class Lorg/apache/poi/convert/xwpf/handler/XWPFMathHandler;
.super Lorg/apache/poi/convert/xwpf/handler/XWPFIRunHandler;
.source "SourceFile"


# instance fields
.field private mathRun:Lorg/apache/poi/xwpf/usermodel/XWPFMathRun;


# direct methods
.method public constructor <init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/XWPFMathRun;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFIRunHandler;-><init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;)V

    iput-object p2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFMathHandler;->mathRun:Lorg/apache/poi/xwpf/usermodel/XWPFMathRun;

    return-void
.end method

.method private appendLatexElement(Lorg/jsoup/nodes/Element;Ljava/lang/String;I)V
    .locals 3

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFIRunHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {p0}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->getDocumentFacade()Lorg/apache/poi/convert/HtmlDocumentFacade;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createSpan()Lorg/jsoup/nodes/Element;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "font-size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "px;"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "latex"

    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/poi/convert/HtmlDocumentFacade;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Element;->appendTo(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/Element;->text(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    return-void
.end method

.method public static handleRun(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/XWPFMathRun;Lorg/jsoup/nodes/Element;III)V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/convert/xwpf/handler/XWPFMathHandler;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFMathHandler;-><init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/XWPFMathRun;)V

    invoke-virtual {v0, p2, p3, p4, p5}, Lorg/apache/poi/convert/xwpf/handler/XWPFMathHandler;->handleRun(Lorg/jsoup/nodes/Element;III)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public handleRun(Lorg/jsoup/nodes/Element;III)V
    .locals 10

    .line 2
    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFMathHandler;->mathRun:Lorg/apache/poi/xwpf/usermodel/XWPFMathRun;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFMathRun;->getMathString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lorg/apache/poi/common/MathUtils;->getSizeFromOMML(Ljava/lang/String;)I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->pointsToPixel(D)I

    move-result v1

    .line 4
    invoke-static {v0}, Lorg/apache/poi/common/MathUtils;->omml2LaTeX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFIRunHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {v2}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->getPicturesManager()Lorg/apache/poi/picture/PicturesManager;

    move-result-object v2

    .line 6
    invoke-static {v2}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFMathHandler;->appendLatexElement(Lorg/jsoup/nodes/Element;Ljava/lang/String;I)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance v2, Lorg/apache/poi/xwpf/usermodel/LatexPicture;

    new-instance v3, Lorg/apache/poi/latex/Latex;

    int-to-float v1, v1

    invoke-direct {v3, v0, v1}, Lorg/apache/poi/latex/Latex;-><init>(Ljava/lang/String;F)V

    invoke-direct {v2, v3}, Lorg/apache/poi/xwpf/usermodel/LatexPicture;-><init>(Lorg/apache/poi/latex/Latex;)V

    .line 9
    new-instance v4, Lorg/apache/poi/convert/xwpf/handler/XWPFPictureHandler;

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFIRunHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-direct {v4, p0, v2}, Lorg/apache/poi/convert/xwpf/handler/XWPFPictureHandler;-><init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/wp/usermodel/IPicture;)V

    const/4 v6, 0x0

    move-object v5, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-virtual/range {v4 .. v9}, Lorg/apache/poi/convert/xwpf/handler/XWPFPictureHandler;->handleRunPart(Lorg/jsoup/nodes/Element;Lorg/apache/poi/style/TextRunStyles;III)V

    :goto_0
    return-void
.end method
