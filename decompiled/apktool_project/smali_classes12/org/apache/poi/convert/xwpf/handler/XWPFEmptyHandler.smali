.class Lorg/apache/poi/convert/xwpf/handler/XWPFEmptyHandler;
.super Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;
.source "SourceFile"


# instance fields
.field private empty:Lorg/apache/poi/xwpf/usermodel/XWPFEmpty;


# direct methods
.method public constructor <init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/XWPFEmpty;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;-><init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;)V

    iput-object p2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFEmptyHandler;->empty:Lorg/apache/poi/xwpf/usermodel/XWPFEmpty;

    return-void
.end method


# virtual methods
.method public handleRunPart(Lorg/jsoup/nodes/Element;Lorg/apache/poi/style/TextRunStyles;III)V
    .locals 0

    iget-object p2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {p2}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->getDocumentFacade()Lorg/apache/poi/convert/HtmlDocumentFacade;

    move-result-object p2

    iget-object p3, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFEmptyHandler;->empty:Lorg/apache/poi/xwpf/usermodel/XWPFEmpty;

    invoke-virtual {p3}, Lorg/apache/poi/xwpf/usermodel/XWPFEmpty;->isTab()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createSpan()Lorg/jsoup/nodes/Element;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    const-string p1, "\u00a0\u00a0\u00a0\u00a0"

    invoke-virtual {p2, p1}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createText(Ljava/lang/String;)Lorg/jsoup/nodes/TextNode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFEmptyHandler;->empty:Lorg/apache/poi/xwpf/usermodel/XWPFEmpty;

    invoke-virtual {p3}, Lorg/apache/poi/xwpf/usermodel/XWPFEmpty;->isBr()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createLineBreak()Lorg/jsoup/nodes/Element;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createSpan()Lorg/jsoup/nodes/Element;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFEmptyHandler;->empty:Lorg/apache/poi/xwpf/usermodel/XWPFEmpty;

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFEmpty;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createText(Ljava/lang/String;)Lorg/jsoup/nodes/TextNode;

    move-result-object p0

    invoke-virtual {p3, p0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    :goto_0
    return-void
.end method
