.class Lorg/apache/poi/convert/xwpf/handler/XWPFCommentsHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/convert/htmlgen/ConverterHandler;


# instance fields
.field private context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;


# direct methods
.method public constructor <init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFCommentsHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    return-void
.end method


# virtual methods
.method public handComments()V
    .locals 12

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFCommentsHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    iget-object v0, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getComments()[Lorg/apache/poi/xwpf/usermodel/XWPFComment;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/util/CollectionUtils;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFCommentsHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {v1}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->getDocumentFacade()Lorg/apache/poi/convert/HtmlDocumentFacade;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createBlock()Lorg/jsoup/nodes/Element;

    move-result-object v2

    const-string v3, "comment"

    const-string v4, "id"

    invoke-virtual {v2, v4, v3}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v2

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFCommentsHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    iput-object v2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->commentContainer:Lorg/jsoup/nodes/Element;

    const-string p0, "note"

    const-string v3, "font-size:smaller;display:none;"

    invoke-virtual {v1, v2, p0, v3}, Lorg/apache/poi/convert/HtmlDocumentFacade;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v1}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createUnorderedList()Lorg/jsoup/nodes/Element;

    move-result-object p0

    invoke-virtual {p0, v2}, Lorg/jsoup/nodes/Element;->appendTo(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    array-length v2, v0

    const/4 v3, 0x1

    const/4 v5, 0x0

    move v6, v3

    :goto_0
    if-ge v5, v2, :cond_1

    aget-object v7, v0, v5

    invoke-virtual {v1}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createListItem()Lorg/jsoup/nodes/Element;

    move-result-object v8

    invoke-virtual {v8, p0}, Lorg/jsoup/nodes/Element;->appendTo(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "#back_comment_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/apache/poi/xwpf/usermodel/XWPFComment;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createHyperlink(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v9

    const-string v10, "footnote"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/apache/poi/convert/WordToHtmlUtils;->addClass(Lorg/jsoup/nodes/Element;[Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "comment_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/apache/poi/xwpf/usermodel/XWPFComment;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/jsoup/nodes/Element;->text(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    invoke-virtual {v8, v9}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    const-string v9, " "

    invoke-virtual {v1, v9}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createText(Ljava/lang/String;)Lorg/jsoup/nodes/TextNode;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    invoke-virtual {v7}, Lorg/apache/poi/xwpf/usermodel/XWPFComment;->readDocument()V

    invoke-virtual {v1}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createSpan()Lorg/jsoup/nodes/Element;

    move-result-object v9

    const-string v10, "author"

    invoke-virtual {v7}, Lorg/apache/poi/xwpf/usermodel/XWPFComment;->getAuthor()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v9

    invoke-virtual {v9, v8}, Lorg/jsoup/nodes/Element;->appendTo(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object v8

    invoke-virtual {v7}, Lorg/apache/poi/xwpf/usermodel/XWPFComment;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/jsoup/nodes/Element;->text(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    invoke-static {v7}, Lorg/apache/poi/util/CloseUtils;->close(Ljava/io/Closeable;)V

    add-int/2addr v6, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
