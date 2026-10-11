package com.onyx.android.sdk.neopdf;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import androidx.core.app.NotificationCompat;
import androidx.core.graphics.drawable.IconCompat;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.utils.EqualsUtils;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkType;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.onyx.galaxy.note.message.data.MessageConst;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u0012\n\u0002\b!\n\u0002\u0010\u000b\n\u0002\b\u0018\n\u0002\u0010\u0014\n\u0002\b\u000b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0015\n\u0002\b%\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0002\b\u0005\u0018\u0000 Â\u00012\u00020\u0001:\u0002Â\u0001B\u0007\b\u0016¢\u0006\u0002\u0010\u0002BG\b\u0012\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0006¢\u0006\u0002\u0010\u0010J\u0011\u0010µ\u0001\u001a\u00030¶\u00012\u0007\u0010·\u0001\u001a\u00020\u0006J\u0011\u0010¸\u0001\u001a\u00030¶\u00012\u0007\u0010¹\u0001\u001a\u00020LJ\u0011\u0010º\u0001\u001a\u00030¶\u00012\u0007\u0010»\u0001\u001a\u00020LJ\u0016\u0010¼\u0001\u001a\u00020L2\n\u0010½\u0001\u001a\u0005\u0018\u00010¾\u0001H\u0096\u0002J\b\u0010¿\u0001\u001a\u00030¶\u0001J\u0007\u0010À\u0001\u001a\u00020\u0006J\t\u0010Á\u0001\u001a\u00020\u0006H\u0016R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0013\"\u0004\b\u001e\u0010\u0015R\u001a\u0010\u001f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001c\u0010$\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u0013\"\u0004\b&\u0010\u0015R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010\u0013\"\u0004\b(\u0010\u0015R\u001c\u0010)\u001a\u0004\u0018\u00010*X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\u001c\u0010/\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u0010\u0013\"\u0004\b1\u0010\u0015R\u001a\u00102\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u0010!\"\u0004\b4\u0010#R\u001c\u00105\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u0010\u0013\"\u0004\b7\u0010\u0015R\u001a\u00108\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R\u001a\u0010=\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b>\u0010!\"\u0004\b?\u0010#R\u001c\u0010@\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bA\u0010\u0013\"\u0004\bB\u0010\u0015R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bC\u0010\u0013\"\u0004\bD\u0010\u0015R\u001a\u0010E\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bF\u0010!\"\u0004\bG\u0010#R\u001a\u0010H\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bI\u0010!\"\u0004\bJ\u0010#R\u001a\u0010K\u001a\u00020LX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bK\u0010M\"\u0004\bN\u0010OR\u001a\u0010P\u001a\u00020LX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bP\u0010M\"\u0004\bQ\u0010OR\u001a\u0010R\u001a\u00020LX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bR\u0010M\"\u0004\bS\u0010OR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bT\u0010\u0013\"\u0004\bU\u0010\u0015R\u001a\u0010V\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bW\u0010!\"\u0004\bX\u0010#R\u001a\u0010Y\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bZ\u0010!\"\u0004\b[\u0010#R\u001a\u0010\\\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b]\u0010!\"\u0004\b^\u0010#R\u001c\u0010_\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b`\u0010\u0013\"\u0004\ba\u0010\u0015R\u001a\u0010b\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bc\u0010!\"\u0004\bd\u0010#R\u001c\u0010\r\u001a\u0004\u0018\u00010eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bf\u0010g\"\u0004\bh\u0010iR\u001c\u0010j\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bk\u0010\u0013\"\u0004\bl\u0010\u0015R\u001c\u0010m\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bn\u0010\u0013\"\u0004\bo\u0010\u0015R\"\u0010p\u001a\n\u0012\u0004\u0012\u00020r\u0018\u00010qX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bs\u0010t\"\u0004\bu\u0010vR\u001c\u0010w\u001a\u0004\u0018\u00010eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bx\u0010g\"\u0004\by\u0010iR\u001c\u0010z\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b{\u0010|\"\u0004\b}\u0010~R!\u0010\u007f\u001a\u0005\u0018\u00010\u0080\u0001X\u0086\u000e¢\u0006\u0012\n\u0000\u001a\u0006\b\u0081\u0001\u0010\u0082\u0001\"\u0006\b\u0083\u0001\u0010\u0084\u0001R\u001f\u0010\u0085\u0001\u001a\u0004\u0018\u00010eX\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u0086\u0001\u0010g\"\u0005\b\u0087\u0001\u0010iR\u001f\u0010\u0088\u0001\u001a\u0004\u0018\u00010*X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u0089\u0001\u0010,\"\u0005\b\u008a\u0001\u0010.R\u001f\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u008c\u0001\u0010\u0013\"\u0005\b\u008d\u0001\u0010\u0015R\u001f\u0010\u008e\u0001\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u008f\u0001\u0010\u0013\"\u0005\b\u0090\u0001\u0010\u0015R\"\u0010\u0091\u0001\u001a\u0005\u0018\u00010\u0080\u0001X\u0086\u000e¢\u0006\u0012\n\u0000\u001a\u0006\b\u0092\u0001\u0010\u0082\u0001\"\u0006\b\u0093\u0001\u0010\u0084\u0001R\u001d\u0010\u0094\u0001\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u0095\u0001\u0010!\"\u0005\b\u0096\u0001\u0010#R\u001d\u0010\u0097\u0001\u001a\u00020\fX\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u0098\u0001\u0010:\"\u0005\b\u0099\u0001\u0010<R\u001d\u0010\u009a\u0001\u001a\u00020\fX\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u009b\u0001\u0010:\"\u0005\b\u009c\u0001\u0010<R\u001c\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u009d\u0001\u0010:\"\u0005\b\u009e\u0001\u0010<R\u001f\u0010\u009f\u0001\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b \u0001\u0010\u0013\"\u0005\b¡\u0001\u0010\u0015R\u001d\u0010¢\u0001\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b£\u0001\u0010!\"\u0005\b¤\u0001\u0010#R,\u0010¥\u0001\u001a\f\u0012\u0005\u0012\u00030§\u0001\u0018\u00010¦\u0001X\u0086\u000e¢\u0006\u0015\n\u0003\u0010¬\u0001\u001a\u0006\b¨\u0001\u0010©\u0001\"\u0006\bª\u0001\u0010«\u0001R\u001c\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u00ad\u0001\u0010!\"\u0005\b®\u0001\u0010#R\u001f\u0010¯\u0001\u001a\u0004\u0018\u00010eX\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b°\u0001\u0010g\"\u0005\b±\u0001\u0010iR\u001f\u0010²\u0001\u001a\u0004\u0018\u00010*X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b³\u0001\u0010,\"\u0005\b´\u0001\u0010.¨\u0006Ã\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "Ljava/io/Serializable;", "()V", "type", "", "id", "", "layerId", "bounds", "Landroid/graphics/RectF;", ApiBroadCastReceiver.ARGS_STROKE_COLOR, ApiBroadCastReceiver.ARGS_STROKE_WIDTH, "", "matrix", "Landroid/graphics/Matrix;", "extraAttr", "(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;IFLandroid/graphics/Matrix;Ljava/lang/String;)V", NotificationCompat.CarExtender.f4973i, "getAuthor", "()Ljava/lang/String;", "setAuthor", "(Ljava/lang/String;)V", "bitmap", "Landroid/graphics/Bitmap;", "getBitmap", "()Landroid/graphics/Bitmap;", "setBitmap", "(Landroid/graphics/Bitmap;)V", "blendMode", "getBlendMode", "setBlendMode", "color", "getColor", "()I", "setColor", "(I)V", "customAttr", "getCustomAttr", "setCustomAttr", "getExtraAttr", "setExtraAttr", "fileAttachmentData", "", "getFileAttachmentData", "()[B", "setFileAttachmentData", "([B)V", "fileAttachmentPath", "getFileAttachmentPath", "setFileAttachmentPath", CouchFieldKey.KEY_FILL_COLOR, "getFillColor", "setFillColor", "fontName", "getFontName", "setFontName", gon.f71257J, "getFontSize", "()F", "setFontSize", "(F)V", "fontcolor", "getFontcolor", "setFontcolor", CouchFieldKey.KEY_GROUP_ID, "getGroupId", "setGroupId", "getId", "setId", MessageConst.KEY_IMAGE_HEIGHT, "getImageHeight", "setImageHeight", MessageConst.KEY_IMAGE_WIDTH, "getImageWidth", "setImageWidth", "isTextBold", "", Constants.BOOLEAN_VALUE_SIG, "setTextBold", "(Z)V", "isTextItalic", "setTextItalic", "isTextUnderline", "setTextUnderline", "getLayerId", "setLayerId", "lineArrowDirection", "getLineArrowDirection", "setLineArrowDirection", "lineCap", "getLineCap", "setLineCap", "lineJoin", "getLineJoin", "setLineJoin", "linkDest", "getLinkDest", "setLinkDest", "linkType", "getLinkType", "setLinkType", "", "getMatrix", "()[F", "setMatrix", "([F)V", "objId", "getObjId", "setObjId", CouchFieldKey.KEY_TOC_PAGE_ID, "getPageId", "setPageId", PointConstant.POINT_FILE_END, "", "Lcom/onyx/android/sdk/neopdf/PdfPoint;", "getPoints", "()Ljava/util/List;", "setPoints", "(Ljava/util/List;)V", "realPoints", "getRealPoints", "setRealPoints", "rect", "getRect", "()Landroid/graphics/RectF;", "setRect", "(Landroid/graphics/RectF;)V", "renderPointSizeArray", "", "getRenderPointSizeArray", "()[I", "setRenderPointSizeArray", "([I)V", "renderPoints", "getRenderPoints", "setRenderPoints", "resourceBuf", "getResourceBuf", "setResourceBuf", CouchFieldKey.KEY_RESOURCE_ID, "getResourceId", "setResourceId", "richText", "getRichText", "setRichText", "strokeDashArray", "getStrokeDashArray", "setStrokeDashArray", "strokeDashPhase", "getStrokeDashPhase", "setStrokeDashPhase", "strokeWavyLength", "getStrokeWavyLength", "setStrokeWavyLength", "strokeWavyPeak", "getStrokeWavyPeak", "setStrokeWavyPeak", "getStrokeWidth", "setStrokeWidth", "text", "getText", "setText", gon.f71264Q, "getTextAlign", "setTextAlign", "textRuns", "", "Lcom/onyx/android/sdk/neopdf/PdfTextRun;", "getTextRuns", "()[Lcom/onyx/android/sdk/neopdf/PdfTextRun;", "setTextRuns", "([Lcom/onyx/android/sdk/neopdf/PdfTextRun;)V", "[Lcom/onyx/android/sdk/neopdf/PdfTextRun;", "getType", "setType", "vertices", "getVertices", "setVertices", "wavData", "getWavData", "setWavData", "applyBlendMode", "", com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_MODE, "applyLineCapJoinStyle", "isRoundCorner", "applyMultiplyBlendMode", "apply", "equals", IconCompat.f5434l, "", "resetDefaultColor", "toInfoString", "toString", "Companion", "sdk-pdfdata_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class PdfShapeInfo implements Serializable {
    public static final int AREA_ERASER = 10;

    @NotNull
    public static final String BLEND_MODE_MULTIPLY = "Multiply";

    @NotNull
    public static final String BLEND_MODE_NORMAL = "Normal";
    public static final int BRUSH_STROKE = 6;
    public static final int BRUSH_STROKE_V2 = 21;
    public static final int CHARCOAL_STROKE = 14;
    public static final int CIRCLE = 5;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final int FILE_ATTACHMENT = 18;
    public static final int FREE_TEXT = 7;
    public static final int IMAGE = 8;
    public static final int LINE = 1;
    public static final int LINE_ARROW_BOTH = 3;
    public static final int LINE_ARROW_END = 2;
    public static final int LINE_ARROW_NONE = 0;
    public static final int LINE_ARROW_START = 1;
    public static final int LINE_CAP_BUTT = 0;
    public static final int LINE_CAP_ROUND = 1;
    public static final int LINE_CAP_SQUARE = 2;
    public static final int LINE_JOIN_BEVEL = 2;
    public static final int LINE_JOIN_MITER = 0;
    public static final int LINE_JOIN_ROUND = 1;
    public static final int LINK = 20;
    public static final int MARKER_STROKE = 13;
    public static final int NEO_BRUSH_STROKE = 11;
    public static final int OVERLAY_ERASER = 9;
    public static final int PENCIL_STROKE = 16;
    public static final int POLYGON = 3;
    public static final int POLYLINE = 2;
    public static final int SOUND = 19;
    public static final int SQUARE = 4;
    public static final int STAMP = 17;
    public static final int TEXT_ALIGN_CENTER = 1;
    public static final int TEXT_ALIGN_LEFT = 0;
    public static final int TEXT_ALIGN_RIGHT = 2;
    public static final float WAVY_LENGTH = 24.0f;
    public static final int WAVY_LINE = 15;
    public static final float WAVY_PEAK = 6.0f;

    @Nullable
    private String author;

    @Nullable
    private Bitmap bitmap;

    @NotNull
    private String blendMode;
    private int color;

    @Nullable
    private String customAttr;

    @Nullable
    private String extraAttr;

    @Nullable
    private byte[] fileAttachmentData;

    @Nullable
    private String fileAttachmentPath;
    private int fillColor;

    @Nullable
    private String fontName;
    private float fontSize;
    private int fontcolor;

    @Nullable
    private String groupId;

    @Nullable
    private String id;
    private int imageHeight;
    private int imageWidth;
    private boolean isTextBold;
    private boolean isTextItalic;
    private boolean isTextUnderline;

    @Nullable
    private String layerId;
    private int lineArrowDirection;
    private int lineCap;
    private int lineJoin;

    @Nullable
    private String linkDest;
    private int linkType;

    @Nullable
    private float[] matrix;

    @Nullable
    private String objId;

    @Nullable
    private String pageId;

    @Nullable
    private List<PdfPoint> points;

    @Nullable
    private float[] realPoints;

    @Nullable
    private RectF rect;

    @Nullable
    private int[] renderPointSizeArray;

    @Nullable
    private float[] renderPoints;

    @Nullable
    private byte[] resourceBuf;

    @Nullable
    private String resourceId;

    @Nullable
    private String richText;

    @Nullable
    private int[] strokeDashArray;
    private int strokeDashPhase;
    private float strokeWavyLength;
    private float strokeWavyPeak;
    private float strokeWidth;

    @Nullable
    private String text;
    private int textAlign;

    @Nullable
    private PdfTextRun[] textRuns;
    private int type;

    @Nullable
    private float[] vertices;

    @Nullable
    private byte[] wavData;

    @Metadata(m61527d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b!\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0014\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010+\u001a\u00020,J\u0006\u0010-\u001a\u00020,J\b\u0010.\u001a\u00020,H\u0007J\u0006\u0010/\u001a\u00020,J\u0006\u00100\u001a\u00020,J\b\u00101\u001a\u00020,H\u0007J\b\u00102\u001a\u00020,H\u0007JP\u00103\u001a\u00020,2\u0006\u00104\u001a\u00020\u00062\u0006\u00105\u001a\u00020\u00062\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u00020\u00042\u0006\u00109\u001a\u00020(2\u0006\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020\u00062\u0006\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020\u0004H\u0007JP\u0010@\u001a\u00020,2\u0006\u00104\u001a\u00020\u00062\u0006\u00105\u001a\u00020\u00062\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u00020\u00042\u0006\u00109\u001a\u00020(2\u0006\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020\u00062\u0006\u0010A\u001a\u00020>2\u0006\u0010B\u001a\u00020>H\u0007J[\u0010C\u001a\u00020,2\u0006\u00104\u001a\u00020\u00062\u0006\u00105\u001a\u00020\u00062\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u00020\u00042\u0006\u00109\u001a\u00020(2\u0006\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020\u00062\u0006\u0010A\u001a\u00020>2\f\u0010B\u001a\b\u0012\u0004\u0012\u00020>0DH\u0007¢\u0006\u0002\u0010EJR\u0010F\u001a\u00020,2\u0006\u00104\u001a\u00020\u00062\u0006\u00105\u001a\u00020\u00062\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u00020\u00042\u0006\u00109\u001a\u00020(2\u0006\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020\u00062\u0006\u0010A\u001a\u00020>2\b\u0010G\u001a\u0004\u0018\u00010HH\u0007JH\u0010I\u001a\u00020,2\u0006\u00104\u001a\u00020\u00062\u0006\u00105\u001a\u00020\u00062\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u00020\u00042\u0006\u00109\u001a\u00020(2\u0006\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020\u00062\u0006\u0010?\u001a\u00020\u0004H\u0007Je\u0010J\u001a\u00020,2\u0006\u00104\u001a\u00020\u00062\u0006\u00105\u001a\u00020\u00062\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u00020\u00042\u0006\u00109\u001a\u00020(2\u0006\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020\u00062\b\u0010K\u001a\u0004\u0018\u00010\u00062\u0006\u0010L\u001a\u00020\u00042\f\u0010M\u001a\b\u0012\u0004\u0012\u00020N0DH\u0007¢\u0006\u0002\u0010OJD\u0010P\u001a\u00020,2\u0006\u00104\u001a\u00020\u00062\u0006\u00105\u001a\u00020\u00062\u0006\u00106\u001a\u0002072\u0006\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020\u00062\b\u0010Q\u001a\u0004\u0018\u00010\u00062\b\u0010G\u001a\u0004\u0018\u00010HH\u0007J`\u0010R\u001a\u00020,2\u0006\u00104\u001a\u00020\u00062\u0006\u00105\u001a\u00020\u00062\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u00020\u00042\u0006\u00109\u001a\u00020(2\u0006\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020\u00062\u0006\u0010S\u001a\u00020(2\u0006\u0010T\u001a\u00020(2\u0006\u0010U\u001a\u00020(2\u0006\u0010V\u001a\u00020(H\u0007JP\u0010W\u001a\u00020,2\u0006\u00104\u001a\u00020\u00062\u0006\u00105\u001a\u00020\u00062\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u00020\u00042\u0006\u00109\u001a\u00020(2\u0006\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020\u00062\u0006\u0010A\u001a\u00020>2\u0006\u0010B\u001a\u00020>H\u0007JP\u0010X\u001a\u00020,2\u0006\u00104\u001a\u00020\u00062\u0006\u00105\u001a\u00020\u00062\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u00020\u00042\u0006\u00109\u001a\u00020(2\u0006\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020\u00062\u0006\u0010A\u001a\u00020>2\u0006\u0010B\u001a\u00020>H\u0007J@\u0010Y\u001a\u00020,2\u0006\u00104\u001a\u00020\u00062\u0006\u00105\u001a\u00020\u00062\u0006\u00106\u001a\u0002072\u0006\u00109\u001a\u00020(2\u0006\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020\u00062\u0006\u0010=\u001a\u00020>H\u0007JH\u0010Z\u001a\u00020,2\u0006\u00104\u001a\u00020\u00062\u0006\u00105\u001a\u00020\u00062\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u00020\u00042\u0006\u00109\u001a\u00020(2\u0006\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020\u00062\u0006\u0010=\u001a\u00020>H\u0007JH\u0010[\u001a\u00020,2\u0006\u00104\u001a\u00020\u00062\u0006\u00105\u001a\u00020\u00062\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u00020\u00042\u0006\u00109\u001a\u00020(2\u0006\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020\u00062\u0006\u0010=\u001a\u00020>H\u0007JP\u0010\\\u001a\u00020,2\u0006\u00104\u001a\u00020\u00062\u0006\u00105\u001a\u00020\u00062\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u00020\u00042\u0006\u00109\u001a\u00020(2\u0006\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020\u00062\u0006\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020\u0004H\u0007JH\u0010]\u001a\u00020,2\u0006\u00104\u001a\u00020\u00062\u0006\u00105\u001a\u00020\u00062\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u00020\u00042\u0006\u00109\u001a\u00020(2\u0006\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020\u00062\u0006\u0010?\u001a\u00020\u0004H\u0007J\u0006\u0010^\u001a\u00020,J\u0006\u0010_\u001a\u00020,J\b\u0010`\u001a\u00020,H\u0007J\u0006\u0010a\u001a\u00020,J\u0006\u0010b\u001a\u00020,J\u0006\u0010c\u001a\u00020,J\b\u0010d\u001a\u00020,H\u0007J\u0006\u0010e\u001a\u00020,J\u0006\u0010f\u001a\u00020,J\b\u0010g\u001a\u00020,H\u0007J\u0006\u0010h\u001a\u00020,J\b\u0010i\u001a\u00020,H\u0007J\u0006\u0010j\u001a\u00020,J\b\u0010k\u001a\u00020,H\u0007J\u000e\u0010l\u001a\u00020m2\u0006\u0010n\u001a\u00020,R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020(X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020(X\u0086T¢\u0006\u0002\n\u0000¨\u0006o"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;", "", "()V", "AREA_ERASER", "", "BLEND_MODE_MULTIPLY", "", "BLEND_MODE_NORMAL", "BRUSH_STROKE", "BRUSH_STROKE_V2", "CHARCOAL_STROKE", "CIRCLE", "FILE_ATTACHMENT", "FREE_TEXT", ShapeLinkType.LINK_IMAGE, "LINE", "LINE_ARROW_BOTH", "LINE_ARROW_END", "LINE_ARROW_NONE", "LINE_ARROW_START", "LINE_CAP_BUTT", "LINE_CAP_ROUND", "LINE_CAP_SQUARE", "LINE_JOIN_BEVEL", "LINE_JOIN_MITER", "LINE_JOIN_ROUND", "LINK", "MARKER_STROKE", "NEO_BRUSH_STROKE", "OVERLAY_ERASER", "PENCIL_STROKE", "POLYGON", "POLYLINE", "SOUND", "SQUARE", "STAMP", "TEXT_ALIGN_CENTER", "TEXT_ALIGN_LEFT", "TEXT_ALIGN_RIGHT", "WAVY_LENGTH", "", "WAVY_LINE", "WAVY_PEAK", "createAreaEraserShape", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "createAttachmentShape", "createBrushStrokeShape", "createCharcoalStrokeShape", "createCircleShape", "createFileAttachmentShape", "createFreeTextShape", "createFromAreaEraser", "id", "layerId", "bounds", "Landroid/graphics/RectF;", ApiBroadCastReceiver.ARGS_STROKE_COLOR, ApiBroadCastReceiver.ARGS_STROKE_WIDTH, "matrix", "Landroid/graphics/Matrix;", "extraAttr", "vertices", "", CouchFieldKey.KEY_FILL_COLOR, "createFromBrushStroke", "realPoints", "renderPoints", "createFromBrushStrokeV2", "", "(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;IFLandroid/graphics/Matrix;Ljava/lang/String;[F[[F)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "createFromCharcoalStroke", "bitmap", "Landroid/graphics/Bitmap;", "createFromCircle", "createFromFreeText", "text", "fontColor", "textRuns", "Lcom/onyx/android/sdk/neopdf/PdfTextRun;", "(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;IFLandroid/graphics/Matrix;Ljava/lang/String;Ljava/lang/String;I[Lcom/onyx/android/sdk/neopdf/PdfTextRun;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "createFromImage", CouchFieldKey.KEY_RESOURCE_ID, "createFromLine", "startX", "startY", "endX", "endY", "createFromMarkerStroke", "createFromNeoBrushStroke", "createFromOverlayEraser", "createFromPencilStroke", "createFromPolyLine", "createFromPolygon", "createFromSquare", "createImageShape", "createLineShape", "createLinkShape", "createMarkerStrokeShape", "createNeoBrushStrokeShape", "createOverlayEraserShape", "createPencilStrokeShape", "createPolyLineShape", "createPolygonShape", "createSoundShape", "createSquareShape", "createStampShape", "createSvgShape", "createWavyLineShape", "supportSerializeShapeData", "", "shape", "sdk-pdfdata_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nPdfShapeInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfShapeInfo.kt\ncom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,641:1\n13309#2:642\n13344#2,2:643\n13310#2:645\n*S KotlinDebug\n*F\n+ 1 PdfShapeInfo.kt\ncom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion\n*L\n486#1:642\n487#1:643,2\n486#1:645\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final PdfShapeInfo createAreaEraserShape() {
            PdfShapeInfo pdfShapeInfo = new PdfShapeInfo();
            pdfShapeInfo.setType(10);
            return pdfShapeInfo;
        }

        @NotNull
        public final PdfShapeInfo createAttachmentShape() {
            PdfShapeInfo pdfShapeInfo = new PdfShapeInfo();
            pdfShapeInfo.setType(18);
            return pdfShapeInfo;
        }

        @JvmStatic
        @NotNull
        public final PdfShapeInfo createBrushStrokeShape() {
            PdfShapeInfo pdfShapeInfo = new PdfShapeInfo();
            pdfShapeInfo.setType(6);
            return pdfShapeInfo;
        }

        @NotNull
        public final PdfShapeInfo createCharcoalStrokeShape() {
            PdfShapeInfo pdfShapeInfo = new PdfShapeInfo();
            pdfShapeInfo.setType(14);
            return pdfShapeInfo;
        }

        @NotNull
        public final PdfShapeInfo createCircleShape() {
            PdfShapeInfo pdfShapeInfo = new PdfShapeInfo();
            pdfShapeInfo.setType(5);
            return pdfShapeInfo;
        }

        @JvmStatic
        @NotNull
        public final PdfShapeInfo createFileAttachmentShape() {
            PdfShapeInfo pdfShapeInfo = new PdfShapeInfo();
            pdfShapeInfo.setType(18);
            return pdfShapeInfo;
        }

        @JvmStatic
        @NotNull
        public final PdfShapeInfo createFreeTextShape() {
            PdfShapeInfo pdfShapeInfo = new PdfShapeInfo();
            pdfShapeInfo.setType(7);
            pdfShapeInfo.setColor(0);
            return pdfShapeInfo;
        }

        @Deprecated(message = "")
        @JvmStatic
        @NotNull
        public final PdfShapeInfo createFromAreaEraser(@NotNull String id, @NotNull String layerId, @NotNull RectF bounds, int strokeColor, float strokeWidth, @NotNull Matrix matrix, @NotNull String extraAttr, @NotNull float[] vertices, int fillColor) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(layerId, "layerId");
            Intrinsics.checkNotNullParameter(bounds, "bounds");
            Intrinsics.checkNotNullParameter(matrix, "matrix");
            Intrinsics.checkNotNullParameter(extraAttr, "extraAttr");
            Intrinsics.checkNotNullParameter(vertices, "vertices");
            PdfShapeInfo pdfShapeInfo = new PdfShapeInfo(10, id, layerId, bounds, strokeColor, strokeWidth, matrix, extraAttr, null);
            pdfShapeInfo.setFillColor(fillColor);
            pdfShapeInfo.setVertices(vertices);
            return pdfShapeInfo;
        }

        @Deprecated(message = "")
        @JvmStatic
        @NotNull
        public final PdfShapeInfo createFromBrushStroke(@NotNull String id, @NotNull String layerId, @NotNull RectF bounds, int strokeColor, float strokeWidth, @NotNull Matrix matrix, @NotNull String extraAttr, @NotNull float[] realPoints, @NotNull float[] renderPoints) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(layerId, "layerId");
            Intrinsics.checkNotNullParameter(bounds, "bounds");
            Intrinsics.checkNotNullParameter(matrix, "matrix");
            Intrinsics.checkNotNullParameter(extraAttr, "extraAttr");
            Intrinsics.checkNotNullParameter(realPoints, "realPoints");
            Intrinsics.checkNotNullParameter(renderPoints, "renderPoints");
            PdfShapeInfo pdfShapeInfo = new PdfShapeInfo(6, id, layerId, bounds, strokeColor, strokeWidth, matrix, extraAttr, null);
            pdfShapeInfo.setRealPoints(realPoints);
            pdfShapeInfo.setRenderPoints(renderPoints);
            return pdfShapeInfo;
        }

        @Deprecated(message = "")
        @JvmStatic
        @NotNull
        public final PdfShapeInfo createFromBrushStrokeV2(@NotNull String id, @NotNull String layerId, @NotNull RectF bounds, int strokeColor, float strokeWidth, @NotNull Matrix matrix, @NotNull String extraAttr, @NotNull float[] realPoints, @NotNull float[][] renderPoints) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(layerId, "layerId");
            Intrinsics.checkNotNullParameter(bounds, "bounds");
            Intrinsics.checkNotNullParameter(matrix, "matrix");
            Intrinsics.checkNotNullParameter(extraAttr, "extraAttr");
            Intrinsics.checkNotNullParameter(realPoints, "realPoints");
            Intrinsics.checkNotNullParameter(renderPoints, "renderPoints");
            int[] iArr = new int[renderPoints.length];
            int length = renderPoints.length;
            int i = 0;
            for (int i2 = 0; i2 < length; i2++) {
                float[] fArr = renderPoints[i2];
                iArr[i2] = fArr.length;
                i += fArr.length;
            }
            float[] fArr2 = new float[i];
            int i3 = 0;
            for (float[] fArr3 : renderPoints) {
                for (float f : fArr3) {
                    fArr2[i3] = f;
                    i3++;
                }
            }
            PdfShapeInfo pdfShapeInfo = new PdfShapeInfo(21, id, layerId, bounds, strokeColor, strokeWidth, matrix, extraAttr, null);
            pdfShapeInfo.setRealPoints(realPoints);
            pdfShapeInfo.setRenderPoints(fArr2);
            pdfShapeInfo.setRenderPointSizeArray(iArr);
            return pdfShapeInfo;
        }

        @Deprecated(message = "")
        @JvmStatic
        @NotNull
        public final PdfShapeInfo createFromCharcoalStroke(@NotNull String id, @NotNull String layerId, @NotNull RectF bounds, int strokeColor, float strokeWidth, @NotNull Matrix matrix, @NotNull String extraAttr, @NotNull float[] realPoints, @Nullable Bitmap bitmap) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(layerId, "layerId");
            Intrinsics.checkNotNullParameter(bounds, "bounds");
            Intrinsics.checkNotNullParameter(matrix, "matrix");
            Intrinsics.checkNotNullParameter(extraAttr, "extraAttr");
            Intrinsics.checkNotNullParameter(realPoints, "realPoints");
            PdfShapeInfo pdfShapeInfo = new PdfShapeInfo(14, id, layerId, bounds, strokeColor, strokeWidth, matrix, extraAttr, null);
            pdfShapeInfo.setRealPoints(realPoints);
            pdfShapeInfo.setBitmap(bitmap);
            return pdfShapeInfo;
        }

        @Deprecated(message = "")
        @JvmStatic
        @NotNull
        public final PdfShapeInfo createFromCircle(@NotNull String id, @NotNull String layerId, @NotNull RectF bounds, int strokeColor, float strokeWidth, @NotNull Matrix matrix, @NotNull String extraAttr, int fillColor) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(layerId, "layerId");
            Intrinsics.checkNotNullParameter(bounds, "bounds");
            Intrinsics.checkNotNullParameter(matrix, "matrix");
            Intrinsics.checkNotNullParameter(extraAttr, "extraAttr");
            PdfShapeInfo pdfShapeInfo = new PdfShapeInfo(5, id, layerId, bounds, strokeColor, strokeWidth, matrix, extraAttr, null);
            pdfShapeInfo.setFillColor(fillColor);
            return pdfShapeInfo;
        }

        @Deprecated(message = "")
        @NotNull
        public final PdfShapeInfo createFromFreeText(@NotNull String id, @NotNull String layerId, @NotNull RectF bounds, int strokeColor, float strokeWidth, @NotNull Matrix matrix, @NotNull String extraAttr, @Nullable String text, int fontColor, @NotNull PdfTextRun[] textRuns) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(layerId, "layerId");
            Intrinsics.checkNotNullParameter(bounds, "bounds");
            Intrinsics.checkNotNullParameter(matrix, "matrix");
            Intrinsics.checkNotNullParameter(extraAttr, "extraAttr");
            Intrinsics.checkNotNullParameter(textRuns, "textRuns");
            PdfShapeInfo pdfShapeInfo = new PdfShapeInfo(7, id, layerId, bounds, strokeColor, strokeWidth, matrix, extraAttr, null);
            pdfShapeInfo.setText(text);
            pdfShapeInfo.setFontcolor(fontColor);
            pdfShapeInfo.setTextRuns(textRuns);
            return pdfShapeInfo;
        }

        @Deprecated(message = "")
        @JvmStatic
        @NotNull
        public final PdfShapeInfo createFromImage(@NotNull String id, @NotNull String layerId, @NotNull RectF bounds, @NotNull Matrix matrix, @NotNull String extraAttr, @Nullable String resourceId, @Nullable Bitmap bitmap) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(layerId, "layerId");
            Intrinsics.checkNotNullParameter(bounds, "bounds");
            Intrinsics.checkNotNullParameter(matrix, "matrix");
            Intrinsics.checkNotNullParameter(extraAttr, "extraAttr");
            PdfShapeInfo pdfShapeInfo = new PdfShapeInfo(8, id, layerId, bounds, 0, 0.0f, matrix, extraAttr, null);
            pdfShapeInfo.setResourceId(resourceId);
            pdfShapeInfo.setBitmap(bitmap);
            return pdfShapeInfo;
        }

        @Deprecated(message = "")
        @JvmStatic
        @NotNull
        public final PdfShapeInfo createFromLine(@NotNull String id, @NotNull String layerId, @NotNull RectF bounds, int strokeColor, float strokeWidth, @NotNull Matrix matrix, @NotNull String extraAttr, float startX, float startY, float endX, float endY) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(layerId, "layerId");
            Intrinsics.checkNotNullParameter(bounds, "bounds");
            Intrinsics.checkNotNullParameter(matrix, "matrix");
            Intrinsics.checkNotNullParameter(extraAttr, "extraAttr");
            PdfShapeInfo pdfShapeInfo = new PdfShapeInfo(1, id, layerId, bounds, strokeColor, strokeWidth, matrix, extraAttr, null);
            pdfShapeInfo.setVertices(new float[]{startX, startY, endX, endY});
            return pdfShapeInfo;
        }

        @Deprecated(message = "")
        @JvmStatic
        @NotNull
        public final PdfShapeInfo createFromMarkerStroke(@NotNull String id, @NotNull String layerId, @NotNull RectF bounds, int strokeColor, float strokeWidth, @NotNull Matrix matrix, @NotNull String extraAttr, @NotNull float[] realPoints, @NotNull float[] renderPoints) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(layerId, "layerId");
            Intrinsics.checkNotNullParameter(bounds, "bounds");
            Intrinsics.checkNotNullParameter(matrix, "matrix");
            Intrinsics.checkNotNullParameter(extraAttr, "extraAttr");
            Intrinsics.checkNotNullParameter(realPoints, "realPoints");
            Intrinsics.checkNotNullParameter(renderPoints, "renderPoints");
            PdfShapeInfo pdfShapeInfo = new PdfShapeInfo(13, id, layerId, bounds, strokeColor, strokeWidth, matrix, extraAttr, null);
            pdfShapeInfo.setRealPoints(realPoints);
            pdfShapeInfo.setRenderPoints(renderPoints);
            return pdfShapeInfo;
        }

        @Deprecated(message = "")
        @JvmStatic
        @NotNull
        public final PdfShapeInfo createFromNeoBrushStroke(@NotNull String id, @NotNull String layerId, @NotNull RectF bounds, int strokeColor, float strokeWidth, @NotNull Matrix matrix, @NotNull String extraAttr, @NotNull float[] realPoints, @NotNull float[] renderPoints) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(layerId, "layerId");
            Intrinsics.checkNotNullParameter(bounds, "bounds");
            Intrinsics.checkNotNullParameter(matrix, "matrix");
            Intrinsics.checkNotNullParameter(extraAttr, "extraAttr");
            Intrinsics.checkNotNullParameter(realPoints, "realPoints");
            Intrinsics.checkNotNullParameter(renderPoints, "renderPoints");
            PdfShapeInfo pdfShapeInfo = new PdfShapeInfo(11, id, layerId, bounds, strokeColor, strokeWidth, matrix, extraAttr, null);
            pdfShapeInfo.setRealPoints(realPoints);
            pdfShapeInfo.setRenderPoints(renderPoints);
            return pdfShapeInfo;
        }

        @Deprecated(message = "")
        @JvmStatic
        @NotNull
        public final PdfShapeInfo createFromOverlayEraser(@NotNull String id, @NotNull String layerId, @NotNull RectF bounds, float strokeWidth, @NotNull Matrix matrix, @NotNull String extraAttr, @NotNull float[] vertices) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(layerId, "layerId");
            Intrinsics.checkNotNullParameter(bounds, "bounds");
            Intrinsics.checkNotNullParameter(matrix, "matrix");
            Intrinsics.checkNotNullParameter(extraAttr, "extraAttr");
            Intrinsics.checkNotNullParameter(vertices, "vertices");
            PdfShapeInfo pdfShapeInfo = new PdfShapeInfo(9, id, layerId, bounds, -1, strokeWidth, matrix, extraAttr, null);
            pdfShapeInfo.setVertices(vertices);
            pdfShapeInfo.setFillColor(-1);
            return pdfShapeInfo;
        }

        @Deprecated(message = "")
        @NotNull
        public final PdfShapeInfo createFromPencilStroke(@NotNull String id, @NotNull String layerId, @NotNull RectF bounds, int strokeColor, float strokeWidth, @NotNull Matrix matrix, @NotNull String extraAttr, @NotNull float[] vertices) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(layerId, "layerId");
            Intrinsics.checkNotNullParameter(bounds, "bounds");
            Intrinsics.checkNotNullParameter(matrix, "matrix");
            Intrinsics.checkNotNullParameter(extraAttr, "extraAttr");
            Intrinsics.checkNotNullParameter(vertices, "vertices");
            PdfShapeInfo pdfShapeInfo = new PdfShapeInfo(16, id, layerId, bounds, strokeColor, strokeWidth, matrix, extraAttr, null);
            pdfShapeInfo.setVertices(vertices);
            return pdfShapeInfo;
        }

        @Deprecated(message = "")
        @JvmStatic
        @NotNull
        public final PdfShapeInfo createFromPolyLine(@NotNull String id, @NotNull String layerId, @NotNull RectF bounds, int strokeColor, float strokeWidth, @NotNull Matrix matrix, @NotNull String extraAttr, @NotNull float[] vertices) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(layerId, "layerId");
            Intrinsics.checkNotNullParameter(bounds, "bounds");
            Intrinsics.checkNotNullParameter(matrix, "matrix");
            Intrinsics.checkNotNullParameter(extraAttr, "extraAttr");
            Intrinsics.checkNotNullParameter(vertices, "vertices");
            PdfShapeInfo pdfShapeInfo = new PdfShapeInfo(2, id, layerId, bounds, strokeColor, strokeWidth, matrix, extraAttr, null);
            pdfShapeInfo.setVertices(vertices);
            return pdfShapeInfo;
        }

        @Deprecated(message = "")
        @JvmStatic
        @NotNull
        public final PdfShapeInfo createFromPolygon(@NotNull String id, @NotNull String layerId, @NotNull RectF bounds, int strokeColor, float strokeWidth, @NotNull Matrix matrix, @NotNull String extraAttr, @NotNull float[] vertices, int fillColor) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(layerId, "layerId");
            Intrinsics.checkNotNullParameter(bounds, "bounds");
            Intrinsics.checkNotNullParameter(matrix, "matrix");
            Intrinsics.checkNotNullParameter(extraAttr, "extraAttr");
            Intrinsics.checkNotNullParameter(vertices, "vertices");
            PdfShapeInfo pdfShapeInfo = new PdfShapeInfo(3, id, layerId, bounds, strokeColor, strokeWidth, matrix, extraAttr, null);
            pdfShapeInfo.setFillColor(fillColor);
            pdfShapeInfo.setVertices(vertices);
            return pdfShapeInfo;
        }

        @Deprecated(message = "")
        @JvmStatic
        @NotNull
        public final PdfShapeInfo createFromSquare(@NotNull String id, @NotNull String layerId, @NotNull RectF bounds, int strokeColor, float strokeWidth, @NotNull Matrix matrix, @NotNull String extraAttr, int fillColor) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(layerId, "layerId");
            Intrinsics.checkNotNullParameter(bounds, "bounds");
            Intrinsics.checkNotNullParameter(matrix, "matrix");
            Intrinsics.checkNotNullParameter(extraAttr, "extraAttr");
            PdfShapeInfo pdfShapeInfo = new PdfShapeInfo(4, id, layerId, bounds, strokeColor, strokeWidth, matrix, extraAttr, null);
            pdfShapeInfo.setFillColor(fillColor);
            return pdfShapeInfo;
        }

        @NotNull
        public final PdfShapeInfo createImageShape() {
            PdfShapeInfo pdfShapeInfo = new PdfShapeInfo();
            pdfShapeInfo.setType(8);
            return pdfShapeInfo;
        }

        @NotNull
        public final PdfShapeInfo createLineShape() {
            PdfShapeInfo pdfShapeInfo = new PdfShapeInfo();
            pdfShapeInfo.setType(1);
            return pdfShapeInfo;
        }

        @JvmStatic
        @NotNull
        public final PdfShapeInfo createLinkShape() {
            PdfShapeInfo pdfShapeInfo = new PdfShapeInfo();
            pdfShapeInfo.setType(20);
            return pdfShapeInfo;
        }

        @NotNull
        public final PdfShapeInfo createMarkerStrokeShape() {
            PdfShapeInfo pdfShapeInfo = new PdfShapeInfo();
            pdfShapeInfo.setType(13);
            return pdfShapeInfo;
        }

        @NotNull
        public final PdfShapeInfo createNeoBrushStrokeShape() {
            PdfShapeInfo pdfShapeInfo = new PdfShapeInfo();
            pdfShapeInfo.setType(11);
            return pdfShapeInfo;
        }

        @NotNull
        public final PdfShapeInfo createOverlayEraserShape() {
            PdfShapeInfo pdfShapeInfo = new PdfShapeInfo();
            pdfShapeInfo.setType(9);
            return pdfShapeInfo;
        }

        @JvmStatic
        @NotNull
        public final PdfShapeInfo createPencilStrokeShape() {
            PdfShapeInfo pdfShapeInfo = new PdfShapeInfo();
            pdfShapeInfo.setType(16);
            return pdfShapeInfo;
        }

        @NotNull
        public final PdfShapeInfo createPolyLineShape() {
            PdfShapeInfo pdfShapeInfo = new PdfShapeInfo();
            pdfShapeInfo.setType(2);
            return pdfShapeInfo;
        }

        @NotNull
        public final PdfShapeInfo createPolygonShape() {
            PdfShapeInfo pdfShapeInfo = new PdfShapeInfo();
            pdfShapeInfo.setType(3);
            return pdfShapeInfo;
        }

        @JvmStatic
        @NotNull
        public final PdfShapeInfo createSoundShape() {
            PdfShapeInfo pdfShapeInfo = new PdfShapeInfo();
            pdfShapeInfo.setType(19);
            return pdfShapeInfo;
        }

        @NotNull
        public final PdfShapeInfo createSquareShape() {
            PdfShapeInfo pdfShapeInfo = new PdfShapeInfo();
            pdfShapeInfo.setType(4);
            return pdfShapeInfo;
        }

        @JvmStatic
        @NotNull
        public final PdfShapeInfo createStampShape() {
            PdfShapeInfo pdfShapeInfo = new PdfShapeInfo();
            pdfShapeInfo.setType(17);
            return pdfShapeInfo;
        }

        @NotNull
        public final PdfShapeInfo createSvgShape() {
            PdfShapeInfo pdfShapeInfo = new PdfShapeInfo();
            pdfShapeInfo.setType(8);
            return pdfShapeInfo;
        }

        @JvmStatic
        @NotNull
        public final PdfShapeInfo createWavyLineShape() {
            PdfShapeInfo pdfShapeInfo = new PdfShapeInfo();
            pdfShapeInfo.setType(15);
            return pdfShapeInfo;
        }

        public final boolean supportSerializeShapeData(@NotNull PdfShapeInfo shape) {
            Intrinsics.checkNotNullParameter(shape, "shape");
            return new HashSet(Arrays.asList(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 13, 14, 15, 16, 17, 18, 19, 20)).contains(Integer.valueOf(shape.getType()));
        }

        public Companion() {
        }
    }

    public /* synthetic */ PdfShapeInfo(int i, String str, String str2, RectF rectF, int i2, float f, Matrix matrix, String str3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, str, str2, rectF, i2, f, matrix, str3);
    }

    @JvmStatic
    @NotNull
    public static final PdfShapeInfo createBrushStrokeShape() {
        return INSTANCE.createBrushStrokeShape();
    }

    @JvmStatic
    @NotNull
    public static final PdfShapeInfo createFileAttachmentShape() {
        return INSTANCE.createFileAttachmentShape();
    }

    @JvmStatic
    @NotNull
    public static final PdfShapeInfo createFreeTextShape() {
        return INSTANCE.createFreeTextShape();
    }

    @Deprecated(message = "")
    @JvmStatic
    @NotNull
    public static final PdfShapeInfo createFromAreaEraser(@NotNull String str, @NotNull String str2, @NotNull RectF rectF, int i, float f, @NotNull Matrix matrix, @NotNull String str3, @NotNull float[] fArr, int i2) {
        return INSTANCE.createFromAreaEraser(str, str2, rectF, i, f, matrix, str3, fArr, i2);
    }

    @Deprecated(message = "")
    @JvmStatic
    @NotNull
    public static final PdfShapeInfo createFromBrushStroke(@NotNull String str, @NotNull String str2, @NotNull RectF rectF, int i, float f, @NotNull Matrix matrix, @NotNull String str3, @NotNull float[] fArr, @NotNull float[] fArr2) {
        return INSTANCE.createFromBrushStroke(str, str2, rectF, i, f, matrix, str3, fArr, fArr2);
    }

    @Deprecated(message = "")
    @JvmStatic
    @NotNull
    public static final PdfShapeInfo createFromBrushStrokeV2(@NotNull String str, @NotNull String str2, @NotNull RectF rectF, int i, float f, @NotNull Matrix matrix, @NotNull String str3, @NotNull float[] fArr, @NotNull float[][] fArr2) {
        return INSTANCE.createFromBrushStrokeV2(str, str2, rectF, i, f, matrix, str3, fArr, fArr2);
    }

    @Deprecated(message = "")
    @JvmStatic
    @NotNull
    public static final PdfShapeInfo createFromCharcoalStroke(@NotNull String str, @NotNull String str2, @NotNull RectF rectF, int i, float f, @NotNull Matrix matrix, @NotNull String str3, @NotNull float[] fArr, @Nullable Bitmap bitmap) {
        return INSTANCE.createFromCharcoalStroke(str, str2, rectF, i, f, matrix, str3, fArr, bitmap);
    }

    @Deprecated(message = "")
    @JvmStatic
    @NotNull
    public static final PdfShapeInfo createFromCircle(@NotNull String str, @NotNull String str2, @NotNull RectF rectF, int i, float f, @NotNull Matrix matrix, @NotNull String str3, int i2) {
        return INSTANCE.createFromCircle(str, str2, rectF, i, f, matrix, str3, i2);
    }

    @Deprecated(message = "")
    @JvmStatic
    @NotNull
    public static final PdfShapeInfo createFromImage(@NotNull String str, @NotNull String str2, @NotNull RectF rectF, @NotNull Matrix matrix, @NotNull String str3, @Nullable String str4, @Nullable Bitmap bitmap) {
        return INSTANCE.createFromImage(str, str2, rectF, matrix, str3, str4, bitmap);
    }

    @Deprecated(message = "")
    @JvmStatic
    @NotNull
    public static final PdfShapeInfo createFromLine(@NotNull String str, @NotNull String str2, @NotNull RectF rectF, int i, float f, @NotNull Matrix matrix, @NotNull String str3, float f2, float f3, float f4, float f5) {
        return INSTANCE.createFromLine(str, str2, rectF, i, f, matrix, str3, f2, f3, f4, f5);
    }

    @Deprecated(message = "")
    @JvmStatic
    @NotNull
    public static final PdfShapeInfo createFromMarkerStroke(@NotNull String str, @NotNull String str2, @NotNull RectF rectF, int i, float f, @NotNull Matrix matrix, @NotNull String str3, @NotNull float[] fArr, @NotNull float[] fArr2) {
        return INSTANCE.createFromMarkerStroke(str, str2, rectF, i, f, matrix, str3, fArr, fArr2);
    }

    @Deprecated(message = "")
    @JvmStatic
    @NotNull
    public static final PdfShapeInfo createFromNeoBrushStroke(@NotNull String str, @NotNull String str2, @NotNull RectF rectF, int i, float f, @NotNull Matrix matrix, @NotNull String str3, @NotNull float[] fArr, @NotNull float[] fArr2) {
        return INSTANCE.createFromNeoBrushStroke(str, str2, rectF, i, f, matrix, str3, fArr, fArr2);
    }

    @Deprecated(message = "")
    @JvmStatic
    @NotNull
    public static final PdfShapeInfo createFromOverlayEraser(@NotNull String str, @NotNull String str2, @NotNull RectF rectF, float f, @NotNull Matrix matrix, @NotNull String str3, @NotNull float[] fArr) {
        return INSTANCE.createFromOverlayEraser(str, str2, rectF, f, matrix, str3, fArr);
    }

    @Deprecated(message = "")
    @JvmStatic
    @NotNull
    public static final PdfShapeInfo createFromPolyLine(@NotNull String str, @NotNull String str2, @NotNull RectF rectF, int i, float f, @NotNull Matrix matrix, @NotNull String str3, @NotNull float[] fArr) {
        return INSTANCE.createFromPolyLine(str, str2, rectF, i, f, matrix, str3, fArr);
    }

    @Deprecated(message = "")
    @JvmStatic
    @NotNull
    public static final PdfShapeInfo createFromPolygon(@NotNull String str, @NotNull String str2, @NotNull RectF rectF, int i, float f, @NotNull Matrix matrix, @NotNull String str3, @NotNull float[] fArr, int i2) {
        return INSTANCE.createFromPolygon(str, str2, rectF, i, f, matrix, str3, fArr, i2);
    }

    @Deprecated(message = "")
    @JvmStatic
    @NotNull
    public static final PdfShapeInfo createFromSquare(@NotNull String str, @NotNull String str2, @NotNull RectF rectF, int i, float f, @NotNull Matrix matrix, @NotNull String str3, int i2) {
        return INSTANCE.createFromSquare(str, str2, rectF, i, f, matrix, str3, i2);
    }

    @JvmStatic
    @NotNull
    public static final PdfShapeInfo createLinkShape() {
        return INSTANCE.createLinkShape();
    }

    @JvmStatic
    @NotNull
    public static final PdfShapeInfo createPencilStrokeShape() {
        return INSTANCE.createPencilStrokeShape();
    }

    @JvmStatic
    @NotNull
    public static final PdfShapeInfo createSoundShape() {
        return INSTANCE.createSoundShape();
    }

    @JvmStatic
    @NotNull
    public static final PdfShapeInfo createStampShape() {
        return INSTANCE.createStampShape();
    }

    @JvmStatic
    @NotNull
    public static final PdfShapeInfo createWavyLineShape() {
        return INSTANCE.createWavyLineShape();
    }

    public final void applyBlendMode(@NotNull String mode) {
        Intrinsics.checkNotNullParameter(mode, "mode");
        this.blendMode = mode;
    }

    public final void applyLineCapJoinStyle(boolean isRoundCorner) {
        if (isRoundCorner) {
            this.lineCap = 1;
            this.lineJoin = 1;
        } else {
            this.lineCap = 2;
            this.lineJoin = 1;
        }
    }

    public final void applyMultiplyBlendMode(boolean apply) {
        applyBlendMode(apply ? "Multiply" : "Normal");
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !Intrinsics.areEqual(PdfShapeInfo.class, obj.getClass())) {
            return false;
        }
        PdfShapeInfo pdfShapeInfo = (PdfShapeInfo) obj;
        EqualsUtils equalsUtils = EqualsUtils.INSTANCE;
        boolean z = equalsUtils.equals(this.type, pdfShapeInfo.type) && equalsUtils.equals(this.id, pdfShapeInfo.id) && equalsUtils.equals(this.groupId, pdfShapeInfo.groupId) && equalsUtils.equals(this.layerId, pdfShapeInfo.layerId) && equalsUtils.equals(this.author, pdfShapeInfo.author) && equalsUtils.equals(this.color, pdfShapeInfo.color) && equalsUtils.equals(this.strokeWidth, pdfShapeInfo.strokeWidth) && equalsUtils.equals(this.matrix, pdfShapeInfo.matrix) && equalsUtils.equals(this.extraAttr, pdfShapeInfo.extraAttr) && equalsUtils.equals(this.customAttr, pdfShapeInfo.customAttr) && equalsUtils.equals(this.text, pdfShapeInfo.text) && equalsUtils.equals(this.resourceId, pdfShapeInfo.resourceId) && equalsUtils.equals(this.linkType, pdfShapeInfo.linkType) && equalsUtils.equals(this.linkDest, pdfShapeInfo.linkDest) && equalsUtils.equals(this.lineArrowDirection, pdfShapeInfo.lineArrowDirection);
        int i = this.type;
        if ((i == 2 || i == 9 || i == 3 || i == 10 || i == 16) && !equalsUtils.equals(this.realPoints, pdfShapeInfo.realPoints)) {
            float[] fArr = this.realPoints;
            if (fArr == null) {
                fArr = PdfPoint.INSTANCE.verticesFromPoints(this.points);
            }
            float[] fArr2 = pdfShapeInfo.realPoints;
            if (fArr2 == null) {
                fArr2 = PdfPoint.INSTANCE.verticesFromPoints(pdfShapeInfo.points);
            }
            z &= equalsUtils.equals(fArr, fArr2);
        }
        int i2 = this.type;
        if ((i2 != 6 && i2 != 11 && i2 != 13 && i2 != 14) || equalsUtils.equals(this.realPoints, pdfShapeInfo.realPoints)) {
            return z;
        }
        float[] fArr3 = this.realPoints;
        if (fArr3 == null) {
            fArr3 = PdfPoint.INSTANCE.realPointsFromPoints(this.points);
        }
        float[] fArr4 = pdfShapeInfo.realPoints;
        if (fArr4 == null) {
            fArr4 = PdfPoint.INSTANCE.realPointsFromPoints(pdfShapeInfo.points);
        }
        return z & equalsUtils.equals(fArr3, fArr4);
    }

    @Nullable
    public final String getAuthor() {
        return this.author;
    }

    @Nullable
    public final Bitmap getBitmap() {
        return this.bitmap;
    }

    @NotNull
    public final String getBlendMode() {
        return this.blendMode;
    }

    public final int getColor() {
        return this.color;
    }

    @Nullable
    public final String getCustomAttr() {
        return this.customAttr;
    }

    @Nullable
    public final String getExtraAttr() {
        return this.extraAttr;
    }

    @Nullable
    public final byte[] getFileAttachmentData() {
        return this.fileAttachmentData;
    }

    @Nullable
    public final String getFileAttachmentPath() {
        return this.fileAttachmentPath;
    }

    public final int getFillColor() {
        return this.fillColor;
    }

    @Nullable
    public final String getFontName() {
        return this.fontName;
    }

    public final float getFontSize() {
        return this.fontSize;
    }

    public final int getFontcolor() {
        return this.fontcolor;
    }

    @Nullable
    public final String getGroupId() {
        return this.groupId;
    }

    @Nullable
    public final String getId() {
        return this.id;
    }

    public final int getImageHeight() {
        return this.imageHeight;
    }

    public final int getImageWidth() {
        return this.imageWidth;
    }

    @Nullable
    public final String getLayerId() {
        return this.layerId;
    }

    public final int getLineArrowDirection() {
        return this.lineArrowDirection;
    }

    public final int getLineCap() {
        return this.lineCap;
    }

    public final int getLineJoin() {
        return this.lineJoin;
    }

    @Nullable
    public final String getLinkDest() {
        return this.linkDest;
    }

    public final int getLinkType() {
        return this.linkType;
    }

    @Nullable
    public final float[] getMatrix() {
        return this.matrix;
    }

    @Nullable
    public final String getObjId() {
        return this.objId;
    }

    @Nullable
    public final String getPageId() {
        return this.pageId;
    }

    @Nullable
    public final List<PdfPoint> getPoints() {
        return this.points;
    }

    @Nullable
    public final float[] getRealPoints() {
        return this.realPoints;
    }

    @Nullable
    public final RectF getRect() {
        return this.rect;
    }

    @Nullable
    public final int[] getRenderPointSizeArray() {
        return this.renderPointSizeArray;
    }

    @Nullable
    public final float[] getRenderPoints() {
        return this.renderPoints;
    }

    @Nullable
    public final byte[] getResourceBuf() {
        return this.resourceBuf;
    }

    @Nullable
    public final String getResourceId() {
        return this.resourceId;
    }

    @Nullable
    public final String getRichText() {
        return this.richText;
    }

    @Nullable
    public final int[] getStrokeDashArray() {
        return this.strokeDashArray;
    }

    public final int getStrokeDashPhase() {
        return this.strokeDashPhase;
    }

    public final float getStrokeWavyLength() {
        return this.strokeWavyLength;
    }

    public final float getStrokeWavyPeak() {
        return this.strokeWavyPeak;
    }

    public final float getStrokeWidth() {
        return this.strokeWidth;
    }

    @Nullable
    public final String getText() {
        return this.text;
    }

    public final int getTextAlign() {
        return this.textAlign;
    }

    @Nullable
    public final PdfTextRun[] getTextRuns() {
        return this.textRuns;
    }

    public final int getType() {
        return this.type;
    }

    @Nullable
    public final float[] getVertices() {
        return this.vertices;
    }

    @Nullable
    public final byte[] getWavData() {
        return this.wavData;
    }

    /* renamed from: isTextBold, reason: from getter */
    public final boolean getIsTextBold() {
        return this.isTextBold;
    }

    /* renamed from: isTextItalic, reason: from getter */
    public final boolean getIsTextItalic() {
        return this.isTextItalic;
    }

    /* renamed from: isTextUnderline, reason: from getter */
    public final boolean getIsTextUnderline() {
        return this.isTextUnderline;
    }

    public final void resetDefaultColor() {
        this.color = -16777216;
        this.fillColor = 0;
    }

    public final void setAuthor(@Nullable String str) {
        this.author = str;
    }

    public final void setBitmap(@Nullable Bitmap bitmap) {
        this.bitmap = bitmap;
    }

    public final void setBlendMode(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.blendMode = str;
    }

    public final void setColor(int i) {
        this.color = i;
    }

    public final void setCustomAttr(@Nullable String str) {
        this.customAttr = str;
    }

    public final void setExtraAttr(@Nullable String str) {
        this.extraAttr = str;
    }

    public final void setFileAttachmentData(@Nullable byte[] bArr) {
        this.fileAttachmentData = bArr;
    }

    public final void setFileAttachmentPath(@Nullable String str) {
        this.fileAttachmentPath = str;
    }

    public final void setFillColor(int i) {
        this.fillColor = i;
    }

    public final void setFontName(@Nullable String str) {
        this.fontName = str;
    }

    public final void setFontSize(float f) {
        this.fontSize = f;
    }

    public final void setFontcolor(int i) {
        this.fontcolor = i;
    }

    public final void setGroupId(@Nullable String str) {
        this.groupId = str;
    }

    public final void setId(@Nullable String str) {
        this.id = str;
    }

    public final void setImageHeight(int i) {
        this.imageHeight = i;
    }

    public final void setImageWidth(int i) {
        this.imageWidth = i;
    }

    public final void setLayerId(@Nullable String str) {
        this.layerId = str;
    }

    public final void setLineArrowDirection(int i) {
        this.lineArrowDirection = i;
    }

    public final void setLineCap(int i) {
        this.lineCap = i;
    }

    public final void setLineJoin(int i) {
        this.lineJoin = i;
    }

    public final void setLinkDest(@Nullable String str) {
        this.linkDest = str;
    }

    public final void setLinkType(int i) {
        this.linkType = i;
    }

    public final void setMatrix(@Nullable float[] fArr) {
        this.matrix = fArr;
    }

    public final void setObjId(@Nullable String str) {
        this.objId = str;
    }

    public final void setPageId(@Nullable String str) {
        this.pageId = str;
    }

    public final void setPoints(@Nullable List<PdfPoint> list) {
        this.points = list;
    }

    public final void setRealPoints(@Nullable float[] fArr) {
        this.realPoints = fArr;
    }

    public final void setRect(@Nullable RectF rectF) {
        this.rect = rectF;
    }

    public final void setRenderPointSizeArray(@Nullable int[] iArr) {
        this.renderPointSizeArray = iArr;
    }

    public final void setRenderPoints(@Nullable float[] fArr) {
        this.renderPoints = fArr;
    }

    public final void setResourceBuf(@Nullable byte[] bArr) {
        this.resourceBuf = bArr;
    }

    public final void setResourceId(@Nullable String str) {
        this.resourceId = str;
    }

    public final void setRichText(@Nullable String str) {
        this.richText = str;
    }

    public final void setStrokeDashArray(@Nullable int[] iArr) {
        this.strokeDashArray = iArr;
    }

    public final void setStrokeDashPhase(int i) {
        this.strokeDashPhase = i;
    }

    public final void setStrokeWavyLength(float f) {
        this.strokeWavyLength = f;
    }

    public final void setStrokeWavyPeak(float f) {
        this.strokeWavyPeak = f;
    }

    public final void setStrokeWidth(float f) {
        this.strokeWidth = f;
    }

    public final void setText(@Nullable String str) {
        this.text = str;
    }

    public final void setTextAlign(int i) {
        this.textAlign = i;
    }

    public final void setTextBold(boolean z) {
        this.isTextBold = z;
    }

    public final void setTextItalic(boolean z) {
        this.isTextItalic = z;
    }

    public final void setTextRuns(@Nullable PdfTextRun[] pdfTextRunArr) {
        this.textRuns = pdfTextRunArr;
    }

    public final void setTextUnderline(boolean z) {
        this.isTextUnderline = z;
    }

    public final void setType(int i) {
        this.type = i;
    }

    public final void setVertices(@Nullable float[] fArr) {
        this.vertices = fArr;
    }

    public final void setWavData(@Nullable byte[] bArr) {
        this.wavData = bArr;
    }

    @NotNull
    public final String toInfoString() {
        return "PdfShape{type=" + this.type + ", id='" + this.id + "', objId='" + this.objId + "', groupId='" + this.groupId + "', pageId='" + this.pageId + "', layerId='" + this.layerId + "', author='" + this.author + "', rect=" + this.rect + ", color=" + Integer.toHexString(this.color) + ", strokeWidth=" + this.strokeWidth + ", strokeDashPhase=" + this.strokeDashPhase + ", lineArrowDirection=" + this.lineArrowDirection + ", lineCap=" + this.lineCap + ", lineJoin=" + this.lineJoin + ", fillColor=" + Integer.toHexString(this.fillColor) + ", matrix=" + Arrays.toString(this.matrix) + ", extraAttr='" + this.extraAttr + "', customAttr='" + this.customAttr + "', text='" + this.text + "', richText='" + this.richText + "', fontName='" + this.fontName + "', fontSize=" + this.fontSize + ", fontcolor=" + Integer.toHexString(this.fontcolor) + ", isTextBold=" + this.isTextBold + ", isTextItalic=" + this.isTextItalic + ", isTextUnderline=" + this.isTextUnderline + ", textAlign=" + this.textAlign + ", resourceId='" + this.resourceId + "', imageWidth=" + this.imageWidth + ", imageHeight=" + this.imageHeight + '}';
    }

    @NotNull
    public String toString() {
        int size;
        StringBuilder sb = new StringBuilder();
        sb.append("type:");
        sb.append(this.type);
        sb.append(",pageId:");
        sb.append(this.pageId);
        sb.append(",id:");
        sb.append(this.id);
        sb.append(",objId:");
        sb.append(this.objId);
        sb.append(",groupId:");
        sb.append(this.groupId);
        sb.append(",layerId:");
        sb.append(this.layerId);
        sb.append(",author: ");
        sb.append(this.author);
        sb.append(",rect:");
        RectF rectF = this.rect;
        sb.append(rectF == null ? "null" : String.valueOf(rectF));
        sb.append(",color:");
        sb.append(this.color);
        sb.append(",strokeWidth:");
        sb.append(this.strokeWidth);
        sb.append(",points size:");
        List<PdfPoint> list = this.points;
        if (list == null) {
            size = 0;
        } else {
            Intrinsics.checkNotNull(list);
            size = list.size();
        }
        sb.append(size);
        return sb.toString();
    }

    public PdfShapeInfo() {
        this.strokeWavyLength = 24.0f;
        this.strokeWavyPeak = 6.0f;
        this.lineCap = 2;
        this.lineJoin = 1;
        this.points = new ArrayList();
        this.fontSize = 12.0f;
        this.fontcolor = -16777216;
        this.blendMode = "Normal";
    }

    private PdfShapeInfo(int i, String str, String str2, RectF rectF, int i2, float f, Matrix matrix, String str3) {
        this.strokeWavyLength = 24.0f;
        this.strokeWavyPeak = 6.0f;
        this.lineCap = 2;
        this.lineJoin = 1;
        this.points = new ArrayList();
        this.fontSize = 12.0f;
        this.fontcolor = -16777216;
        this.blendMode = "Normal";
        this.type = i;
        this.id = str;
        this.layerId = str2;
        this.rect = rectF;
        this.color = i2;
        this.strokeWidth = f;
        this.matrix = MatrixKt.getMatrixValue(matrix);
        this.extraAttr = str3;
    }
}
