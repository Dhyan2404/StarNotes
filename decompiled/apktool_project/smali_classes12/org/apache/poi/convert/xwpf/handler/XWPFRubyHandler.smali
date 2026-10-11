.class Lorg/apache/poi/convert/xwpf/handler/XWPFRubyHandler;
.super Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;
.source "SourceFile"


# instance fields
.field private ruby:Lorg/apache/poi/xwpf/usermodel/XWPFRuby;


# direct methods
.method public constructor <init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/XWPFRuby;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;-><init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;)V

    iput-object p2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRubyHandler;->ruby:Lorg/apache/poi/xwpf/usermodel/XWPFRuby;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRubyHandler;->ruby:Lorg/apache/poi/xwpf/usermodel/XWPFRuby;

    invoke-static {p0}, Lorg/apache/poi/util/CloseUtils;->close(Ljava/io/Closeable;)V

    return-void
.end method

.method public handleRunPart(Lorg/jsoup/nodes/Element;Lorg/apache/poi/style/TextRunStyles;III)V
    .locals 0

    return-void
.end method
