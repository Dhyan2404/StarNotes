.class Lorg/apache/poi/convert/xwpf/handler/XWPFPictureHandler;
.super Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;
.source "SourceFile"


# instance fields
.field private picture:Lorg/apache/poi/wp/usermodel/IPicture;


# direct methods
.method public constructor <init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/wp/usermodel/IPicture;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;-><init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;)V

    iput-object p2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFPictureHandler;->picture:Lorg/apache/poi/wp/usermodel/IPicture;

    return-void
.end method

.method private getImageStyle()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFPictureHandler;->picture:Lorg/apache/poi/wp/usermodel/IPicture;

    invoke-interface {v0}, Lorg/apache/poi/wp/usermodel/IPicture;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/poi/util/ExtUnits;->getFormatValue(D)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "px;height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/poi/util/ExtUnits;->getFormatValue(D)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "px;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFPictureHandler;->picture:Lorg/apache/poi/wp/usermodel/IPicture;

    invoke-interface {v3}, Lorg/apache/poi/wp/usermodel/IPicture;->getPosition()Lorg/apache/poi/wp/usermodel/Position;

    move-result-object v3

    sget-object v4, Lorg/apache/poi/wp/usermodel/Position;->ABSOLUTE:Lorg/apache/poi/wp/usermodel/Position;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFPictureHandler;->picture:Lorg/apache/poi/wp/usermodel/IPicture;

    instance-of v4, v3, Lorg/apache/poi/xwpf/usermodel/AbsolutePicture;

    if-eqz v4, :cond_0

    check-cast v3, Lorg/apache/poi/xwpf/usermodel/AbsolutePicture;

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {v0}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->getCurrentPage()Lorg/apache/poi/style/page/PageStyles;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->peekLast()Lorg/apache/poi/style/ParagraphStyles;

    move-result-object p0

    invoke-interface {v3, v0, p0}, Lorg/apache/poi/xwpf/usermodel/AbsolutePicture;->getAbsolutePositionStyle(Lorg/apache/poi/style/page/PageStyles;Lorg/apache/poi/style/ParagraphStyles;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p0, "margin-left:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/poi/util/ExtUnits;->getFormatValue(D)F

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "px;margin-top:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/poi/util/ExtUnits;->getFormatValue(D)F

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public handleRunPart(Lorg/jsoup/nodes/Element;Lorg/apache/poi/style/TextRunStyles;III)V
    .locals 1

    iget-object p2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {p2}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->getDocumentFacade()Lorg/apache/poi/convert/HtmlDocumentFacade;

    move-result-object p2

    iget-object p3, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {p3}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->getPicturesManager()Lorg/apache/poi/picture/PicturesManager;

    move-result-object p3

    invoke-static {p3}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result p4

    const-string p5, "\' can be here"

    if-eqz p4, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Image link to \'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFPictureHandler;->picture:Lorg/apache/poi/wp/usermodel/IPicture;

    invoke-interface {p0}, Lorg/apache/poi/wp/usermodel/IPicture;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createComment(Ljava/lang/String;)Lorg/jsoup/nodes/Comment;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_0

    :cond_0
    iget-object p4, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFPictureHandler;->picture:Lorg/apache/poi/wp/usermodel/IPicture;

    invoke-virtual {p3, p4}, Lorg/apache/poi/picture/PicturesManager;->processPicture(Lorg/apache/poi/wp/usermodel/IPicture;)Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFPictureHandler;->picture:Lorg/apache/poi/wp/usermodel/IPicture;

    invoke-interface {p4}, Lorg/apache/poi/wp/usermodel/IPicture;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object p4

    invoke-static {p4}, Lorg/apache/poi/util/RectUtils;->isNullOrEmpty(Ljava/awt/geom/RectangularShape;)Z

    move-result p4

    if-eqz p4, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Empty image link to \'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFPictureHandler;->picture:Lorg/apache/poi/wp/usermodel/IPicture;

    invoke-interface {p0}, Lorg/apache/poi/wp/usermodel/IPicture;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createComment(Ljava/lang/String;)Lorg/jsoup/nodes/Comment;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    return-void

    :cond_1
    invoke-static {p3}, Lorg/apache/poi/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Error image link to \'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFPictureHandler;->picture:Lorg/apache/poi/wp/usermodel/IPicture;

    invoke-interface {p0}, Lorg/apache/poi/wp/usermodel/IPicture;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createComment(Ljava/lang/String;)Lorg/jsoup/nodes/Comment;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    return-void

    :cond_2
    invoke-virtual {p2, p3}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createImage(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p3

    iget-object p4, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFPictureHandler;->picture:Lorg/apache/poi/wp/usermodel/IPicture;

    invoke-interface {p4}, Lorg/apache/poi/wp/usermodel/IPicture;->getPosition()Lorg/apache/poi/wp/usermodel/Position;

    move-result-object p4

    invoke-virtual {p4}, Lorg/apache/poi/wp/usermodel/Position;->getStyle()Ljava/lang/String;

    move-result-object p4

    const-string p5, "img"

    invoke-virtual {p2, p3, p5, p4}, Lorg/apache/poi/convert/HtmlDocumentFacade;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0}, Lorg/apache/poi/convert/xwpf/handler/XWPFPictureHandler;->getImageStyle()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lorg/apache/poi/convert/WordToHtmlUtils;->setStyle(Lorg/jsoup/nodes/Element;Ljava/lang/String;)Z

    iget-object p2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFPictureHandler;->picture:Lorg/apache/poi/wp/usermodel/IPicture;

    invoke-interface {p2}, Lorg/apache/poi/wp/usermodel/IPicture;->getPosition()Lorg/apache/poi/wp/usermodel/Position;

    move-result-object p2

    sget-object p4, Lorg/apache/poi/wp/usermodel/Position;->ABSOLUTE:Lorg/apache/poi/wp/usermodel/Position;

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-ne p2, p4, :cond_4

    const-string p2, "name"

    const-string p4, "absolute-image"

    invoke-virtual {p3, p2, p4}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFPictureHandler;->picture:Lorg/apache/poi/wp/usermodel/IPicture;

    invoke-interface {p0}, Lorg/apache/poi/wp/usermodel/IPicture;->isBehindDoc()Z

    move-result p0

    if-eqz p0, :cond_3

    new-array p0, p5, [Lorg/jsoup/nodes/Node;

    aput-object p3, p0, v0

    invoke-virtual {p1, v0, p0}, Lorg/jsoup/nodes/Element;->insertChildren(I[Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_3
    invoke-static {p1, p3}, Lorg/apache/poi/convert/WordToHtmlUtils;->insertAfterAbsoluteImage(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFPictureHandler;->picture:Lorg/apache/poi/wp/usermodel/IPicture;

    invoke-interface {p0}, Lorg/apache/poi/wp/usermodel/IPicture;->isBehindDoc()Z

    move-result p0

    if-eqz p0, :cond_5

    new-array p0, p5, [Lorg/jsoup/nodes/Node;

    aput-object p3, p0, v0

    invoke-virtual {p1, v0, p0}, Lorg/jsoup/nodes/Element;->insertChildren(I[Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_5
    invoke-virtual {p1, p3}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    :goto_0
    return-void
.end method
