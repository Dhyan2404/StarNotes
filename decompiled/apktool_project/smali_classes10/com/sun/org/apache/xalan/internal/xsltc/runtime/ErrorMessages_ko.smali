.class public Lcom/sun/org/apache/xalan/internal/xsltc/runtime/ErrorMessages_ko;
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

    const-string v1, "\'\'{0}\'\'\uc758 \ub7f0\ud0c0\uc784 \ub0b4\ubd80 \uc624\ub958"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "RUN_TIME_COPY_ERR"

    const-string v1, "<xsl:copy> \uc2e4\ud589\uc2dc \ub7f0\ud0c0\uc784 \uc624\ub958\uac00 \ubc1c\uc0dd\ud588\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const-string v0, "DATA_CONVERSION_ERR"

    const-string v1, "\'\'{0}\'\'\uc5d0\uc11c \'\'{1}\'\'\uc758 \ubcc0\ud658\uc774 \uc62c\ubc14\ub974\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p0, v1

    const-string v0, "EXTERNAL_FUNC_ERR"

    const-string v1, "XSLTC\uc5d0\uc11c \'\'{0}\'\' \uc678\ubd80 \ud568\uc218\ub97c \uc9c0\uc6d0\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p0, v1

    const-string v0, "EQUALITY_EXPR_ERR"

    const-string v1, "\ub4f1\uc2dd\uc5d0 \uc54c \uc218 \uc5c6\ub294 \uc778\uc218 \uc720\ud615\uc774 \uc788\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, p0, v1

    const-string v0, "INVALID_ARGUMENT_ERR"

    const-string v1, "\'\'{1}\'\'\uc5d0 \ub300\ud55c \ud638\ucd9c\uc5d0\uc11c \uc798\ubabb\ub41c \uc778\uc218 \uc720\ud615 \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, p0, v1

    const-string v0, "FORMAT_NUMBER_ERR"

    const-string v1, "\'\'{1}\'\' \ud328\ud134\uc744 \uc0ac\uc6a9\ud558\uc5ec \'\'{0}\'\' \uc22b\uc790 \ud3ec\ub9f7\uc744 \uc2dc\ub3c4 \uc911\uc785\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, p0, v1

    const-string v0, "ITERATOR_CLONE_ERR"

    const-string v1, "\'\'{0}\'\' \ubc18\ubcf5\uae30\ub97c \ubcf5\uc81c\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, p0, v1

    const-string v0, "AXIS_SUPPORT_ERR"

    const-string v1, "\'\'{0}\'\' \ucd95\uc5d0 \ub300\ud55c \ubc18\ubcf5\uae30\uac00 \uc9c0\uc6d0\ub418\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x8

    aput-object v0, p0, v1

    const-string v0, "TYPED_AXIS_SUPPORT_ERR"

    const-string v1, "\'\'{0}\'\' \uc720\ud615\ud654\ub41c \ucd95\uc5d0 \ub300\ud55c \ubc18\ubcf5\uae30\uac00 \uc9c0\uc6d0\ub418\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x9

    aput-object v0, p0, v1

    const-string v0, "STRAY_ATTRIBUTE_ERR"

    const-string v1, "\'\'{0}\'\' \uc18d\uc131\uc774 \uc694\uc18c\uc758 \uc678\ubd80\uc5d0 \uc788\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xa

    aput-object v0, p0, v1

    const-string v0, "STRAY_NAMESPACE_ERR"

    const-string v1, "\'\'{0}\'\'=\'\'{1}\'\' \uc774\ub984 \uacf5\uac04 \uc120\uc5b8\uc774 \uc694\uc18c\uc758 \uc678\ubd80\uc5d0 \uc788\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xb

    aput-object v0, p0, v1

    const-string v0, "NAMESPACE_PREFIX_ERR"

    const-string v1, "\'\'{0}\'\' \uc811\ub450\ubd80\uc5d0 \ub300\ud55c \uc774\ub984 \uacf5\uac04\uc774 \uc120\uc5b8\ub418\uc9c0 \uc54a\uc558\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xc

    aput-object v0, p0, v1

    const-string v0, "DOM_ADAPTER_INIT_ERR"

    const-string v1, "Source DOM\uc758 \uc798\ubabb\ub41c \uc720\ud615\uc744 \uc0ac\uc6a9\ud558\uc5ec DOMAdapter\uac00 \uc791\uc131\ub418\uc5c8\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xd

    aput-object v0, p0, v1

    const-string v0, "PARSER_DTD_SUPPORT_ERR"

    const-string v1, "\uc0ac\uc6a9 \uc911\uc778 SAX \uad6c\ubb38 \ubd84\uc11d\uae30\uac00 DTD \uc120\uc5b8 \uc774\ubca4\ud2b8\ub97c \ucc98\ub9ac\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xe

    aput-object v0, p0, v1

    const-string v0, "NAMESPACES_SUPPORT_ERR"

    const-string v1, "\uc0ac\uc6a9 \uc911\uc778 SAX \uad6c\ubb38 \ubd84\uc11d\uae30\uac00 XML \uc774\ub984 \uacf5\uac04\uc744 \uc9c0\uc6d0\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xf

    aput-object v0, p0, v1

    const-string v0, "CANT_RESOLVE_RELATIVE_URI_ERR"

    const-string v1, "\'\'{0}\'\' URI \ucc38\uc870\ub97c \ubd84\uc11d\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x10

    aput-object v0, p0, v1

    return-object p0
.end method
