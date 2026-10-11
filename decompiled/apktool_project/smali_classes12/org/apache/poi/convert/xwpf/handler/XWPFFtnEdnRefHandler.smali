.class Lorg/apache/poi/convert/xwpf/handler/XWPFFtnEdnRefHandler;
.super Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;
.source "SourceFile"


# instance fields
.field private ftnEdnRef:Lorg/apache/poi/xwpf/usermodel/XWPFFtnEdnRef;


# direct methods
.method public constructor <init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/XWPFFtnEdnRef;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;-><init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;)V

    iput-object p2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFFtnEdnRefHandler;->ftnEdnRef:Lorg/apache/poi/xwpf/usermodel/XWPFFtnEdnRef;

    return-void
.end method

.method private createNoteUnorderedList(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {v0}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->getDocumentFacade()Lorg/apache/poi/convert/HtmlDocumentFacade;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createUnorderedList()Lorg/jsoup/nodes/Element;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->noteContainer:Lorg/jsoup/nodes/Element;

    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/Element;->appendTo(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    return-object p0
.end method

.method private getNoteUnorderedList()Lorg/jsoup/nodes/Element;
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFFtnEdnRefHandler;->ftnEdnRef:Lorg/apache/poi/xwpf/usermodel/XWPFFtnEdnRef;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFFtnEdnRef;->isFootnote()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "footnote"

    goto :goto_0

    :cond_0
    const-string v0, "endnote"

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    iget-object v1, v1, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->noteContainer:Lorg/jsoup/nodes/Element;

    invoke-static {v1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {v1}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->getDocumentFacade()Lorg/apache/poi/convert/HtmlDocumentFacade;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {v1}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createBlock()Lorg/jsoup/nodes/Element;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->noteContainer:Lorg/jsoup/nodes/Element;

    iget-object v2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    iget-object v2, v2, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->noteContainer:Lorg/jsoup/nodes/Element;

    const-string v3, "id"

    const-string v4, "note"

    invoke-virtual {v2, v3, v4}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    iget-object v2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    iget-object v2, v2, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->noteContainer:Lorg/jsoup/nodes/Element;

    const-string v3, "font-size:smaller;display:none;"

    invoke-virtual {v1, v2, v4, v3}, Lorg/apache/poi/convert/HtmlDocumentFacade;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/handler/XWPFFtnEdnRefHandler;->createNoteUnorderedList(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    iget-object v1, v1, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->noteContainer:Lorg/jsoup/nodes/Element;

    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/Element;->getElementById(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/handler/XWPFFtnEdnRefHandler;->createNoteUnorderedList(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method private handleNoteImpl(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {v0}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->getDocumentFacade()Lorg/apache/poi/convert/HtmlDocumentFacade;

    move-result-object v0

    invoke-direct {p0}, Lorg/apache/poi/convert/xwpf/handler/XWPFFtnEdnRefHandler;->getNoteUnorderedList()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createListItem()Lorg/jsoup/nodes/Element;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/jsoup/nodes/Element;->appendTo(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#back_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createHyperlink(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v2, v3, p1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/jsoup/nodes/Element;->text(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    const-string p1, " "

    invoke-virtual {v0, p1}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createText(Ljava/lang/String;)Lorg/jsoup/nodes/TextNode;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    iget-object p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFFtnEdnRefHandler;->ftnEdnRef:Lorg/apache/poi/xwpf/usermodel/XWPFFtnEdnRef;

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFFtnEdnRef;->readDocument()V

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFFtnEdnRefHandler;->ftnEdnRef:Lorg/apache/poi/xwpf/usermodel/XWPFFtnEdnRef;

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFFtnEdnRef;->getTextList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createSpan()Lorg/jsoup/nodes/Element;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Element;->appendTo(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Lorg/jsoup/nodes/Element;->text(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    return-void

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createUnorderedList()Lorg/jsoup/nodes/Element;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createListItem()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/jsoup/nodes/Element;->appendTo(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createSpan()Lorg/jsoup/nodes/Element;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/jsoup/nodes/Element;->appendTo(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/jsoup/nodes/Element;->text(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFFtnEdnRefHandler;->ftnEdnRef:Lorg/apache/poi/xwpf/usermodel/XWPFFtnEdnRef;

    invoke-static {p0}, Lorg/apache/poi/util/CloseUtils;->close(Ljava/io/Closeable;)V

    return-void
.end method

.method public handleRunPart(Lorg/jsoup/nodes/Element;Lorg/apache/poi/style/TextRunStyles;III)V
    .locals 2

    iget-object p2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {p2}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->getDocumentFacade()Lorg/apache/poi/convert/HtmlDocumentFacade;

    move-result-object p2

    iget-object p3, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFFtnEdnRefHandler;->ftnEdnRef:Lorg/apache/poi/xwpf/usermodel/XWPFFtnEdnRef;

    invoke-virtual {p3}, Lorg/apache/poi/xwpf/usermodel/XWPFFtnEdnRef;->getId()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFFtnEdnRefHandler;->ftnEdnRef:Lorg/apache/poi/xwpf/usermodel/XWPFFtnEdnRef;

    invoke-virtual {p4}, Lorg/apache/poi/xwpf/usermodel/XWPFFtnEdnRef;->getReferenceId()I

    move-result p4

    add-int/lit8 p4, p4, 0x1

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createHyperlink(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "back_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p5, v1, v0}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p5

    invoke-virtual {p5, p1}, Lorg/jsoup/nodes/Element;->appendTo(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Lorg/jsoup/nodes/Element;->text(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p1

    const-string p5, "note_index"

    const-string v0, "vertical-align:super;font-size:smaller;"

    invoke-virtual {p2, p1, p5, v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, p3, p4}, Lorg/apache/poi/convert/xwpf/handler/XWPFFtnEdnRefHandler;->handleNoteImpl(Ljava/lang/String;I)V

    return-void
.end method
