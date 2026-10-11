.class public Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMessages_zh_TW;
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
    .locals 3

    const/16 p0, 0x5f

    new-array p0, p0, [[Ljava/lang/Object;

    const-string v0, "MULTIPLE_STYLESHEET_ERR"

    const-string v1, "\u540c\u4e00\u500b\u6a94\u6848\u4e2d\u5b9a\u7fa9\u4e00\u500b\u4ee5\u4e0a\u7684\u6a23\u5f0f\u8868\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "TEMPLATE_REDEF_ERR"

    const-string v1, "\u6b64\u6a23\u5f0f\u8868\u4e2d\u5df2\u7d93\u6709\u5b9a\u7fa9\u7bc4\u672c \'\'{0}\'\'\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const-string v0, "TEMPLATE_UNDEF_ERR"

    const-string v1, "\u6b64\u6a23\u5f0f\u8868\u4e2d\u5c1a\u672a\u5b9a\u7fa9\u7bc4\u672c \'\'{0}\'\'\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p0, v1

    const-string v0, "VARIABLE_REDEF_ERR"

    const-string v1, "\u540c\u4e00\u7bc4\u570d\u4e2d\u5b9a\u7fa9\u4e86\u591a\u500b\u8b8a\u6578 \'\'{0}\'\'\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p0, v1

    const-string v0, "VARIABLE_UNDEF_ERR"

    const-string v1, "\u8b8a\u6578\u6216\u53c3\u6578 \'\'{0}\'\' \u5c1a\u672a\u5b9a\u7fa9\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, p0, v1

    const-string v0, "CLASS_NOT_FOUND_ERR"

    const-string v1, "\u627e\u4e0d\u5230\u985e\u5225 \'\'{0}\'\'\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, p0, v1

    const-string v0, "METHOD_NOT_FOUND_ERR"

    const-string v1, "\u627e\u4e0d\u5230\u5916\u90e8\u65b9\u6cd5 \'\'{0}\'\'\uff08\u5fc5\u9808\u662f\u516c\u7528\u7684\uff09\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, p0, v1

    const-string v0, "ARGUMENT_CONVERSION_ERR"

    const-string v1, "\u7121\u6cd5\u5c07\u547c\u53eb\u4e2d\u7684\u5f15\u6578/\u50b3\u56de\u985e\u578b\u8f49\u63db\u70ba\u65b9\u6cd5 \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, p0, v1

    const-string v0, "FILE_NOT_FOUND_ERR"

    const-string v1, "\u627e\u4e0d\u5230\u6a94\u6848\u6216 URI \'\'{0}\'\'\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x8

    aput-object v0, p0, v1

    const-string v0, "INVALID_URI_ERR"

    const-string v1, "URI \'\'{0}\'\' \u7121\u6548\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x9

    aput-object v0, p0, v1

    const-string v0, "FILE_ACCESS_ERR"

    const-string v1, "\u7121\u6cd5\u958b\u555f\u6a94\u6848\u6216 URI \'\'{0}\'\'\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xa

    aput-object v0, p0, v1

    const-string v0, "MISSING_ROOT_ERR"

    const-string v1, "\u539f\u9810\u671f\u70ba <xsl:stylesheet> \u6216 <xsl:transform> \u5143\u7d20\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xb

    aput-object v0, p0, v1

    const-string v0, "NAMESPACE_UNDEF_ERR"

    const-string v1, "\u5c1a\u672a\u5ba3\u544a\u540d\u7a31\u7a7a\u9593\u5b57\u9996 \'\'{0}\'\'\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xc

    aput-object v0, p0, v1

    const-string v0, "FUNCTION_RESOLVE_ERR"

    const-string v1, "\u7121\u6cd5\u89e3\u6790\u5c0d\u51fd\u6578 \'\'{0}\'\' \u7684\u547c\u53eb\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xd

    aput-object v0, p0, v1

    const-string v0, "NEED_LITERAL_ERR"

    const-string v1, "\'\'{0}\'\' \u7684\u5f15\u6578\u5fc5\u9808\u662f\u6587\u5b57\u5b57\u4e32\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xe

    aput-object v0, p0, v1

    const-string v0, "XPATH_PARSER_ERR"

    const-string v1, "\u5256\u6790 XPath \u8868\u793a\u5f0f \'\'{0}\'\' \u6642\u767c\u751f\u932f\u8aa4\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xf

    aput-object v0, p0, v1

    const-string v0, "REQUIRED_ATTR_ERR"

    const-string v1, "\u907a\u6f0f\u5fc5\u8981\u7684\u5c6c\u6027 \'\'{0}\'\'\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x10

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_CHAR_ERR"

    const-string v1, "XPath \u8868\u793a\u5f0f\u4e2d\u5305\u542b\u4e0d\u5408\u6cd5\u5b57\u5143 \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x11

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_PI_ERR"

    const-string v1, "\u8655\u7406\u6307\u793a\u7684\u540d\u7a31 \'\'{0}\'\' \u4e0d\u5408\u6cd5\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x12

    aput-object v0, p0, v1

    const-string v0, "STRAY_ATTRIBUTE_ERR"

    const-string v1, "\u5c6c\u6027 \'\'{0}\'\' \u8d85\u51fa\u5143\u7d20\u5916\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x13

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_ATTRIBUTE_ERR"

    const-string v1, "\u5c6c\u6027 \'\'{0}\'\' \u4e0d\u5408\u6cd5\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x14

    aput-object v0, p0, v1

    const-string v0, "CIRCULAR_INCLUDE_ERR"

    const-string v1, "\u5faa\u74b0\u532f\u5165/\u4f75\u5165\u3002\u6a23\u5f0f\u8868 \'\'{0}\'\' \u5df2\u7d93\u8f09\u5165\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x15

    aput-object v0, p0, v1

    const-string v0, "RESULT_TREE_SORT_ERR"

    const-string v1, "\u7d50\u679c\u6a39\u7247\u6bb5\u7121\u6cd5\u6392\u5e8f\uff08<xsl:sort> \u5143\u7d20\u88ab\u5ffd\u7565\uff09\u3002\u60a8\u5fc5\u9808\u65bc\u5efa\u7acb\u7d50\u679c\u6a39\u6642\uff0c\u5c07\u7bc0\u9ede\u6392\u5e8f\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x16

    aput-object v0, p0, v1

    const-string v0, "SYMBOLS_REDEF_ERR"

    const-string v1, "\u5df2\u7d93\u6709\u5b9a\u7fa9\u5341\u9032\u4f4d\u683c\u5f0f \'\'{0}\'\'\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x17

    aput-object v0, p0, v1

    const-string v0, "XSL_VERSION_ERR"

    const-string v1, "XSLTC \u4e0d\u652f\u63f4 XSL \u7248\u672c \'\'{0}\'\'\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x18

    aput-object v0, p0, v1

    const-string v0, "CIRCULAR_VARIABLE_ERR"

    const-string v1, "\'\'{0}\'\' \u4e2d\u5305\u542b\u5faa\u74b0\u8b8a\u6578/\u53c3\u6578\u53c3\u7167\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x19

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_BINARY_OP_ERR"

    const-string v1, "\u4e8c\u9032\u4f4d\u8868\u793a\u5f0f\u7684\u904b\u7b97\u5b50\u4e0d\u660e\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1a

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_ARG_ERR"

    const-string v1, "\u51fd\u6578\u547c\u53eb\u7684\u5f15\u6578\u4e0d\u5408\u6cd5\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1b

    aput-object v0, p0, v1

    const-string v0, "DOCUMENT_ARG_ERR"

    const-string v1, "document() \u51fd\u6578\u7684\u7b2c\u4e8c\u500b\u5f15\u6578\u5fc5\u9808\u662f\u7bc0\u9ede\u96c6\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1c

    aput-object v0, p0, v1

    const-string v0, "MISSING_WHEN_ERR"

    const-string v1, "<xsl:choose> \u4e2d\u81f3\u5c11\u8981\u6709\u4e00\u500b <xsl:when> \u5143\u7d20\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1d

    aput-object v0, p0, v1

    const-string v0, "MULTIPLE_OTHERWISE_ERR"

    const-string v1, "<xsl:choose> \u4e2d\u53ea\u63a5\u53d7\u4e00\u500b <xsl:otherwise> \u5143\u7d20\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1e

    aput-object v0, p0, v1

    const-string v0, "STRAY_OTHERWISE_ERR"

    const-string v1, "<xsl:otherwise> \u53ea\u80fd\u7528\u5728 <xsl:choose> \u4e2d\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1f

    aput-object v0, p0, v1

    const-string v0, "STRAY_WHEN_ERR"

    const-string v1, "<xsl:when> \u53ea\u80fd\u7528\u5728 <xsl:choose> \u4e2d\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x20

    aput-object v0, p0, v1

    const-string v0, "WHEN_ELEMENT_ERR"

    const-string v1, "<xsl:choose> \u4e2d\u53ea\u63a5\u53d7 <xsl:when> \u548c <xsl:otherwise> \u5169\u500b\u5143\u7d20\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x21

    aput-object v0, p0, v1

    const-string v0, "UNNAMED_ATTRIBSET_ERR"

    const-string v1, "<xsl:attribute-set> \u907a\u6f0f \'name\' \u5c6c\u6027\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x22

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_CHILD_ERR"

    const-string v1, "\u5b50\u9805\u5143\u7d20\u4e0d\u5408\u6cd5\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x23

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_ELEM_NAME_ERR"

    const-string v1, "\u4e0d\u53ef\u4ee5\u547c\u53eb\u5143\u7d20 \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x24

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_ATTR_NAME_ERR"

    const-string v1, "\u4e0d\u53ef\u4ee5\u547c\u53eb\u5c6c\u6027 \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x25

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_TEXT_NODE_ERR"

    const-string v1, "\u6587\u5b57\u8cc7\u6599\u8d85\u51fa\u9802\u5c64 <xsl:stylesheet> \u5143\u7d20\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x26

    aput-object v0, p0, v1

    const-string v0, "SAX_PARSER_CONFIG_ERR"

    const-string v1, "JAXP \u5256\u6790\u5668\u672a\u6b63\u78ba\u914d\u7f6e"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x27

    aput-object v0, p0, v1

    const-string v0, "INTERNAL_ERR"

    const-string v1, "\u767c\u751f\u7121\u6cd5\u5fa9\u539f\u7684 XSLTC \u5167\u90e8\u932f\u8aa4\uff1a\'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x28

    aput-object v0, p0, v1

    const-string v0, "UNSUPPORTED_XSL_ERR"

    const-string v1, "XSL \u5143\u7d20 \'\'{0}\'\' \u4e0d\u53d7\u652f\u63f4\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x29

    aput-object v0, p0, v1

    const-string v0, "UNSUPPORTED_EXT_ERR"

    const-string v1, "XSLTC \u5ef6\u4f38\u9805\u76ee \'\'{0}\'\' \u7121\u6cd5\u8fa8\u8b58\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2a

    aput-object v0, p0, v1

    const-string v0, "MISSING_XSLT_URI_ERR"

    const-string v1, "\u8f38\u5165\u6587\u4ef6\u4e0d\u662f\u6a23\u5f0f\u8868\uff08XSL \u540d\u7a31\u7a7a\u9593\u672a\u5728\u6839\u5143\u7d20\u4e2d\u5ba3\u544a\uff09\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2b

    aput-object v0, p0, v1

    const-string v0, "MISSING_XSLT_TARGET_ERR"

    const-string v1, "\u627e\u4e0d\u5230\u6a23\u5f0f\u8868\u76ee\u6a19 \'\'{0}\'\'\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2c

    aput-object v0, p0, v1

    const-string v0, "NOT_IMPLEMENTED_ERR"

    const-string v1, "\u5c1a\u672a\u5be6\u4f5c\uff1a\'\'{0}\'\'\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2d

    aput-object v0, p0, v1

    const-string v0, "NOT_STYLESHEET_ERR"

    const-string v1, "\u8f38\u5165\u6587\u4ef6\u672a\u5305\u542b XSL \u6a23\u5f0f\u8868\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2e

    aput-object v0, p0, v1

    const-string v0, "ELEMENT_PARSE_ERR"

    const-string v1, "\u7121\u6cd5\u5256\u6790\u5143\u7d20 \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2f

    aput-object v0, p0, v1

    const-string v0, "KEY_USE_ATTR_ERR"

    const-string v1, "<key> \u7684 use \u5c6c\u6027\u5fc5\u9808\u662f node\u3001node-set\u3001string \u6216 number\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x30

    aput-object v0, p0, v1

    const-string v0, "OUTPUT_VERSION_ERR"

    const-string v1, "\u8f38\u51fa XML \u6587\u4ef6\u7248\u672c\u61c9\u8a72\u662f 1.0"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x31

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_RELAT_OP_ERR"

    const-string v1, "\u95dc\u806f\u5f0f\u8868\u793a\u5f0f\u7684\u904b\u7b97\u5b50\u4e0d\u660e"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x32

    aput-object v0, p0, v1

    const-string v0, "ATTRIBSET_UNDEF_ERR"

    const-string v1, "\u5617\u8a66\u4f7f\u7528\u4e0d\u5b58\u5728\u7684\u5c6c\u6027\u96c6 \'\'{0}\'\'\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x33

    aput-object v0, p0, v1

    const-string v0, "ATTR_VAL_TEMPLATE_ERR"

    const-string v1, "\u7121\u6cd5\u5256\u6790\u5c6c\u6027\u503c\u7bc4\u672c \'\'{0}\'\'\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x34

    aput-object v0, p0, v1

    const-string v0, "UNKNOWN_SIG_TYPE_ERR"

    const-string v1, "\u985e\u5225 \'\'{0}\'\' \u4e2d\u7684\u7c3d\u7ae0\u8cc7\u6599\u985e\u578b\u4e0d\u660e\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x35

    aput-object v0, p0, v1

    const-string v0, "DATA_CONVERSION_ERR"

    const-string v1, "\u7121\u6cd5\u5c07\u8cc7\u6599\u985e\u578b \'\'{0}\'\' \u8f49\u63db\u70ba \'\'{1}\'\'\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x36

    aput-object v0, p0, v1

    const-string v0, "NO_TRANSLET_CLASS_ERR"

    const-string v1, "\u6b64 Templates \u672a\u5305\u542b\u6709\u6548\u7684 translet \u985e\u5225\u5b9a\u7fa9\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x37

    aput-object v0, p0, v1

    const-string v0, "NO_MAIN_TRANSLET_ERR"

    const-string v1, "\u6b64\u7bc4\u672c\u672a\u5305\u542b\u540d\u7a31\u70ba \'\'{0}\'\' \u7684\u985e\u5225\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x38

    aput-object v0, p0, v1

    const-string v0, "TRANSLET_CLASS_ERR"

    const-string v1, "\u7121\u6cd5\u8f09\u5165 translet \u985e\u5225 \'\'{0}\'\'\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x39

    aput-object v0, p0, v1

    const-string v0, "TRANSLET_OBJECT_ERR"

    const-string v1, "\u5df2\u8f09\u5165 Translet \u985e\u5225\uff0c\u4f46\u662f\u7121\u6cd5\u5efa\u7acb translet \u5be6\u4f8b\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3a

    aput-object v0, p0, v1

    const-string v0, "ERROR_LISTENER_NULL_ERR"

    const-string v1, "\u5617\u8a66\u5c07 \'\'{0}\'\' \u7684 ErrorListener \u8a2d\u70ba null"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3b

    aput-object v0, p0, v1

    const-string v0, "JAXP_UNKNOWN_SOURCE_ERR"

    const-string v1, "XSLTC \u53ea\u652f\u63f4 StreamSource\u3001SAXSource \u8207 DOMSource"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3c

    aput-object v0, p0, v1

    const-string v0, "JAXP_NO_SOURCE_ERR"

    const-string v1, "\u50b3\u905e\u7d66 \'\'{0}\'\' \u7684 Source \u7269\u4ef6\u6c92\u6709\u5167\u5bb9\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3d

    aput-object v0, p0, v1

    const-string v0, "JAXP_COMPILE_ERR"

    const-string v1, "\u7121\u6cd5\u7de8\u8b6f\u6a23\u5f0f\u8868"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3e

    aput-object v0, p0, v1

    const-string v0, "JAXP_INVALID_ATTR_ERR"

    const-string v1, "TransformerFactory \u7121\u6cd5\u8fa8\u8b58\u5c6c\u6027 \'\'{0}\'\'\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3f

    aput-object v0, p0, v1

    const-string v0, "JAXP_SET_RESULT_ERR"

    const-string v1, "setResult() \u5fc5\u9808\u5728 startDocument() \u4e4b\u524d\u547c\u53eb\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x40

    aput-object v0, p0, v1

    const-string v0, "JAXP_NO_TRANSLET_ERR"

    const-string v1, "Transformer \u6c92\u6709\u7c21\u5316\u7684 translet \u7269\u4ef6\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x41

    aput-object v0, p0, v1

    const-string v0, "JAXP_NO_HANDLER_ERR"

    const-string v1, "\u6c92\u6709\u5df2\u5b9a\u7fa9\u7684\u8f38\u51fa\u8655\u7406\u7a0b\u5f0f\u4f9b\u8f49\u63db\u7d50\u679c\u4f7f\u7528\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x42

    aput-object v0, p0, v1

    const-string v0, "JAXP_NO_RESULT_ERR"

    const-string v1, "\u50b3\u905e\u7d66 \'\'{0}\'\' \u7684 Result \u7269\u4ef6\u7121\u6548\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x43

    aput-object v0, p0, v1

    const-string v0, "JAXP_UNKNOWN_PROP_ERR"

    const-string v1, "\u5617\u8a66\u5b58\u53d6\u7121\u6548\u7684 Transformer \u5167\u5bb9 \'\'{0}\'\'\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x44

    aput-object v0, p0, v1

    const-string v0, "SAX2DOM_ADAPTER_ERR"

    const-string v1, "\u7121\u6cd5\u5efa\u7acb SAX2DOM \u914d\u63a5\u5361\uff1a\'\'{0}\'\'\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x45

    aput-object v0, p0, v1

    const-string v0, "XSLTC_SOURCE_ERR"

    const-string v1, "\u547c\u53eb XSLTCSource.build() \u6642\uff0c\u672a\u8a2d\u5b9a systemId \u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x46

    aput-object v0, p0, v1

    const-string v0, "COMPILE_STDIN_ERR"

    const-string v1, "-i \u9078\u9805\u5fc5\u9808\u548c -o \u9078\u9805\u4e00\u8d77\u4f7f\u7528\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x47

    aput-object v0, p0, v1

    const-string v0, "COMPILE_USAGE_STR"

    const-string v1, "\u6982\u8981\n   java com.sun.org.apache.xalan.internal.xsltc.cmdline.Compile [-o <output>]\n      [-d <directory>] [-j <jarfile>] [-p <package>]\n      [-n] [-x] [-s] [-u] [-v] [-h] { <stylesheet> | -i }\n\n\u9078\u9805\n   -o <output>    \u6307\u5b9a\u540d\u7a31 <output> \u7d66\u7522\u751f\u7684\n                  translet\u3002\u4f9d\u9810\u8a2d\uff0ctranslet \u540d\u7a31\n                  \u662f\u5f9e <stylesheet> \u540d\u7a31\u53d6\u51fa\u3002\u82e5\u7de8\u8b6f\n                  \u591a\u4efd\u6a23\u5f0f\u8868\u6642\uff0c\u6b64\u9078\u9805\u6703\u88ab\u5ffd\u7565\u3002\n   -d <directory> \u6307\u5b9a translet \u7684\u76ee\u6a19\u76ee\u9304\n   -j <jarfile>   \u5c07 translet \u985e\u5225\u5c01\u88dd\u5728 jar \u6a94\u6848\u4e2d\uff0c\u8a72\u6a94\u6848\n                  \u540d\u7a31\u7531 <jarfile> \u6307\u5b9a\n   -p <package>   \u6307\u5b9a\u6240\u6709\u7522\u751f\u7684\n                  translet \u985e\u5225\u4e4b\u5957\u4ef6\u540d\u7a31\u5b57\u9996\u3002\n   -n             \u555f\u7528\u7bc4\u672c\u5217\u5165\uff08\u5e73\u5747\u800c\u8a00\uff0c\u9810\u8a2d\u884c\u70ba\u8f03\u4f73\uff09\u3002\n                  \n   -x             \u958b\u555f\u984d\u5916\u7684\u9664\u932f\u8a0a\u606f\u8f38\u51fa\n   -s             \u505c\u7528\u547c\u53eb System.exit\n   -u             \u5c07 <stylesheet> \u5f15\u6578\u89e3\u8b6f\u70ba URL\n   -i             \u5f37\u8feb\u7de8\u8b6f\u5668\u5f9e stdin \u8b80\u53d6\u6a23\u5f0f\u8868\n   -v             \u5217\u5370\u7de8\u8b6f\u5668\u7684\u7248\u672c\n   -h             \u5217\u5370\u6b64\u7528\u6cd5\u9673\u8ff0\n"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x48

    aput-object v0, p0, v1

    const-string v0, "TRANSFORM_USAGE_STR"

    const-string v1, "\u6982\u8981\n   java com.sun.org.apache.xalan.internal.xsltc.cmdline.Transform [-j <jarfile>]\n      [-x] [-s] [-n <iterations>]{-u <document_url> | <document>}\n      <class> [<param1>=<value1> ...]\n\n   \u4f7f\u7528 translet <class> \u8f49\u63db \n   \u6307\u5b9a\u4f5c\u70ba <document> \u7684 XML \u6587\u4ef6\u3002translet <class> \u4f4d\u65bc\n   \u4f7f\u7528\u8005\u7684 CLASSPATH \u4e2d\uff0c\u6216\u9078\u64c7\u6027\u6307\u5b9a\u7684 <jarfile> \u4e2d\u3002\n\u9078\u9805\n   -j <jarfile>    \u6307\u5b9a\u7528\u4f86\u8f09\u5165 translet \u7684 jar \u6a94\u6848\n   -x              \u958b\u555f\u984d\u5916\u7684\u9664\u932f\u8a0a\u606f\u8f38\u51fa\n   -s              \u505c\u7528\u547c\u53eb System.exit\n   -n <iterations> \u57f7\u884c\u8f49\u63db <iterations> \u6b21\u4ee5\u53ca\n                   \u986f\u793a\u8a2d\u5b9a\u6a94\u8cc7\u8a0a\n   -u <document_url> \u6307\u5b9a XML \u8f38\u5165\u6587\u4ef6\u70ba URL\n"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x49

    aput-object v0, p0, v1

    const-string v0, "STRAY_SORT_ERR"

    const-string v1, "<xsl:sort> \u53ea\u80fd\u7528\u5728 <xsl:for-each> \u6216 <xsl:apply-templates> \u5167\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4a

    aput-object v0, p0, v1

    const-string v0, "UNSUPPORTED_ENCODING"

    const-string v1, "\u6b64 JVM \u4e0d\u652f\u63f4\u8f38\u51fa\u7de8\u78bc \'\'{0}\'\'\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4b

    aput-object v0, p0, v1

    const-string v0, "SYNTAX_ERR"

    const-string v1, "\'\'{0}\'\' \u4e2d\u6709\u8a9e\u6cd5\u932f\u8aa4\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4c

    aput-object v0, p0, v1

    const-string v0, "CONSTRUCTOR_NOT_FOUND"

    const-string v1, "\u627e\u4e0d\u5230\u5916\u90e8\u5efa\u69cb\u5b50 \'\'{0}\'\'\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4d

    aput-object v0, p0, v1

    const-string v0, "NO_JAVA_FUNCT_THIS_REF"

    const-string v1, "\u975e\u975c\u614b Java \u51fd\u6578 \'\'{0}\'\' \u7684\u7b2c\u4e00\u500b\u5f15\u6578\u4e0d\u662f\u6709\u6548\u7684\u7269\u4ef6\u53c3\u7167\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4e

    aput-object v0, p0, v1

    const-string v0, "TYPE_CHECK_ERR"

    const-string v1, "\u6aa2\u67e5\u8868\u793a\u5f0f \'\'{0}\'\' \u7684\u985e\u578b\u6642\u767c\u751f\u932f\u8aa4\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4f

    aput-object v0, p0, v1

    const-string v0, "TYPE_CHECK_UNK_LOC_ERR"

    const-string v1, "\u5728\u4e0d\u660e\u4f4d\u7f6e\u6aa2\u67e5\u8868\u793a\u5f0f\u7684\u985e\u578b\u6642\uff0c\u767c\u751f\u932f\u8aa4\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x50

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_CMDLINE_OPTION_ERR"

    const-string v1, "\u6307\u4ee4\u884c\u9078\u9805 \'\'{0}\'\' \u7121\u6548\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x51

    aput-object v0, p0, v1

    const-string v0, "CMDLINE_OPT_MISSING_ARG_ERR"

    const-string v1, "\u6307\u4ee4\u884c\u9078\u9805 \'\'{0}\'\' \u907a\u6f0f\u5fc5\u8981\u7684\u5f15\u6578\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x52

    aput-object v0, p0, v1

    const-string v0, "WARNING_PLUS_WRAPPED_MSG"

    const-string v1, "\u8b66\u544a\uff1a\'\'{0}\'\'\n       \uff1a{1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x53

    aput-object v0, p0, v1

    const-string v0, "WARNING_MSG"

    const-string v1, "\u8b66\u544a\uff1a\'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x54

    aput-object v0, p0, v1

    const-string v0, "FATAL_ERR_PLUS_WRAPPED_MSG"

    const-string v1, "\u56b4\u91cd\u932f\u8aa4\uff1a\'\'{0}\'\'\n           \uff1a{1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x55

    aput-object v0, p0, v1

    const-string v0, "FATAL_ERR_MSG"

    const-string v1, "\u56b4\u91cd\u932f\u8aa4\uff1a\'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x56

    aput-object v0, p0, v1

    const-string v0, "ERROR_PLUS_WRAPPED_MSG"

    const-string v1, "\u932f\u8aa4\uff1a\'\'{0}\'\'\n     \uff1a{1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x57

    aput-object v0, p0, v1

    const-string v0, "ERROR_MSG"

    const-string v1, "\u932f\u8aa4\uff1a\'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x58

    aput-object v0, p0, v1

    const-string v0, "TRANSFORM_WITH_TRANSLET_STR"

    const-string v1, "\u4f7f\u7528 translet \'\'{0}\'\' \u9032\u884c\u8f49\u63db "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x59

    aput-object v0, p0, v1

    const-string v0, "TRANSFORM_WITH_JAR_STR"

    const-string v1, "\u4f7f\u7528\u4f86\u81ea jar \u6a94\u6848 \'\'{1}\'\' \u7684 translet \'\'{0}\'\' \u9032\u884c\u8f49\u63db"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x5a

    aput-object v0, p0, v1

    const-string v0, "COULD_NOT_CREATE_TRANS_FACT"

    const-string v1, "\u7121\u6cd5\u5efa\u7acb TransformerFactory \u985e\u5225 \'\'{0}\'\' \u7684\u5be6\u4f8b\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x5b

    aput-object v0, p0, v1

    const-string v0, "COMPILER_ERROR_KEY"

    const-string v1, "\u7de8\u8b6f\u5668\u932f\u8aa4\uff1a"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x5c

    aput-object v0, p0, v2

    const-string v0, "COMPILER_WARNING_KEY"

    const-string v2, "\u7de8\u8b6f\u5668\u8b66\u544a\uff1a"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x5d

    aput-object v0, p0, v2

    const-string v0, "RUNTIME_ERROR_KEY"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x5e

    aput-object v0, p0, v1

    return-object p0
.end method
