.class public Lcom/sun/org/apache/xalan/internal/xsltc/runtime/ErrorMessages_zh_TW;
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

    const-string v1, "\'\'{0}\'\' \u767c\u751f\u57f7\u884c\u6642\u671f\u5167\u90e8\u932f\u8aa4"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "RUN_TIME_COPY_ERR"

    const-string v1, "\u57f7\u884c <xsl:copy> \u6642\uff0c\u767c\u751f\u57f7\u884c\u6642\u671f\u932f\u8aa4\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const-string v0, "DATA_CONVERSION_ERR"

    const-string v1, "\u7121\u6cd5\u5c07 \'\'{0}\'\' \u8f49\u63db\u70ba \'\'{1}\'\'\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p0, v1

    const-string v0, "EXTERNAL_FUNC_ERR"

    const-string v1, "XSLTC \u4e0d\u652f\u63f4\u5916\u90e8\u51fd\u6578 \'\'{0}\'\'\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p0, v1

    const-string v0, "EQUALITY_EXPR_ERR"

    const-string v1, "\u76f8\u7b49\u8868\u793a\u5f0f\u4e2d\u5305\u542b\u4e0d\u660e\u7684\u5f15\u6578\u985e\u578b\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, p0, v1

    const-string v0, "INVALID_ARGUMENT_ERR"

    const-string v1, "\u5728\u547c\u53eb \'\'{1}\'\' \u4e2d\u7684\u5f15\u6578\u985e\u578b \'\'{0}\'\' \u7121\u6548"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, p0, v1

    const-string v0, "FORMAT_NUMBER_ERR"

    const-string v1, "\u5617\u8a66\u4f7f\u7528\u578b\u6a23 \'\'{1}\'\' \u683c\u5f0f\u5316\u6578\u5b57 \'\'{0}\'\'\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, p0, v1

    const-string v0, "ITERATOR_CLONE_ERR"

    const-string v1, "\u7121\u6cd5\u8907\u88fd\u91cd\u8907\u9805\u76ee \'\'{0}\'\'\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, p0, v1

    const-string v0, "AXIS_SUPPORT_ERR"

    const-string v1, "\u8ef8 \'\'{0}\'\' \u7684\u91cd\u8907\u9805\u76ee\u672a\u53d7\u652f\u63f4\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x8

    aput-object v0, p0, v1

    const-string v0, "TYPED_AXIS_SUPPORT_ERR"

    const-string v1, "\u8f38\u5165\u8ef8 \'\'{0}\'\' \u7684\u91cd\u8907\u9805\u76ee\u672a\u53d7\u652f\u63f4\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x9

    aput-object v0, p0, v1

    const-string v0, "STRAY_ATTRIBUTE_ERR"

    const-string v1, "\u5c6c\u6027 \'\'{0}\'\' \u8d85\u51fa\u5143\u7d20\u5916\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xa

    aput-object v0, p0, v1

    const-string v0, "STRAY_NAMESPACE_ERR"

    const-string v1, "\u540d\u7a31\u7a7a\u9593\u5ba3\u544a \'\'{0}\'\'=\'\'{1}\'\' \u8d85\u51fa\u5143\u7d20\u5916\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xb

    aput-object v0, p0, v1

    const-string v0, "NAMESPACE_PREFIX_ERR"

    const-string v1, "\u5b57\u9996 \'\'{0}\'\' \u7684\u540d\u7a31\u7a7a\u9593\u5c1a\u672a\u5ba3\u544a\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xc

    aput-object v0, p0, v1

    const-string v0, "DOM_ADAPTER_INIT_ERR"

    const-string v1, "\u5efa\u7acb DOMAdapter \u6642\u4f7f\u7528\u7684\u539f\u59cb\u6a94 DOM \u985e\u578b\u932f\u8aa4\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xd

    aput-object v0, p0, v1

    const-string v0, "PARSER_DTD_SUPPORT_ERR"

    const-string v1, "\u60a8\u4f7f\u7528\u7684 SAX \u5256\u6790\u5668\u7121\u6cd5\u8655\u7406 DTD \u5ba3\u544a\u4e8b\u4ef6\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xe

    aput-object v0, p0, v1

    const-string v0, "NAMESPACES_SUPPORT_ERR"

    const-string v1, "\u60a8\u4f7f\u7528\u7684 SAX \u5256\u6790\u5668\u4e0d\u652f\u63f4 XML \u540d\u7a31\u7a7a\u9593\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xf

    aput-object v0, p0, v1

    const-string v0, "CANT_RESOLVE_RELATIVE_URI_ERR"

    const-string v1, "\u7121\u6cd5\u89e3\u6790 URI \u53c3\u7167 \'\'{0}\'\'\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x10

    aput-object v0, p0, v1

    return-object p0
.end method
