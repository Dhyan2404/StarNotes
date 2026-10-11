.class public Lcom/sun/org/apache/xalan/internal/xsltc/runtime/ErrorMessages_zh_CN;
.super Ljava/util/ListResourceBundle;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .locals 2

    const/16 p0, 0x11

    new-array p0, p0, [[Ljava/lang/Object;

    const-string v0, "RUN_TIME_INTERNAL_ERR"

    const-string v1, "\u201c{0}\u201d\u4e2d\u5b58\u5728\u8fd0\u884c\u65f6\u5185\u90e8\u9519\u8bef"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "RUN_TIME_COPY_ERR"

    const-string v1, "\u5728\u6267\u884c <xsl:copy> \u65f6\u53d1\u751f\u8fd0\u884c\u65f6\u9519\u8bef\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const-string v0, "DATA_CONVERSION_ERR"

    const-string v1, "\u4ece\u201c{0}\u201d\u5230\u201c{1}\u201d\u7684\u8f6c\u6362\u65e0\u6548\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p0, v1

    const-string v0, "EXTERNAL_FUNC_ERR"

    const-string v1, "XSLTC \u4e0d\u652f\u6301\u5916\u90e8\u51fd\u6570\u201c{0}\u201d\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p0, v1

    const-string v0, "EQUALITY_EXPR_ERR"

    const-string v1, "\u7b49\u5f0f\u8868\u8fbe\u5f0f\u4e2d\u7684\u81ea\u53d8\u91cf\u7c7b\u578b\u672a\u77e5\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, p0, v1

    const-string v0, "INVALID_ARGUMENT_ERR"

    const-string v1, "\u5728\u5bf9\u201c{1}\u201d\u7684\u8c03\u7528\u4e2d\u7684\u81ea\u53d8\u91cf\u7c7b\u578b\u201c{0}\u201d\u65e0\u6548"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, p0, v1

    const-string v0, "FORMAT_NUMBER_ERR"

    const-string v1, "\u8bd5\u56fe\u4f7f\u7528\u6a21\u5f0f\u201c{1}\u201d\u683c\u5f0f\u5316\u6570\u503c\u201c{0}\u201d\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, p0, v1

    const-string v0, "ITERATOR_CLONE_ERR"

    const-string v1, "\u65e0\u6cd5\u514b\u9686\u8fed\u4ee3\u5668\u201c{0}\u201d\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, p0, v1

    const-string v0, "AXIS_SUPPORT_ERR"

    const-string v1, "\u4e0d\u652f\u6301\u8f74\u201c{0}\u201d\u7684\u8fed\u4ee3\u5668\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x8

    aput-object v0, p0, v1

    const-string v0, "TYPED_AXIS_SUPPORT_ERR"

    const-string v1, "\u4e0d\u652f\u6301\u8f93\u5165\u7684\u8f74\u201c{0}\u201d\u7684\u8fed\u4ee3\u5668\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x9

    aput-object v0, p0, v1

    const-string v0, "STRAY_ATTRIBUTE_ERR"

    const-string v1, "\u5c5e\u6027\u201c{0}\u201d\u5728\u5143\u7d20\u5916\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xa

    aput-object v0, p0, v1

    const-string v0, "STRAY_NAMESPACE_ERR"

    const-string v1, "\u540d\u79f0\u7a7a\u95f4\u8bf4\u660e\u201c{0}\u201d=\u201c{1}\u201d\u5728\u5143\u7d20\u5916\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xb

    aput-object v0, p0, v1

    const-string v0, "NAMESPACE_PREFIX_ERR"

    const-string v1, "\u6ca1\u6709\u8bf4\u660e\u540d\u79f0\u7a7a\u95f4\u524d\u7f00\u201c{0}\u201d\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xc

    aput-object v0, p0, v1

    const-string v0, "DOM_ADAPTER_INIT_ERR"

    const-string v1, "\u4f7f\u7528\u9519\u8bef\u7c7b\u578b\u7684\u6e90 DOM \u521b\u5efa\u4e86 DOMAdapter\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xd

    aput-object v0, p0, v1

    const-string v0, "PARSER_DTD_SUPPORT_ERR"

    const-string v1, "\u6b63\u5728\u4f7f\u7528\u7684 SAX \u89e3\u6790\u5668\u4e0d\u5904\u7406 DTD \u8bf4\u660e\u4e8b\u4ef6\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xe

    aput-object v0, p0, v1

    const-string v0, "NAMESPACES_SUPPORT_ERR"

    const-string v1, "\u6b63\u5728\u4f7f\u7528\u7684 SAX \u89e3\u6790\u5668\u4e0d\u652f\u6301 XML \u540d\u79f0\u7a7a\u95f4\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xf

    aput-object v0, p0, v1

    const-string v0, "CANT_RESOLVE_RELATIVE_URI_ERR"

    const-string v1, "\u65e0\u6cd5\u89e3\u6790 URI \u5f15\u7528\u201c{0}\u201d\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x10

    aput-object v0, p0, v1

    return-object p0
.end method
