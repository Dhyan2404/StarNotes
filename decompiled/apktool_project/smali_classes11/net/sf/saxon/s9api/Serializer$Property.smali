.class public final enum Lnet/sf/saxon/s9api/Serializer$Property;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/s9api/Serializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Property"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sf/saxon/s9api/Serializer$Property;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sf/saxon/s9api/Serializer$Property;

.field public static final enum BUILD_TREE:Lnet/sf/saxon/s9api/Serializer$Property;

.field public static final enum BYTE_ORDER_MARK:Lnet/sf/saxon/s9api/Serializer$Property;

.field public static final enum CDATA_SECTION_ELEMENTS:Lnet/sf/saxon/s9api/Serializer$Property;

.field public static final enum DOCTYPE_PUBLIC:Lnet/sf/saxon/s9api/Serializer$Property;

.field public static final enum DOCTYPE_SYSTEM:Lnet/sf/saxon/s9api/Serializer$Property;

.field public static final enum ENCODING:Lnet/sf/saxon/s9api/Serializer$Property;

.field public static final enum ESCAPE_URI_ATTRIBUTES:Lnet/sf/saxon/s9api/Serializer$Property;

.field public static final enum HTML_VERSION:Lnet/sf/saxon/s9api/Serializer$Property;

.field public static final enum INCLUDE_CONTENT_TYPE:Lnet/sf/saxon/s9api/Serializer$Property;

.field public static final enum INDENT:Lnet/sf/saxon/s9api/Serializer$Property;

.field public static final enum ITEM_SEPARATOR:Lnet/sf/saxon/s9api/Serializer$Property;

.field public static final enum MEDIA_TYPE:Lnet/sf/saxon/s9api/Serializer$Property;

.field public static final enum METHOD:Lnet/sf/saxon/s9api/Serializer$Property;

.field public static final enum NORMALIZATION_FORM:Lnet/sf/saxon/s9api/Serializer$Property;

.field public static final enum OMIT_XML_DECLARATION:Lnet/sf/saxon/s9api/Serializer$Property;

.field public static final enum SAXON_ATTRIBUTE_ORDER:Lnet/sf/saxon/s9api/Serializer$Property;

.field public static final enum SAXON_CANONICAL:Lnet/sf/saxon/s9api/Serializer$Property;

.field public static final enum SAXON_CHARACTER_REPRESENTATION:Lnet/sf/saxon/s9api/Serializer$Property;

.field public static final enum SAXON_DOUBLE_SPACE:Lnet/sf/saxon/s9api/Serializer$Property;

.field public static final enum SAXON_INDENT_SPACES:Lnet/sf/saxon/s9api/Serializer$Property;

.field public static final enum SAXON_INTERNAL_DTD_SUBSET:Lnet/sf/saxon/s9api/Serializer$Property;

.field public static final enum SAXON_LINE_LENGTH:Lnet/sf/saxon/s9api/Serializer$Property;

.field public static final enum SAXON_NEWLINE:Lnet/sf/saxon/s9api/Serializer$Property;

.field public static final enum SAXON_RECOGNIZE_BINARY:Lnet/sf/saxon/s9api/Serializer$Property;

.field public static final enum SAXON_REQUIRE_WELL_FORMED:Lnet/sf/saxon/s9api/Serializer$Property;

.field public static final enum SAXON_STYLESHEET_VERSION:Lnet/sf/saxon/s9api/Serializer$Property;

.field public static final enum SAXON_SUPPLY_SOURCE_LOCATOR:Lnet/sf/saxon/s9api/Serializer$Property;

.field public static final enum SAXON_SUPPRESS_INDENTATION:Lnet/sf/saxon/s9api/Serializer$Property;

.field public static final enum SAXON_WRAP:Lnet/sf/saxon/s9api/Serializer$Property;

.field public static final enum STANDALONE:Lnet/sf/saxon/s9api/Serializer$Property;

.field public static final enum UNDECLARE_PREFIXES:Lnet/sf/saxon/s9api/Serializer$Property;

.field public static final enum USE_CHARACTER_MAPS:Lnet/sf/saxon/s9api/Serializer$Property;

.field public static final enum VERSION:Lnet/sf/saxon/s9api/Serializer$Property;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 37

    new-instance v1, Lnet/sf/saxon/s9api/Serializer$Property;

    move-object v0, v1

    const/4 v2, 0x0

    const-string v3, "method"

    const-string v4, "METHOD"

    invoke-direct {v1, v4, v2, v3}, Lnet/sf/saxon/s9api/Serializer$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lnet/sf/saxon/s9api/Serializer$Property;->METHOD:Lnet/sf/saxon/s9api/Serializer$Property;

    new-instance v2, Lnet/sf/saxon/s9api/Serializer$Property;

    move-object v1, v2

    const/4 v3, 0x1

    const-string v4, "version"

    const-string v5, "VERSION"

    invoke-direct {v2, v5, v3, v4}, Lnet/sf/saxon/s9api/Serializer$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lnet/sf/saxon/s9api/Serializer$Property;->VERSION:Lnet/sf/saxon/s9api/Serializer$Property;

    new-instance v3, Lnet/sf/saxon/s9api/Serializer$Property;

    move-object v2, v3

    const/4 v4, 0x2

    const-string v5, "encoding"

    const-string v6, "ENCODING"

    invoke-direct {v3, v6, v4, v5}, Lnet/sf/saxon/s9api/Serializer$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lnet/sf/saxon/s9api/Serializer$Property;->ENCODING:Lnet/sf/saxon/s9api/Serializer$Property;

    new-instance v4, Lnet/sf/saxon/s9api/Serializer$Property;

    move-object v3, v4

    const/4 v5, 0x3

    const-string v6, "omit-xml-declaration"

    const-string v7, "OMIT_XML_DECLARATION"

    invoke-direct {v4, v7, v5, v6}, Lnet/sf/saxon/s9api/Serializer$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lnet/sf/saxon/s9api/Serializer$Property;->OMIT_XML_DECLARATION:Lnet/sf/saxon/s9api/Serializer$Property;

    new-instance v5, Lnet/sf/saxon/s9api/Serializer$Property;

    move-object v4, v5

    const/4 v6, 0x4

    const-string v7, "standalone"

    const-string v8, "STANDALONE"

    invoke-direct {v5, v8, v6, v7}, Lnet/sf/saxon/s9api/Serializer$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lnet/sf/saxon/s9api/Serializer$Property;->STANDALONE:Lnet/sf/saxon/s9api/Serializer$Property;

    new-instance v6, Lnet/sf/saxon/s9api/Serializer$Property;

    move-object v5, v6

    const/4 v7, 0x5

    const-string v8, "doctype-public"

    const-string v9, "DOCTYPE_PUBLIC"

    invoke-direct {v6, v9, v7, v8}, Lnet/sf/saxon/s9api/Serializer$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lnet/sf/saxon/s9api/Serializer$Property;->DOCTYPE_PUBLIC:Lnet/sf/saxon/s9api/Serializer$Property;

    new-instance v7, Lnet/sf/saxon/s9api/Serializer$Property;

    move-object v6, v7

    const/4 v8, 0x6

    const-string v9, "doctype-system"

    const-string v10, "DOCTYPE_SYSTEM"

    invoke-direct {v7, v10, v8, v9}, Lnet/sf/saxon/s9api/Serializer$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lnet/sf/saxon/s9api/Serializer$Property;->DOCTYPE_SYSTEM:Lnet/sf/saxon/s9api/Serializer$Property;

    new-instance v8, Lnet/sf/saxon/s9api/Serializer$Property;

    move-object v7, v8

    const/4 v9, 0x7

    const-string v10, "cdata-section-elements"

    const-string v11, "CDATA_SECTION_ELEMENTS"

    invoke-direct {v8, v11, v9, v10}, Lnet/sf/saxon/s9api/Serializer$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lnet/sf/saxon/s9api/Serializer$Property;->CDATA_SECTION_ELEMENTS:Lnet/sf/saxon/s9api/Serializer$Property;

    new-instance v9, Lnet/sf/saxon/s9api/Serializer$Property;

    move-object v8, v9

    const/16 v10, 0x8

    const-string v11, "indent"

    const-string v12, "INDENT"

    invoke-direct {v9, v12, v10, v11}, Lnet/sf/saxon/s9api/Serializer$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lnet/sf/saxon/s9api/Serializer$Property;->INDENT:Lnet/sf/saxon/s9api/Serializer$Property;

    new-instance v10, Lnet/sf/saxon/s9api/Serializer$Property;

    move-object v9, v10

    const/16 v11, 0x9

    const-string v12, "media-type"

    const-string v13, "MEDIA_TYPE"

    invoke-direct {v10, v13, v11, v12}, Lnet/sf/saxon/s9api/Serializer$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lnet/sf/saxon/s9api/Serializer$Property;->MEDIA_TYPE:Lnet/sf/saxon/s9api/Serializer$Property;

    new-instance v11, Lnet/sf/saxon/s9api/Serializer$Property;

    move-object v10, v11

    const/16 v12, 0xa

    const-string v13, "use-character-maps"

    const-string v14, "USE_CHARACTER_MAPS"

    invoke-direct {v11, v14, v12, v13}, Lnet/sf/saxon/s9api/Serializer$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lnet/sf/saxon/s9api/Serializer$Property;->USE_CHARACTER_MAPS:Lnet/sf/saxon/s9api/Serializer$Property;

    new-instance v12, Lnet/sf/saxon/s9api/Serializer$Property;

    move-object v11, v12

    const/16 v13, 0xb

    const-string v14, "include-content-type"

    const-string v15, "INCLUDE_CONTENT_TYPE"

    invoke-direct {v12, v15, v13, v14}, Lnet/sf/saxon/s9api/Serializer$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lnet/sf/saxon/s9api/Serializer$Property;->INCLUDE_CONTENT_TYPE:Lnet/sf/saxon/s9api/Serializer$Property;

    new-instance v13, Lnet/sf/saxon/s9api/Serializer$Property;

    move-object v12, v13

    const/16 v14, 0xc

    const-string v15, "undeclare-prefixes"

    move-object/from16 v33, v0

    const-string v0, "UNDECLARE_PREFIXES"

    invoke-direct {v13, v0, v14, v15}, Lnet/sf/saxon/s9api/Serializer$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lnet/sf/saxon/s9api/Serializer$Property;->UNDECLARE_PREFIXES:Lnet/sf/saxon/s9api/Serializer$Property;

    new-instance v0, Lnet/sf/saxon/s9api/Serializer$Property;

    move-object v13, v0

    const/16 v14, 0xd

    const-string v15, "escape-uri-attributes"

    move-object/from16 v34, v1

    const-string v1, "ESCAPE_URI_ATTRIBUTES"

    invoke-direct {v0, v1, v14, v15}, Lnet/sf/saxon/s9api/Serializer$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/Serializer$Property;->ESCAPE_URI_ATTRIBUTES:Lnet/sf/saxon/s9api/Serializer$Property;

    new-instance v0, Lnet/sf/saxon/s9api/Serializer$Property;

    move-object v14, v0

    const/16 v1, 0xe

    const-string v15, "byte-order-mark"

    move-object/from16 v35, v2

    const-string v2, "BYTE_ORDER_MARK"

    invoke-direct {v0, v2, v1, v15}, Lnet/sf/saxon/s9api/Serializer$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/Serializer$Property;->BYTE_ORDER_MARK:Lnet/sf/saxon/s9api/Serializer$Property;

    new-instance v0, Lnet/sf/saxon/s9api/Serializer$Property;

    move-object v15, v0

    const/16 v1, 0xf

    const-string v2, "normalization-form"

    move-object/from16 v36, v3

    const-string v3, "NORMALIZATION_FORM"

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/s9api/Serializer$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/Serializer$Property;->NORMALIZATION_FORM:Lnet/sf/saxon/s9api/Serializer$Property;

    new-instance v0, Lnet/sf/saxon/s9api/Serializer$Property;

    move-object/from16 v16, v0

    const/16 v1, 0x10

    const-string v2, "item-separator"

    const-string v3, "ITEM_SEPARATOR"

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/s9api/Serializer$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/Serializer$Property;->ITEM_SEPARATOR:Lnet/sf/saxon/s9api/Serializer$Property;

    new-instance v0, Lnet/sf/saxon/s9api/Serializer$Property;

    move-object/from16 v17, v0

    const/16 v1, 0x11

    const-string v2, "html-version"

    const-string v3, "HTML_VERSION"

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/s9api/Serializer$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/Serializer$Property;->HTML_VERSION:Lnet/sf/saxon/s9api/Serializer$Property;

    new-instance v0, Lnet/sf/saxon/s9api/Serializer$Property;

    move-object/from16 v18, v0

    const/16 v1, 0x12

    const-string v2, "build-tree"

    const-string v3, "BUILD_TREE"

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/s9api/Serializer$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/Serializer$Property;->BUILD_TREE:Lnet/sf/saxon/s9api/Serializer$Property;

    new-instance v0, Lnet/sf/saxon/s9api/Serializer$Property;

    move-object/from16 v19, v0

    const/16 v1, 0x13

    const-string v2, "{http://saxon.sf.net/}indent-spaces"

    const-string v3, "SAXON_INDENT_SPACES"

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/s9api/Serializer$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/Serializer$Property;->SAXON_INDENT_SPACES:Lnet/sf/saxon/s9api/Serializer$Property;

    new-instance v0, Lnet/sf/saxon/s9api/Serializer$Property;

    move-object/from16 v20, v0

    const/16 v1, 0x14

    const-string v2, "{http://saxon.sf.net/}internal-dtd-subset"

    const-string v3, "SAXON_INTERNAL_DTD_SUBSET"

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/s9api/Serializer$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/Serializer$Property;->SAXON_INTERNAL_DTD_SUBSET:Lnet/sf/saxon/s9api/Serializer$Property;

    new-instance v0, Lnet/sf/saxon/s9api/Serializer$Property;

    move-object/from16 v21, v0

    const/16 v1, 0x15

    const-string v2, "{http://saxon.sf.net/}line-length"

    const-string v3, "SAXON_LINE_LENGTH"

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/s9api/Serializer$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/Serializer$Property;->SAXON_LINE_LENGTH:Lnet/sf/saxon/s9api/Serializer$Property;

    new-instance v0, Lnet/sf/saxon/s9api/Serializer$Property;

    move-object/from16 v22, v0

    const/16 v1, 0x16

    const-string v2, "{http://saxon.sf.net/}attribute-order"

    const-string v3, "SAXON_ATTRIBUTE_ORDER"

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/s9api/Serializer$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/Serializer$Property;->SAXON_ATTRIBUTE_ORDER:Lnet/sf/saxon/s9api/Serializer$Property;

    new-instance v0, Lnet/sf/saxon/s9api/Serializer$Property;

    move-object/from16 v23, v0

    const/16 v1, 0x17

    const-string v2, "{http://saxon.sf.net/}canonical"

    const-string v3, "SAXON_CANONICAL"

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/s9api/Serializer$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/Serializer$Property;->SAXON_CANONICAL:Lnet/sf/saxon/s9api/Serializer$Property;

    new-instance v0, Lnet/sf/saxon/s9api/Serializer$Property;

    move-object/from16 v24, v0

    const/16 v1, 0x18

    const-string v2, "{http://saxon.sf.net/}newline"

    const-string v3, "SAXON_NEWLINE"

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/s9api/Serializer$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/Serializer$Property;->SAXON_NEWLINE:Lnet/sf/saxon/s9api/Serializer$Property;

    new-instance v0, Lnet/sf/saxon/s9api/Serializer$Property;

    move-object/from16 v25, v0

    const/16 v1, 0x19

    const-string v2, "suppress-indentation"

    const-string v3, "SAXON_SUPPRESS_INDENTATION"

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/s9api/Serializer$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/Serializer$Property;->SAXON_SUPPRESS_INDENTATION:Lnet/sf/saxon/s9api/Serializer$Property;

    new-instance v0, Lnet/sf/saxon/s9api/Serializer$Property;

    move-object/from16 v26, v0

    const/16 v1, 0x1a

    const-string v2, "{http://saxon.sf.net/}double-space"

    const-string v3, "SAXON_DOUBLE_SPACE"

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/s9api/Serializer$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/Serializer$Property;->SAXON_DOUBLE_SPACE:Lnet/sf/saxon/s9api/Serializer$Property;

    new-instance v0, Lnet/sf/saxon/s9api/Serializer$Property;

    move-object/from16 v27, v0

    const/16 v1, 0x1b

    const-string v2, "{http://saxon.sf.net/}stylesheet-version"

    const-string v3, "SAXON_STYLESHEET_VERSION"

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/s9api/Serializer$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/Serializer$Property;->SAXON_STYLESHEET_VERSION:Lnet/sf/saxon/s9api/Serializer$Property;

    new-instance v0, Lnet/sf/saxon/s9api/Serializer$Property;

    move-object/from16 v28, v0

    const/16 v1, 0x1c

    const-string v2, "{http://saxon.sf.net/}character-representation"

    const-string v3, "SAXON_CHARACTER_REPRESENTATION"

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/s9api/Serializer$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/Serializer$Property;->SAXON_CHARACTER_REPRESENTATION:Lnet/sf/saxon/s9api/Serializer$Property;

    new-instance v0, Lnet/sf/saxon/s9api/Serializer$Property;

    move-object/from16 v29, v0

    const/16 v1, 0x1d

    const-string v2, "{http://saxon.sf.net/}recognize-binary"

    const-string v3, "SAXON_RECOGNIZE_BINARY"

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/s9api/Serializer$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/Serializer$Property;->SAXON_RECOGNIZE_BINARY:Lnet/sf/saxon/s9api/Serializer$Property;

    new-instance v0, Lnet/sf/saxon/s9api/Serializer$Property;

    move-object/from16 v30, v0

    const/16 v1, 0x1e

    const-string v2, "{http://saxon.sf.net/}require-well-formed"

    const-string v3, "SAXON_REQUIRE_WELL_FORMED"

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/s9api/Serializer$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/Serializer$Property;->SAXON_REQUIRE_WELL_FORMED:Lnet/sf/saxon/s9api/Serializer$Property;

    new-instance v0, Lnet/sf/saxon/s9api/Serializer$Property;

    move-object/from16 v31, v0

    const/16 v1, 0x1f

    const-string v2, "{http://saxon.sf.net/}wrap-result-sequence"

    const-string v3, "SAXON_WRAP"

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/s9api/Serializer$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/Serializer$Property;->SAXON_WRAP:Lnet/sf/saxon/s9api/Serializer$Property;

    new-instance v0, Lnet/sf/saxon/s9api/Serializer$Property;

    move-object/from16 v32, v0

    const/16 v1, 0x20

    const-string v2, "{http://saxon.sf.net/}supply-source-locator"

    const-string v3, "SAXON_SUPPLY_SOURCE_LOCATOR"

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/s9api/Serializer$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/Serializer$Property;->SAXON_SUPPLY_SOURCE_LOCATOR:Lnet/sf/saxon/s9api/Serializer$Property;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    filled-new-array/range {v0 .. v32}, [Lnet/sf/saxon/s9api/Serializer$Property;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/s9api/Serializer$Property;->$VALUES:[Lnet/sf/saxon/s9api/Serializer$Property;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lnet/sf/saxon/s9api/Serializer$Property;->name:Ljava/lang/String;

    return-void
.end method

.method public static get(Ljava/lang/String;)Lnet/sf/saxon/s9api/Serializer$Property;
    .locals 5

    invoke-static {}, Lnet/sf/saxon/s9api/Serializer$Property;->values()[Lnet/sf/saxon/s9api/Serializer$Property;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lnet/sf/saxon/s9api/Serializer$Property;->name:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/sf/saxon/s9api/Serializer$Property;
    .locals 1

    const-class v0, Lnet/sf/saxon/s9api/Serializer$Property;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/Serializer$Property;

    return-object p0
.end method

.method public static values()[Lnet/sf/saxon/s9api/Serializer$Property;
    .locals 1

    sget-object v0, Lnet/sf/saxon/s9api/Serializer$Property;->$VALUES:[Lnet/sf/saxon/s9api/Serializer$Property;

    invoke-virtual {v0}, [Lnet/sf/saxon/s9api/Serializer$Property;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/s9api/Serializer$Property;

    return-object v0
.end method


# virtual methods
.method public getQName()Lnet/sf/saxon/s9api/QName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/Serializer$Property;->name:Ljava/lang/String;

    invoke-static {p0}, Lnet/sf/saxon/s9api/QName;->fromClarkName(Ljava/lang/String;)Lnet/sf/saxon/s9api/QName;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/Serializer$Property;->name:Ljava/lang/String;

    return-object p0
.end method
