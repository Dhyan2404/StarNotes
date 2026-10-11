.class Lorg/apache/poi/convert/xwpf/handler/XWPFFldCharHandler;
.super Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;
.source "SourceFile"


# instance fields
.field private fldChar:Lorg/apache/poi/xwpf/usermodel/XWPFFldChar;


# direct methods
.method public constructor <init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/XWPFFldChar;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;-><init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;)V

    iput-object p2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFFldCharHandler;->fldChar:Lorg/apache/poi/xwpf/usermodel/XWPFFldChar;

    return-void
.end method


# virtual methods
.method public handleRunPart(Lorg/jsoup/nodes/Element;Lorg/apache/poi/style/TextRunStyles;III)V
    .locals 0

    iget-object p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    iget-object p2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFFldCharHandler;->fldChar:Lorg/apache/poi/xwpf/usermodel/XWPFFldChar;

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFFldChar;->getFldCharState()Lorg/apache/poi/xwpf/usermodel/FldCharState;

    move-result-object p2

    iput-object p2, p1, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->fldCharState:Lorg/apache/poi/xwpf/usermodel/FldCharState;

    iget-object p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->isInFldChar()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->fldContainer:Lorg/jsoup/nodes/Element;

    :cond_0
    return-void
.end method
