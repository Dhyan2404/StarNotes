.class public final Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u0012\n\u0002\u0008!\n\u0002\u0010\u000b\n\u0002\u0008\u0018\n\u0002\u0010\u0014\n\u0002\u0008\u000b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0015\n\u0002\u0008%\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u0018\u0000 \u00c2\u00012\u00020\u0001:\u0002\u00c2\u0001B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002BG\u0008\u0012\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0010J\u0011\u0010\u00b5\u0001\u001a\u00030\u00b6\u00012\u0007\u0010\u00b7\u0001\u001a\u00020\u0006J\u0011\u0010\u00b8\u0001\u001a\u00030\u00b6\u00012\u0007\u0010\u00b9\u0001\u001a\u00020LJ\u0011\u0010\u00ba\u0001\u001a\u00030\u00b6\u00012\u0007\u0010\u00bb\u0001\u001a\u00020LJ\u0016\u0010\u00bc\u0001\u001a\u00020L2\n\u0010\u00bd\u0001\u001a\u0005\u0018\u00010\u00be\u0001H\u0096\u0002J\u0008\u0010\u00bf\u0001\u001a\u00030\u00b6\u0001J\u0007\u0010\u00c0\u0001\u001a\u00020\u0006J\t\u0010\u00c1\u0001\u001a\u00020\u0006H\u0016R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0013\"\u0004\u0008\u001e\u0010\u0015R\u001a\u0010\u001f\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001c\u0010$\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u0013\"\u0004\u0008&\u0010\u0015R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010\u0013\"\u0004\u0008(\u0010\u0015R\u001c\u0010)\u001a\u0004\u0018\u00010*X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\u001c\u0010/\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u0010\u0013\"\u0004\u00081\u0010\u0015R\u001a\u00102\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u0010!\"\u0004\u00084\u0010#R\u001c\u00105\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u0010\u0013\"\u0004\u00087\u0010\u0015R\u001a\u00108\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<R\u001a\u0010=\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008>\u0010!\"\u0004\u0008?\u0010#R\u001c\u0010@\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u0010\u0013\"\u0004\u0008B\u0010\u0015R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008C\u0010\u0013\"\u0004\u0008D\u0010\u0015R\u001a\u0010E\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008F\u0010!\"\u0004\u0008G\u0010#R\u001a\u0010H\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008I\u0010!\"\u0004\u0008J\u0010#R\u001a\u0010K\u001a\u00020LX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008K\u0010M\"\u0004\u0008N\u0010OR\u001a\u0010P\u001a\u00020LX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008P\u0010M\"\u0004\u0008Q\u0010OR\u001a\u0010R\u001a\u00020LX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008R\u0010M\"\u0004\u0008S\u0010OR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008T\u0010\u0013\"\u0004\u0008U\u0010\u0015R\u001a\u0010V\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008W\u0010!\"\u0004\u0008X\u0010#R\u001a\u0010Y\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Z\u0010!\"\u0004\u0008[\u0010#R\u001a\u0010\\\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008]\u0010!\"\u0004\u0008^\u0010#R\u001c\u0010_\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008`\u0010\u0013\"\u0004\u0008a\u0010\u0015R\u001a\u0010b\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008c\u0010!\"\u0004\u0008d\u0010#R\u001c\u0010\r\u001a\u0004\u0018\u00010eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008f\u0010g\"\u0004\u0008h\u0010iR\u001c\u0010j\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008k\u0010\u0013\"\u0004\u0008l\u0010\u0015R\u001c\u0010m\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008n\u0010\u0013\"\u0004\u0008o\u0010\u0015R\"\u0010p\u001a\n\u0012\u0004\u0012\u00020r\u0018\u00010qX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008s\u0010t\"\u0004\u0008u\u0010vR\u001c\u0010w\u001a\u0004\u0018\u00010eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008x\u0010g\"\u0004\u0008y\u0010iR\u001c\u0010z\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008{\u0010|\"\u0004\u0008}\u0010~R!\u0010\u007f\u001a\u0005\u0018\u00010\u0080\u0001X\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u0081\u0001\u0010\u0082\u0001\"\u0006\u0008\u0083\u0001\u0010\u0084\u0001R\u001f\u0010\u0085\u0001\u001a\u0004\u0018\u00010eX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0086\u0001\u0010g\"\u0005\u0008\u0087\u0001\u0010iR\u001f\u0010\u0088\u0001\u001a\u0004\u0018\u00010*X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0089\u0001\u0010,\"\u0005\u0008\u008a\u0001\u0010.R\u001f\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u008c\u0001\u0010\u0013\"\u0005\u0008\u008d\u0001\u0010\u0015R\u001f\u0010\u008e\u0001\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u008f\u0001\u0010\u0013\"\u0005\u0008\u0090\u0001\u0010\u0015R\"\u0010\u0091\u0001\u001a\u0005\u0018\u00010\u0080\u0001X\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u0092\u0001\u0010\u0082\u0001\"\u0006\u0008\u0093\u0001\u0010\u0084\u0001R\u001d\u0010\u0094\u0001\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0095\u0001\u0010!\"\u0005\u0008\u0096\u0001\u0010#R\u001d\u0010\u0097\u0001\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0098\u0001\u0010:\"\u0005\u0008\u0099\u0001\u0010<R\u001d\u0010\u009a\u0001\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u009b\u0001\u0010:\"\u0005\u0008\u009c\u0001\u0010<R\u001c\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u009d\u0001\u0010:\"\u0005\u0008\u009e\u0001\u0010<R\u001f\u0010\u009f\u0001\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00a0\u0001\u0010\u0013\"\u0005\u0008\u00a1\u0001\u0010\u0015R\u001d\u0010\u00a2\u0001\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00a3\u0001\u0010!\"\u0005\u0008\u00a4\u0001\u0010#R,\u0010\u00a5\u0001\u001a\u000c\u0012\u0005\u0012\u00030\u00a7\u0001\u0018\u00010\u00a6\u0001X\u0086\u000e\u00a2\u0006\u0015\n\u0003\u0010\u00ac\u0001\u001a\u0006\u0008\u00a8\u0001\u0010\u00a9\u0001\"\u0006\u0008\u00aa\u0001\u0010\u00ab\u0001R\u001c\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00ad\u0001\u0010!\"\u0005\u0008\u00ae\u0001\u0010#R\u001f\u0010\u00af\u0001\u001a\u0004\u0018\u00010eX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00b0\u0001\u0010g\"\u0005\u0008\u00b1\u0001\u0010iR\u001f\u0010\u00b2\u0001\u001a\u0004\u0018\u00010*X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00b3\u0001\u0010,\"\u0005\u0008\u00b4\u0001\u0010.\u00a8\u0006\u00c3\u0001"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;",
        "Ljava/io/Serializable;",
        "()V",
        "type",
        "",
        "id",
        "",
        "layerId",
        "bounds",
        "Landroid/graphics/RectF;",
        "strokeColor",
        "strokeWidth",
        "",
        "matrix",
        "Landroid/graphics/Matrix;",
        "extraAttr",
        "(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;IFLandroid/graphics/Matrix;Ljava/lang/String;)V",
        "author",
        "getAuthor",
        "()Ljava/lang/String;",
        "setAuthor",
        "(Ljava/lang/String;)V",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "getBitmap",
        "()Landroid/graphics/Bitmap;",
        "setBitmap",
        "(Landroid/graphics/Bitmap;)V",
        "blendMode",
        "getBlendMode",
        "setBlendMode",
        "color",
        "getColor",
        "()I",
        "setColor",
        "(I)V",
        "customAttr",
        "getCustomAttr",
        "setCustomAttr",
        "getExtraAttr",
        "setExtraAttr",
        "fileAttachmentData",
        "",
        "getFileAttachmentData",
        "()[B",
        "setFileAttachmentData",
        "([B)V",
        "fileAttachmentPath",
        "getFileAttachmentPath",
        "setFileAttachmentPath",
        "fillColor",
        "getFillColor",
        "setFillColor",
        "fontName",
        "getFontName",
        "setFontName",
        "fontSize",
        "getFontSize",
        "()F",
        "setFontSize",
        "(F)V",
        "fontcolor",
        "getFontcolor",
        "setFontcolor",
        "groupId",
        "getGroupId",
        "setGroupId",
        "getId",
        "setId",
        "imageHeight",
        "getImageHeight",
        "setImageHeight",
        "imageWidth",
        "getImageWidth",
        "setImageWidth",
        "isTextBold",
        "",
        "()Z",
        "setTextBold",
        "(Z)V",
        "isTextItalic",
        "setTextItalic",
        "isTextUnderline",
        "setTextUnderline",
        "getLayerId",
        "setLayerId",
        "lineArrowDirection",
        "getLineArrowDirection",
        "setLineArrowDirection",
        "lineCap",
        "getLineCap",
        "setLineCap",
        "lineJoin",
        "getLineJoin",
        "setLineJoin",
        "linkDest",
        "getLinkDest",
        "setLinkDest",
        "linkType",
        "getLinkType",
        "setLinkType",
        "",
        "getMatrix",
        "()[F",
        "setMatrix",
        "([F)V",
        "objId",
        "getObjId",
        "setObjId",
        "pageId",
        "getPageId",
        "setPageId",
        "points",
        "",
        "Lcom/onyx/android/sdk/neopdf/PdfPoint;",
        "getPoints",
        "()Ljava/util/List;",
        "setPoints",
        "(Ljava/util/List;)V",
        "realPoints",
        "getRealPoints",
        "setRealPoints",
        "rect",
        "getRect",
        "()Landroid/graphics/RectF;",
        "setRect",
        "(Landroid/graphics/RectF;)V",
        "renderPointSizeArray",
        "",
        "getRenderPointSizeArray",
        "()[I",
        "setRenderPointSizeArray",
        "([I)V",
        "renderPoints",
        "getRenderPoints",
        "setRenderPoints",
        "resourceBuf",
        "getResourceBuf",
        "setResourceBuf",
        "resourceId",
        "getResourceId",
        "setResourceId",
        "richText",
        "getRichText",
        "setRichText",
        "strokeDashArray",
        "getStrokeDashArray",
        "setStrokeDashArray",
        "strokeDashPhase",
        "getStrokeDashPhase",
        "setStrokeDashPhase",
        "strokeWavyLength",
        "getStrokeWavyLength",
        "setStrokeWavyLength",
        "strokeWavyPeak",
        "getStrokeWavyPeak",
        "setStrokeWavyPeak",
        "getStrokeWidth",
        "setStrokeWidth",
        "text",
        "getText",
        "setText",
        "textAlign",
        "getTextAlign",
        "setTextAlign",
        "textRuns",
        "",
        "Lcom/onyx/android/sdk/neopdf/PdfTextRun;",
        "getTextRuns",
        "()[Lcom/onyx/android/sdk/neopdf/PdfTextRun;",
        "setTextRuns",
        "([Lcom/onyx/android/sdk/neopdf/PdfTextRun;)V",
        "[Lcom/onyx/android/sdk/neopdf/PdfTextRun;",
        "getType",
        "setType",
        "vertices",
        "getVertices",
        "setVertices",
        "wavData",
        "getWavData",
        "setWavData",
        "applyBlendMode",
        "",
        "mode",
        "applyLineCapJoinStyle",
        "isRoundCorner",
        "applyMultiplyBlendMode",
        "apply",
        "equals",
        "obj",
        "",
        "resetDefaultColor",
        "toInfoString",
        "toString",
        "Companion",
        "sdk-pdfdata_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final AREA_ERASER:I = 0xa

.field public static final BLEND_MODE_MULTIPLY:Ljava/lang/String; = "Multiply"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final BLEND_MODE_NORMAL:Ljava/lang/String; = "Normal"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final BRUSH_STROKE:I = 0x6

.field public static final BRUSH_STROKE_V2:I = 0x15

.field public static final CHARCOAL_STROKE:I = 0xe

.field public static final CIRCLE:I = 0x5

.field public static final Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FILE_ATTACHMENT:I = 0x12

.field public static final FREE_TEXT:I = 0x7

.field public static final IMAGE:I = 0x8

.field public static final LINE:I = 0x1

.field public static final LINE_ARROW_BOTH:I = 0x3

.field public static final LINE_ARROW_END:I = 0x2

.field public static final LINE_ARROW_NONE:I = 0x0

.field public static final LINE_ARROW_START:I = 0x1

.field public static final LINE_CAP_BUTT:I = 0x0

.field public static final LINE_CAP_ROUND:I = 0x1

.field public static final LINE_CAP_SQUARE:I = 0x2

.field public static final LINE_JOIN_BEVEL:I = 0x2

.field public static final LINE_JOIN_MITER:I = 0x0

.field public static final LINE_JOIN_ROUND:I = 0x1

.field public static final LINK:I = 0x14

.field public static final MARKER_STROKE:I = 0xd

.field public static final NEO_BRUSH_STROKE:I = 0xb

.field public static final OVERLAY_ERASER:I = 0x9

.field public static final PENCIL_STROKE:I = 0x10

.field public static final POLYGON:I = 0x3

.field public static final POLYLINE:I = 0x2

.field public static final SOUND:I = 0x13

.field public static final SQUARE:I = 0x4

.field public static final STAMP:I = 0x11

.field public static final TEXT_ALIGN_CENTER:I = 0x1

.field public static final TEXT_ALIGN_LEFT:I = 0x0

.field public static final TEXT_ALIGN_RIGHT:I = 0x2

.field public static final WAVY_LENGTH:F = 24.0f

.field public static final WAVY_LINE:I = 0xf

.field public static final WAVY_PEAK:F = 6.0f


# instance fields
.field private author:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private bitmap:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private blendMode:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private color:I

.field private customAttr:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private extraAttr:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private fileAttachmentData:[B
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private fileAttachmentPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private fillColor:I

.field private fontName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private fontSize:F

.field private fontcolor:I

.field private groupId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private imageHeight:I

.field private imageWidth:I

.field private isTextBold:Z

.field private isTextItalic:Z

.field private isTextUnderline:Z

.field private layerId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lineArrowDirection:I

.field private lineCap:I

.field private lineJoin:I

.field private linkDest:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private linkType:I

.field private matrix:[F
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private objId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private pageId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neopdf/PdfPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private realPoints:[F
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private rect:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private renderPointSizeArray:[I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private renderPoints:[F
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private resourceBuf:[B
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private resourceId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private richText:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private strokeDashArray:[I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private strokeDashPhase:I

.field private strokeWavyLength:F

.field private strokeWavyPeak:F

.field private strokeWidth:F

.field private text:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private textAlign:I

.field private textRuns:[Lcom/onyx/android/sdk/neopdf/PdfTextRun;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private type:I

.field private vertices:[F
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private wavData:[B
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41c00000    # 24.0f

    .line 3
    iput v0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->strokeWavyLength:F

    const/high16 v0, 0x40c00000    # 6.0f

    .line 4
    iput v0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->strokeWavyPeak:F

    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->lineCap:I

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->lineJoin:I

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->points:Ljava/util/List;

    const/high16 v0, 0x41400000    # 12.0f

    .line 8
    iput v0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->fontSize:F

    const/high16 v0, -0x1000000

    .line 9
    iput v0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->fontcolor:I

    const-string v0, "Normal"

    .line 10
    iput-object v0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->blendMode:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;IFLandroid/graphics/Matrix;Ljava/lang/String;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41c00000    # 24.0f

    .line 12
    iput v0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->strokeWavyLength:F

    const/high16 v0, 0x40c00000    # 6.0f

    .line 13
    iput v0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->strokeWavyPeak:F

    const/4 v0, 0x2

    .line 14
    iput v0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->lineCap:I

    const/4 v0, 0x1

    .line 15
    iput v0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->lineJoin:I

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->points:Ljava/util/List;

    const/high16 v0, 0x41400000    # 12.0f

    .line 17
    iput v0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->fontSize:F

    const/high16 v0, -0x1000000

    .line 18
    iput v0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->fontcolor:I

    const-string v0, "Normal"

    .line 19
    iput-object v0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->blendMode:Ljava/lang/String;

    .line 20
    iput p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->type:I

    .line 21
    iput-object p2, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->id:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->layerId:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->rect:Landroid/graphics/RectF;

    .line 24
    iput p5, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->color:I

    .line 25
    iput p6, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->strokeWidth:F

    .line 26
    invoke-static {p7}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixValue(Landroid/graphics/Matrix;)[F

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->matrix:[F

    .line 27
    iput-object p8, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->extraAttr:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;IFLandroid/graphics/Matrix;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;IFLandroid/graphics/Matrix;Ljava/lang/String;)V

    return-void
.end method

.method public static final createBrushStrokeShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createBrushStrokeShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static final createFileAttachmentShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createFileAttachmentShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static final createFreeTextShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createFreeTextShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static final createFromAreaEraser(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;IFLandroid/graphics/Matrix;Ljava/lang/String;[FI)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = ""
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createFromAreaEraser(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;IFLandroid/graphics/Matrix;Ljava/lang/String;[FI)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static final createFromBrushStroke(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;IFLandroid/graphics/Matrix;Ljava/lang/String;[F[F)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = ""
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createFromBrushStroke(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;IFLandroid/graphics/Matrix;Ljava/lang/String;[F[F)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static final createFromBrushStrokeV2(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;IFLandroid/graphics/Matrix;Ljava/lang/String;[F[[F)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # [[F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = ""
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createFromBrushStrokeV2(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;IFLandroid/graphics/Matrix;Ljava/lang/String;[F[[F)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static final createFromCharcoalStroke(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;IFLandroid/graphics/Matrix;Ljava/lang/String;[FLandroid/graphics/Bitmap;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = ""
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createFromCharcoalStroke(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;IFLandroid/graphics/Matrix;Ljava/lang/String;[FLandroid/graphics/Bitmap;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static final createFromCircle(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;IFLandroid/graphics/Matrix;Ljava/lang/String;I)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 9
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = ""
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createFromCircle(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;IFLandroid/graphics/Matrix;Ljava/lang/String;I)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static final createFromImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;Landroid/graphics/Matrix;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = ""
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createFromImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;Landroid/graphics/Matrix;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final createFromLine(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;IFLandroid/graphics/Matrix;Ljava/lang/String;FFFF)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 12
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = ""
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createFromLine(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;IFLandroid/graphics/Matrix;Ljava/lang/String;FFFF)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static final createFromMarkerStroke(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;IFLandroid/graphics/Matrix;Ljava/lang/String;[F[F)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = ""
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createFromMarkerStroke(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;IFLandroid/graphics/Matrix;Ljava/lang/String;[F[F)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static final createFromNeoBrushStroke(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;IFLandroid/graphics/Matrix;Ljava/lang/String;[F[F)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = ""
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createFromNeoBrushStroke(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;IFLandroid/graphics/Matrix;Ljava/lang/String;[F[F)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static final createFromOverlayEraser(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;FLandroid/graphics/Matrix;Ljava/lang/String;[F)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = ""
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createFromOverlayEraser(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;FLandroid/graphics/Matrix;Ljava/lang/String;[F)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final createFromPolyLine(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;IFLandroid/graphics/Matrix;Ljava/lang/String;[F)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 9
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = ""
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createFromPolyLine(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;IFLandroid/graphics/Matrix;Ljava/lang/String;[F)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static final createFromPolygon(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;IFLandroid/graphics/Matrix;Ljava/lang/String;[FI)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = ""
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createFromPolygon(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;IFLandroid/graphics/Matrix;Ljava/lang/String;[FI)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static final createFromSquare(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;IFLandroid/graphics/Matrix;Ljava/lang/String;I)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 9
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = ""
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createFromSquare(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;IFLandroid/graphics/Matrix;Ljava/lang/String;I)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static final createLinkShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createLinkShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static final createPencilStrokeShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createPencilStrokeShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static final createSoundShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createSoundShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static final createStampShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createStampShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static final createWavyLineShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createWavyLineShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final applyBlendMode(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->blendMode:Ljava/lang/String;

    return-void
.end method

.method public final applyLineCapJoinStyle(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iput v0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->lineCap:I

    iput v0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->lineJoin:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    iput p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->lineCap:I

    iput v0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->lineJoin:I

    :goto_0
    return-void
.end method

.method public final applyMultiplyBlendMode(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "Multiply"

    goto :goto_0

    :cond_0
    const-string p1, "Normal"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->applyBlendMode(Ljava/lang/String;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_b

    const-class v2, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    sget-object v2, Lcom/onyx/android/sdk/base/utils/EqualsUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/EqualsUtils;

    iget v3, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->type:I

    iget v4, p1, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->type:I

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/EqualsUtils;->equals(II)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->id:Ljava/lang/String;

    iget-object v4, p1, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/EqualsUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->groupId:Ljava/lang/String;

    iget-object v4, p1, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->groupId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/EqualsUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->layerId:Ljava/lang/String;

    iget-object v4, p1, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->layerId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/EqualsUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->author:Ljava/lang/String;

    iget-object v4, p1, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->author:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/EqualsUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->color:I

    iget v4, p1, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->color:I

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/EqualsUtils;->equals(II)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->strokeWidth:F

    iget v4, p1, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->strokeWidth:F

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/EqualsUtils;->equals(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->matrix:[F

    iget-object v4, p1, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->matrix:[F

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/EqualsUtils;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->extraAttr:Ljava/lang/String;

    iget-object v4, p1, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->extraAttr:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/EqualsUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->customAttr:Ljava/lang/String;

    iget-object v4, p1, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->customAttr:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/EqualsUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->text:Ljava/lang/String;

    iget-object v4, p1, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->text:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/EqualsUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->resourceId:Ljava/lang/String;

    iget-object v4, p1, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->resourceId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/EqualsUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->linkType:I

    iget v4, p1, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->linkType:I

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/EqualsUtils;->equals(II)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->linkDest:Ljava/lang/String;

    iget-object v4, p1, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->linkDest:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/EqualsUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->lineArrowDirection:I

    iget v4, p1, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->lineArrowDirection:I

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/EqualsUtils;->equals(II)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iget v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->type:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/16 v3, 0x9

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    const/16 v3, 0xa

    if-eq v1, v3, :cond_3

    const/16 v3, 0x10

    if-ne v1, v3, :cond_6

    :cond_3
    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->realPoints:[F

    iget-object v3, p1, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->realPoints:[F

    invoke-virtual {v2, v1, v3}, Lcom/onyx/android/sdk/base/utils/EqualsUtils;->equals([F[F)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->realPoints:[F

    if-nez v1, :cond_4

    sget-object v1, Lcom/onyx/android/sdk/neopdf/PdfPoint;->Companion:Lcom/onyx/android/sdk/neopdf/PdfPoint$Companion;

    iget-object v3, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->points:Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/neopdf/PdfPoint$Companion;->verticesFromPoints(Ljava/util/List;)[F

    move-result-object v1

    :cond_4
    iget-object v3, p1, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->realPoints:[F

    if-nez v3, :cond_5

    sget-object v3, Lcom/onyx/android/sdk/neopdf/PdfPoint;->Companion:Lcom/onyx/android/sdk/neopdf/PdfPoint$Companion;

    iget-object v4, p1, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->points:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/neopdf/PdfPoint$Companion;->verticesFromPoints(Ljava/util/List;)[F

    move-result-object v3

    :cond_5
    invoke-virtual {v2, v1, v3}, Lcom/onyx/android/sdk/base/utils/EqualsUtils;->equals([F[F)Z

    move-result v1

    and-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->type:I

    const/4 v3, 0x6

    if-eq v1, v3, :cond_7

    const/16 v3, 0xb

    if-eq v1, v3, :cond_7

    const/16 v3, 0xd

    if-eq v1, v3, :cond_7

    const/16 v3, 0xe

    if-ne v1, v3, :cond_a

    :cond_7
    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->realPoints:[F

    iget-object v3, p1, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->realPoints:[F

    invoke-virtual {v2, v1, v3}, Lcom/onyx/android/sdk/base/utils/EqualsUtils;->equals([F[F)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->realPoints:[F

    if-nez v1, :cond_8

    sget-object v1, Lcom/onyx/android/sdk/neopdf/PdfPoint;->Companion:Lcom/onyx/android/sdk/neopdf/PdfPoint$Companion;

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->points:Ljava/util/List;

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/neopdf/PdfPoint$Companion;->realPointsFromPoints(Ljava/util/List;)[F

    move-result-object v1

    :cond_8
    iget-object p0, p1, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->realPoints:[F

    if-nez p0, :cond_9

    sget-object p0, Lcom/onyx/android/sdk/neopdf/PdfPoint;->Companion:Lcom/onyx/android/sdk/neopdf/PdfPoint$Companion;

    iget-object p1, p1, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->points:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/PdfPoint$Companion;->realPointsFromPoints(Ljava/util/List;)[F

    move-result-object p0

    :cond_9
    invoke-virtual {v2, v1, p0}, Lcom/onyx/android/sdk/base/utils/EqualsUtils;->equals([F[F)Z

    move-result p0

    and-int/2addr v0, p0

    :cond_a
    return v0

    :cond_b
    :goto_1
    return v1
.end method

.method public final getAuthor()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->author:Ljava/lang/String;

    return-object p0
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final getBlendMode()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->blendMode:Ljava/lang/String;

    return-object p0
.end method

.method public final getColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->color:I

    return p0
.end method

.method public final getCustomAttr()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->customAttr:Ljava/lang/String;

    return-object p0
.end method

.method public final getExtraAttr()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->extraAttr:Ljava/lang/String;

    return-object p0
.end method

.method public final getFileAttachmentData()[B
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->fileAttachmentData:[B

    return-object p0
.end method

.method public final getFileAttachmentPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->fileAttachmentPath:Ljava/lang/String;

    return-object p0
.end method

.method public final getFillColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->fillColor:I

    return p0
.end method

.method public final getFontName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->fontName:Ljava/lang/String;

    return-object p0
.end method

.method public final getFontSize()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->fontSize:F

    return p0
.end method

.method public final getFontcolor()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->fontcolor:I

    return p0
.end method

.method public final getGroupId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->groupId:Ljava/lang/String;

    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getImageHeight()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->imageHeight:I

    return p0
.end method

.method public final getImageWidth()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->imageWidth:I

    return p0
.end method

.method public final getLayerId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->layerId:Ljava/lang/String;

    return-object p0
.end method

.method public final getLineArrowDirection()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->lineArrowDirection:I

    return p0
.end method

.method public final getLineCap()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->lineCap:I

    return p0
.end method

.method public final getLineJoin()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->lineJoin:I

    return p0
.end method

.method public final getLinkDest()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->linkDest:Ljava/lang/String;

    return-object p0
.end method

.method public final getLinkType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->linkType:I

    return p0
.end method

.method public final getMatrix()[F
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->matrix:[F

    return-object p0
.end method

.method public final getObjId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->objId:Ljava/lang/String;

    return-object p0
.end method

.method public final getPageId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->pageId:Ljava/lang/String;

    return-object p0
.end method

.method public final getPoints()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neopdf/PdfPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->points:Ljava/util/List;

    return-object p0
.end method

.method public final getRealPoints()[F
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->realPoints:[F

    return-object p0
.end method

.method public final getRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getRenderPointSizeArray()[I
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->renderPointSizeArray:[I

    return-object p0
.end method

.method public final getRenderPoints()[F
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->renderPoints:[F

    return-object p0
.end method

.method public final getResourceBuf()[B
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->resourceBuf:[B

    return-object p0
.end method

.method public final getResourceId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->resourceId:Ljava/lang/String;

    return-object p0
.end method

.method public final getRichText()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->richText:Ljava/lang/String;

    return-object p0
.end method

.method public final getStrokeDashArray()[I
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->strokeDashArray:[I

    return-object p0
.end method

.method public final getStrokeDashPhase()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->strokeDashPhase:I

    return p0
.end method

.method public final getStrokeWavyLength()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->strokeWavyLength:F

    return p0
.end method

.method public final getStrokeWavyPeak()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->strokeWavyPeak:F

    return p0
.end method

.method public final getStrokeWidth()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->strokeWidth:F

    return p0
.end method

.method public final getText()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->text:Ljava/lang/String;

    return-object p0
.end method

.method public final getTextAlign()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->textAlign:I

    return p0
.end method

.method public final getTextRuns()[Lcom/onyx/android/sdk/neopdf/PdfTextRun;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->textRuns:[Lcom/onyx/android/sdk/neopdf/PdfTextRun;

    return-object p0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->type:I

    return p0
.end method

.method public final getVertices()[F
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->vertices:[F

    return-object p0
.end method

.method public final getWavData()[B
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->wavData:[B

    return-object p0
.end method

.method public final isTextBold()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->isTextBold:Z

    return p0
.end method

.method public final isTextItalic()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->isTextItalic:Z

    return p0
.end method

.method public final isTextUnderline()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->isTextUnderline:Z

    return p0
.end method

.method public final resetDefaultColor()V
    .locals 1

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->color:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->fillColor:I

    return-void
.end method

.method public final setAuthor(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->author:Ljava/lang/String;

    return-void
.end method

.method public final setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final setBlendMode(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->blendMode:Ljava/lang/String;

    return-void
.end method

.method public final setColor(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->color:I

    return-void
.end method

.method public final setCustomAttr(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->customAttr:Ljava/lang/String;

    return-void
.end method

.method public final setExtraAttr(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->extraAttr:Ljava/lang/String;

    return-void
.end method

.method public final setFileAttachmentData([B)V
    .locals 0
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->fileAttachmentData:[B

    return-void
.end method

.method public final setFileAttachmentPath(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->fileAttachmentPath:Ljava/lang/String;

    return-void
.end method

.method public final setFillColor(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->fillColor:I

    return-void
.end method

.method public final setFontName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->fontName:Ljava/lang/String;

    return-void
.end method

.method public final setFontSize(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->fontSize:F

    return-void
.end method

.method public final setFontcolor(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->fontcolor:I

    return-void
.end method

.method public final setGroupId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->groupId:Ljava/lang/String;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->id:Ljava/lang/String;

    return-void
.end method

.method public final setImageHeight(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->imageHeight:I

    return-void
.end method

.method public final setImageWidth(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->imageWidth:I

    return-void
.end method

.method public final setLayerId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->layerId:Ljava/lang/String;

    return-void
.end method

.method public final setLineArrowDirection(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->lineArrowDirection:I

    return-void
.end method

.method public final setLineCap(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->lineCap:I

    return-void
.end method

.method public final setLineJoin(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->lineJoin:I

    return-void
.end method

.method public final setLinkDest(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->linkDest:Ljava/lang/String;

    return-void
.end method

.method public final setLinkType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->linkType:I

    return-void
.end method

.method public final setMatrix([F)V
    .locals 0
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->matrix:[F

    return-void
.end method

.method public final setObjId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->objId:Ljava/lang/String;

    return-void
.end method

.method public final setPageId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->pageId:Ljava/lang/String;

    return-void
.end method

.method public final setPoints(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neopdf/PdfPoint;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->points:Ljava/util/List;

    return-void
.end method

.method public final setRealPoints([F)V
    .locals 0
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->realPoints:[F

    return-void
.end method

.method public final setRect(Landroid/graphics/RectF;)V
    .locals 0
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->rect:Landroid/graphics/RectF;

    return-void
.end method

.method public final setRenderPointSizeArray([I)V
    .locals 0
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->renderPointSizeArray:[I

    return-void
.end method

.method public final setRenderPoints([F)V
    .locals 0
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->renderPoints:[F

    return-void
.end method

.method public final setResourceBuf([B)V
    .locals 0
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->resourceBuf:[B

    return-void
.end method

.method public final setResourceId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->resourceId:Ljava/lang/String;

    return-void
.end method

.method public final setRichText(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->richText:Ljava/lang/String;

    return-void
.end method

.method public final setStrokeDashArray([I)V
    .locals 0
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->strokeDashArray:[I

    return-void
.end method

.method public final setStrokeDashPhase(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->strokeDashPhase:I

    return-void
.end method

.method public final setStrokeWavyLength(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->strokeWavyLength:F

    return-void
.end method

.method public final setStrokeWavyPeak(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->strokeWavyPeak:F

    return-void
.end method

.method public final setStrokeWidth(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->strokeWidth:F

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->text:Ljava/lang/String;

    return-void
.end method

.method public final setTextAlign(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->textAlign:I

    return-void
.end method

.method public final setTextBold(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->isTextBold:Z

    return-void
.end method

.method public final setTextItalic(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->isTextItalic:Z

    return-void
.end method

.method public final setTextRuns([Lcom/onyx/android/sdk/neopdf/PdfTextRun;)V
    .locals 0
    .param p1    # [Lcom/onyx/android/sdk/neopdf/PdfTextRun;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->textRuns:[Lcom/onyx/android/sdk/neopdf/PdfTextRun;

    return-void
.end method

.method public final setTextUnderline(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->isTextUnderline:Z

    return-void
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->type:I

    return-void
.end method

.method public final setVertices([F)V
    .locals 0
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->vertices:[F

    return-void
.end method

.method public final setWavData([B)V
    .locals 0
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->wavData:[B

    return-void
.end method

.method public final toInfoString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PdfShape{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', objId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->objId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', groupId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->groupId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', pageId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->pageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', layerId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->layerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', author=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->author:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', rect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->color:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", strokeWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->strokeWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", strokeDashPhase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->strokeDashPhase:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lineArrowDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->lineArrowDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lineCap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->lineCap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lineJoin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->lineJoin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fillColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->fillColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", matrix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->matrix:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extraAttr=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->extraAttr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', customAttr=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->customAttr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', richText=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->richText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', fontName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->fontName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', fontSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->fontSize:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", fontcolor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->fontcolor:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isTextBold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->isTextBold:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isTextItalic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->isTextItalic:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isTextUnderline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->isTextUnderline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", textAlign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->textAlign:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resourceId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->resourceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', imageWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->imageWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imageHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->imageHeight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",pageId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->pageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",objId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->objId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",groupId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->groupId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",layerId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->layerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",author: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->author:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",rect:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->rect:Landroid/graphics/RectF;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",color:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->color:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",strokeWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->strokeWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",points size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->points:Ljava/util/List;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
