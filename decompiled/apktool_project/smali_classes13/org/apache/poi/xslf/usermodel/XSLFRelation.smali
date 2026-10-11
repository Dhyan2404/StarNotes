.class public final Lorg/apache/poi/xslf/usermodel/XSLFRelation;
.super Lorg/apache/poi/ooxml/POIXMLRelation;
.source "SourceFile"


# static fields
.field public static final CHART:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final COMMENTS:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final COMMENT_AUTHORS:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final DIAGRAM_DRAWING:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final FONT:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final HDPHOTO_WDP:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final HYPERLINK:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final IMAGES:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final IMAGE_BMP:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final IMAGE_DIB:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final IMAGE_EMF:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final IMAGE_EPS:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final IMAGE_GIF:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final IMAGE_JPEG:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final IMAGE_PICT:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final IMAGE_PNG:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final IMAGE_SVG:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final IMAGE_TIFF:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final IMAGE_WDP:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final IMAGE_WMF:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final IMAGE_WPG:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final MACRO:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final MACRO_TEMPLATE:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final MAIN:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final NOTES:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final NOTES_MASTER:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field static final NS_DRAWINGML:Ljava/lang/String; = "http://schemas.openxmlformats.org/drawingml/2006/main"

.field public static final OLE_OBJECT:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final PRESENTATIONML:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final PRESENTATIONML_TEMPLATE:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final PRESENTATION_MACRO:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final SLIDE:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final SLIDE_LAYOUT:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final SLIDE_MASTER:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final TABLE_STYLES:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final THEME:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final THEME_MANAGER:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final VML_DRAWING:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field public static final WORKBOOK:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

.field private static final _table:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xslf/usermodel/XSLFRelation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->_table:Ljava/util/Map;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-string v1, "application/vnd.openxmlformats-officedocument.presentationml.presentation.main+xml"

    invoke-direct {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->MAIN:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-string v1, "application/vnd.ms-powerpoint.slideshow.macroEnabled.main+xml"

    invoke-direct {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->MACRO:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-string v1, "application/vnd.ms-powerpoint.template.macroEnabled.main+xml"

    invoke-direct {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->MACRO_TEMPLATE:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-string v1, "application/vnd.openxmlformats-officedocument.presentationml.slideshow.main+xml"

    invoke-direct {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->PRESENTATIONML:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-string v1, "application/vnd.openxmlformats-officedocument.presentationml.template.main+xml"

    invoke-direct {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->PRESENTATIONML_TEMPLATE:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-string v1, "application/vnd.ms-powerpoint.presentation.macroEnabled.main+xml"

    invoke-direct {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->PRESENTATION_MACRO:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-string v1, "application/vnd.openxmlformats-officedocument.themeManager+xml"

    invoke-direct {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->THEME_MANAGER:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-string v3, "application/vnd.openxmlformats-officedocument.presentationml.notesSlide+xml"

    const-string v4, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/notesSlide"

    const-string v5, "/ppt/notesSlides/notesSlide#.xml"

    new-instance v6, Lcom/sunia/HTREnginev2/kno;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/kno;-><init>()V

    new-instance v7, Lcom/sunia/HTREnginev2/mno;

    invoke-direct {v7}, Lcom/sunia/HTREnginev2/mno;-><init>()V

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->NOTES:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-string v9, "application/vnd.openxmlformats-officedocument.presentationml.slide+xml"

    const-string v10, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/slide"

    const-string v11, "/ppt/slides/slide#.xml"

    new-instance v12, Lcom/sunia/HTREnginev2/pno;

    invoke-direct {v12}, Lcom/sunia/HTREnginev2/pno;-><init>()V

    new-instance v13, Lcom/sunia/HTREnginev2/qno;

    invoke-direct {v13}, Lcom/sunia/HTREnginev2/qno;-><init>()V

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->SLIDE:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-string v2, "application/vnd.openxmlformats-officedocument.presentationml.slideLayout+xml"

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/slideLayout"

    const-string v4, "/ppt/slideLayouts/slideLayout#.xml"

    const/4 v5, 0x0

    new-instance v6, Lcom/sunia/HTREnginev2/rno;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/rno;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->SLIDE_LAYOUT:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-string v8, "application/vnd.openxmlformats-officedocument.presentationml.slideMaster+xml"

    const-string v9, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/slideMaster"

    const-string v10, "/ppt/slideMasters/slideMaster#.xml"

    const/4 v11, 0x0

    new-instance v12, Lcom/sunia/HTREnginev2/zno;

    invoke-direct {v12}, Lcom/sunia/HTREnginev2/zno;-><init>()V

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->SLIDE_MASTER:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-string v2, "application/vnd.openxmlformats-officedocument.presentationml.notesMaster+xml"

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/notesMaster"

    const-string v4, "/ppt/notesMasters/notesMaster#.xml"

    new-instance v5, Lcom/sunia/HTREnginev2/aoo;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/aoo;-><init>()V

    new-instance v6, Lcom/sunia/HTREnginev2/boo;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/boo;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->NOTES_MASTER:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-string v8, "application/vnd.openxmlformats-officedocument.presentationml.comments+xml"

    const-string v9, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/comments"

    const-string v10, "/ppt/comments/comment#.xml"

    new-instance v11, Lcom/sunia/HTREnginev2/coo;

    invoke-direct {v11}, Lcom/sunia/HTREnginev2/coo;-><init>()V

    new-instance v12, Lcom/sunia/HTREnginev2/doo;

    invoke-direct {v12}, Lcom/sunia/HTREnginev2/doo;-><init>()V

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->COMMENTS:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-string v2, "application/vnd.openxmlformats-officedocument.presentationml.commentAuthors+xml"

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/commentAuthors"

    const-string v4, "/ppt/commentAuthors.xml"

    new-instance v5, Lcom/sunia/HTREnginev2/vno;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/vno;-><init>()V

    new-instance v6, Lcom/sunia/HTREnginev2/eoo;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/eoo;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->COMMENT_AUTHORS:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const/4 v1, 0x0

    const-string v2, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/hyperlink"

    invoke-direct {v0, v1, v2, v1}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->HYPERLINK:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-string v4, "application/vnd.openxmlformats-officedocument.theme+xml"

    const-string v5, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/theme"

    const-string v6, "/ppt/theme/theme#.xml"

    new-instance v7, Lcom/sunia/HTREnginev2/foo;

    invoke-direct {v7}, Lcom/sunia/HTREnginev2/foo;-><init>()V

    new-instance v8, Lcom/sunia/HTREnginev2/goo;

    invoke-direct {v8}, Lcom/sunia/HTREnginev2/goo;-><init>()V

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->THEME:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-string v1, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/vmlDrawing"

    const-string v2, "/ppt/drawings/vmlDrawing#.vml"

    const-string v3, "application/vnd.openxmlformats-officedocument.vmlDrawing"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->VML_DRAWING:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-string v5, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    const-string v6, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/package"

    const-string v7, "/ppt/embeddings/Microsoft_Excel_Worksheet#.xlsx"

    new-instance v8, Lcom/sunia/HTREnginev2/hoo;

    invoke-direct {v8}, Lcom/sunia/HTREnginev2/hoo;-><init>()V

    new-instance v9, Lcom/sunia/HTREnginev2/ioo;

    invoke-direct {v9}, Lcom/sunia/HTREnginev2/ioo;-><init>()V

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->WORKBOOK:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-string v11, "application/vnd.openxmlformats-officedocument.drawingml.chart+xml"

    const-string v12, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/chart"

    const-string v13, "/ppt/charts/chart#.xml"

    new-instance v14, Lcom/sunia/HTREnginev2/joo;

    invoke-direct {v14}, Lcom/sunia/HTREnginev2/joo;-><init>()V

    new-instance v15, Lcom/sunia/HTREnginev2/koo;

    invoke-direct {v15}, Lcom/sunia/HTREnginev2/koo;-><init>()V

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->CHART:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-string v2, "application/vnd.ms-office.drawingml.diagramDrawing+xml"

    const-string v3, "http://schemas.microsoft.com/office/2007/relationships/diagramDrawing"

    const-string v4, "/ppt/diagrams/drawing#.xml"

    new-instance v5, Lcom/sunia/HTREnginev2/loo;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/loo;-><init>()V

    new-instance v6, Lcom/sunia/HTREnginev2/lno;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/lno;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->DIAGRAM_DRAWING:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->EMF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v8, v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    const-string v9, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v10, "/ppt/media/image#.emf"

    new-instance v11, Lcom/sunia/HTREnginev2/nno;

    invoke-direct {v11}, Lcom/sunia/HTREnginev2/nno;-><init>()V

    new-instance v12, Lcom/sunia/HTREnginev2/ono;

    invoke-direct {v12}, Lcom/sunia/HTREnginev2/ono;-><init>()V

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_EMF:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->WMF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v2, v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v4, "/ppt/media/image#.wmf"

    new-instance v5, Lcom/sunia/HTREnginev2/nno;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/nno;-><init>()V

    new-instance v6, Lcom/sunia/HTREnginev2/ono;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/ono;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_WMF:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->PICT:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v8, v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    const-string v9, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v10, "/ppt/media/image#.pict"

    new-instance v11, Lcom/sunia/HTREnginev2/nno;

    invoke-direct {v11}, Lcom/sunia/HTREnginev2/nno;-><init>()V

    new-instance v12, Lcom/sunia/HTREnginev2/ono;

    invoke-direct {v12}, Lcom/sunia/HTREnginev2/ono;-><init>()V

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_PICT:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->JPEG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v2, v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v4, "/ppt/media/image#.jpeg"

    new-instance v5, Lcom/sunia/HTREnginev2/nno;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/nno;-><init>()V

    new-instance v6, Lcom/sunia/HTREnginev2/ono;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/ono;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_JPEG:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->PNG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v8, v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    const-string v9, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v10, "/ppt/media/image#.png"

    new-instance v11, Lcom/sunia/HTREnginev2/nno;

    invoke-direct {v11}, Lcom/sunia/HTREnginev2/nno;-><init>()V

    new-instance v12, Lcom/sunia/HTREnginev2/ono;

    invoke-direct {v12}, Lcom/sunia/HTREnginev2/ono;-><init>()V

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_PNG:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->DIB:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v2, v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v4, "/ppt/media/image#.dib"

    new-instance v5, Lcom/sunia/HTREnginev2/nno;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/nno;-><init>()V

    new-instance v6, Lcom/sunia/HTREnginev2/ono;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/ono;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_DIB:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->GIF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v8, v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    const-string v9, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v10, "/ppt/media/image#.gif"

    new-instance v11, Lcom/sunia/HTREnginev2/nno;

    invoke-direct {v11}, Lcom/sunia/HTREnginev2/nno;-><init>()V

    new-instance v12, Lcom/sunia/HTREnginev2/ono;

    invoke-direct {v12}, Lcom/sunia/HTREnginev2/ono;-><init>()V

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_GIF:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->TIFF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v2, v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v4, "/ppt/media/image#.tiff"

    new-instance v5, Lcom/sunia/HTREnginev2/nno;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/nno;-><init>()V

    new-instance v6, Lcom/sunia/HTREnginev2/ono;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/ono;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_TIFF:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->EPS:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v8, v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    const-string v9, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v10, "/ppt/media/image#.eps"

    new-instance v11, Lcom/sunia/HTREnginev2/nno;

    invoke-direct {v11}, Lcom/sunia/HTREnginev2/nno;-><init>()V

    new-instance v12, Lcom/sunia/HTREnginev2/ono;

    invoke-direct {v12}, Lcom/sunia/HTREnginev2/ono;-><init>()V

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_EPS:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->BMP:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v2, v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v4, "/ppt/media/image#.bmp"

    new-instance v5, Lcom/sunia/HTREnginev2/nno;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/nno;-><init>()V

    new-instance v6, Lcom/sunia/HTREnginev2/ono;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/ono;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_BMP:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->WPG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v8, v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    const-string v9, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v10, "/ppt/media/image#.wpg"

    new-instance v11, Lcom/sunia/HTREnginev2/nno;

    invoke-direct {v11}, Lcom/sunia/HTREnginev2/nno;-><init>()V

    new-instance v12, Lcom/sunia/HTREnginev2/ono;

    invoke-direct {v12}, Lcom/sunia/HTREnginev2/ono;-><init>()V

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_WPG:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    sget-object v7, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->WDP:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v2, v7, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v4, "/ppt/media/image#.wdp"

    new-instance v5, Lcom/sunia/HTREnginev2/nno;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/nno;-><init>()V

    new-instance v6, Lcom/sunia/HTREnginev2/ono;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/ono;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_WDP:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    iget-object v9, v7, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    const-string v10, "http://schemas.microsoft.com/office/2007/relationships/hdphoto"

    const-string v11, "/ppt/media/hdphoto#.wdp"

    new-instance v12, Lcom/sunia/HTREnginev2/nno;

    invoke-direct {v12}, Lcom/sunia/HTREnginev2/nno;-><init>()V

    new-instance v13, Lcom/sunia/HTREnginev2/ono;

    invoke-direct {v13}, Lcom/sunia/HTREnginev2/ono;-><init>()V

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->HDPHOTO_WDP:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->SVG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v2, v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v4, "/ppt/media/image#.svg"

    new-instance v5, Lcom/sunia/HTREnginev2/nno;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/nno;-><init>()V

    new-instance v6, Lcom/sunia/HTREnginev2/ono;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/ono;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_SVG:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const/4 v8, 0x0

    const-string v9, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const/4 v10, 0x0

    new-instance v11, Lcom/sunia/HTREnginev2/nno;

    invoke-direct {v11}, Lcom/sunia/HTREnginev2/nno;-><init>()V

    new-instance v12, Lcom/sunia/HTREnginev2/ono;

    invoke-direct {v12}, Lcom/sunia/HTREnginev2/ono;-><init>()V

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGES:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-string v2, "application/vnd.openxmlformats-officedocument.presentationml.tableStyles+xml"

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/tableStyles"

    const-string v4, "/ppt/tableStyles.xml"

    new-instance v5, Lcom/sunia/HTREnginev2/sno;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/sno;-><init>()V

    new-instance v6, Lcom/sunia/HTREnginev2/tno;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/tno;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->TABLE_STYLES:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-string v8, "application/vnd.openxmlformats-officedocument.oleObject"

    const-string v9, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/oleObject"

    const-string v10, "/ppt/embeddings/oleObject#.bin"

    new-instance v11, Lcom/sunia/HTREnginev2/uno;

    invoke-direct {v11}, Lcom/sunia/HTREnginev2/uno;-><init>()V

    new-instance v12, Lcom/sunia/HTREnginev2/wno;

    invoke-direct {v12}, Lcom/sunia/HTREnginev2/wno;-><init>()V

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->OLE_OBJECT:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const-string v2, "application/x-fontdata"

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/font"

    const-string v4, "/ppt/fonts/font#.fntdata"

    new-instance v5, Lcom/sunia/HTREnginev2/xno;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/xno;-><init>()V

    new-instance v6, Lcom/sunia/HTREnginev2/yno;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/yno;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->FONT:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

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

    .line 2
    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

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
    sget-object p1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->_table:Ljava/util/Map;

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/apache/poi/xslf/usermodel/XSLFRelation;
    .locals 1

    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->_table:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    return-object p0
.end method
