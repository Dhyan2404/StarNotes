.class public Lnet/sf/saxon/lib/NamespaceConstant;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ANONYMOUS:Ljava/lang/String; = "http://ns.saxonica.com/anonymous-type"

.field public static final ARRAY_FUNCTIONS:Ljava/lang/String; = "http://www.w3.org/2005/xpath-functions/array"

.field public static final CODEPOINT_COLLATION_URI:Ljava/lang/String; = "http://www.w3.org/2005/xpath-functions/collation/codepoint"

.field public static final DOT_NET_TYPE:Ljava/lang/String; = "http://saxon.sf.net/clitype"

.field public static final ERR:Ljava/lang/String; = "http://www.w3.org/2005/xqt-errors"

.field public static final EXPATH_ZIP:Ljava/lang/String; = "http://expath.org/ns/zip"

.field public static final EXSLT_COMMON:Ljava/lang/String; = "http://exslt.org/common"

.field public static final EXSLT_DATES_AND_TIMES:Ljava/lang/String; = "http://exslt.org/dates-and-times"

.field public static final EXSLT_MATH:Ljava/lang/String; = "http://exslt.org/math"

.field public static final EXSLT_RANDOM:Ljava/lang/String; = "http://exslt.org/random"

.field public static final EXSLT_SETS:Ljava/lang/String; = "http://exslt.org/sets"

.field public static final FN:Ljava/lang/String; = "http://www.w3.org/2005/xpath-functions"

.field public static final GLOBAL_JS:Ljava/lang/String; = "http://saxonica.com/ns/globalJS"

.field public static final HTML5_CASE_BLIND_COLLATION_URI:Ljava/lang/String; = "http://www.w3.org/2005/xpath-functions/collation/html-ascii-case-insensitive"

.field public static final IXSL:Ljava/lang/String; = "http://saxonica.com/ns/interactiveXSLT"

.field public static final JAVA_TYPE:Ljava/lang/String; = "http://saxon.sf.net/java-type"

.field public static final LOCAL:Ljava/lang/String; = "http://www.w3.org/2005/xquery-local-functions"

.field public static final MAP_FUNCTIONS:Ljava/lang/String; = "http://www.w3.org/2005/xpath-functions/map"

.field public static final MATH:Ljava/lang/String; = "http://www.w3.org/2005/xpath-functions/math"

.field public static final MATHML:Ljava/lang/String; = "http://www.w3.org/1998/Math/MathML"

.field public static final NULL:Ljava/lang/String; = ""

.field public static final OBJECT_MODEL_AXIOM:Ljava/lang/String; = "http://ws.apache.org/jaxp/xpath/axiom"

.field public static final OBJECT_MODEL_DOM4J:Ljava/lang/String; = "http://www.dom4j.org/jaxp/xpath/dom4j"

.field public static final OBJECT_MODEL_DOMINO:Ljava/lang/String; = "http://saxon.sf.net/object-model/domino"

.field public static final OBJECT_MODEL_DOT_NET_DOM:Ljava/lang/String; = "http://saxon.sf.net/object-model/dotnet/dom"

.field public static final OBJECT_MODEL_JDOM:Ljava/lang/String; = "http://jdom.org/jaxp/xpath/jdom"

.field public static final OBJECT_MODEL_SAXON:Ljava/lang/String; = "http://saxon.sf.net/jaxp/xpath/om"

.field public static final OBJECT_MODEL_XOM:Ljava/lang/String; = "http://www.xom.nu/jaxp/xpath/xom"

.field public static final OUTPUT:Ljava/lang/String; = "http://www.w3.org/2010/xslt-xquery-serialization"

.field public static final PHP:Ljava/lang/String; = "http://php.net/xsl"

.field public static final SAXON:Ljava/lang/String; = "http://saxon.sf.net/"

.field public static final SAXON6:Ljava/lang/String; = "http://icl.com/saxon"

.field public static final SAXON_CONFIGURATION:Ljava/lang/String; = "http://saxon.sf.net/ns/configuration"

.field public static final SAXON_GENERATED_VARIABLE:Ljava/lang/String; = "http://saxon.sf.net/generated-variable"

.field public static final SAXON_XSLT_EXPORT:Ljava/lang/String; = "http://ns.saxonica.com/xslt/export"

.field public static final SCHEMA:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema"

.field public static final SCHEMA_INSTANCE:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema-instance"

.field public static final SCHEMA_VERSIONING:Ljava/lang/String; = "http://www.w3.org/2007/XMLSchema-versioning"

.field public static final SCM:Ljava/lang/String; = "http://ns.saxonica.com/schema-component-model"

.field public static final SQL:Ljava/lang/String; = "http://saxon.sf.net/sql"

.field public static final SVG:Ljava/lang/String; = "http://www.w3.org/2000/svg"

.field public static final XHTML:Ljava/lang/String; = "http://www.w3.org/1999/xhtml"

.field public static final XLINK:Ljava/lang/String; = "http://www.w3.org/1999/xlink"

.field public static final XML:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"

.field public static final XMLNS:Ljava/lang/String; = "http://www.w3.org/2000/xmlns/"

.field public static final XQUERY:Ljava/lang/String; = "http://www.w3.org/2012/xquery"

.field public static final XSLT:Ljava/lang/String; = "http://www.w3.org/1999/XSL/Transform"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    invoke-static {p0}, Lnet/sf/saxon/value/Whitespace;->removeAllWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lnet/sf/saxon/value/Whitespace;->removeAllWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v0, v3

    if-ge v0, v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v0, v3

    if-ge v0, v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-le v0, v3, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v2, :cond_9

    move v0, v4

    move v3, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_7

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_6

    :cond_3
    if-lez v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v1

    if-ge v0, v6, :cond_4

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_6

    :cond_4
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_5

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_6

    :cond_5
    add-int/lit8 v3, v3, 0x1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    if-ge v3, v2, :cond_8

    goto :goto_1

    :cond_8
    move v1, v4

    :goto_1
    return v1

    :cond_9
    return v4
.end method

.method public static findSimilarNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-static {p0, v0}, Lnet/sf/saxon/lib/NamespaceConstant;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "http://www.w3.org/2001/XMLSchema"

    invoke-static {p0, v0}, Lnet/sf/saxon/lib/NamespaceConstant;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const-string v0, "http://www.w3.org/1999/XSL/Transform"

    invoke-static {p0, v0}, Lnet/sf/saxon/lib/NamespaceConstant;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    const-string v0, "http://www.w3.org/2001/XMLSchema-instance"

    invoke-static {p0, v0}, Lnet/sf/saxon/lib/NamespaceConstant;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    const-string v0, "http://www.w3.org/2005/xpath-functions"

    invoke-static {p0, v0}, Lnet/sf/saxon/lib/NamespaceConstant;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_4
    const-string v0, "http://saxon.sf.net/"

    invoke-static {p0, v0}, Lnet/sf/saxon/lib/NamespaceConstant;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-object v0

    :cond_5
    const-string v0, "http://exslt.org/common"

    invoke-static {p0, v0}, Lnet/sf/saxon/lib/NamespaceConstant;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v0

    :cond_6
    const-string v0, "http://exslt.org/math"

    invoke-static {p0, v0}, Lnet/sf/saxon/lib/NamespaceConstant;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    return-object v0

    :cond_7
    const-string v0, "http://exslt.org/dates-and-times"

    invoke-static {p0, v0}, Lnet/sf/saxon/lib/NamespaceConstant;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v0

    :cond_8
    const-string v0, "http://exslt.org/random"

    invoke-static {p0, v0}, Lnet/sf/saxon/lib/NamespaceConstant;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-object v0

    :cond_9
    const-string v0, "http://www.w3.org/1999/xhtml"

    invoke-static {p0, v0}, Lnet/sf/saxon/lib/NamespaceConstant;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    return-object v0

    :cond_a
    const-string v0, "http://www.w3.org/2005/xqt-errors"

    invoke-static {p0, v0}, Lnet/sf/saxon/lib/NamespaceConstant;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    :cond_b
    const-string v0, "http://saxon.sf.net/java-type"

    invoke-static {p0, v0}, Lnet/sf/saxon/lib/NamespaceConstant;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    return-object v0

    :cond_c
    const-string v0, "http://saxon.sf.net/clitype"

    invoke-static {p0, v0}, Lnet/sf/saxon/lib/NamespaceConstant;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    return-object v0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getConventionalPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "http://www.w3.org/2005/xpath-functions/math"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "http://www.w3.org/2001/XMLSchema-instance"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "http://saxon.sf.net/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "http://www.w3.org/2005/xqt-errors"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_6
    const-string v0, "http://www.w3.org/2005/xpath-functions/array"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v0, "http://www.w3.org/2005/xpath-functions"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_8
    const-string v0, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_9
    const-string v0, "http://www.w3.org/2005/xpath-functions/map"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_a
    const-string v0, "http://saxonica.com/ns/globalJS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_b
    const-string v0, "http://saxon.sf.net/generated-variable"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_c
    const-string v0, "http://saxonica.com/ns/interactiveXSLT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "math"

    return-object p0

    :pswitch_1
    const-string p0, "xml"

    return-object p0

    :pswitch_2
    const-string p0, "xsi"

    return-object p0

    :pswitch_3
    const-string p0, "xs"

    return-object p0

    :pswitch_4
    const-string p0, "saxon"

    return-object p0

    :pswitch_5
    const-string p0, "err"

    return-object p0

    :pswitch_6
    const-string p0, "array"

    return-object p0

    :pswitch_7
    const-string p0, "fn"

    return-object p0

    :pswitch_8
    const-string p0, "xsl"

    return-object p0

    :pswitch_9
    const-string p0, "map"

    return-object p0

    :pswitch_a
    const-string p0, "js"

    return-object p0

    :pswitch_b
    const-string p0, "vv"

    return-object p0

    :pswitch_c
    const-string p0, "ixsl"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x65991c59 -> :sswitch_c
        -0x424fc210 -> :sswitch_b
        -0x3b88c596 -> :sswitch_a
        -0x14fd9c60 -> :sswitch_9
        -0x12bfb8e5 -> :sswitch_8
        0xd8ac253 -> :sswitch_7
        0x3356af9d -> :sswitch_6
        0x4b6c13f5 -> :sswitch_5
        0x53b7a276 -> :sswitch_4
        0x55d5735c -> :sswitch_3
        0x631eabe6 -> :sswitch_2
        0x746833df -> :sswitch_1
        0x754a1144 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getUriForConventionalPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "saxon"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "array"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "math"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "ixsl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "xsl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "xsi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_6
    const-string v0, "xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v0, "map"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_8
    const-string v0, "err"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_9
    const-string v0, "xs"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_a
    const-string v0, "vv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_b
    const-string v0, "js"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_c
    const-string v0, "fn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "http://saxon.sf.net/"

    return-object p0

    :pswitch_1
    const-string p0, "http://www.w3.org/2005/xpath-functions/array"

    return-object p0

    :pswitch_2
    const-string p0, "http://www.w3.org/2005/xpath-functions/math"

    return-object p0

    :pswitch_3
    const-string p0, "http://saxonica.com/ns/interactiveXSLT"

    return-object p0

    :pswitch_4
    const-string p0, "http://www.w3.org/1999/XSL/Transform"

    return-object p0

    :pswitch_5
    const-string p0, "http://www.w3.org/2001/XMLSchema-instance"

    return-object p0

    :pswitch_6
    const-string p0, "http://www.w3.org/XML/1998/namespace"

    return-object p0

    :pswitch_7
    const-string p0, "http://www.w3.org/2005/xpath-functions/map"

    return-object p0

    :pswitch_8
    const-string p0, "http://www.w3.org/2005/xqt-errors"

    return-object p0

    :pswitch_9
    const-string p0, "http://www.w3.org/2001/XMLSchema"

    return-object p0

    :pswitch_a
    const-string p0, "http://saxon.sf.net/generated-variable"

    return-object p0

    :pswitch_b
    const-string p0, "http://saxonica.com/ns/globalJS"

    return-object p0

    :pswitch_c
    const-string p0, "http://www.w3.org/2005/xpath-functions"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0xcc8 -> :sswitch_c
        0xd49 -> :sswitch_b
        0xec0 -> :sswitch_a
        0xefb -> :sswitch_9
        0x18965 -> :sswitch_8
        0x1a55c -> :sswitch_7
        0x1d017 -> :sswitch_6
        0x1d0ce -> :sswitch_5
        0x1d0d1 -> :sswitch_4
        0x318bc8 -> :sswitch_3
        0x330708 -> :sswitch_2
        0x58c7259 -> :sswitch_1
        0x6827749 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isReserved(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://www.w3.org/2005/xpath-functions"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://www.w3.org/2005/xpath-functions/math"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://www.w3.org/2005/xpath-functions/map"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://www.w3.org/2005/xpath-functions/array"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://www.w3.org/2001/XMLSchema-instance"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://www.w3.org/2005/xqt-errors"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isReservedInQuery31(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "http://www.w3.org/2005/xpath-functions"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http://www.w3.org/2001/XMLSchema-instance"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http://www.w3.org/2005/xpath-functions/math"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http://www.w3.org/2012/xquery"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http://www.w3.org/2005/xpath-functions/map"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http://www.w3.org/2005/xpath-functions/array"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
