.class Lorg/apache/poi/convert/xwpf/handler/XWPFBreakHandler;
.super Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;
.source "SourceFile"


# instance fields
.field private xwpfBreak:Lorg/apache/poi/xwpf/usermodel/XWPFBreak;


# direct methods
.method public constructor <init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/XWPFBreak;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;-><init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;)V

    iput-object p2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFBreakHandler;->xwpfBreak:Lorg/apache/poi/xwpf/usermodel/XWPFBreak;

    return-void
.end method


# virtual methods
.method public handleRunPart(Lorg/jsoup/nodes/Element;Lorg/apache/poi/style/TextRunStyles;III)V
    .locals 0

    iget-object p2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFBreakHandler;->xwpfBreak:Lorg/apache/poi/xwpf/usermodel/XWPFBreak;

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFBreak;->getBreakType()Lorg/apache/poi/xwpf/usermodel/BreakType;

    move-result-object p2

    sget-object p3, Lorg/apache/poi/xwpf/usermodel/BreakType;->COLUMN:Lorg/apache/poi/xwpf/usermodel/BreakType;

    if-eq p2, p3, :cond_1

    sget-object p3, Lorg/apache/poi/xwpf/usermodel/BreakType;->PAGE:Lorg/apache/poi/xwpf/usermodel/BreakType;

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {p0}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->getDocumentFacade()Lorg/apache/poi/convert/HtmlDocumentFacade;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createLineBreak()Lorg/jsoup/nodes/Element;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {p0, p2}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->setBreakType(Lorg/apache/poi/xwpf/usermodel/BreakType;)V

    :goto_1
    return-void
.end method
