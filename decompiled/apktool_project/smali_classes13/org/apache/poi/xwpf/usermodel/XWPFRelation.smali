.class public final Lorg/apache/poi/xwpf/usermodel/XWPFRelation;
.super Lorg/apache/poi/ooxml/POIXMLRelation;
.source "SourceFile"


# static fields
.field public static final CHART:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final COMMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final ENDNOTE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final FONT_TABLE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final FOOTER:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final FOOTNOTE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final GLOSSARY_DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final HDPHOTO_WDP:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final HEADER:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final HYPERLINK:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGES:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_BMP:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_DIB:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_EMF:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_EPS:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_GIF:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_JPEG:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_PICT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_PNG:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_TIFF:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_WMF:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_WPG:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final MACRO_DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final MACRO_TEMPLATE_DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field static final NS_DRAWINGML:Ljava/lang/String; = "http://schemas.openxmlformats.org/drawingml/2006/main"

.field public static final NUMBERING:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final SETTINGS:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final STYLES:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final TEMPLATE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final THEME:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final WEB_SETTINGS:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final WORKBOOK:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field private static final _table:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xwpf/usermodel/XWPFRelation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->_table:Ljava/util/Map;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v1, "application/vnd.openxmlformats-officedocument.wordprocessingml.document.main+xml"

    const-string v2, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument"

    const-string v3, "/word/document.xml"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v1, "application/vnd.openxmlformats-officedocument.wordprocessingml.template.main+xml"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->TEMPLATE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v1, "application/vnd.ms-word.document.macroEnabled.main+xml"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->MACRO_DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v1, "application/vnd.ms-word.template.macroEnabledTemplate.main+xml"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->MACRO_TEMPLATE_DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v1, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/glossaryDocument"

    const-string v2, "/word/glossary/document.xml"

    const-string v3, "application/vnd.openxmlformats-officedocument.wordprocessingml.document.glossary+xml"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->GLOSSARY_DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v5, "application/vnd.openxmlformats-officedocument.wordprocessingml.numbering+xml"

    const-string v6, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/numbering"

    const-string v7, "/word/numbering.xml"

    new-instance v8, Lcom/sunia/HTREnginev2/vso;

    invoke-direct {v8}, Lcom/sunia/HTREnginev2/vso;-><init>()V

    new-instance v9, Lcom/sunia/HTREnginev2/qto;

    invoke-direct {v9}, Lcom/sunia/HTREnginev2/qto;-><init>()V

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->NUMBERING:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v1, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/fontTable"

    const-string v2, "/word/fontTable.xml"

    const-string v3, "application/vnd.openxmlformats-officedocument.wordprocessingml.fontTable+xml"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->FONT_TABLE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v5, "application/vnd.openxmlformats-officedocument.wordprocessingml.settings+xml"

    const-string v6, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/settings"

    const-string v7, "/word/settings.xml"

    new-instance v8, Lcom/sunia/HTREnginev2/ato;

    invoke-direct {v8}, Lcom/sunia/HTREnginev2/ato;-><init>()V

    new-instance v9, Lcom/sunia/HTREnginev2/bto;

    invoke-direct {v9}, Lcom/sunia/HTREnginev2/bto;-><init>()V

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->SETTINGS:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v11, "application/vnd.openxmlformats-officedocument.wordprocessingml.styles+xml"

    const-string v12, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/styles"

    const-string v13, "/word/styles.xml"

    new-instance v14, Lcom/sunia/HTREnginev2/cto;

    invoke-direct {v14}, Lcom/sunia/HTREnginev2/cto;-><init>()V

    new-instance v15, Lcom/sunia/HTREnginev2/dto;

    invoke-direct {v15}, Lcom/sunia/HTREnginev2/dto;-><init>()V

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->STYLES:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v1, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/webSettings"

    const-string v2, "/word/webSettings.xml"

    const-string v3, "application/vnd.openxmlformats-officedocument.wordprocessingml.webSettings+xml"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->WEB_SETTINGS:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v5, "application/vnd.openxmlformats-officedocument.wordprocessingml.header+xml"

    const-string v6, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/header"

    const-string v7, "/word/header#.xml"

    new-instance v8, Lcom/sunia/HTREnginev2/eto;

    invoke-direct {v8}, Lcom/sunia/HTREnginev2/eto;-><init>()V

    new-instance v9, Lcom/sunia/HTREnginev2/fto;

    invoke-direct {v9}, Lcom/sunia/HTREnginev2/fto;-><init>()V

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$ParentPartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->HEADER:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v11, "application/vnd.openxmlformats-officedocument.wordprocessingml.footer+xml"

    const-string v12, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/footer"

    const-string v13, "/word/footer#.xml"

    new-instance v14, Lcom/sunia/HTREnginev2/hto;

    invoke-direct {v14}, Lcom/sunia/HTREnginev2/hto;-><init>()V

    new-instance v15, Lcom/sunia/HTREnginev2/ito;

    invoke-direct {v15}, Lcom/sunia/HTREnginev2/ito;-><init>()V

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$ParentPartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->FOOTER:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v2, "application/vnd.openxmlformats-officedocument.theme+xml"

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/theme"

    const-string v4, "/word/theme/theme#.xml"

    new-instance v5, Lcom/sunia/HTREnginev2/gto;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/gto;-><init>()V

    new-instance v6, Lcom/sunia/HTREnginev2/jto;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/jto;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->THEME:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v8, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    const-string v9, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/package"

    const-string v10, "/word/embeddings/Microsoft_Excel_Worksheet#.xlsx"

    new-instance v11, Lcom/sunia/HTREnginev2/hoo;

    invoke-direct {v11}, Lcom/sunia/HTREnginev2/hoo;-><init>()V

    new-instance v12, Lcom/sunia/HTREnginev2/ioo;

    invoke-direct {v12}, Lcom/sunia/HTREnginev2/ioo;-><init>()V

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->WORKBOOK:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v2, "application/vnd.openxmlformats-officedocument.drawingml.chart+xml"

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/chart"

    const-string v4, "/word/charts/chart#.xml"

    new-instance v5, Lcom/sunia/HTREnginev2/kto;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/kto;-><init>()V

    new-instance v6, Lcom/sunia/HTREnginev2/lto;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/lto;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->CHART:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const/4 v1, 0x0

    const-string v2, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/hyperlink"

    invoke-direct {v0, v1, v2, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->HYPERLINK:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v4, "application/vnd.openxmlformats-officedocument.wordprocessingml.comments+xml"

    const-string v5, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/comments"

    const-string v6, "/word/comments.xml"

    new-instance v7, Lcom/sunia/HTREnginev2/mto;

    invoke-direct {v7}, Lcom/sunia/HTREnginev2/mto;-><init>()V

    new-instance v8, Lcom/sunia/HTREnginev2/nto;

    invoke-direct {v8}, Lcom/sunia/HTREnginev2/nto;-><init>()V

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$ParentPartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->COMMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v10, "application/vnd.openxmlformats-officedocument.wordprocessingml.footnotes+xml"

    const-string v11, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/footnotes"

    const-string v12, "/word/footnotes.xml"

    new-instance v13, Lcom/sunia/HTREnginev2/oto;

    invoke-direct {v13}, Lcom/sunia/HTREnginev2/oto;-><init>()V

    new-instance v14, Lcom/sunia/HTREnginev2/pto;

    invoke-direct {v14}, Lcom/sunia/HTREnginev2/pto;-><init>()V

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->FOOTNOTE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v2, "application/vnd.openxmlformats-officedocument.wordprocessingml.endnotes+xml"

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/endnotes"

    const-string v4, "/word/endnotes.xml"

    new-instance v5, Lcom/sunia/HTREnginev2/wso;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/wso;-><init>()V

    new-instance v6, Lcom/sunia/HTREnginev2/xso;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/xso;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->ENDNOTE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    sget-object v1, Lorg/apache/poi/common/usermodel/PictureType;->EMF:Lorg/apache/poi/common/usermodel/PictureType;

    iget-object v8, v1, Lorg/apache/poi/common/usermodel/PictureType;->contentType:Ljava/lang/String;

    const-string v9, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v10, "/word/media/image#.emf"

    new-instance v11, Lcom/sunia/HTREnginev2/yso;

    invoke-direct {v11}, Lcom/sunia/HTREnginev2/yso;-><init>()V

    new-instance v12, Lcom/sunia/HTREnginev2/zso;

    invoke-direct {v12}, Lcom/sunia/HTREnginev2/zso;-><init>()V

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_EMF:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    sget-object v1, Lorg/apache/poi/common/usermodel/PictureType;->WMF:Lorg/apache/poi/common/usermodel/PictureType;

    iget-object v2, v1, Lorg/apache/poi/common/usermodel/PictureType;->contentType:Ljava/lang/String;

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v4, "/word/media/image#.wmf"

    new-instance v5, Lcom/sunia/HTREnginev2/yso;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/yso;-><init>()V

    new-instance v6, Lcom/sunia/HTREnginev2/zso;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/zso;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_WMF:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    sget-object v1, Lorg/apache/poi/common/usermodel/PictureType;->PICT:Lorg/apache/poi/common/usermodel/PictureType;

    iget-object v8, v1, Lorg/apache/poi/common/usermodel/PictureType;->contentType:Ljava/lang/String;

    const-string v9, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v10, "/word/media/image#.pict"

    new-instance v11, Lcom/sunia/HTREnginev2/yso;

    invoke-direct {v11}, Lcom/sunia/HTREnginev2/yso;-><init>()V

    new-instance v12, Lcom/sunia/HTREnginev2/zso;

    invoke-direct {v12}, Lcom/sunia/HTREnginev2/zso;-><init>()V

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_PICT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    sget-object v1, Lorg/apache/poi/common/usermodel/PictureType;->JPEG:Lorg/apache/poi/common/usermodel/PictureType;

    iget-object v2, v1, Lorg/apache/poi/common/usermodel/PictureType;->contentType:Ljava/lang/String;

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v4, "/word/media/image#.jpeg"

    new-instance v5, Lcom/sunia/HTREnginev2/yso;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/yso;-><init>()V

    new-instance v6, Lcom/sunia/HTREnginev2/zso;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/zso;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_JPEG:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    sget-object v1, Lorg/apache/poi/common/usermodel/PictureType;->PNG:Lorg/apache/poi/common/usermodel/PictureType;

    iget-object v8, v1, Lorg/apache/poi/common/usermodel/PictureType;->contentType:Ljava/lang/String;

    const-string v9, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v10, "/word/media/image#.png"

    new-instance v11, Lcom/sunia/HTREnginev2/yso;

    invoke-direct {v11}, Lcom/sunia/HTREnginev2/yso;-><init>()V

    new-instance v12, Lcom/sunia/HTREnginev2/zso;

    invoke-direct {v12}, Lcom/sunia/HTREnginev2/zso;-><init>()V

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_PNG:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    sget-object v1, Lorg/apache/poi/common/usermodel/PictureType;->DIB:Lorg/apache/poi/common/usermodel/PictureType;

    iget-object v2, v1, Lorg/apache/poi/common/usermodel/PictureType;->contentType:Ljava/lang/String;

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v4, "/word/media/image#.dib"

    new-instance v5, Lcom/sunia/HTREnginev2/yso;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/yso;-><init>()V

    new-instance v6, Lcom/sunia/HTREnginev2/zso;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/zso;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_DIB:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    sget-object v1, Lorg/apache/poi/common/usermodel/PictureType;->GIF:Lorg/apache/poi/common/usermodel/PictureType;

    iget-object v8, v1, Lorg/apache/poi/common/usermodel/PictureType;->contentType:Ljava/lang/String;

    const-string v9, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v10, "/word/media/image#.gif"

    new-instance v11, Lcom/sunia/HTREnginev2/yso;

    invoke-direct {v11}, Lcom/sunia/HTREnginev2/yso;-><init>()V

    new-instance v12, Lcom/sunia/HTREnginev2/zso;

    invoke-direct {v12}, Lcom/sunia/HTREnginev2/zso;-><init>()V

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_GIF:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    sget-object v1, Lorg/apache/poi/common/usermodel/PictureType;->TIFF:Lorg/apache/poi/common/usermodel/PictureType;

    iget-object v2, v1, Lorg/apache/poi/common/usermodel/PictureType;->contentType:Ljava/lang/String;

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v4, "/word/media/image#.tiff"

    new-instance v5, Lcom/sunia/HTREnginev2/yso;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/yso;-><init>()V

    new-instance v6, Lcom/sunia/HTREnginev2/zso;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/zso;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_TIFF:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    sget-object v1, Lorg/apache/poi/common/usermodel/PictureType;->EPS:Lorg/apache/poi/common/usermodel/PictureType;

    iget-object v8, v1, Lorg/apache/poi/common/usermodel/PictureType;->contentType:Ljava/lang/String;

    const-string v9, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v10, "/word/media/image#.eps"

    new-instance v11, Lcom/sunia/HTREnginev2/yso;

    invoke-direct {v11}, Lcom/sunia/HTREnginev2/yso;-><init>()V

    new-instance v12, Lcom/sunia/HTREnginev2/zso;

    invoke-direct {v12}, Lcom/sunia/HTREnginev2/zso;-><init>()V

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_EPS:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    sget-object v1, Lorg/apache/poi/common/usermodel/PictureType;->BMP:Lorg/apache/poi/common/usermodel/PictureType;

    iget-object v2, v1, Lorg/apache/poi/common/usermodel/PictureType;->contentType:Ljava/lang/String;

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v4, "/word/media/image#.bmp"

    new-instance v5, Lcom/sunia/HTREnginev2/yso;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/yso;-><init>()V

    new-instance v6, Lcom/sunia/HTREnginev2/zso;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/zso;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_BMP:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    sget-object v1, Lorg/apache/poi/common/usermodel/PictureType;->WPG:Lorg/apache/poi/common/usermodel/PictureType;

    iget-object v8, v1, Lorg/apache/poi/common/usermodel/PictureType;->contentType:Ljava/lang/String;

    const-string v9, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v10, "/word/media/image#.wpg"

    new-instance v11, Lcom/sunia/HTREnginev2/yso;

    invoke-direct {v11}, Lcom/sunia/HTREnginev2/yso;-><init>()V

    new-instance v12, Lcom/sunia/HTREnginev2/zso;

    invoke-direct {v12}, Lcom/sunia/HTREnginev2/zso;-><init>()V

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_WPG:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    sget-object v1, Lorg/apache/poi/common/usermodel/PictureType;->WDP:Lorg/apache/poi/common/usermodel/PictureType;

    iget-object v2, v1, Lorg/apache/poi/common/usermodel/PictureType;->contentType:Ljava/lang/String;

    const-string v3, "http://schemas.microsoft.com/office/2007/relationships/hdphoto"

    const-string v4, "/ppt/media/hdphoto#.wdp"

    new-instance v5, Lcom/sunia/HTREnginev2/yso;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/yso;-><init>()V

    new-instance v6, Lcom/sunia/HTREnginev2/zso;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/zso;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->HDPHOTO_WDP:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const/4 v8, 0x0

    const-string v9, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const/4 v10, 0x0

    new-instance v11, Lcom/sunia/HTREnginev2/yso;

    invoke-direct {v11}, Lcom/sunia/HTREnginev2/yso;-><init>()V

    new-instance v12, Lcom/sunia/HTREnginev2/zso;

    invoke-direct {v12}, Lcom/sunia/HTREnginev2/zso;-><init>()V

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGES:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/ooxml/POIXMLRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->_table:Ljava/util/Map;

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 3
    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/ooxml/POIXMLRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$ParentPartConstructor;)V

    .line 4
    sget-object p1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->_table:Ljava/util/Map;

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$ParentPartConstructor;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 5
    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/ooxml/POIXMLRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$ParentPartConstructor;)V

    .line 6
    sget-object p1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->_table:Ljava/util/Map;

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFRelation;
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->_table:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    return-object p0
.end method
