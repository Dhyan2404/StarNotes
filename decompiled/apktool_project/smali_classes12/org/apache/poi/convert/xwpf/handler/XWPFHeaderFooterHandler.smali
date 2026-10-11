.class abstract Lorg/apache/poi/convert/xwpf/handler/XWPFHeaderFooterHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/convert/htmlgen/HeaderFooterHandler;


# instance fields
.field private context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

.field private documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

.field private hideClass:Ljava/lang/String;

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;",
            "Lorg/jsoup/nodes/Element;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFHeaderFooterHandler;->map:Ljava/util/Map;

    iput-object p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFHeaderFooterHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {p1}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->getDocumentFacade()Lorg/apache/poi/convert/HtmlDocumentFacade;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFHeaderFooterHandler;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    return-void
.end method

.method private addNotEmptyHeaderFooter(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->childNodeSize()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    const-string v0, "name"

    invoke-virtual {p2, v0, p3}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->childNodeSize()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFHeaderFooterHandler;->hideClass:Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFHeaderFooterHandler;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    const-string p3, "d"

    const-string v0, "display:none;"

    invoke-virtual {p1, p2, p3, v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFHeaderFooterHandler;->hideClass:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFHeaderFooterHandler;->hideClass:Ljava/lang/String;

    invoke-virtual {p2, p0}, Lorg/jsoup/nodes/Element;->addClass(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFHeaderFooterHandler;->hideClass:Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFHeaderFooterHandler;->hideClass:Ljava/lang/String;

    invoke-virtual {p2, p0}, Lorg/jsoup/nodes/Element;->removeClass(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public handleHeaderFooter(Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;Lorg/jsoup/nodes/Element;Ljava/lang/String;)V
    .locals 10

    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFHeaderFooterHandler;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->clone()Lorg/jsoup/nodes/Element;

    move-result-object p1

    invoke-direct {p0, p2, p1, p3}, Lorg/apache/poi/convert/xwpf/handler/XWPFHeaderFooterHandler;->addNotEmptyHeaderFooter(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->getBodyElements()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFHeaderFooterHandler;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {v1}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createBlock()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v5, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lorg/apache/poi/xwpf/usermodel/IBodyElement;

    iget-object v2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFHeaderFooterHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    add-int/lit8 v9, v5, 0x1

    const/4 v7, 0x0

    move-object v4, v1

    move v6, v8

    invoke-static/range {v2 .. v7}, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->handleBodyElement(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/IBodyElement;Lorg/jsoup/nodes/Element;III)I

    move v5, v9

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2, v1, p3}, Lorg/apache/poi/convert/xwpf/handler/XWPFHeaderFooterHandler;->addNotEmptyHeaderFooter(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFHeaderFooterHandler;->map:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
