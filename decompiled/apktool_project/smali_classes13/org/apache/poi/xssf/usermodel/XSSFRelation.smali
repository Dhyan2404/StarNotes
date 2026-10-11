.class public final Lorg/apache/poi/xssf/usermodel/XSSFRelation;
.super Lorg/apache/poi/ooxml/POIXMLRelation;
.source "SourceFile"


# static fields
.field public static final ACTIVEX_BINS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final ACTIVEX_CONTROLS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final CALC_CHAIN:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final CHART:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final CHARTSHEET:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final CTRL_PROP_RECORDS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final CUSTOM_PROPERTIES:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final CUSTOM_XML_MAPPINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final DIALOG_SHEET_BIN:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final DRAWINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final EXTERNAL_LINKS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final HDPHOTO_WDP:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final IMAGES:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final IMAGE_BMP:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final IMAGE_DIB:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final IMAGE_EMF:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final IMAGE_EPS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final IMAGE_GIF:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final IMAGE_JPEG:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final IMAGE_PICT:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final IMAGE_PNG:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final IMAGE_TIFF:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final IMAGE_WMF:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final IMAGE_WPG:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final INTL_MACRO_SHEET_BIN:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final MACROS_WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final MACRO_ADDIN_WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final MACRO_SHEET_BIN:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final MACRO_TEMPLATE_WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final NS_CHART:Ljava/lang/String; = "http://schemas.openxmlformats.org/drawingml/2006/chart"

.field public static final NS_DRAWINGML:Ljava/lang/String; = "http://schemas.openxmlformats.org/drawingml/2006/main"

.field public static final NS_PRESENTATIONML:Ljava/lang/String; = "http://schemas.openxmlformats.org/presentationml/2006/main"

.field public static final NS_SPREADSHEETML:Ljava/lang/String; = "http://schemas.openxmlformats.org/spreadsheetml/2006/main"

.field public static final NS_WORDPROCESSINGML:Ljava/lang/String; = "http://schemas.openxmlformats.org/wordprocessingml/2006/main"

.field public static final OLEEMBEDDINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final PACKEMBEDDINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final PIVOT_CACHE_DEFINITION:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final PIVOT_CACHE_RECORDS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final PIVOT_TABLE:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final PRINTER_SETTINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final SHARED_STRINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final SHEET_COMMENTS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final SHEET_HYPERLINKS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final SINGLE_XML_CELLS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final STYLES:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final TABLE:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final TEMPLATE_WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final THEME:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final VBA_MACROS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final VML_DRAWINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final WORKSHEET:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final XLSB_BINARY_WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field private static final _table:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xssf/usermodel/XSSFRelation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->_table:Ljava/util/Map;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v1, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet.main+xml"

    const-string v2, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/workbook"

    const-string v3, "/xl/workbook.xml"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v1, "application/vnd.ms-excel.sheet.macroEnabled.main+xml"

    const-string v2, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->MACROS_WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v1, "application/vnd.openxmlformats-officedocument.spreadsheetml.template.main+xml"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->TEMPLATE_WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v1, "application/vnd.ms-excel.template.macroEnabled.main+xml"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->MACRO_TEMPLATE_WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v1, "application/vnd.ms-excel.addin.macroEnabled.main+xml"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->MACRO_ADDIN_WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v1, "application/vnd.ms-excel.sheet.binary.macroEnabled.main"

    const-string v3, "/xl/workbook.bin"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->XLSB_BINARY_WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v5, "application/vnd.openxmlformats-officedocument.spreadsheetml.worksheet+xml"

    const-string v6, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/worksheet"

    const-string v7, "/xl/worksheets/sheet#.xml"

    new-instance v8, Lcom/sunia/HTREnginev2/xqo;

    invoke-direct {v8}, Lcom/sunia/HTREnginev2/xqo;-><init>()V

    new-instance v9, Lcom/sunia/HTREnginev2/zqo;

    invoke-direct {v9}, Lcom/sunia/HTREnginev2/zqo;-><init>()V

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->WORKSHEET:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v11, "application/vnd.openxmlformats-officedocument.spreadsheetml.chartsheet+xml"

    const-string v12, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/chartsheet"

    const-string v13, "/xl/chartsheets/sheet#.xml"

    const/4 v14, 0x0

    new-instance v15, Lcom/sunia/HTREnginev2/bro;

    invoke-direct {v15}, Lcom/sunia/HTREnginev2/bro;-><init>()V

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->CHARTSHEET:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v2, "application/vnd.openxmlformats-officedocument.spreadsheetml.sharedStrings+xml"

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/sharedStrings"

    const-string v4, "/xl/sharedStrings.xml"

    new-instance v5, Lcom/sunia/HTREnginev2/cro;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/cro;-><init>()V

    new-instance v6, Lcom/sunia/HTREnginev2/jro;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/jro;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->SHARED_STRINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v8, "application/vnd.openxmlformats-officedocument.spreadsheetml.styles+xml"

    const-string v9, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/styles"

    const-string v10, "/xl/styles.xml"

    new-instance v11, Lcom/sunia/HTREnginev2/vro;

    invoke-direct {v11}, Lcom/sunia/HTREnginev2/vro;-><init>()V

    new-instance v12, Lcom/sunia/HTREnginev2/xro;

    invoke-direct {v12}, Lcom/sunia/HTREnginev2/xro;-><init>()V

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->STYLES:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v2, "application/vnd.openxmlformats-officedocument.drawing+xml"

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/drawing"

    const-string v4, "/xl/drawings/drawing#.xml"

    new-instance v5, Lcom/sunia/HTREnginev2/yro;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/yro;-><init>()V

    new-instance v6, Lcom/sunia/HTREnginev2/zro;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/zro;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->DRAWINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v8, "application/vnd.openxmlformats-officedocument.vmlDrawing"

    const-string v9, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/vmlDrawing"

    const-string v10, "/xl/drawings/vmlDrawing#.vml"

    new-instance v11, Lcom/sunia/HTREnginev2/aso;

    invoke-direct {v11}, Lcom/sunia/HTREnginev2/aso;-><init>()V

    new-instance v12, Lcom/sunia/HTREnginev2/iro;

    invoke-direct {v12}, Lcom/sunia/HTREnginev2/iro;-><init>()V

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->VML_DRAWINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v2, "application/vnd.openxmlformats-officedocument.drawingml.chart+xml"

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/chart"

    const-string v4, "/xl/charts/chart#.xml"

    new-instance v5, Lcom/sunia/HTREnginev2/tro;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/tro;-><init>()V

    new-instance v6, Lcom/sunia/HTREnginev2/bso;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/bso;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->CHART:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v8, "application/xml"

    const-string v9, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/xmlMaps"

    const-string v10, "/xl/xmlMaps.xml"

    new-instance v11, Lcom/sunia/HTREnginev2/cso;

    invoke-direct {v11}, Lcom/sunia/HTREnginev2/cso;-><init>()V

    new-instance v12, Lcom/sunia/HTREnginev2/dso;

    invoke-direct {v12}, Lcom/sunia/HTREnginev2/dso;-><init>()V

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->CUSTOM_XML_MAPPINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v2, "application/vnd.openxmlformats-officedocument.spreadsheetml.tableSingleCells+xml"

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/tableSingleCells"

    const-string v4, "/xl/tables/tableSingleCells#.xml"

    new-instance v5, Lcom/sunia/HTREnginev2/eso;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/eso;-><init>()V

    new-instance v6, Lcom/sunia/HTREnginev2/fso;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/fso;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->SINGLE_XML_CELLS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v8, "application/vnd.openxmlformats-officedocument.spreadsheetml.table+xml"

    const-string v9, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/table"

    const-string v10, "/xl/tables/table#.xml"

    new-instance v11, Lcom/sunia/HTREnginev2/gso;

    invoke-direct {v11}, Lcom/sunia/HTREnginev2/gso;-><init>()V

    new-instance v12, Lcom/sunia/HTREnginev2/hso;

    invoke-direct {v12}, Lcom/sunia/HTREnginev2/hso;-><init>()V

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->TABLE:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const/4 v2, 0x0

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const/4 v4, 0x0

    new-instance v5, Lcom/sunia/HTREnginev2/yqo;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/yqo;-><init>()V

    new-instance v6, Lcom/sunia/HTREnginev2/aro;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/aro;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGES:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->EMF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v8, v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    const-string v9, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v10, "/xl/media/image#.emf"

    new-instance v11, Lcom/sunia/HTREnginev2/yqo;

    invoke-direct {v11}, Lcom/sunia/HTREnginev2/yqo;-><init>()V

    new-instance v12, Lcom/sunia/HTREnginev2/aro;

    invoke-direct {v12}, Lcom/sunia/HTREnginev2/aro;-><init>()V

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_EMF:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->WMF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v2, v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v4, "/xl/media/image#.wmf"

    new-instance v5, Lcom/sunia/HTREnginev2/yqo;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/yqo;-><init>()V

    new-instance v6, Lcom/sunia/HTREnginev2/aro;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/aro;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_WMF:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->PICT:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v8, v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    const-string v9, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v10, "/xl/media/image#.pict"

    new-instance v11, Lcom/sunia/HTREnginev2/yqo;

    invoke-direct {v11}, Lcom/sunia/HTREnginev2/yqo;-><init>()V

    new-instance v12, Lcom/sunia/HTREnginev2/aro;

    invoke-direct {v12}, Lcom/sunia/HTREnginev2/aro;-><init>()V

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_PICT:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->JPEG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v2, v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v4, "/xl/media/image#.jpeg"

    new-instance v5, Lcom/sunia/HTREnginev2/yqo;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/yqo;-><init>()V

    new-instance v6, Lcom/sunia/HTREnginev2/aro;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/aro;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_JPEG:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->PNG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v8, v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    const-string v9, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v10, "/xl/media/image#.png"

    new-instance v11, Lcom/sunia/HTREnginev2/yqo;

    invoke-direct {v11}, Lcom/sunia/HTREnginev2/yqo;-><init>()V

    new-instance v12, Lcom/sunia/HTREnginev2/aro;

    invoke-direct {v12}, Lcom/sunia/HTREnginev2/aro;-><init>()V

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_PNG:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->DIB:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v2, v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v4, "/xl/media/image#.dib"

    new-instance v5, Lcom/sunia/HTREnginev2/yqo;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/yqo;-><init>()V

    new-instance v6, Lcom/sunia/HTREnginev2/aro;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/aro;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_DIB:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->GIF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v8, v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    const-string v9, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v10, "/xl/media/image#.gif"

    new-instance v11, Lcom/sunia/HTREnginev2/yqo;

    invoke-direct {v11}, Lcom/sunia/HTREnginev2/yqo;-><init>()V

    new-instance v12, Lcom/sunia/HTREnginev2/aro;

    invoke-direct {v12}, Lcom/sunia/HTREnginev2/aro;-><init>()V

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_GIF:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->TIFF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v2, v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v4, "/xl/media/image#.tiff"

    new-instance v5, Lcom/sunia/HTREnginev2/yqo;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/yqo;-><init>()V

    new-instance v6, Lcom/sunia/HTREnginev2/aro;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/aro;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_TIFF:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->EPS:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v8, v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    const-string v9, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v10, "/xl/media/image#.eps"

    new-instance v11, Lcom/sunia/HTREnginev2/yqo;

    invoke-direct {v11}, Lcom/sunia/HTREnginev2/yqo;-><init>()V

    new-instance v12, Lcom/sunia/HTREnginev2/aro;

    invoke-direct {v12}, Lcom/sunia/HTREnginev2/aro;-><init>()V

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_EPS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->BMP:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v2, v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v4, "/xl/media/image#.bmp"

    new-instance v5, Lcom/sunia/HTREnginev2/yqo;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/yqo;-><init>()V

    new-instance v6, Lcom/sunia/HTREnginev2/aro;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/aro;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_BMP:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->WPG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v8, v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    const-string v9, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v10, "/xl/media/image#.wpg"

    new-instance v11, Lcom/sunia/HTREnginev2/yqo;

    invoke-direct {v11}, Lcom/sunia/HTREnginev2/yqo;-><init>()V

    new-instance v12, Lcom/sunia/HTREnginev2/aro;

    invoke-direct {v12}, Lcom/sunia/HTREnginev2/aro;-><init>()V

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_WPG:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->WDP:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v2, v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    const-string v3, "http://schemas.microsoft.com/office/2007/relationships/hdphoto"

    const-string v4, "/xl/media/hdphoto#.wdp"

    new-instance v5, Lcom/sunia/HTREnginev2/yqo;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/yqo;-><init>()V

    new-instance v6, Lcom/sunia/HTREnginev2/aro;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/aro;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->HDPHOTO_WDP:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v8, "application/vnd.openxmlformats-officedocument.spreadsheetml.comments+xml"

    const-string v9, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/comments"

    const-string v10, "/xl/comments#.xml"

    new-instance v11, Lcom/sunia/HTREnginev2/dro;

    invoke-direct {v11}, Lcom/sunia/HTREnginev2/dro;-><init>()V

    new-instance v12, Lcom/sunia/HTREnginev2/ero;

    invoke-direct {v12}, Lcom/sunia/HTREnginev2/ero;-><init>()V

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->SHEET_COMMENTS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v1, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/hyperlink"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->SHEET_HYPERLINKS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v1, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/oleObject"

    const-string v3, "/xl/embeddings/oleObject#.bin"

    const-string v4, "application/vnd.openxmlformats-officedocument.oleObject"

    invoke-direct {v0, v4, v1, v3}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->OLEEMBEDDINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v1, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/package"

    invoke-direct {v0, v2, v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->PACKEMBEDDINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v4, "application/vnd.ms-office.vbaProject"

    const-string v5, "http://schemas.microsoft.com/office/2006/relationships/vbaProject"

    const-string v6, "/xl/vbaProject.bin"

    new-instance v7, Lcom/sunia/HTREnginev2/fro;

    invoke-direct {v7}, Lcom/sunia/HTREnginev2/fro;-><init>()V

    new-instance v8, Lcom/sunia/HTREnginev2/gro;

    invoke-direct {v8}, Lcom/sunia/HTREnginev2/gro;-><init>()V

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->VBA_MACROS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v1, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/control"

    const-string v3, "/xl/activeX/activeX#.xml"

    const-string v4, "application/vnd.ms-office.activeX+xml"

    invoke-direct {v0, v4, v1, v3}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->ACTIVEX_CONTROLS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v1, "http://schemas.microsoft.com/office/2006/relationships/activeXControlBinary"

    const-string v3, "/xl/activeX/activeX#.bin"

    const-string v4, "application/vnd.ms-office.activeX"

    invoke-direct {v0, v4, v1, v3}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->ACTIVEX_BINS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v1, "http://schemas.microsoft.com/office/2006/relationships/xlMacrosheet"

    const-string v3, "/xl/macroSheets/sheet#.bin"

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->MACRO_SHEET_BIN:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v1, "http://schemas.microsoft.com/office/2006/relationships/xlIntlMacrosheet"

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->INTL_MACRO_SHEET_BIN:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v1, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/dialogsheet"

    const-string v3, "/xl/dialogSheets/sheet#.bin"

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->DIALOG_SHEET_BIN:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v5, "application/vnd.openxmlformats-officedocument.theme+xml"

    const-string v6, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/theme"

    const-string v7, "/xl/theme/theme#.xml"

    new-instance v8, Lcom/sunia/HTREnginev2/hro;

    invoke-direct {v8}, Lcom/sunia/HTREnginev2/hro;-><init>()V

    new-instance v9, Lcom/sunia/HTREnginev2/kro;

    invoke-direct {v9}, Lcom/sunia/HTREnginev2/kro;-><init>()V

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->THEME:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v11, "application/vnd.openxmlformats-officedocument.spreadsheetml.calcChain+xml"

    const-string v12, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/calcChain"

    const-string v13, "/xl/calcChain.xml"

    new-instance v14, Lcom/sunia/HTREnginev2/lro;

    invoke-direct {v14}, Lcom/sunia/HTREnginev2/lro;-><init>()V

    new-instance v15, Lcom/sunia/HTREnginev2/mro;

    invoke-direct {v15}, Lcom/sunia/HTREnginev2/mro;-><init>()V

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->CALC_CHAIN:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v4, "application/vnd.openxmlformats-officedocument.spreadsheetml.externalLink+xml"

    const-string v5, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/externalLink"

    const-string v6, "/xl/externalLinks/externalLink#.xml"

    new-instance v7, Lcom/sunia/HTREnginev2/nro;

    invoke-direct {v7}, Lcom/sunia/HTREnginev2/nro;-><init>()V

    new-instance v8, Lcom/sunia/HTREnginev2/oro;

    invoke-direct {v8}, Lcom/sunia/HTREnginev2/oro;-><init>()V

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->EXTERNAL_LINKS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v1, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/printerSettings"

    const-string v3, "/xl/printerSettings/printerSettings#.bin"

    const-string v4, "application/vnd.openxmlformats-officedocument.spreadsheetml.printerSettings"

    invoke-direct {v0, v4, v1, v3}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->PRINTER_SETTINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v6, "application/vnd.openxmlformats-officedocument.spreadsheetml.pivotTable+xml"

    const-string v7, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/pivotTable"

    const-string v8, "/xl/pivotTables/pivotTable#.xml"

    new-instance v9, Lcom/sunia/HTREnginev2/pro;

    invoke-direct {v9}, Lcom/sunia/HTREnginev2/pro;-><init>()V

    new-instance v10, Lcom/sunia/HTREnginev2/qro;

    invoke-direct {v10}, Lcom/sunia/HTREnginev2/qro;-><init>()V

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->PIVOT_TABLE:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v12, "application/vnd.openxmlformats-officedocument.spreadsheetml.pivotCacheDefinition+xml"

    const-string v13, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/pivotCacheDefinition"

    const-string v14, "/xl/pivotCache/pivotCacheDefinition#.xml"

    new-instance v15, Lcom/sunia/HTREnginev2/rro;

    invoke-direct {v15}, Lcom/sunia/HTREnginev2/rro;-><init>()V

    new-instance v16, Lcom/sunia/HTREnginev2/sro;

    invoke-direct/range {v16 .. v16}, Lcom/sunia/HTREnginev2/sro;-><init>()V

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->PIVOT_CACHE_DEFINITION:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v4, "application/vnd.openxmlformats-officedocument.spreadsheetml.pivotCacheRecords+xml"

    const-string v5, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/pivotCacheRecords"

    const-string v6, "/xl/pivotCache/pivotCacheRecords#.xml"

    new-instance v7, Lcom/sunia/HTREnginev2/uro;

    invoke-direct {v7}, Lcom/sunia/HTREnginev2/uro;-><init>()V

    new-instance v8, Lcom/sunia/HTREnginev2/wro;

    invoke-direct {v8}, Lcom/sunia/HTREnginev2/wro;-><init>()V

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->PIVOT_CACHE_RECORDS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v1, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/ctrlProp"

    const-string v3, "/xl/ctrlProps/ctrlProp#.xml"

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->CTRL_PROP_RECORDS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v1, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/customProperty"

    const-string v2, "/xl/customProperty#.bin"

    const-string v3, "application/vnd.openxmlformats-officedocument.spreadsheetml.customProperty"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->CUSTOM_PROPERTIES:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

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

    .line 2
    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/ooxml/POIXMLRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$ParentPartConstructor;)V

    .line 3
    sget-object p1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->_table:Ljava/util/Map;

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFRelation;
    .locals 1

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->_table:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    return-object p0
.end method
