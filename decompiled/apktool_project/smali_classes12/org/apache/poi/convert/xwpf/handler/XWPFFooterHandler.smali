.class Lorg/apache/poi/convert/xwpf/handler/XWPFFooterHandler;
.super Lorg/apache/poi/convert/xwpf/handler/XWPFHeaderFooterHandler;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFHeaderFooterHandler;-><init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;)V

    return-void
.end method


# virtual methods
.method public handleFooter(Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;Lorg/jsoup/nodes/Element;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->readFooter()V

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getFirstPageFooter()Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    move-result-object v0

    const-string v1, "first-footer"

    invoke-virtual {p0, v0, p2, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFHeaderFooterHandler;->handleHeaderFooter(Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;Lorg/jsoup/nodes/Element;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getEvenPageFooter()Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    move-result-object v0

    const-string v1, "even-footer"

    invoke-virtual {p0, v0, p2, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFHeaderFooterHandler;->handleHeaderFooter(Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;Lorg/jsoup/nodes/Element;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getDefaultFooter()Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    move-result-object v0

    const-string v1, "default-footer"

    invoke-virtual {p0, v0, p2, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFHeaderFooterHandler;->handleHeaderFooter(Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;Lorg/jsoup/nodes/Element;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->closeFooter()V

    return-void
.end method
