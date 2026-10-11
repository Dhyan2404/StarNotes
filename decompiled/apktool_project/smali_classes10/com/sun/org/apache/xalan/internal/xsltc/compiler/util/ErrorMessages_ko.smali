.class public Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMessages_ko;
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

    const-string v1, "\ud558\ub098 \uc774\uc0c1\uc758 \uc2a4\ud0c0\uc77c \uc2dc\ud2b8\uac00 \ub3d9\uc77c\ud55c \ud30c\uc77c\uc5d0\uc11c \uc815\uc758\ub418\uc5c8\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "TEMPLATE_REDEF_ERR"

    const-string v1, "\'\'{0}\'\' \ud15c\ud50c\ub9ac\ud2b8\uac00 \uc774\ubbf8 \uc774 \uc2a4\ud0c0\uc77c \uc2dc\ud2b8\uc5d0\uc11c \uc815\uc758\ub418\uc5c8\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const-string v0, "TEMPLATE_UNDEF_ERR"

    const-string v1, "\'\'{0}\'\' \ud15c\ud50c\ub9ac\ud2b8\uac00 \uc774 \uc2a4\ud0c0\uc77c \uc2dc\ud2b8\uc5d0\uc11c \uc815\uc758\ub418\uc9c0 \uc54a\uc558\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p0, v1

    const-string v0, "VARIABLE_REDEF_ERR"

    const-string v1, "\'\'{0}\'\' \ubcc0\uc218\uac00 \ub3d9\uc77c\ud55c \ubc94\uc704 \uc548\uc5d0\uc11c \uc5ec\ub7ec \ubc88 \uc815\uc758\ub418\uc5c8\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p0, v1

    const-string v0, "VARIABLE_UNDEF_ERR"

    const-string v1, "\'\'{0}\'\' \ub9e4\uac1c\ubcc0\uc218 \ub610\ub294 \ubcc0\uc218\uac00 \uc815\uc758\ub418\uc9c0 \uc54a\uc558\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, p0, v1

    const-string v0, "CLASS_NOT_FOUND_ERR"

    const-string v1, "\'\'{0}\'\' \ud074\ub798\uc2a4\ub97c \ucc3e\uc744 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, p0, v1

    const-string v0, "METHOD_NOT_FOUND_ERR"

    const-string v1, "\'\'{0}\'\' \uc678\ubd80 \uba54\uc18c\ub4dc\ub97c \ucc3e\uc744 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4(public\uc774\uc5b4\uc57c \ud569\ub2c8\ub2e4)."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, p0, v1

    const-string v0, "ARGUMENT_CONVERSION_ERR"

    const-string v1, "\'\'{0}\'\' \uba54\uc18c\ub4dc\ub85c\uc758 \ud638\ucd9c\uc5d0\uc11c \uc778\uc218/\ub9ac\ud134 \uc720\ud615\uc744 \ubcc0\ud658\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, p0, v1

    const-string v0, "FILE_NOT_FOUND_ERR"

    const-string v1, "\'\'{0}\'\' URI \ub610\ub294 \ud30c\uc77c\uc744 \ucc3e\uc744 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x8

    aput-object v0, p0, v1

    const-string v0, "INVALID_URI_ERR"

    const-string v1, "\'\'{0}\'\' URI\uac00 \uc62c\ubc14\ub974\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x9

    aput-object v0, p0, v1

    const-string v0, "FILE_ACCESS_ERR"

    const-string v1, "\'\'{0}\'\' URI \ub610\ub294 \ud30c\uc77c\uc744 \uc5f4 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xa

    aput-object v0, p0, v1

    const-string v0, "MISSING_ROOT_ERR"

    const-string v1, "<xsl:stylesheet> \ub610\ub294 <xsl:transform> \uc694\uc18c\uac00 \uc608\uc0c1\ub429\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xb

    aput-object v0, p0, v1

    const-string v0, "NAMESPACE_UNDEF_ERR"

    const-string v1, "\'\'{0}\'\' \uc774\ub984 \uacf5\uac04 \uc811\ub450\ubd80\uac00 \uc120\uc5b8\ub418\uc9c0 \uc54a\uc558\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xc

    aput-object v0, p0, v1

    const-string v0, "FUNCTION_RESOLVE_ERR"

    const-string v1, "\'\'{0}\'\' \ud568\uc218\uc5d0 \ub300\ud55c \ud638\ucd9c\uc744 \ubd84\uc11d\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xd

    aput-object v0, p0, v1

    const-string v0, "NEED_LITERAL_ERR"

    const-string v1, "\'\'{0}\'\'\uc5d0 \ub300\ud55c \uc778\uc218\ub294 \ub9ac\ud130\ub7f4 \ubb38\uc790\uc5f4\uc774\uc5b4\uc57c \ud569\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xe

    aput-object v0, p0, v1

    const-string v0, "XPATH_PARSER_ERR"

    const-string v1, "\'\'{0}\'\' XPath \ud45c\ud604\uc2dd \uad6c\ubb38 \ubd84\uc11d \uc911 \uc624\ub958\uac00 \ubc1c\uc0dd\ud588\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xf

    aput-object v0, p0, v1

    const-string v0, "REQUIRED_ATTR_ERR"

    const-string v1, "\'\'{0}\'\' \ud544\uc218 \uc18d\uc131\uc774 \ub204\ub77d\ub418\uc5c8\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x10

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_CHAR_ERR"

    const-string v1, "XPath \ud45c\ud604\uc2dd\uc758 \'\'{0}\'\' \ubb38\uc790\uac00 \uc720\ud6a8\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x11

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_PI_ERR"

    const-string v1, "\ucc98\ub9ac \uba85\ub839\uc5b4\uc5d0 \ub300\ud55c \'\'{0}\'\' \uc774\ub984\uc774 \uc720\ud6a8\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x12

    aput-object v0, p0, v1

    const-string v0, "STRAY_ATTRIBUTE_ERR"

    const-string v1, "\'\'{0}\'\' \uc18d\uc131\uc774 \uc694\uc18c\uc758 \uc678\ubd80\uc5d0 \uc788\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x13

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_ATTRIBUTE_ERR"

    const-string v1, "\'\'{0}\'\' \uc18d\uc131\uc774 \uc720\ud6a8\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x14

    aput-object v0, p0, v1

    const-string v0, "CIRCULAR_INCLUDE_ERR"

    const-string v1, "import/include \uac00 \uc21c\ud658\ub429\ub2c8\ub2e4. \'\'{0}\'\' \uc2a4\ud0c0\uc77c \uc2dc\ud2b8\uac00 \uc774\ubbf8 \ub85c\ub4dc\ub418\uc5c8\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x15

    aput-object v0, p0, v1

    const-string v0, "RESULT_TREE_SORT_ERR"

    const-string v1, "\uacb0\uacfc \ud2b8\ub9ac \ub2e8\ud3b8\uc744 \uc815\ub82c\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4(<xsl:sort> \uc694\uc18c\uac00 \ubb34\uc2dc\ub429\ub2c8\ub2e4). \uacb0\uacfc \ud2b8\ub9ac\ub97c \uc791\uc131\ud560 \ub54c \ub178\ub4dc\ub97c \uc815\ub82c\ud574\uc57c \ud569\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x16

    aput-object v0, p0, v1

    const-string v0, "SYMBOLS_REDEF_ERR"

    const-string v1, "\'\'{0}\'\' 10\uc9c4\uc218 \ud3ec\ub9f7\ud305\uc774 \uc774\ubbf8 \uc815\uc758\ub418\uc5b4 \uc788\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x17

    aput-object v0, p0, v1

    const-string v0, "XSL_VERSION_ERR"

    const-string v1, "XSLTC\uc5d0\uc11c \'\'{0}\'\' XSL \ubc84\uc804\uc744 \uc9c0\uc6d0\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x18

    aput-object v0, p0, v1

    const-string v0, "CIRCULAR_VARIABLE_ERR"

    const-string v1, "\'\'{0}\'\'\uc5d0\uc11c \ubcc0\uc218/\ub9e4\uac1c\ubcc0\uc218 \ucc38\uc870\uac00 \uc21c\ud658\ub429\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x19

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_BINARY_OP_ERR"

    const-string v1, "2\uc9c4 \ud45c\ud604\uc2dd\uc5d0 \ub300\ud55c \uc5f0\uc0b0\uc790\ub97c \uc54c \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1a

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_ARG_ERR"

    const-string v1, "\ud568\uc218 \ud638\ucd9c\uc5d0 \ub300\ud55c \uc778\uc218\uac00 \uc720\ud6a8\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1b

    aput-object v0, p0, v1

    const-string v0, "DOCUMENT_ARG_ERR"

    const-string v1, "document() \ud568\uc218\uc5d0 \ub300\ud55c \ub450 \ubc88\uc9f8 \uc778\uc218\ub294 node-set\uc5ec\uc57c \ud569\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1c

    aput-object v0, p0, v1

    const-string v0, "MISSING_WHEN_ERR"

    const-string v1, "<xsl:choose>\uc5d0 \ucd5c\uc18c \ud558\ub098\uc758 <xsl:when> \uc694\uc18c\uac00 \ud544\uc694\ud569\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1d

    aput-object v0, p0, v1

    const-string v0, "MULTIPLE_OTHERWISE_ERR"

    const-string v1, "<xsl:choose>\uc5d0 \ud558\ub098\uc758 <xsl:otherwise> \uc694\uc18c\ub9cc\uc774 \ud5c8\uc6a9\ub429\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1e

    aput-object v0, p0, v1

    const-string v0, "STRAY_OTHERWISE_ERR"

    const-string v1, "<xsl:otherwise>\ub294 <xsl:choose>\uc5d0\uc11c\ub9cc \uc0ac\uc6a9\ub420 \uc218 \uc788\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1f

    aput-object v0, p0, v1

    const-string v0, "STRAY_WHEN_ERR"

    const-string v1, "<xsl:when>\uc740 <xsl:choose>\uc5d0\uc11c\ub9cc \uc0ac\uc6a9\ub420 \uc218 \uc788\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x20

    aput-object v0, p0, v1

    const-string v0, "WHEN_ELEMENT_ERR"

    const-string v1, "<xsl:when> \ubc0f <xsl:otherwise> \uc694\uc18c\ub9cc\uc774 <xsl:choose>\uc5d0\uc11c \ud5c8\uc6a9\ub429\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x21

    aput-object v0, p0, v1

    const-string v0, "UNNAMED_ATTRIBSET_ERR"

    const-string v1, "<xsl:attribute-set>\uc774 \'name\' \uc18d\uc131\uc5d0\uc11c \ub204\ub77d\ub418\uc5c8\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x22

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_CHILD_ERR"

    const-string v1, "\ud558\uc704 \uc694\uc18c\uac00 \uc720\ud6a8\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x23

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_ELEM_NAME_ERR"

    const-string v1, "\'\'{0}\'\' \uc694\uc18c\ub97c \ud638\ucd9c\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x24

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_ATTR_NAME_ERR"

    const-string v1, "\'\'{0}\'\' \uc18d\uc131\uc744 \ud638\ucd9c\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x25

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_TEXT_NODE_ERR"

    const-string v1, "\ud14d\uc2a4\ud2b8 \ub370\uc774\ud130\uac00 \ucd5c\uc0c1\uc704 \ub808\ubca8 <xsl:stylesheet> \uc694\uc18c\uc758 \uc678\ubd80\uc5d0 \uc788\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x26

    aput-object v0, p0, v1

    const-string v0, "SAX_PARSER_CONFIG_ERR"

    const-string v1, "JAXP \uad6c\ubb38 \ubd84\uc11d\uae30\uac00 \uc81c\ub300\ub85c \uad6c\uc131\ub418\uc9c0 \uc54a\uc558\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x27

    aput-object v0, p0, v1

    const-string v0, "INTERNAL_ERR"

    const-string v1, "\ubcf5\uad6c\ud560 \uc218 \uc5c6\ub294 XSLTC-\ub0b4\ubd80 \uc624\ub958: \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x28

    aput-object v0, p0, v1

    const-string v0, "UNSUPPORTED_XSL_ERR"

    const-string v1, "\'\'{0}\'\' XSL \uc694\uc18c\uac00 \uc9c0\uc6d0\ub418\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x29

    aput-object v0, p0, v1

    const-string v0, "UNSUPPORTED_EXT_ERR"

    const-string v1, "\'\'{0}\'\' XSLTC \ud655\uc7a5\uc790\ub97c \uc778\uc2dd\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2a

    aput-object v0, p0, v1

    const-string v0, "MISSING_XSLT_URI_ERR"

    const-string v1, "\uc785\ub825 \ubb38\uc11c\ub294 \uc2a4\ud0c0\uc77c \uc2dc\ud2b8\uac00 \uc544\ub2d9\ub2c8\ub2e4(XSL \uc774\ub984 \uacf5\uac04\uc774 \ub8e8\ud2b8 \uc694\uc18c\uc5d0\uc11c \uc120\uc5b8\ub418\uc9c0 \uc54a\uc558\uc2b5\ub2c8\ub2e4)."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2b

    aput-object v0, p0, v1

    const-string v0, "MISSING_XSLT_TARGET_ERR"

    const-string v1, "\'\'{0}\'\' \uc2a4\ud0c0\uc77c \uc2dc\ud2b8 \ub300\uc0c1\uc744 \ucc3e\uc744 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2c

    aput-object v0, p0, v1

    const-string v0, "NOT_IMPLEMENTED_ERR"

    const-string v1, "\uad6c\ud604\ub418\uc9c0 \uc54a\uc558\uc74c: \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2d

    aput-object v0, p0, v1

    const-string v0, "NOT_STYLESHEET_ERR"

    const-string v1, "\uc785\ub825 \ubb38\uc11c\uc5d0 XSL \uc2a4\ud0c0\uc77c \uc2dc\ud2b8\uac00 \ud3ec\ud568\ub418\uc9c0 \uc54a\uc558\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2e

    aput-object v0, p0, v1

    const-string v0, "ELEMENT_PARSE_ERR"

    const-string v1, "\'\'{0}\'\' \uc694\uc18c\ub97c \uad6c\ubb38 \ubd84\uc11d\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2f

    aput-object v0, p0, v1

    const-string v0, "KEY_USE_ATTR_ERR"

    const-string v1, "<key>\uc758 use \uc18d\uc131\uc740 node, node-set, string \ub610\ub294 number\uc5ec\uc57c \ud569\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x30

    aput-object v0, p0, v1

    const-string v0, "OUTPUT_VERSION_ERR"

    const-string v1, "\ucd9c\ub825 XML \ubb38\uc11c \ubc84\uc804\uc740 1.0\uc774\uc5b4\uc57c \ud569\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x31

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_RELAT_OP_ERR"

    const-string v1, "\uad00\uacc4\uc2dd\uc5d0 \ub300\ud55c \uc5f0\uc0b0\uc790\ub97c \uc54c \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x32

    aput-object v0, p0, v1

    const-string v0, "ATTRIBSET_UNDEF_ERR"

    const-string v1, "\uc874\uc7ac\ud558\uc9c0 \uc54a\ub294 \uc18d\uc131 \uc138\ud2b8 \'\'{0}\'\' \uc0ac\uc6a9\uc744 \uc2dc\ub3c4 \uc911\uc785\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x33

    aput-object v0, p0, v1

    const-string v0, "ATTR_VAL_TEMPLATE_ERR"

    const-string v1, "\'\'{0}\'\' \uc18d\uc131\uac12 \ud15c\ud50c\ub9ac\ud2b8\ub97c \uad6c\ubb38 \ubd84\uc11d\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x34

    aput-object v0, p0, v1

    const-string v0, "UNKNOWN_SIG_TYPE_ERR"

    const-string v1, "\'\'{0}\'\' \ud074\ub798\uc2a4\uc5d0 \ub300\ud55c \uc11c\uba85\uc5d0 \uc54c \uc218 \uc5c6\ub294 \ub370\uc774\ud130 \uc720\ud615\uc774 \uc788\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x35

    aput-object v0, p0, v1

    const-string v0, "DATA_CONVERSION_ERR"

    const-string v1, "\ub370\uc774\ud130 \uc720\ud615\uc744 \'\'{0}\'\'\uc5d0\uc11c \'\'{1}\'\'(\uc73c)\ub85c \ubcc0\ud658\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x36

    aput-object v0, p0, v1

    const-string v0, "NO_TRANSLET_CLASS_ERR"

    const-string v1, "\uc774 Templates\uc5d0\ub294 \uc62c\ubc14\ub978 translet \ud074\ub798\uc2a4 \uc815\uc758\uac00 \ud3ec\ud568\ub418\uc5b4 \uc788\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x37

    aput-object v0, p0, v1

    const-string v0, "NO_MAIN_TRANSLET_ERR"

    const-string v1, "\uc774 Templates\uc5d0\ub294 \'\'{0}\'\' \uc774\ub984\uc778 \ud074\ub798\uc2a4\uac00 \ud3ec\ud568\ub418\uc5b4 \uc788\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x38

    aput-object v0, p0, v1

    const-string v0, "TRANSLET_CLASS_ERR"

    const-string v1, "\'\'{0}\'\' translet \ud074\ub798\uc2a4\ub97c \ub85c\ub4dc\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x39

    aput-object v0, p0, v1

    const-string v0, "TRANSLET_OBJECT_ERR"

    const-string v1, "translet \ud074\ub798\uc2a4\ub294 \ub85c\ub4dc\ub418\uc5c8\uc9c0\ub9cc translet \uc778\uc2a4\ud134\uc2a4\ub97c \uc791\uc131\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3a

    aput-object v0, p0, v1

    const-string v0, "ERROR_LISTENER_NULL_ERR"

    const-string v1, "\'\'{0}\'\'\uc5d0 \ub300\ud55c ErrorListener\ub97c \ub110(null)\ub85c \uc124\uc815\ud558\ub824\uace0 \uc2dc\ub3c4 \uc911\uc785\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3b

    aput-object v0, p0, v1

    const-string v0, "JAXP_UNKNOWN_SOURCE_ERR"

    const-string v1, "XSLTC\uc5d0\uc11c StreamSource, SAXSource \ubc0f DOMSource\ub9cc\uc744 \uc9c0\uc6d0\ud569\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3c

    aput-object v0, p0, v1

    const-string v0, "JAXP_NO_SOURCE_ERR"

    const-string v1, "\'\'{0}\'\'(\uc73c)\ub85c \ud328\uc2a4\ub41c Source \uc624\ube0c\uc81d\ud2b8\uc5d0 \ucee8\ud150\uce20\uac00 \uc5c6\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3d

    aput-object v0, p0, v1

    const-string v0, "JAXP_COMPILE_ERR"

    const-string v1, "\uc2a4\ud0c0\uc77c \uc2dc\ud2b8\ub97c \ucef4\ud30c\uc77c\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3e

    aput-object v0, p0, v1

    const-string v0, "JAXP_INVALID_ATTR_ERR"

    const-string v1, "TransformerFactory \'\'{0}\'\' \uc18d\uc131\uc744 \uc778\uc2dd\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3f

    aput-object v0, p0, v1

    const-string v0, "JAXP_SET_RESULT_ERR"

    const-string v1, "setResult()\ub294 startDocument()\uc5d0 \uc55e\uc11c \ud638\ucd9c\ub418\uc5b4\uc57c \ud569\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x40

    aput-object v0, p0, v1

    const-string v0, "JAXP_NO_TRANSLET_ERR"

    const-string v1, "Transformer\uc5d0 \uc694\uc57d\ub41c translet \uc624\ube0c\uc81d\ud2b8\uac00 \uc5c6\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x41

    aput-object v0, p0, v1

    const-string v0, "JAXP_NO_HANDLER_ERR"

    const-string v1, "\ubcc0\ud658 \uacb0\uacfc\uc5d0 \ub300\ud55c \ucd9c\ub825 \ud578\ub4e4\ub7ec\uac00 \uc815\uc758\ub418\uc9c0 \uc54a\uc558\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x42

    aput-object v0, p0, v1

    const-string v0, "JAXP_NO_RESULT_ERR"

    const-string v1, "\'\'{0}\'\'(\uc73c)\ub85c \ud328\uc2a4\ub41c Result \uc624\ube0c\uc81d\ud2b8\uac00 \uc62c\ubc14\ub974\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x43

    aput-object v0, p0, v1

    const-string v0, "JAXP_UNKNOWN_PROP_ERR"

    const-string v1, "\'\'{0}\'\' \uc798\ubabb\ub41c Transformer \ud2b9\uc131\uc5d0 \uc561\uc138\uc2a4\ub97c \uc2dc\ub3c4 \uc911\uc785\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x44

    aput-object v0, p0, v1

    const-string v0, "SAX2DOM_ADAPTER_ERR"

    const-string v1, "SAX2DOM \'\'{0}\'\' \uc5b4\ub311\ud130\ub97c \uc791\uc131\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x45

    aput-object v0, p0, v1

    const-string v0, "XSLTC_SOURCE_ERR"

    const-string v1, "XSLTCSource.build()\uac00 \uc124\uc815\ub41c \uc2dc\uc2a4\ud15c ID \uc5c6\uc774 \ud638\ucd9c\ub418\uc5c8\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x46

    aput-object v0, p0, v1

    const-string v0, "COMPILE_STDIN_ERR"

    const-string v1, "-i \uc635\uc158\uc740 -o \uc635\uc158\uacfc \ud568\uaed8 \uc0ac\uc6a9\ub418\uc5b4\uc57c \ud569\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x47

    aput-object v0, p0, v1

    const-string v0, "COMPILE_USAGE_STR"

    const-string v1, "SYNOPSIS\n   java com.sun.org.apache.xalan.internal.xsltc.cmdline.Compile [-o <output>]\n      [-d <directory>] [-j <jarfile>] [-p <package>]\n      [-n] [-x] [-s] [-u] [-v] [-h] { <stylesheet> | -i }\n\n\uc635\uc158\n   -o <output>\uc740   \uc0dd\uc131\ub41c translet\uc5d0 \uc774\ub984 <output>\uc744 \uc9c0\uc815\ud569\ub2c8\ub2e4.\n                   translet \uc774\ub984\uc740 \uae30\ubcf8\uac12\uc73c\ub85c\n                   <stylesheet> \uc774\ub984\uc5d0\uc11c \uac00\uc838\uc635\ub2c8\ub2e4. \uc774 \uc635\uc158\uc740\n                   \ub2e4\uc911 \uc2a4\ud0c0\uc77c \uc2dc\ud2b8 \ucef4\ud30c\uc77c \uc911\uc778 \uacbd\uc6b0 \ubb34\uc2dc\ub429\ub2c8\ub2e4.\n   -d <directory>\ub294 translet\uc758 \ub300\uc0c1 \ub514\ub809\ud1a0\ub9ac\ub97c \uc9c0\uc815\ud569\ub2c8\ub2e4. \n   -j <jarfile>\ub294  <jarfile>\ub85c \uc9c0\uc815\ub41c \n                   jar \ud30c\uc77c\uc758 \uc774\ub984\uc73c\ub85c translet \ud074\ub798\uc2a4\ub97c \ud328\ud0a4\uc9c0\ud569\ub2c8\ub2e4. \n   -p <package>\ub294  \uc0dd\uc131\ub41c \ubaa8\ub4e0 \n                   translet \ud074\ub798\uc2a4\uc758 \ud328\ud0a4\uc9c0 \uc774\ub984\uc758 \uc811\ub450\ubd80\ub97c \uc9c0\uc815\ud569\ub2c8\ub2e4.\n   -n\uc740            \ud15c\ud50c\ub9ac\ud2b8 \uc778\ub77c\uc774\ub2dd(\ud3c9\uade0\ubcf4\ub2e4 \uc88b\uc740 \n                   \uc131\ub2a5\uc744 \uc0dd\uc131)\uc744 \uc0ac\uc6a9 \uac00\ub2a5\ud558\uac8c \ud569\ub2c8\ub2e4.\n   -x\ub294            \ucd94\uac00 \ub514\ubc84\uae45 \uba54\uc2dc\uc9c0 \ucd9c\ub825\uc744 \uc2dc\uc791\ud569\ub2c8\ub2e4.\n   -s\ub294            System.exit \ud638\ucd9c\uc744 \uc0ac\uc6a9 \ubd88\uac00\ub2a5\ud558\uac8c \ud569\ub2c8\ub2e4.\n   -u\ub294            <stylesheet> \uc778\uc218\ub97c URL\ub85c \ud574\uc11d\ud569\ub2c8\ub2e4.\n   -i\ub294            stdin\uc73c\ub85c\ubd80\ud130 \uc2a4\ud0c0\uc77c \uc2dc\ud2b8\ub97c \uc77d\uc744 \uc218 \uc788\ub3c4\ub85d\n                   \ucef4\ud30c\uc77c\ub7ec\ub97c \uac15\uc81c \uc2e4\ud589\ud569\ub2c8\ub2e4.\n   -v\ub294            \ucef4\ud30c\uc77c\ub7ec\uc758 \ubc84\uc804\uc744 \uc778\uc1c4\ud569\ub2c8\ub2e4.\n   -h\ub294            \uc0ac\uc6a9\ubc95 \uba85\ub839\ubb38\uc744 \uc778\uc1c4\ud569\ub2c8\ub2e4.\n"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x48

    aput-object v0, p0, v1

    const-string v0, "TRANSFORM_USAGE_STR"

    const-string v1, "SYNOPSIS \n   java com.sun.org.apache.xalan.internal.xsltc.cmdline.Transform [-j <jarfile>]\n      [-x] [-s] [-n <iterations>] {-u <document_url> | <document>}\n      <class> [<param1>=<value1> ...]\n\n   translet <class>\ub97c \uc0ac\uc6a9\ud558\uc5ec <document>\ub85c \uc9c0\uc815\ub41c XML \ubb38\uc11c\ub97c \n   \ubcc0\ud658\ud569\ub2c8\ub2e4. translet <class> \ub294 \n   \uc0ac\uc6a9\uc790\uc758 CLASSPATH \ub098 \uc120\ud0dd\uc801\uc73c\ub85c \uc9c0\uc815\ub41c  <jarfile> \ub0b4\uc5d0 \uc788\uc2b5\ub2c8\ub2e4.\n\uc635\uc158\n   -j <jarfile>\ub294     \ub85c\ub4dc\ud560 translet\ub85c\ubd80\ud130 jarfile\uc744 \uc9c0\uc815\ud569\ub2c8\ub2e4.\n   -x\ub294               \ucd94\uac00 \ub514\ubc84\uae45 \uba54\uc2dc\uc9c0 \ucd9c\ub825\uc744 \uc2dc\uc791\ud569\ub2c8\ub2e4.\n   -s\ub294               System.exit \ud638\ucd9c\uc744 \uc0ac\uc6a9 \ubd88\uac00\ub2a5\ud558\uac8c \ud569\ub2c8\ub2e4.\n   -n <iterations>\uc740  <iterations> \ud69f\uc218\ub85c \ubcc0\ud658\uc744 \uc2e4\ud589\ud558\uba70\n                      \ud504\ub85c\ud30c\uc77c\ub9c1 \uc815\ubcf4\ub97c \ud45c\uc2dc\ud569\ub2c8\ub2e4.\n   -u <document_url>\ub294 XML \uc785\ub825 \ubb38\uc11c\ub97c URL\ub85c \uc9c0\uc815\ud569\ub2c8\ub2e4.\n"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x49

    aput-object v0, p0, v1

    const-string v0, "STRAY_SORT_ERR"

    const-string v1, "<xsl:sort>\ub294 <xsl:for-each> \ub610\ub294 <xsl:apply-templates>\uc5d0\uc11c\ub9cc \uc0ac\uc6a9\ub420 \uc218 \uc788\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4a

    aput-object v0, p0, v1

    const-string v0, "UNSUPPORTED_ENCODING"

    const-string v1, "\uc774 JVM\uc5d0\uc11c \'\'{0}\'\' \ucd9c\ub825 \uc778\ucf54\ub529\uc744 \uc9c0\uc6d0\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4b

    aput-object v0, p0, v1

    const-string v0, "SYNTAX_ERR"

    const-string v1, "\'\'{0}\'\'\uc5d0 \uad6c\ubb38 \uc624\ub958\uac00 \uc788\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4c

    aput-object v0, p0, v1

    const-string v0, "CONSTRUCTOR_NOT_FOUND"

    const-string v1, "\'\'{0}\'\' \uc678\ubd80 \uad6c\uc131\uc790\ub97c \ucc3e\uc744 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4d

    aput-object v0, p0, v1

    const-string v0, "NO_JAVA_FUNCT_THIS_REF"

    const-string v1, "non-static Java \ud568\uc218 \'\'{0}\'\'\uc758 \uccab \ubc88\uc9f8 \uc778\uc218\uac00 \uc62c\ubc14\ub978 \uc624\ube0c\uc81d\ud2b8 \ucc38\uc870\uac00 \uc544\ub2d9\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4e

    aput-object v0, p0, v1

    const-string v0, "TYPE_CHECK_ERR"

    const-string v1, "\'\'{0}\'\' \ud45c\ud604\uc2dd\uc758 \uc720\ud615\uc744 \uac80\uc0ac\ud558\ub294 \uc911 \uc624\ub958\uac00 \ubc1c\uc0dd\ud588\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4f

    aput-object v0, p0, v1

    const-string v0, "TYPE_CHECK_UNK_LOC_ERR"

    const-string v1, "\uc54c \uc218 \uc5c6\ub294 \uc704\uce58\uc5d0\uc11c \ud45c\ud604\uc2dd\uc758 \uc720\ud615\uc744 \uac80\uc0ac\ud558\ub294 \uc911 \uc624\ub958\uac00 \ubc1c\uc0dd\ud588\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x50

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_CMDLINE_OPTION_ERR"

    const-string v1, "\'\'{0}\'\' \uba85\ub839\ud589 \uc635\uc158\uc774 \uc62c\ubc14\ub974\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x51

    aput-object v0, p0, v1

    const-string v0, "CMDLINE_OPT_MISSING_ARG_ERR"

    const-string v1, "\'\'{0}\'\' \uba85\ub839\ud589 \uc635\uc158\uc5d0 \ud544\uc218 \uc778\uc218\uac00 \ub204\ub77d\ub418\uc5c8\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x52

    aput-object v0, p0, v1

    const-string v0, "WARNING_PLUS_WRAPPED_MSG"

    const-string v1, "\uacbd\uace0:  \'\'{0}\'\'\n       :{1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x53

    aput-object v0, p0, v1

    const-string v0, "WARNING_MSG"

    const-string v1, "\uacbd\uace0:  \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x54

    aput-object v0, p0, v1

    const-string v0, "FATAL_ERR_PLUS_WRAPPED_MSG"

    const-string v1, "\uc2ec\uac01\ud55c \uc624\ub958:  \'\'{0}\'\'\n           :{1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x55

    aput-object v0, p0, v1

    const-string v0, "FATAL_ERR_MSG"

    const-string v1, "\uc2ec\uac01\ud55c \uc624\ub958:  \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x56

    aput-object v0, p0, v1

    const-string v0, "ERROR_PLUS_WRAPPED_MSG"

    const-string v1, "\uc624\ub958:  \'\'{0}\'\'\n     :{1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x57

    aput-object v0, p0, v1

    const-string v0, "ERROR_MSG"

    const-string v1, "\uc624\ub958:  \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x58

    aput-object v0, p0, v1

    const-string v0, "TRANSFORM_WITH_TRANSLET_STR"

    const-string v1, "\'\'{0}\'\' translet\uc744 \uc0ac\uc6a9\ud558\uc5ec \ubcc0\ud658 "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x59

    aput-object v0, p0, v1

    const-string v0, "TRANSFORM_WITH_JAR_STR"

    const-string v1, "\'\'{1}\'\' jar \ud30c\uc77c\uc5d0\uc11c \'\'{0}\'\' translet\uc744 \uc0ac\uc6a9\ud558\uc5ec \ubcc0\ud658"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x5a

    aput-object v0, p0, v1

    const-string v0, "COULD_NOT_CREATE_TRANS_FACT"

    const-string v1, "TransformerFactory \ud074\ub798\uc2a4 \'\'{0}\'\'\uc758 \uc778\uc2a4\ud134\uc2a4\ub97c \uc791\uc131\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x5b

    aput-object v0, p0, v1

    const-string v0, "COMPILER_ERROR_KEY"

    const-string v1, "\ucef4\ud30c\uc77c\ub7ec \uc624\ub958:"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x5c

    aput-object v0, p0, v1

    const-string v0, "COMPILER_WARNING_KEY"

    const-string v1, "\ucef4\ud30c\uc77c\ub7ec \uacbd\uace0:"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x5d

    aput-object v0, p0, v1

    const-string v0, "RUNTIME_ERROR_KEY"

    const-string v1, "Translet \uc624\ub958:"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x5e

    aput-object v0, p0, v1

    return-object p0
.end method
