.class Lorg/apache/poi/convert/xwpf/handler/XWPFHeaderHandler;
.super Lorg/apache/poi/convert/xwpf/handler/XWPFHeaderFooterHandler;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFHeaderFooterHandler;-><init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;)V

    return-void
.end method


# virtual methods
.method public handleHeader(Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;Lorg/jsoup/nodes/Element;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->readHeader()V

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getFirstPageHeader()Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    move-result-object v0

    const-string v1, "first-header"

    invoke-virtual {p0, v0, p2, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFHeaderFooterHandler;->handleHeaderFooter(Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;Lorg/jsoup/nodes/Element;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getEvenPageHeader()Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    move-result-object v0

    const-string v1, "even-header"

    invoke-virtual {p0, v0, p2, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFHeaderFooterHandler;->handleHeaderFooter(Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;Lorg/jsoup/nodes/Element;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getDefaultHeader()Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    move-result-object v0

    const-string v1, "default-header"

    invoke-virtual {p0, v0, p2, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFHeaderFooterHandler;->handleHeaderFooter(Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;Lorg/jsoup/nodes/Element;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->closeHeader()V

    return-void
.end method
