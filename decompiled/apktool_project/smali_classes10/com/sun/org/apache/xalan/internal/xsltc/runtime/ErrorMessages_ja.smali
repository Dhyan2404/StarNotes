.class public Lcom/sun/org/apache/xalan/internal/xsltc/runtime/ErrorMessages_ja;
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

    const-string v1, "\'\'{0}\'\' \u3067\u30e9\u30f3\u30bf\u30a4\u30e0\u5185\u90e8\u30a8\u30e9\u30fc"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "RUN_TIME_COPY_ERR"

    const-string v1, "<xsl:copy> \u3092\u5b9f\u884c\u6642\u306b\u30e9\u30f3\u30bf\u30a4\u30e0\u30fb\u30a8\u30e9\u30fc\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const-string v0, "DATA_CONVERSION_ERR"

    const-string v1, "\'\'{0}\'\' \u304b\u3089 \'\'{1}\'\' \u3078\u306e\u5909\u63db\u304c\u7121\u52b9\u3067\u3059\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p0, v1

    const-string v0, "EXTERNAL_FUNC_ERR"

    const-string v1, "\u5916\u90e8\u95a2\u6570 \'\'{0}\'\' \u306f XSLTC \u306b\u3088\u308a\u30b5\u30dd\u30fc\u30c8\u3055\u308c\u3066\u3044\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p0, v1

    const-string v0, "EQUALITY_EXPR_ERR"

    const-string v1, "\u7b49\u5f0f\u5185\u306e\u5f15\u304d\u6570\u304c\u4e0d\u660e\u3067\u3059\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, p0, v1

    const-string v0, "INVALID_ARGUMENT_ERR"

    const-string v1, "\'\'{1}\'\' \u3078\u306e\u547c\u3073\u51fa\u3057\u4e2d\u306e\u5f15\u304d\u6570\u30bf\u30a4\u30d7 \'\'{0}\'\' \u304c\u7121\u52b9\u3067\u3059"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, p0, v1

    const-string v0, "FORMAT_NUMBER_ERR"

    const-string v1, "\u6570\u5024 \'\'{0}\'\' \u3092\u30d1\u30bf\u30fc\u30f3 \'\'{1}\'\' \u3092\u4f7f\u7528\u3057\u3066\u30d5\u30a9\u30fc\u30de\u30c3\u30c8\u8a2d\u5b9a\u3057\u3088\u3046\u3068\u3057\u3066\u3044\u307e\u3059\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, p0, v1

    const-string v0, "ITERATOR_CLONE_ERR"

    const-string v1, "\u30a4\u30c6\u30ec\u30fc\u30bf\u30fc \'\'{0}\'\' \u3092\u8907\u88fd\u3067\u304d\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, p0, v1

    const-string v0, "AXIS_SUPPORT_ERR"

    const-string v1, "\u8ef8 \'\'{0}\'\' \u306e\u30a4\u30c6\u30ec\u30fc\u30bf\u30fc\u306f\u30b5\u30dd\u30fc\u30c8\u3055\u308c\u3066\u3044\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x8

    aput-object v0, p0, v1

    const-string v0, "TYPED_AXIS_SUPPORT_ERR"

    const-string v1, "\u578b\u4ed8\u304d\u306e\u8ef8 \'\'{0}\'\' \u306e\u30a4\u30c6\u30ec\u30fc\u30bf\u30fc\u306f\u30b5\u30dd\u30fc\u30c8\u3055\u308c\u3066\u3044\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x9

    aput-object v0, p0, v1

    const-string v0, "STRAY_ATTRIBUTE_ERR"

    const-string v1, "\u5c5e\u6027 \'\'{0}\'\' \u304c\u30a8\u30ec\u30e1\u30f3\u30c8\u306e\u5916\u5074\u3067\u3059\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xa

    aput-object v0, p0, v1

    const-string v0, "STRAY_NAMESPACE_ERR"

    const-string v1, "\u30cd\u30fc\u30e0\u30fb\u30b9\u30da\u30fc\u30b9\u5ba3\u8a00 \'\'{0}\'\'=\'\'{1}\'\' \u304c\u30a8\u30ec\u30e1\u30f3\u30c8\u306e\u5916\u5074\u3067\u3059\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xb

    aput-object v0, p0, v1

    const-string v0, "NAMESPACE_PREFIX_ERR"

    const-string v1, "\u63a5\u982d\u90e8 \'\'{0}\'\' \u306e\u30cd\u30fc\u30e0\u30fb\u30b9\u30da\u30fc\u30b9\u304c\u5ba3\u8a00\u3055\u308c\u3066\u3044\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xc

    aput-object v0, p0, v1

    const-string v0, "DOM_ADAPTER_INIT_ERR"

    const-string v1, "DOMAdapter \u304c\u9593\u9055\u3063\u305f\u30bf\u30a4\u30d7\u306e\u30bd\u30fc\u30b9 DOM \u3092\u4f7f\u7528\u3057\u3066\u4f5c\u6210\u3055\u308c\u307e\u3057\u305f\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xd

    aput-object v0, p0, v1

    const-string v0, "PARSER_DTD_SUPPORT_ERR"

    const-string v1, "\u4f7f\u7528\u4e2d\u306e SAX \u30d1\u30fc\u30b5\u30fc\u306f DTD \u5ba3\u8a00\u30a4\u30d9\u30f3\u30c8\u3092\u51e6\u7406\u3057\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xe

    aput-object v0, p0, v1

    const-string v0, "NAMESPACES_SUPPORT_ERR"

    const-string v1, "\u4f7f\u7528\u4e2d\u306e SAX \u30d1\u30fc\u30b5\u30fc\u306b\u306f XML \u30cd\u30fc\u30e0\u30fb\u30b9\u30da\u30fc\u30b9\u306e\u30b5\u30dd\u30fc\u30c8\u304c\u3042\u308a\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xf

    aput-object v0, p0, v1

    const-string v0, "CANT_RESOLVE_RELATIVE_URI_ERR"

    const-string v1, "URI \u53c2\u7167 \'\'{0}\'\' \u3092\u89e3\u6c7a\u3067\u304d\u307e\u305b\u3093\u3067\u3057\u305f\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x10

    aput-object v0, p0, v1

    return-object p0
.end method
