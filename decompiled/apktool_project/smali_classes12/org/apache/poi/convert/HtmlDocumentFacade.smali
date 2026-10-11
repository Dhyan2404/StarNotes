.class public Lorg/apache/poi/convert/HtmlDocumentFacade;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private body:Lorg/jsoup/nodes/Element;

.field private document:Lorg/jsoup/nodes/Document;

.field private head:Lorg/jsoup/nodes/Element;

.field private html:Lorg/jsoup/nodes/Element;

.field private stylesheet:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private stylesheetElement:Lorg/jsoup/nodes/Element;

.field private title:Lorg/jsoup/nodes/Element;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->stylesheet:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createDocument()Lorg/jsoup/nodes/Document;

    return-void
.end method


# virtual methods
.method public addAuthor(Ljava/lang/String;)V
    .locals 1

    const-string v0, "author"

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/convert/HtmlDocumentFacade;->addMeta(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addDescription(Ljava/lang/String;)V
    .locals 1

    const-string v0, "description"

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/convert/HtmlDocumentFacade;->addMeta(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addKeywords(Ljava/lang/String;)V
    .locals 1

    const-string v0, "keywords"

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/convert/HtmlDocumentFacade;->addMeta(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addMathJaxScript()V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->document:Lorg/jsoup/nodes/Document;

    const-string v1, "script"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->head:Lorg/jsoup/nodes/Element;

    invoke-virtual {v2, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    const-string v2, "MathJax = { loader: { load: [ \'input/tex-base\', \'[tex]/newcommand\', \'[tex]/action\', \'output/chtml\', \'a11y/explorer\' ] }, tex: { inlineMath: [[\'$\', \'$\'], [\'\\\\(\', \'\\\\)\']], packages: [\'base\', \'newcommand\', \'action\'] } };"

    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Element;->text(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    iget-object v0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->document:Lorg/jsoup/nodes/Document;

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->head:Lorg/jsoup/nodes/Element;

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    const-string p0, "id"

    const-string v1, "MathJax-script"

    invoke-virtual {v0, p0, v1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    const-string p0, "async"

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    const-string p0, "src"

    const-string v1, "https://cdn.bootcss.com/mathjax/3.0.5/es5/tex-mml-chtml.js"

    invoke-virtual {v0, p0, v1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    return-void
.end method

.method public addMeta(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->document:Lorg/jsoup/nodes/Document;

    const-string v1, "meta"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    const-string p1, "content"

    invoke-virtual {v0, p1, p2}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    iget-object p0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->head:Lorg/jsoup/nodes/Element;

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    return-void
.end method

.method public addScript(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->document:Lorg/jsoup/nodes/Document;

    const-string v1, "script"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->head:Lorg/jsoup/nodes/Element;

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Element;->text(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    return-void
.end method

.method public addShowOrHideHeaderFooterFunction()V
    .locals 1

    const-string v0, "let hidden = true;function showOrHideHeaderFooter() {const headers = document.getElementsByName(\"header-container\");for (let header of headers) {if (hidden) {header.style.display=\"none\";} else {header.style.display=\"\";}}const footers = document.getElementsByName(\"footer-container\");for (let footer of footers) {if (hidden) {footer.style.display=\"none\";} else {footer.style.display=\"\";}}const dividers = document.getElementsByName(\"divider\");for (let divider of dividers) {if (hidden) {divider.style.height=\"8px\";} else {divider.style.height=\"16px\";}}hidden = !hidden;}"

    invoke-virtual {p0, v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->addScript(Ljava/lang/String;)V

    return-void
.end method

.method public addStyle(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->head:Lorg/jsoup/nodes/Element;

    new-instance v1, Lorg/jsoup/select/Evaluator$Tag;

    const-string v2, "style"

    invoke-direct {v1, v2}, Lorg/jsoup/select/Evaluator$Tag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->selectFirst(Lorg/jsoup/select/Evaluator;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->document:Lorg/jsoup/nodes/Document;

    invoke-virtual {p0, v2}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->text(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/Element;->appendText(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    :goto_0
    return-void
.end method

.method public addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p3}, Lorg/apache/poi/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "class"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, p3}, Lorg/apache/poi/convert/HtmlDocumentFacade;->getOrCreateCssClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Lorg/apache/poi/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, v0, p0}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public buildStylesheet()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->stylesheet:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->buildStylesheet(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public buildStylesheet(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "."

    .line 7
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}\n"

    .line 11
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public createBlock()Lorg/jsoup/nodes/Element;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->document:Lorg/jsoup/nodes/Document;

    const-string v0, "div"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    const-string v0, "class"

    const-string v1, "cdiv"

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    return-object p0
.end method

.method public createBookmark(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->document:Lorg/jsoup/nodes/Document;

    const-string v0, "span"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    const-string v0, "class"

    const-string v1, "cspan"

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public createComment(Ljava/lang/String;)Lorg/jsoup/nodes/Comment;
    .locals 0

    new-instance p0, Lorg/jsoup/nodes/Comment;

    invoke-direct {p0, p1}, Lorg/jsoup/nodes/Comment;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public createDocument()Lorg/jsoup/nodes/Document;
    .locals 4

    new-instance v0, Lorg/jsoup/nodes/Document;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->document:Lorg/jsoup/nodes/Document;

    new-instance v2, Lorg/jsoup/nodes/DocumentType;

    const-string v3, "html"

    invoke-direct {v2, v3, v1, v1}, Lorg/jsoup/nodes/DocumentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    iget-object v0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->document:Lorg/jsoup/nodes/Document;

    invoke-virtual {v0, v3}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->html:Lorg/jsoup/nodes/Element;

    iget-object v1, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->document:Lorg/jsoup/nodes/Document;

    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    iget-object v0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->document:Lorg/jsoup/nodes/Document;

    const-string v1, "body"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->body:Lorg/jsoup/nodes/Element;

    iget-object v0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->document:Lorg/jsoup/nodes/Document;

    const-string v1, "head"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->head:Lorg/jsoup/nodes/Element;

    iget-object v0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->document:Lorg/jsoup/nodes/Document;

    const-string v1, "link"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->stylesheetElement:Lorg/jsoup/nodes/Element;

    const-string v1, "rel"

    const-string v2, "stylesheet"

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    iget-object v0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->stylesheetElement:Lorg/jsoup/nodes/Element;

    const-string v1, "type"

    const-string v2, "text/css"

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    iget-object v0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->stylesheetElement:Lorg/jsoup/nodes/Element;

    const-string v1, "href"

    const-string v2, "style.css"

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    iget-object v0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->html:Lorg/jsoup/nodes/Element;

    iget-object v1, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->head:Lorg/jsoup/nodes/Element;

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    iget-object v0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->html:Lorg/jsoup/nodes/Element;

    iget-object v1, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->body:Lorg/jsoup/nodes/Element;

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    iget-object v0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->document:Lorg/jsoup/nodes/Document;

    const-string v1, "meta"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    const-string v1, "charset"

    const-string v2, "utf-8"

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    iget-object v1, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->head:Lorg/jsoup/nodes/Element;

    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    iget-object v0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->head:Lorg/jsoup/nodes/Element;

    iget-object v1, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->document:Lorg/jsoup/nodes/Document;

    const-string v2, "style"

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    const-string v2, "html{background-color:#F5F7F9;}\nbody{background-color:white;}\ndiv{font-size:0;}\np{margin:0;}"

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->appendText(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    iget-object v0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->head:Lorg/jsoup/nodes/Element;

    iget-object v1, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->stylesheetElement:Lorg/jsoup/nodes/Element;

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    iget-object p0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->document:Lorg/jsoup/nodes/Document;

    return-object p0
.end method

.method public createHeader1()Lorg/jsoup/nodes/Element;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->document:Lorg/jsoup/nodes/Document;

    const-string v0, "h1"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    const-string v0, "class"

    const-string v1, "ch1"

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    return-object p0
.end method

.method public createHeader2()Lorg/jsoup/nodes/Element;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->document:Lorg/jsoup/nodes/Document;

    const-string v0, "h2"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    const-string v0, "class"

    const-string v1, "ch2"

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    return-object p0
.end method

.method public createHyperlink(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->document:Lorg/jsoup/nodes/Document;

    const-string v0, "a"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    const-string v0, "class"

    const-string v1, "ca"

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    const-string v0, "href"

    invoke-virtual {p0, v0, p1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public createImage(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->document:Lorg/jsoup/nodes/Document;

    const-string v0, "img"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    const-string v0, "class"

    const-string v1, "cimg"

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    const-string v0, "src"

    invoke-virtual {p0, v0, p1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public createLineBreak()Lorg/jsoup/nodes/Element;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->document:Lorg/jsoup/nodes/Document;

    const-string v0, "br"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    return-object p0
.end method

.method public createListItem()Lorg/jsoup/nodes/Element;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->document:Lorg/jsoup/nodes/Document;

    const-string v0, "li"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    const-string v0, "class"

    const-string v1, "cli"

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    return-object p0
.end method

.method public createOption(Ljava/lang/String;Z)Lorg/jsoup/nodes/Element;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->document:Lorg/jsoup/nodes/Document;

    const-string v1, "option"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    const-string v1, "class"

    const-string v2, "coption"

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createText(Ljava/lang/String;)Lorg/jsoup/nodes/TextNode;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    if-eqz p2, :cond_0

    const-string p0, "selected"

    invoke-virtual {v0, p0, p0}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    :cond_0
    return-object v0
.end method

.method public createOrderedList()Lorg/jsoup/nodes/Element;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->document:Lorg/jsoup/nodes/Document;

    const-string v0, "ol"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    const-string v0, "class"

    const-string v1, "col"

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    return-object p0
.end method

.method public createParagraph()Lorg/jsoup/nodes/Element;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->document:Lorg/jsoup/nodes/Document;

    const-string v1, "p"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    const-string v2, "class"

    const-string v3, "cp"

    invoke-virtual {v0, v2, v3}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    const-string v2, "white-space:pre-wrap;"

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/convert/HtmlDocumentFacade;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public createRt()Lorg/jsoup/nodes/Element;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->document:Lorg/jsoup/nodes/Document;

    const-string v0, "rt"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    const-string v0, "class"

    const-string v1, "crt"

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    return-object p0
.end method

.method public createRuby()Lorg/jsoup/nodes/Element;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->document:Lorg/jsoup/nodes/Document;

    const-string v0, "ruby"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    const-string v0, "class"

    const-string v1, "cruby"

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    return-object p0
.end method

.method public createSelect()Lorg/jsoup/nodes/Element;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->document:Lorg/jsoup/nodes/Document;

    const-string v0, "select"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    const-string v0, "class"

    const-string v1, "cselect"

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    return-object p0
.end method

.method public createSpan()Lorg/jsoup/nodes/Element;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->document:Lorg/jsoup/nodes/Document;

    const-string v0, "span"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    const-string v0, "class"

    const-string v1, "cspan"

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    return-object p0
.end method

.method public createTable()Lorg/jsoup/nodes/Element;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->document:Lorg/jsoup/nodes/Document;

    const-string v0, "table"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    const-string v0, "class"

    const-string v1, "ctable"

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    return-object p0
.end method

.method public createTableBody()Lorg/jsoup/nodes/Element;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->document:Lorg/jsoup/nodes/Document;

    const-string v0, "tbody"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    const-string v0, "class"

    const-string v1, "ctbody"

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    return-object p0
.end method

.method public createTableCell()Lorg/jsoup/nodes/Element;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->document:Lorg/jsoup/nodes/Document;

    const-string v0, "td"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    const-string v0, "class"

    const-string v1, "ctd"

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    return-object p0
.end method

.method public createTableColumn()Lorg/jsoup/nodes/Element;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->document:Lorg/jsoup/nodes/Document;

    const-string v0, "col"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    const-string v0, "class"

    const-string v1, "ccol"

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    return-object p0
.end method

.method public createTableColumnGroup()Lorg/jsoup/nodes/Element;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->document:Lorg/jsoup/nodes/Document;

    const-string v0, "colgroup"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    const-string v0, "class"

    const-string v1, "ccolgroup"

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    return-object p0
.end method

.method public createTableHeader()Lorg/jsoup/nodes/Element;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->document:Lorg/jsoup/nodes/Document;

    const-string v0, "thead"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    const-string v0, "class"

    const-string v1, "cthead"

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    return-object p0
.end method

.method public createTableHeaderCell()Lorg/jsoup/nodes/Element;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->document:Lorg/jsoup/nodes/Document;

    const-string v0, "th"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    const-string v0, "class"

    const-string v1, "cth"

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    return-object p0
.end method

.method public createTableRow()Lorg/jsoup/nodes/Element;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->document:Lorg/jsoup/nodes/Document;

    const-string v0, "tr"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    const-string v0, "class"

    const-string v1, "ctr"

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    return-object p0
.end method

.method public createText(Ljava/lang/String;)Lorg/jsoup/nodes/TextNode;
    .locals 0

    new-instance p0, Lorg/jsoup/nodes/TextNode;

    invoke-direct {p0, p1}, Lorg/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public createUnorderedList()Lorg/jsoup/nodes/Element;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->document:Lorg/jsoup/nodes/Document;

    const-string v0, "ul"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    const-string v0, "class"

    const-string v1, "cul"

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    return-object p0
.end method

.method public getBody()Lorg/jsoup/nodes/Element;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->body:Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public getDocument()Lorg/jsoup/nodes/Document;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->document:Lorg/jsoup/nodes/Document;

    return-object p0
.end method

.method public getHead()Lorg/jsoup/nodes/Element;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->head:Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public getOrCreateCssClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->stylesheet:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->stylesheet:Ljava/util/Map;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->stylesheet:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->title:Lorg/jsoup/nodes/Element;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lorg/apache/poi/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->title:Lorg/jsoup/nodes/Element;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->remove()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->title:Lorg/jsoup/nodes/Element;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->title:Lorg/jsoup/nodes/Element;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->document:Lorg/jsoup/nodes/Document;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->title:Lorg/jsoup/nodes/Element;

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Element;->text(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    iget-object p1, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->head:Lorg/jsoup/nodes/Element;

    iget-object p0, p0, Lorg/apache/poi/convert/HtmlDocumentFacade;->title:Lorg/jsoup/nodes/Element;

    invoke-virtual {p1, p0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    :cond_2
    return-void
.end method
