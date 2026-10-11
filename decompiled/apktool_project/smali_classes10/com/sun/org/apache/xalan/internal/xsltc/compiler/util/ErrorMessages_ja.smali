.class public Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMessages_ja;
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

    const/16 p0, 0x5f

    new-array p0, p0, [[Ljava/lang/Object;

    const-string v0, "MULTIPLE_STYLESHEET_ERR"

    const-string v1, "\u8907\u6570\u306e\u30b9\u30bf\u30a4\u30eb\u30b7\u30fc\u30c8\u304c\u540c\u3058\u30d5\u30a1\u30a4\u30eb\u5185\u306b\u5b9a\u7fa9\u3055\u308c\u3066\u3044\u307e\u3059\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "TEMPLATE_REDEF_ERR"

    const-string v1, "\u30c6\u30f3\u30d7\u30ec\u30fc\u30c8 \'\'{0}\'\' \u306f\u3053\u306e\u30b9\u30bf\u30a4\u30eb\u30b7\u30fc\u30c8\u5185\u306b\u3059\u3067\u306b\u5b9a\u7fa9\u3055\u308c\u3066\u3044\u307e\u3059\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const-string v0, "TEMPLATE_UNDEF_ERR"

    const-string v1, "\u30c6\u30f3\u30d7\u30ec\u30fc\u30c8 \'\'{0}\'\' \u306f\u3053\u306e\u30b9\u30bf\u30a4\u30eb\u30b7\u30fc\u30c8\u5185\u306b\u5b9a\u7fa9\u3055\u308c\u3066\u3044\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p0, v1

    const-string v0, "VARIABLE_REDEF_ERR"

    const-string v1, "\u5909\u6570 \'\'{0}\'\' \u306f\u540c\u3058\u6709\u52b9\u7bc4\u56f2\u5185\u306b\u8907\u6570\u56de\u5b9a\u7fa9\u3055\u308c\u3066\u3044\u307e\u3059\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p0, v1

    const-string v0, "VARIABLE_UNDEF_ERR"

    const-string v1, "\u5909\u6570\u307e\u305f\u306f\u30d1\u30e9\u30e1\u30fc\u30bf\u30fc \'\'{0}\'\' \u304c\u672a\u5b9a\u7fa9\u3067\u3059\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, p0, v1

    const-string v0, "CLASS_NOT_FOUND_ERR"

    const-string v1, "\u30af\u30e9\u30b9 \'\'{0}\'\' \u304c\u898b\u3064\u304b\u308a\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, p0, v1

    const-string v0, "METHOD_NOT_FOUND_ERR"

    const-string v1, "\u5916\u90e8\u30e1\u30bd\u30c3\u30c9 \'\'{0}\'\' \u304c\u898b\u3064\u304b\u308a\u307e\u305b\u3093 (public \u3067\u306a\u3051\u308c\u3070\u306a\u308a\u307e\u305b\u3093)\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, p0, v1

    const-string v0, "ARGUMENT_CONVERSION_ERR"

    const-string v1, "\u5f15\u304d\u6570/\u623b\u308a\u30bf\u30a4\u30d7\u3092\u30e1\u30bd\u30c3\u30c9 \'\'{0}\'\' \u3078\u306e\u547c\u3073\u51fa\u3057\u3067\u5909\u63db\u3067\u304d\u307e\u305b\u3093"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, p0, v1

    const-string v0, "FILE_NOT_FOUND_ERR"

    const-string v1, "\u30d5\u30a1\u30a4\u30eb\u307e\u305f\u306f URI \'\'{0}\'\' \u304c\u898b\u3064\u304b\u308a\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x8

    aput-object v0, p0, v1

    const-string v0, "INVALID_URI_ERR"

    const-string v1, "\u7121\u52b9\u306a URI \'\'{0}\'\' \u3067\u3059\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x9

    aput-object v0, p0, v1

    const-string v0, "FILE_ACCESS_ERR"

    const-string v1, "\u30d5\u30a1\u30a4\u30eb\u307e\u305f\u306f URI \'\'{0}\'\' \u3092\u30aa\u30fc\u30d7\u30f3\u3067\u304d\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xa

    aput-object v0, p0, v1

    const-string v0, "MISSING_ROOT_ERR"

    const-string v1, "<xsl:stylesheet> \u307e\u305f\u306f <xsl:transform> \u30a8\u30ec\u30e1\u30f3\u30c8\u304c\u5fc5\u8981\u3067\u3057\u305f\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xb

    aput-object v0, p0, v1

    const-string v0, "NAMESPACE_UNDEF_ERR"

    const-string v1, "\u30cd\u30fc\u30e0\u30fb\u30b9\u30da\u30fc\u30b9\u63a5\u982d\u90e8 \'\'{0}\'\' \u304c\u5ba3\u8a00\u3055\u308c\u3066\u3044\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xc

    aput-object v0, p0, v1

    const-string v0, "FUNCTION_RESOLVE_ERR"

    const-string v1, "\u95a2\u6570 \'\'{0}\'\' \u3078\u306e\u547c\u3073\u51fa\u3057\u3092\u89e3\u6c7a\u3067\u304d\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xd

    aput-object v0, p0, v1

    const-string v0, "NEED_LITERAL_ERR"

    const-string v1, "\'\'{0}\'\' \u3078\u306e\u5f15\u304d\u6570\u306f\u30ea\u30c6\u30e9\u30eb\u30fb\u30b9\u30c8\u30ea\u30f3\u30b0\u3067\u306a\u3051\u308c\u3070\u306a\u308a\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xe

    aput-object v0, p0, v1

    const-string v0, "XPATH_PARSER_ERR"

    const-string v1, "XPath \u5f0f \'\'{0}\'\' \u3092\u69cb\u6587\u89e3\u6790\u4e2d\u306b\u30a8\u30e9\u30fc\u304c\u767a\u751f\u3057\u307e\u3057\u305f\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xf

    aput-object v0, p0, v1

    const-string v0, "REQUIRED_ATTR_ERR"

    const-string v1, "\u5fc5\u9808\u5c5e\u6027 \'\'{0}\'\' \u304c\u3042\u308a\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x10

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_CHAR_ERR"

    const-string v1, "XPath \u5f0f\u5185\u306e\u6587\u5b57 \'\'{0}\'\' \u304c\u6b63\u3057\u304f\u3042\u308a\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x11

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_PI_ERR"

    const-string v1, "\u547d\u4ee4\u306e\u51e6\u7406\u306e\u305f\u3081\u306e\u540d\u524d \'\'{0}\'\' \u304c\u6b63\u3057\u304f\u3042\u308a\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x12

    aput-object v0, p0, v1

    const-string v0, "STRAY_ATTRIBUTE_ERR"

    const-string v1, "\u5c5e\u6027 \'\'{0}\'\' \u304c\u30a8\u30ec\u30e1\u30f3\u30c8\u306e\u5916\u5074\u3067\u3059\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x13

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_ATTRIBUTE_ERR"

    const-string v1, "\u5c5e\u6027 \'\'{0}\'\' \u304c\u6b63\u3057\u304f\u3042\u308a\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x14

    aput-object v0, p0, v1

    const-string v0, "CIRCULAR_INCLUDE_ERR"

    const-string v1, "import/include \u304c\u76f8\u4e92\u4f9d\u5b58\u3057\u3066\u3044\u307e\u3059\u3002 \u30b9\u30bf\u30a4\u30eb\u30fb\u30b7\u30fc\u30c8 \'\'{0}\'\' \u306f\u3059\u3067\u306b\u30ed\u30fc\u30c9\u3055\u308c\u3066\u3044\u307e\u3059\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x15

    aput-object v0, p0, v1

    const-string v0, "RESULT_TREE_SORT_ERR"

    const-string v1, "\u7d50\u679c\u30c4\u30ea\u30fc\u30fb\u30d5\u30e9\u30b0\u30e1\u30f3\u30c8\u3092\u30bd\u30fc\u30c8\u3067\u304d\u307e\u305b\u3093 (<xsl:sort> \u30a8\u30ec\u30e1\u30f3\u30c8\u306f\u7121\u8996\u3055\u308c\u307e\u3059)\u3002 \u3053\u306e\u30ce\u30fc\u30c9\u306f\u7d50\u679c\u30c4\u30ea\u30fc\u306e\u4f5c\u6210\u6642\u306b\u30bd\u30fc\u30c8\u3057\u306a\u3051\u308c\u3070\u306a\u308a\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x16

    aput-object v0, p0, v1

    const-string v0, "SYMBOLS_REDEF_ERR"

    const-string v1, "10 \u9032\u6570\u30d5\u30a9\u30fc\u30de\u30c3\u30c8\u8a2d\u5b9a \'\'{0}\'\' \u306f\u3059\u3067\u306b\u5b9a\u7fa9\u3055\u308c\u3066\u3044\u307e\u3059\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x17

    aput-object v0, p0, v1

    const-string v0, "XSL_VERSION_ERR"

    const-string v1, "XSL \u30d0\u30fc\u30b8\u30e7\u30f3 \'\'{0}\'\' \u306f XSLTC \u306b\u3088\u308a\u30b5\u30dd\u30fc\u30c8\u3055\u308c\u3066\u3044\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x18

    aput-object v0, p0, v1

    const-string v0, "CIRCULAR_VARIABLE_ERR"

    const-string v1, "\'\'{0}\'\' \u5185\u306e\u5909\u6570/\u30d1\u30e9\u30e1\u30fc\u30bf\u30fc\u306e\u53c2\u7167\u304c\u76f8\u4e92\u4f9d\u5b58\u3057\u3066\u3044\u307e\u3059\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x19

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_BINARY_OP_ERR"

    const-string v1, "2 \u9032\u5f0f\u306e\u6f14\u7b97\u5b50\u304c\u4e0d\u660e\u3067\u3059\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1a

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_ARG_ERR"

    const-string v1, "\u95a2\u6570\u547c\u3073\u51fa\u3057\u306e\u5f15\u304d\u6570 (1 \u3064\u4ee5\u4e0a) \u304c\u6b63\u3057\u304f\u3042\u308a\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1b

    aput-object v0, p0, v1

    const-string v0, "DOCUMENT_ARG_ERR"

    const-string v1, "document() \u95a2\u6570\u3078\u306e 2 \u3064\u76ee\u306e\u5f15\u304d\u6570\u306f\u30ce\u30fc\u30c9\u30fb\u30bb\u30c3\u30c8\u3067\u306a\u3051\u308c\u3070\u306a\u308a\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1c

    aput-object v0, p0, v1

    const-string v0, "MISSING_WHEN_ERR"

    const-string v1, "\u5c11\u306a\u304f\u3068\u3082 1 \u3064\u306e <xsl:when> \u30a8\u30ec\u30e1\u30f3\u30c8\u304c <xsl:choose> \u5185\u306b\u5fc5\u8981\u3067\u3059\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1d

    aput-object v0, p0, v1

    const-string v0, "MULTIPLE_OTHERWISE_ERR"

    const-string v1, "<xsl:choose> \u3067\u8a31\u53ef\u3055\u308c\u3066\u3044\u308b <xsl:otherwise> \u30a8\u30ec\u30e1\u30f3\u30c8\u306f 1 \u3064\u3060\u3051\u3067\u3059\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1e

    aput-object v0, p0, v1

    const-string v0, "STRAY_OTHERWISE_ERR"

    const-string v1, "<xsl:otherwise> \u3092\u4f7f\u7528\u3067\u304d\u308b\u306e\u306f <xsl:choose> \u5185\u3060\u3051\u3067\u3059\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1f

    aput-object v0, p0, v1

    const-string v0, "STRAY_WHEN_ERR"

    const-string v1, "<xsl:when> \u3092\u4f7f\u7528\u3067\u304d\u308b\u306e\u306f <xsl:choose> \u5185\u3060\u3051\u3067\u3059\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x20

    aput-object v0, p0, v1

    const-string v0, "WHEN_ELEMENT_ERR"

    const-string v1, "<xsl:choose> \u3067\u8a31\u53ef\u3055\u308c\u3066\u3044\u308b\u306e\u306f <xsl:when> \u304a\u3088\u3073 <xsl:otherwise> \u30a8\u30ec\u30e1\u30f3\u30c8\u3060\u3051\u3067\u3059\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x21

    aput-object v0, p0, v1

    const-string v0, "UNNAMED_ATTRIBSET_ERR"

    const-string v1, "<xsl:attribute-set> \u306b \'name\' \u5c5e\u6027\u304c\u3042\u308a\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x22

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_CHILD_ERR"

    const-string v1, "\u5b50\u30a8\u30ec\u30e1\u30f3\u30c8\u304c\u6b63\u3057\u304f\u3042\u308a\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x23

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_ELEM_NAME_ERR"

    const-string v1, "\u30a8\u30ec\u30e1\u30f3\u30c8 \'\'{0}\'\' \u306f\u547c\u3073\u51fa\u305b\u307e\u305b\u3093"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x24

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_ATTR_NAME_ERR"

    const-string v1, "\u5c5e\u6027 \'\'{0}\'\' \u306f\u547c\u3073\u51fa\u305b\u307e\u305b\u3093"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x25

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_TEXT_NODE_ERR"

    const-string v1, "\u30c6\u30ad\u30b9\u30c8\u30fb\u30c7\u30fc\u30bf\u304c\u6700\u4e0a\u4f4d\u306e <xsl:stylesheet> \u30a8\u30ec\u30e1\u30f3\u30c8\u306e\u5916\u5074\u306b\u3042\u308a\u307e\u3059\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x26

    aput-object v0, p0, v1

    const-string v0, "SAX_PARSER_CONFIG_ERR"

    const-string v1, "JAXP \u30d1\u30fc\u30b5\u30fc\u306f\u6b63\u3057\u304f\u69cb\u6210\u3055\u308c\u3066\u3044\u307e\u305b\u3093"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x27

    aput-object v0, p0, v1

    const-string v0, "INTERNAL_ERR"

    const-string v1, "\u30ea\u30ab\u30d0\u30ea\u30fc\u4e0d\u80fd XSLTC \u5185\u90e8\u30a8\u30e9\u30fc: \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x28

    aput-object v0, p0, v1

    const-string v0, "UNSUPPORTED_XSL_ERR"

    const-string v1, "XSL \u30a8\u30ec\u30e1\u30f3\u30c8 \'\'{0}\'\' \u306f\u30b5\u30dd\u30fc\u30c8\u3055\u308c\u3066\u3044\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x29

    aput-object v0, p0, v1

    const-string v0, "UNSUPPORTED_EXT_ERR"

    const-string v1, "XSLTC \u62e1\u5f35 \'\'{0}\'\' \u306f\u8a8d\u8b58\u3055\u308c\u3066\u3044\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2a

    aput-object v0, p0, v1

    const-string v0, "MISSING_XSLT_URI_ERR"

    const-string v1, "\u5165\u529b\u6587\u66f8\u306f\u30b9\u30bf\u30a4\u30eb\u30b7\u30fc\u30c8\u3067\u306f\u3042\u308a\u307e\u305b\u3093 (XSL \u30cd\u30fc\u30e0\u30fb\u30b9\u30da\u30fc\u30b9\u306f\u30eb\u30fc\u30c8\u30fb\u30a8\u30ec\u30e1\u30f3\u30c8\u5185\u3067\u5ba3\u8a00\u3055\u308c\u3066\u3044\u307e\u305b\u3093)\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2b

    aput-object v0, p0, v1

    const-string v0, "MISSING_XSLT_TARGET_ERR"

    const-string v1, "\u30b9\u30bf\u30a4\u30eb\u30b7\u30fc\u30c8\u30fb\u30bf\u30fc\u30b2\u30c3\u30c8 \'\'{0}\'\' \u304c\u898b\u3064\u304b\u308a\u307e\u305b\u3093\u3067\u3057\u305f\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2c

    aput-object v0, p0, v1

    const-string v0, "NOT_IMPLEMENTED_ERR"

    const-string v1, "\'\'{0}\'\' \u304c\u30a4\u30f3\u30d7\u30ea\u30e1\u30f3\u30c8\u3055\u308c\u3066\u3044\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2d

    aput-object v0, p0, v1

    const-string v0, "NOT_STYLESHEET_ERR"

    const-string v1, "\u5165\u529b\u6587\u66f8\u306b\u306f XSL \u30b9\u30bf\u30a4\u30eb\u30b7\u30fc\u30c8\u304c\u5165\u3063\u3066\u3044\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2e

    aput-object v0, p0, v1

    const-string v0, "ELEMENT_PARSE_ERR"

    const-string v1, "\u30a8\u30ec\u30e1\u30f3\u30c8 \'\'{0}\'\' \u3092\u69cb\u6587\u89e3\u6790\u3067\u304d\u307e\u305b\u3093\u3067\u3057\u305f"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2f

    aput-object v0, p0, v1

    const-string v0, "KEY_USE_ATTR_ERR"

    const-string v1, "<key> \u306e use \u5c5e\u6027\u306f node\u3001node-set\u3001string\u3001\u307e\u305f\u306f number \u3067\u306a\u3051\u308c\u3070\u306a\u308a\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x30

    aput-object v0, p0, v1

    const-string v0, "OUTPUT_VERSION_ERR"

    const-string v1, "\u51fa\u529b XML \u6587\u66f8\u306e\u30d0\u30fc\u30b8\u30e7\u30f3\u306f 1.0 \u306b\u306a\u3063\u3066\u3044\u308b\u306f\u305a\u3067\u3059"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x31

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_RELAT_OP_ERR"

    const-string v1, "\u95a2\u4fc2\u5f0f\u306e\u6f14\u7b97\u5b50\u304c\u4e0d\u660e\u3067\u3059"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x32

    aput-object v0, p0, v1

    const-string v0, "ATTRIBSET_UNDEF_ERR"

    const-string v1, "\u5b58\u5728\u3057\u3066\u3044\u306a\u3044\u5c5e\u6027\u30bb\u30c3\u30c8 \'\'{0}\'\' \u3092\u4f7f\u7528\u3057\u3088\u3046\u3068\u3057\u3066\u3044\u307e\u3059\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x33

    aput-object v0, p0, v1

    const-string v0, "ATTR_VAL_TEMPLATE_ERR"

    const-string v1, "\u5c5e\u6027\u5024\u30c6\u30f3\u30d7\u30ec\u30fc\u30c8 \'\'{0}\'\' \u3092\u69cb\u6587\u89e3\u6790\u3067\u304d\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x34

    aput-object v0, p0, v1

    const-string v0, "UNKNOWN_SIG_TYPE_ERR"

    const-string v1, "\u30af\u30e9\u30b9 \'\'{0}\'\' \u306e\u30b7\u30b0\u30cb\u30c1\u30e3\u30fc\u5185\u306e\u30c7\u30fc\u30bf\u30fb\u30bf\u30a4\u30d7\u304c\u4e0d\u660e\u3067\u3059\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x35

    aput-object v0, p0, v1

    const-string v0, "DATA_CONVERSION_ERR"

    const-string v1, "\u30c7\u30fc\u30bf\u30fb\u30bf\u30a4\u30d7 \'\'{0}\'\' \u3092 \'\'{1}\'\' \u306b\u5909\u63db\u3067\u304d\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x36

    aput-object v0, p0, v1

    const-string v0, "NO_TRANSLET_CLASS_ERR"

    const-string v1, "\u3053\u306e\u30c6\u30f3\u30d7\u30ec\u30fc\u30c8\u306b\u306f\u6709\u52b9\u306a translet \u30af\u30e9\u30b9\u5b9a\u7fa9\u304c\u5165\u3063\u3066\u3044\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x37

    aput-object v0, p0, v1

    const-string v0, "NO_MAIN_TRANSLET_ERR"

    const-string v1, "\u3053\u306e\u30c6\u30f3\u30d7\u30ec\u30fc\u30c8\u306b\u306f\u540d\u524d\u304c \'\'{0}\'\' \u306e\u30af\u30e9\u30b9\u306f\u5165\u3063\u3066\u3044\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x38

    aput-object v0, p0, v1

    const-string v0, "TRANSLET_CLASS_ERR"

    const-string v1, "translet \u30af\u30e9\u30b9 \'\'{0}\'\' \u3092\u30ed\u30fc\u30c9\u3067\u304d\u307e\u305b\u3093\u3067\u3057\u305f\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x39

    aput-object v0, p0, v1

    const-string v0, "TRANSLET_OBJECT_ERR"

    const-string v1, "translet \u30af\u30e9\u30b9\u304c\u30ed\u30fc\u30c9\u3055\u308c\u307e\u3057\u305f\u304c\u3001translet \u30a4\u30f3\u30b9\u30bf\u30f3\u30b9\u3092\u4f5c\u6210\u3067\u304d\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3a

    aput-object v0, p0, v1

    const-string v0, "ERROR_LISTENER_NULL_ERR"

    const-string v1, "\'\'{0}\'\' \u306e ErrorListener \u3092\u30cc\u30eb\u306b\u8a2d\u5b9a\u3057\u3088\u3046\u3068\u3057\u3066\u3044\u307e\u3059"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3b

    aput-object v0, p0, v1

    const-string v0, "JAXP_UNKNOWN_SOURCE_ERR"

    const-string v1, "XSLTC \u304c\u30b5\u30dd\u30fc\u30c8\u3057\u3066\u3044\u308b\u306e\u306f StreamSource\u3001SAXSource\u3001\u304a\u3088\u3073 DOMSource \u3060\u3051\u3067\u3059"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3c

    aput-object v0, p0, v1

    const-string v0, "JAXP_NO_SOURCE_ERR"

    const-string v1, "\'\'{0}\'\' \u306b\u6e21\u3055\u308c\u305f\u30bd\u30fc\u30b9\u30fb\u30aa\u30d6\u30b8\u30a7\u30af\u30c8\u306b\u306f\u30b3\u30f3\u30c6\u30f3\u30c4\u304c\u3042\u308a\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3d

    aput-object v0, p0, v1

    const-string v0, "JAXP_COMPILE_ERR"

    const-string v1, "\u30b9\u30bf\u30a4\u30eb\u30b7\u30fc\u30c8\u3092\u30b3\u30f3\u30d1\u30a4\u30eb\u3067\u304d\u307e\u305b\u3093\u3067\u3057\u305f"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3e

    aput-object v0, p0, v1

    const-string v0, "JAXP_INVALID_ATTR_ERR"

    const-string v1, "TransformerFactory \u306f\u5c5e\u6027 \'\'{0}\'\' \u3092\u8a8d\u8b58\u3057\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3f

    aput-object v0, p0, v1

    const-string v0, "JAXP_SET_RESULT_ERR"

    const-string v1, "setResult() \u306f startDocument() \u306e\u524d\u306b\u547c\u3073\u51fa\u3055\u308c\u3066\u3044\u306a\u3051\u308c\u3070\u306a\u308a\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x40

    aput-object v0, p0, v1

    const-string v0, "JAXP_NO_TRANSLET_ERR"

    const-string v1, "\u5909\u63db\u30d7\u30ed\u30b0\u30e9\u30e0\u306b\u306f\u30ab\u30d7\u30bb\u30eb\u5316\u3055\u308c\u305f translet \u30aa\u30d6\u30b8\u30a7\u30af\u30c8\u304c\u3042\u308a\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x41

    aput-object v0, p0, v1

    const-string v0, "JAXP_NO_HANDLER_ERR"

    const-string v1, "\u5909\u63db\u7d50\u679c\u306e\u51fa\u529b\u30cf\u30f3\u30c9\u30e9\u30fc\u304c\u5b9a\u7fa9\u3055\u308c\u3066\u3044\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x42

    aput-object v0, p0, v1

    const-string v0, "JAXP_NO_RESULT_ERR"

    const-string v1, "\'\'{0}\'\' \u306b\u6e21\u3055\u308c\u305f\u7d50\u679c\u30aa\u30d6\u30b8\u30a7\u30af\u30c8\u304c\u7121\u52b9\u3067\u3059\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x43

    aput-object v0, p0, v1

    const-string v0, "JAXP_UNKNOWN_PROP_ERR"

    const-string v1, "\u7121\u52b9\u306a Transformer \u30d7\u30ed\u30d1\u30c6\u30a3\u30fc \'\'{0}\'\' \u306b\u30a2\u30af\u30bb\u30b9\u3057\u3088\u3046\u3068\u3057\u3066\u3044\u307e\u3059\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x44

    aput-object v0, p0, v1

    const-string v0, "SAX2DOM_ADAPTER_ERR"

    const-string v1, "SAX2DOM \u30a2\u30c0\u30d7\u30bf\u30fc: \'\'{0}\'\' \u3092\u4f5c\u6210\u3067\u304d\u307e\u305b\u3093\u3067\u3057\u305f\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x45

    aput-object v0, p0, v1

    const-string v0, "XSLTC_SOURCE_ERR"

    const-string v1, "XSLTCSource.build() \u304c systemId \u3092\u8a2d\u5b9a\u3057\u306a\u3044\u3067\u547c\u3073\u51fa\u3055\u308c\u3066\u3044\u307e\u3059\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x46

    aput-object v0, p0, v1

    const-string v0, "COMPILE_STDIN_ERR"

    const-string v1, "-i \u30aa\u30d7\u30b7\u30e7\u30f3\u306f -o \u30aa\u30d7\u30b7\u30e7\u30f3\u3068\u4e00\u7dd2\u306b\u4f7f\u7528\u3057\u306a\u3051\u308c\u3070\u306a\u308a\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x47

    aput-object v0, p0, v1

    const-string v0, "COMPILE_USAGE_STR"

    const-string v1, "SYNOPSIS\n   java com.sun.org.apache.xalan.internal.xsltc.cmdline.Compile [-o <output>]\n      [-d <directory>] [-j <jarfile>] [-p <package>]\n      [-n] [-x] [-s] [-u] [-v] [-h] { <stylesheet> | -i }\n\n\u30aa\u30d7\u30b7\u30e7\u30f3\n -o <output>    \u540d\u524d <output> \u3092\u751f\u6210\u5f8c\u306e translet \u306b\u5272\u308a\u5f53\u3066\n                \u307e\u3059\u3002 \u30c7\u30d5\u30a9\u30eb\u30c8\u3067\u306f\u3001translet \u540d\u306f <stylesheet>\n                \u540d\u304b\u3089\u3068\u3089\u308c\u307e\u3059\u3002 \u3053\u306e\u30aa\u30d7\u30b7\u30e7\u30f3\u306f\u8907\u6570\u306e\u30b9\u30bf\u30a4\u30eb\u30b7\u30fc\u30c8\u3092\n                \u30b3\u30f3\u30d1\u30a4\u30eb\u3059\u308b\u5834\u5408\u306f\u7121\u8996\u3055\u308c\u307e\u3059\u3002\n   -d <directory> translet \u306e\u5b9b\u5148\u30c7\u30a3\u30ec\u30af\u30c8\u30ea\u30fc\u3092\u6307\u5b9a\u3057\u307e\u3059\n -j <jarfile>   translet \u30af\u30e9\u30b9\u3092 <jarfile> \u3068\u3057\u3066\u6307\u5b9a\u3055\u308c\u305f\n                \u540d\u524d\u306e jar \u30d5\u30a1\u30a4\u30eb\u306b\u30d1\u30c3\u30b1\u30fc\u30b8\u3057\u307e\u3059\n -p <package>   \u751f\u6210\u5f8c\u306e\u3059\u3079\u3066\u306e translet \u30af\u30e9\u30b9\u306b\u30d1\u30c3\u30b1\u30fc\u30b8\u540d\n                \u63a5\u982d\u90e8\u3092\u6307\u5b9a\u3057\u307e\u3059\u3002\n   -n             \u30c6\u30f3\u30d7\u30ec\u30fc\u30c8\u306e\u30a4\u30f3\u30e9\u30a4\u30f3\u5316\u3092\u4f7f\u7528\u53ef\u80fd\u306b\u3057\u307e\u3059 (\u30c6\u30f3\u30d7\u30ec\u30fc\u30c8\u306e\u30a4\u30f3\n                \u30e9\u30a4\u30f3\u5316\u3067\u5e73\u5747\u3068\u3057\u3066\u826f\u597d\u306a\u30d1\u30d5\u30a9\u30fc\u30de\u30f3\u30b9\u3092\u5f97\u308b\u3053\u3068\u304c\u3067\u304d\u307e\u3059)\u3002\n   -x             \u8ffd\u52a0\u306e\u30c7\u30d0\u30c3\u30b0\u30fb\u30e1\u30c3\u30bb\u30fc\u30b8\u51fa\u529b\u3092\u30aa\u30f3\u306b\u3057\u307e\u3059\n -s             System.exit \u306e\u547c\u3073\u51fa\u3057\u3092\u4f7f\u7528\u4e0d\u53ef\u306b\u3057\u307e\u3059\n -u             <stylesheet> \u5f15\u304d\u6570\u3092 URL \u3068\u3057\u3066\u89e3\u91c8\u3057\u307e\u3059\n -i             \u30b3\u30f3\u30d1\u30a4\u30e9\u30fc\u304c\u30b9\u30bf\u30a4\u30eb\u30b7\u30fc\u30c8\u3092\u6a19\u6e96\u5165\u529b\u304b\u3089\u8aad\u307f\u53d6\u308b\u3053\u3068\u3092\u5f37\u5236\u3057\u307e\u3059\n -v             \u30b3\u30f3\u30d1\u30a4\u30e9\u30fc\u306e\u30d0\u30fc\u30b8\u30e7\u30f3\u3092\u5370\u5237\u3057\u307e\u3059\n -h             \u3053\u306e\u4f7f\u7528\u6cd5\u30b9\u30c6\u30fc\u30c8\u30e1\u30f3\u30c8\u3092\u5370\u5237\u3057\u307e\u3059\n"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x48

    aput-object v0, p0, v1

    const-string v0, "TRANSFORM_USAGE_STR"

    const-string v1, "SYNOPSIS \n   java com.sun.org.apache.xalan.internal.xsltc.cmdline.Transform [-j <jarfile>]\n [-x] [-s] [-n <iterations>] {-u <document_url> | <document>}\n <class> [<param1>=<value1> ...]\n \n translet <class> \u3092\u4f7f\u7528\u3057\u3066 <document> \u3068\u3057\u3066\u6307\u5b9a\u3055\u308c\u305f\n XML \u6587\u66f8\u3092\u5909\u63db\u3057\u307e\u3059\u3002 translet <class> \u306f\u30e6\u30fc\u30b6\u30fc\u306e CLASSPATH\n \u307e\u305f\u306f\u30aa\u30d7\u30b7\u30e7\u30f3\u3067\u6307\u5b9a\u3055\u308c\u308b <jarfile> \u306b\u5165\u3063\u3066\u3044\u307e\u3059\u3002\n\u30aa\u30d7\u30b7\u30e7\u30f3\n -j <jarfile>      translet \u306e\u30ed\u30fc\u30c9\u5143\u306e jarfile \u3092\u6307\u5b9a\u3057\u307e\u3059\n -x                \u8ffd\u52a0\u306e\u30c7\u30d0\u30c3\u30b0\u30fb\u30e1\u30c3\u30bb\u30fc\u30b8\u51fa\u529b\u3092\u30aa\u30f3\u306b\u3057\u307e\u3059\n -s                System.exit \u306e\u547c\u3073\u51fa\u3057\u3092\u4f7f\u7528\u4e0d\u53ef\u306b\u3057\u307e\u3059\n -n <iterations>   \u5909\u63db\u3092 <iterations> \u56de\u5b9f\u884c\u3057\n                   \u30d7\u30ed\u30d5\u30a1\u30a4\u30eb\u60c5\u5831\u3092\u8868\u793a\u3057\u307e\u3059\n -u <document_url> XML \u5165\u529b\u6587\u66f8\u3092 URL \u3068\u3057\u3066\u6307\u5b9a\u3057\u307e\u3059\n"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x49

    aput-object v0, p0, v1

    const-string v0, "STRAY_SORT_ERR"

    const-string v1, "<xsl:sort> \u3092\u4f7f\u7528\u3067\u304d\u308b\u306e\u306f <xsl:for-each> \u307e\u305f\u306f <xsl:apply-templates> \u5185\u3060\u3051\u3067\u3059\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4a

    aput-object v0, p0, v1

    const-string v0, "UNSUPPORTED_ENCODING"

    const-string v1, "\u51fa\u529b\u30a8\u30f3\u30b3\u30fc\u30c9 \'\'{0}\'\' \u306f\u3053\u306e JVM \u3067\u306f\u30b5\u30dd\u30fc\u30c8\u3055\u308c\u3066\u3044\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4b

    aput-object v0, p0, v1

    const-string v0, "SYNTAX_ERR"

    const-string v1, "\'\'{0}\'\' \u5185\u306b\u69cb\u6587\u30a8\u30e9\u30fc\u304c\u3042\u308a\u307e\u3059\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4c

    aput-object v0, p0, v1

    const-string v0, "CONSTRUCTOR_NOT_FOUND"

    const-string v1, "\u5916\u90e8\u30b3\u30f3\u30b9\u30c8\u30e9\u30af\u30bf\u30fc \'\'{0}\'\' \u304c\u898b\u3064\u304b\u308a\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4d

    aput-object v0, p0, v1

    const-string v0, "NO_JAVA_FUNCT_THIS_REF"

    const-string v1, "\u975e static Java \u95a2\u6570 \'\'{0}\'\' \u3078\u306e\u5148\u982d\u5f15\u304d\u6570\u306f\u6709\u52b9\u306a\u30aa\u30d6\u30b8\u30a7\u30af\u30c8\u53c2\u7167\u5b50\u3067\u3042\u308a\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4e

    aput-object v0, p0, v1

    const-string v0, "TYPE_CHECK_ERR"

    const-string v1, "\u5f0f \'\'{0}\'\' \u306e\u30bf\u30a4\u30d7\u3092\u691c\u67fb\u4e2d\u306b\u30a8\u30e9\u30fc\u304c\u767a\u751f\u3057\u307e\u3057\u305f\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4f

    aput-object v0, p0, v1

    const-string v0, "TYPE_CHECK_UNK_LOC_ERR"

    const-string v1, "\u4e0d\u660e\u306a\u30ed\u30b1\u30fc\u30b7\u30e7\u30f3\u3067\u5f0f\u306e\u30bf\u30a4\u30d7\u3092\u691c\u67fb\u4e2d\u306b\u30a8\u30e9\u30fc\u304c\u767a\u751f\u3057\u307e\u3057\u305f\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x50

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_CMDLINE_OPTION_ERR"

    const-string v1, "\u30b3\u30de\u30f3\u30c9\u884c\u30aa\u30d7\u30b7\u30e7\u30f3 \'\'{0}\'\' \u304c\u7121\u52b9\u3067\u3059\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x51

    aput-object v0, p0, v1

    const-string v0, "CMDLINE_OPT_MISSING_ARG_ERR"

    const-string v1, "\u30b3\u30de\u30f3\u30c9\u884c\u30aa\u30d7\u30b7\u30e7\u30f3 \'\'{0}\'\' \u306b\u5fc5\u9808\u5c5e\u6027\u304c\u3042\u308a\u307e\u305b\u3093\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x52

    aput-object v0, p0, v1

    const-string v0, "WARNING_PLUS_WRAPPED_MSG"

    const-string v1, "\u8b66\u544a:  \'\'{0}\'\'\n       :{1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x53

    aput-object v0, p0, v1

    const-string v0, "WARNING_MSG"

    const-string v1, "\u8b66\u544a:  \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x54

    aput-object v0, p0, v1

    const-string v0, "FATAL_ERR_PLUS_WRAPPED_MSG"

    const-string v1, "\u81f4\u547d\u7684\u30a8\u30e9\u30fc:  \'\'{0}\'\'\n           :{1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x55

    aput-object v0, p0, v1

    const-string v0, "FATAL_ERR_MSG"

    const-string v1, "\u81f4\u547d\u7684\u30a8\u30e9\u30fc:  \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x56

    aput-object v0, p0, v1

    const-string v0, "ERROR_PLUS_WRAPPED_MSG"

    const-string v1, "\u30a8\u30e9\u30fc:  \'\'{0}\'\'\n     :{1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x57

    aput-object v0, p0, v1

    const-string v0, "ERROR_MSG"

    const-string v1, "\u30a8\u30e9\u30fc:  \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x58

    aput-object v0, p0, v1

    const-string v0, "TRANSFORM_WITH_TRANSLET_STR"

    const-string v1, "translet \'\'{0}\'\' \u3092\u4f7f\u7528\u3059\u308b\u5909\u63db "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x59

    aput-object v0, p0, v1

    const-string v0, "TRANSFORM_WITH_JAR_STR"

    const-string v1, "jar \u30d5\u30a1\u30a4\u30eb \'\'{1}\'\' \u304b\u3089\u306e translet \'\'{0}\'\' \u3092\u4f7f\u7528\u3059\u308b\u5909\u63db"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x5a

    aput-object v0, p0, v1

    const-string v0, "COULD_NOT_CREATE_TRANS_FACT"

    const-string v1, "TransformerFactory \u30af\u30e9\u30b9 \'\'{0}\'\' \u306e\u30a4\u30f3\u30b9\u30bf\u30f3\u30b9\u3092\u4f5c\u6210\u3067\u304d\u307e\u305b\u3093\u3067\u3057\u305f\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x5b

    aput-object v0, p0, v1

    const-string v0, "COMPILER_ERROR_KEY"

    const-string v1, "\u30b3\u30f3\u30d1\u30a4\u30e9\u30fc\u30fb\u30a8\u30e9\u30fc:"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x5c

    aput-object v0, p0, v1

    const-string v0, "COMPILER_WARNING_KEY"

    const-string v1, "\u30b3\u30f3\u30d1\u30a4\u30e9\u30fc\u8b66\u544a:"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x5d

    aput-object v0, p0, v1

    const-string v0, "RUNTIME_ERROR_KEY"

    const-string v1, "Translet \u30a8\u30e9\u30fc:"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x5e

    aput-object v0, p0, v1

    return-object p0
.end method
