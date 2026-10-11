package com.onyx.android.sdk.note.common.pdf;

import android.graphics.Matrix;
import android.graphics.RectF;
import androidx.lifecycle.SavedStateHandle;
import com.alibaba.fastjson2.annotation.JSONField;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.MatrixValues;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeFactory;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.NotePageInfoUtils;
import com.onyx.android.sdk.replicator.note.data.line.ShapeLineStyle;
import com.onyx.android.sdk.replicator.note.data.resource.ShapeResource;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeCreateArgs;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeExtraAttr;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle;
import com.onyx.android.sdk.replicator.note.p035db.model.LinkModel;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.math.NumberUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b4\u0018\u0000 \u0096\u00012\u00020\u0001:\u0002\u0096\u0001B\t¢\u0006\u0006\b\u0094\u0001\u0010\u0095\u0001J\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0005\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002J\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002J\b\u0010\t\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0002J\u0006\u0010\r\u001a\u00020\fJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\fJ\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0012\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u0002J\u0006\u0010\u0014\u001a\u00020\u0013J\u0010\u0010\u0016\u001a\u00020\u00002\b\u0010\u0015\u001a\u0004\u0018\u00010\u0013J\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017J\u0010\u0010\u001a\u001a\u00020\u00002\b\u0010\u0019\u001a\u0004\u0018\u00010\u0017J\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bJ\u0010\u0010\u001e\u001a\u00020\u00002\b\u0010\u001d\u001a\u0004\u0018\u00010\u001bJ\u0006\u0010 \u001a\u00020\u001fJ\u000e\u0010\"\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u001fJ\u0006\u0010#\u001a\u00020\u001fJ\u000e\u0010%\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\u001fJ\u0006\u0010'\u001a\u00020&J\u0006\u0010(\u001a\u00020&J\u0006\u0010)\u001a\u00020&J\u000e\u0010+\u001a\u00020\u00002\u0006\u0010*\u001a\u00020&J\u000e\u0010-\u001a\u00020\u00002\u0006\u0010,\u001a\u00020&J\u000f\u0010.\u001a\u0004\u0018\u00010&¢\u0006\u0004\b.\u0010/J\u000e\u00101\u001a\u00020\u00002\u0006\u00100\u001a\u00020&J\u000f\u00102\u001a\u0004\u0018\u00010&¢\u0006\u0004\b2\u0010/J\b\u00104\u001a\u000203H\u0007J\b\u00106\u001a\u000205H\u0007J\u0010\u00108\u001a\u00020\u00002\b\u00107\u001a\u0004\u0018\u000103J\u0010\u0010:\u001a\u00020\u00002\b\u00109\u001a\u0004\u0018\u000103J\b\u0010;\u001a\u0004\u0018\u000103J\b\u0010<\u001a\u0004\u0018\u000103J\u0006\u0010=\u001a\u00020&J\b\u0010>\u001a\u0004\u0018\u00010\u0002J\u0010\u0010@\u001a\u00020\u00002\b\u0010?\u001a\u0004\u0018\u00010\u0002J\b\u0010A\u001a\u0004\u0018\u00010\u0002J\u0010\u0010C\u001a\u00020\u00002\b\u0010B\u001a\u0004\u0018\u00010\u0002J\b\u0010D\u001a\u0004\u0018\u00010\u0002J\u0010\u0010F\u001a\u00020\u00002\b\u0010E\u001a\u0004\u0018\u00010\u0002J\b\u0010G\u001a\u0004\u0018\u00010\u0002J\u0010\u0010I\u001a\u00020\u00002\b\u0010H\u001a\u0004\u0018\u00010\u0002J\b\u0010J\u001a\u0004\u0018\u00010\u0002J\b\u0010K\u001a\u0004\u0018\u00010\u0002J\b\u0010L\u001a\u0004\u0018\u00010\u0002J\u0010\u0010O\u001a\u00020\u00002\b\u0010N\u001a\u0004\u0018\u00010MJ\b\u0010P\u001a\u0004\u0018\u00010MJ\u0006\u0010Q\u001a\u00020\u001fJ\u000e\u0010S\u001a\u00020\u00002\u0006\u0010R\u001a\u00020\u001fJ\u0006\u0010T\u001a\u00020\u001fJ\u000e\u0010V\u001a\u00020\u00002\u0006\u0010U\u001a\u00020\u001fJ\b\u0010X\u001a\u0004\u0018\u00010WJ\u0010\u0010Z\u001a\u00020\u00002\b\u0010Y\u001a\u0004\u0018\u00010WJ\u0006\u0010[\u001a\u00020&J\u000e\u0010[\u001a\u00020&2\u0006\u0010\\\u001a\u00020&J\u0006\u0010]\u001a\u00020&J\u000e\u0010]\u001a\u00020&2\u0006\u0010\\\u001a\u00020&J\u0006\u0010_\u001a\u00020^J\u001c\u0010d\u001a\u00020c2\u0014\u0010b\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020a\u0018\u00010`J\u0014\u0010e\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020a\u0018\u00010`J\u000e\u0010g\u001a\u00020c2\u0006\u0010f\u001a\u00020^J\u0006\u0010h\u001a\u00020^R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bi\u0010jR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010jR\u0018\u0010\n\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bl\u0010jR\u0016\u0010\u000e\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bm\u0010nR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bo\u0010jR\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bp\u0010qR\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\br\u0010sR\u0018\u0010Y\u001a\u0004\u0018\u00010W8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bt\u0010uR\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bv\u0010wR\u0016\u0010!\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bx\u0010yR\u0016\u0010$\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bz\u0010yR\u0016\u0010*\u001a\u00020&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b{\u0010|R\u0018\u0010\u007f\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b}\u0010~R\u0019\u00109\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0080\u0001\u0010~R\u0019\u0010?\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0081\u0001\u0010jR\u0019\u0010B\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0082\u0001\u0010jR\u0019\u0010E\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0083\u0001\u0010jR\u0019\u0010H\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0084\u0001\u0010jR\u001a\u0010N\u001a\u0004\u0018\u00010M8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0085\u0001\u0010\u0086\u0001R\u0017\u0010R\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0087\u0001\u0010yR\u0017\u0010U\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0088\u0001\u0010yR'\u0010\u008b\u0001\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020a\u0018\u00010`8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0089\u0001\u0010\u008a\u0001R\u001b\u0010\u008e\u0001\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008c\u0001\u0010\u008d\u0001R\u001b\u0010\u0090\u0001\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008f\u0001\u0010\u008d\u0001R\u0019\u0010\u0093\u0001\u001a\u00020^8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0091\u0001\u0010\u0092\u0001¨\u0006\u0097\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "", "", "getShapeUniqueId", "shapeUniqueId", "setShapeUniqueId", "getDocumentUniqueId", CouchFieldKey.KEY_DOCUMENT_ID, "setDocumentUniqueId", "getPageUniqueId", CouchFieldKey.KEY_PAGE_ID, "setPageUniqueId", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "getPointList", "pointList", "setPointList", "getLayerId", "layerId", "setLayerId", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;", "getShapeCreateArgs", "shapeCreateArgs", "setShapeCreateArgs", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;", "getTextStyle", "textStyle", "setTextStyle", "Landroid/graphics/RectF;", "getBounds", "bounds", "setBounds", "", "getStrokeColor", ApiBroadCastReceiver.ARGS_STROKE_COLOR, "setStrokeColor", "getFillColor", CouchFieldKey.KEY_FILL_COLOR, "setFillColor", "", "getStrokeWidth", "getRenderStrokeWidth", "getRenderScale", ApiBroadCastReceiver.ARGS_STROKE_WIDTH, "setStrokeWidth", "scale", "setBitmapScale", "getBitmapScale", "()Ljava/lang/Float;", "expand", "setBitmapRectExpand", "getBitmapRectExpand", "Lcom/onyx/android/sdk/base/data/MatrixValues;", "getMatrixValues", "Landroid/graphics/Matrix;", "getMatrix", SavedStateHandle.f7922f, "setMatrixValues", "renderMatrixValues", "setRenderMatrixValues", "getRenderMatrixValues", "getShapeMatrixValues", "getShapeMatrixAverageScale", "getExtraAttr", "extraAttr", "setExtraAttr", "getText", "text", "setText", "getEditText", "editText", "setEditText", "getRichText", "richText", "setRichText", "getRenderText", "getResourceLocalPath", "getResourceId", "Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;", "resource", "setResource", "getResource", "getShapeType", "shapeType", "setShapeType", "getShapeStatus", CouchFieldKey.KEY_SHAPE_STATUS, "setShapeStatus", "Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;", "getShapeLineStyle", "shapeLineStyle", "setShapeLineStyle", "getWavyLength", "value", "getWavyPeak", "", "isEnabled", "", "Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;", Constant.MAP_TAG, "", "setLinkModelMap", "getLinkModelMap", "show", "setShowExcerptIndicator", "isShowExcerptIndicator", "a", Constants.STRING_SIG, "b", "c", "d", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "e", C6997f.f39671c, "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;", C6998g.f39679a, "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;", "i", "Landroid/graphics/RectF;", "j", "I", C4921e.f26537n, "l", "F", "m", "Lcom/onyx/android/sdk/base/data/MatrixValues;", "matrixValues", GoogleApiAvailabilityLight.f29016b, C4921e.f26528e, "p", "q", "r", "s", "Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;", "t", "u", "v", "Ljava/util/Map;", "linkModelMap", "w", "Ljava/lang/Float;", "bitmapScale", "x", "bitmapRectExpand", "y", Constants.HASIDCALL_INDEX_SIG, "showExcerptIndicator", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class EmbedShapeBean {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public String shapeUniqueId;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public String documentUniqueId;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public String pageUniqueId;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public String layerId;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public ShapeCreateArgs shapeCreateArgs;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public ShapeTextStyle textStyle;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public ShapeLineStyle shapeLineStyle;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public RectF bounds;

    /* renamed from: j, reason: from kotlin metadata */
    public int strokeColor;

    /* renamed from: k, reason: from kotlin metadata */
    public int fillColor;

    /* renamed from: l, reason: from kotlin metadata */
    public float strokeWidth;

    /* renamed from: m, reason: from kotlin metadata */
    @Nullable
    public MatrixValues matrixValues;

    /* renamed from: n, reason: from kotlin metadata */
    @Nullable
    public MatrixValues renderMatrixValues;

    /* renamed from: o, reason: from kotlin metadata */
    @Nullable
    public String extraAttr;

    /* renamed from: p, reason: from kotlin metadata */
    @Nullable
    public String text;

    /* renamed from: q, reason: from kotlin metadata */
    @Nullable
    public String editText;

    /* renamed from: r, reason: from kotlin metadata */
    @Nullable
    public String richText;

    /* renamed from: s, reason: from kotlin metadata */
    @Nullable
    public ShapeResource resource;

    /* renamed from: t, reason: from kotlin metadata */
    public int shapeType;

    /* renamed from: u, reason: from kotlin metadata */
    public int shapeStatus;

    /* renamed from: v, reason: from kotlin metadata */
    @Nullable
    public Map<String, LinkModel> linkModelMap;

    /* renamed from: w, reason: from kotlin metadata */
    @Nullable
    public Float bitmapScale;

    /* renamed from: x, reason: from kotlin metadata */
    @Nullable
    public Float bitmapRectExpand;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public TouchPointList pointList = new TouchPointList();

    /* renamed from: y, reason: from kotlin metadata */
    public boolean showExcerptIndicator = true;

    @Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0004J\u0018\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\bJ8\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\b\u0010\u000e\u001a\u0004\u0018\u00010\b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean$Companion;", "", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "shapeBean", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "toShape", "shape", "fromShape", "Landroid/graphics/Matrix;", "renderMatrix", "", "shapeType", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "pointList", "matrix", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;", "createArgs", "Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;", "lineStyle", "", "a", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final String m33799a(int shapeType, TouchPointList pointList, Matrix matrix, ShapeCreateArgs createArgs, ShapeLineStyle lineStyle) {
            ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
            if (shapeTypes.isPenShape(shapeType) || shapeTypes.isEraseShape(shapeType)) {
                return JSONUtils.INSTANCE.toJson(new ShapeExtraAttr().setType(shapeType).setShapeCreateArgs(createArgs));
            }
            return JSONUtils.INSTANCE.toJson(new ShapeExtraAttr().setType(shapeType).setMatrixValues(MatrixKt.getMatrixValue(matrix)).setLineStyle(lineStyle).setPoints(pointList.getPoints()).setShapeCreateArgs(createArgs));
        }

        @NotNull
        public final EmbedShapeBean fromShape(@NotNull Shape shape) {
            Intrinsics.checkNotNullParameter(shape, "shape");
            return fromShape(shape, null);
        }

        @NotNull
        public final Shape toShape(@NotNull EmbedShapeBean shapeBean) {
            Intrinsics.checkNotNullParameter(shapeBean, "shapeBean");
            Shape create = ShapeFactory.INSTANCE.create(shapeBean.getShapeType());
            create.setShapeUniqueId(StringKt.safelyGetStr(shapeBean.getShapeUniqueId()));
            create.setDocumentUniqueId(StringKt.safelyGetStr(shapeBean.getDocumentUniqueId()));
            create.setPageUniqueId(StringKt.safelyGetStr(shapeBean.getPageUniqueId()));
            create.setShapeCreateArgs(shapeBean.getShapeCreateArgs());
            create.setStrokeColor(shapeBean.getStrokeColor());
            create.setFillColor(shapeBean.getFillColor());
            create.setStrokeWidth(shapeBean.getStrokeWidth());
            create.setText(shapeBean.getText());
            create.setRichText(shapeBean.getRichText());
            create.setTextStyle(shapeBean.getTextStyle());
            create.setShapeMatrix(MatrixKt.getMatrixByValues(shapeBean.getMatrixValues()));
            create.setStatus(shapeBean.shapeStatus);
            create.addPoints(shapeBean.getPointList());
            ShapeLineStyle shapeLineStyle = shapeBean.getShapeLineStyle();
            if (shapeLineStyle != null) {
                ShapeOptions.INSTANCE.setShapeLineStyle(create, shapeLineStyle);
            }
            return create;
        }

        public Companion() {
        }

        @NotNull
        public final EmbedShapeBean fromShape(@NotNull Shape shape, @Nullable Matrix renderMatrix) {
            Intrinsics.checkNotNullParameter(shape, "shape");
            int type = shape.getType();
            Matrix matrix = new Matrix(shape.getShapeMatrix());
            if (renderMatrix != null) {
                matrix.postConcat(renderMatrix);
            }
            EmbedShapeBean shapeCreateArgs = new EmbedShapeBean().setShapeUniqueId(shape.getShapeUniqueId()).setDocumentUniqueId(shape.getDocumentUniqueId()).setPageUniqueId(shape.getPageUniqueId()).setPointList(shape.getPoints()).setLayerId(NotePageInfoUtils.INSTANCE.toPdfLayerId(shape.getLayerId())).setShapeCreateArgs(shape.getShapeCreateArgs());
            ShapeOptions shapeOptions = ShapeOptions.INSTANCE;
            EmbedShapeBean textStyle = shapeCreateArgs.setShapeLineStyle(shapeOptions.getShapeLineStyle(shape)).setBounds(shape.getBoundingRect()).setStrokeColor(shape.getStrokeColor()).setFillColor(shape.getFillColor()).setStrokeWidth(shape.getStrokeWidth()).setTextStyle(shape.getTextStyle());
            Matrix shapeMatrix = shape.getShapeMatrix();
            EmbedShapeBean shapeStatus = textStyle.setMatrixValues(shapeMatrix != null ? MatrixKt.toMatrixValues(shapeMatrix) : null).setText(shape.getText()).setRichText(shape.getRichText()).setShapeType(type).setShapeStatus(shape.getStatus());
            if (renderMatrix != null) {
                shapeStatus.setRenderMatrixValues(MatrixKt.toMatrixValues(renderMatrix));
            }
            shapeStatus.setExtraAttr(m33799a(type, shape.getPoints(), matrix, shape.getShapeCreateArgs(), shapeOptions.getShapeLineStyle(shape)));
            shapeStatus.setResource(shapeOptions.getResource(shape));
            return shapeStatus;
        }
    }

    @Nullable
    public final Float getBitmapRectExpand() {
        return this.bitmapRectExpand;
    }

    @Nullable
    public final Float getBitmapScale() {
        return this.bitmapScale;
    }

    @Nullable
    public final RectF getBounds() {
        return this.bounds;
    }

    @Nullable
    public final String getDocumentUniqueId() {
        return this.documentUniqueId;
    }

    @Nullable
    public final String getEditText() {
        return this.editText;
    }

    @Nullable
    public final String getExtraAttr() {
        return this.extraAttr;
    }

    public final int getFillColor() {
        return this.fillColor;
    }

    @Nullable
    public final String getLayerId() {
        return this.layerId;
    }

    @Nullable
    public final Map<String, LinkModel> getLinkModelMap() {
        return this.linkModelMap;
    }

    @JSONField(deserialize = false, serialize = false)
    @NotNull
    public final Matrix getMatrix() {
        Matrix matrixByValues = MatrixKt.getMatrixByValues(this.matrixValues);
        matrixByValues.postConcat(MatrixKt.getMatrixByValues(this.renderMatrixValues));
        return matrixByValues;
    }

    @JSONField(deserialize = false, serialize = false)
    @NotNull
    public final MatrixValues getMatrixValues() {
        return MatrixKt.toMatrixValues(getMatrix());
    }

    @Nullable
    public final String getPageUniqueId() {
        return this.pageUniqueId;
    }

    @NotNull
    public final TouchPointList getPointList() {
        return this.pointList;
    }

    @Nullable
    public final MatrixValues getRenderMatrixValues() {
        return this.renderMatrixValues;
    }

    public final float getRenderScale() {
        MatrixValues matrixValues = this.renderMatrixValues;
        if (matrixValues != null) {
            return MatrixKt.getMatrixMinScale(matrixValues != null ? matrixValues.getValues() : null);
        }
        Float FLOAT_ONE = NumberUtils.FLOAT_ONE;
        Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
        return FLOAT_ONE.floatValue();
    }

    public final float getRenderStrokeWidth() {
        return this.strokeWidth * getRenderScale() * getShapeMatrixAverageScale();
    }

    @Nullable
    public final String getRenderText() {
        return StringKt.isNotBlank(this.editText) ? this.editText : this.text;
    }

    @Nullable
    public final ShapeResource getResource() {
        return this.resource;
    }

    @Nullable
    public final String getResourceId() {
        ShapeResource shapeResource = this.resource;
        if (shapeResource == null) {
            return "";
        }
        Intrinsics.checkNotNull(shapeResource);
        return shapeResource.getUniqueId();
    }

    @Nullable
    public final String getResourceLocalPath() {
        ShapeResource shapeResource = this.resource;
        if (shapeResource == null) {
            return "";
        }
        Intrinsics.checkNotNull(shapeResource);
        return shapeResource.getPath();
    }

    @Nullable
    public final String getRichText() {
        return this.richText;
    }

    @NotNull
    public final ShapeCreateArgs getShapeCreateArgs() {
        if (this.shapeCreateArgs == null) {
            this.shapeCreateArgs = new ShapeCreateArgs(0.0f, 0.0f, null, null, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, false, 0, 32767, null);
        }
        ShapeCreateArgs shapeCreateArgs = this.shapeCreateArgs;
        Intrinsics.checkNotNull(shapeCreateArgs);
        return shapeCreateArgs;
    }

    @Nullable
    public final ShapeLineStyle getShapeLineStyle() {
        return this.shapeLineStyle;
    }

    public final float getShapeMatrixAverageScale() {
        return MatrixKt.getAverageScale(MatrixKt.getMatrixByValues(this.matrixValues));
    }

    @Nullable
    /* renamed from: getShapeMatrixValues, reason: from getter */
    public final MatrixValues getMatrixValues() {
        return this.matrixValues;
    }

    public final int getShapeStatus() {
        return this.shapeStatus;
    }

    public final int getShapeType() {
        return this.shapeType;
    }

    @Nullable
    public final String getShapeUniqueId() {
        return this.shapeUniqueId;
    }

    public final int getStrokeColor() {
        return this.strokeColor;
    }

    public final float getStrokeWidth() {
        return this.strokeWidth;
    }

    @Nullable
    public final String getText() {
        return this.text;
    }

    @Nullable
    public final ShapeTextStyle getTextStyle() {
        return this.textStyle;
    }

    public final float getWavyLength() {
        return getWavyLength(24.0f);
    }

    public final float getWavyPeak() {
        return getWavyPeak(6.0f);
    }

    public final boolean isEnabled() {
        return getShapeStatus() == 0;
    }

    /* renamed from: isShowExcerptIndicator, reason: from getter */
    public final boolean getShowExcerptIndicator() {
        return this.showExcerptIndicator;
    }

    @NotNull
    public final EmbedShapeBean setBitmapRectExpand(float expand) {
        this.bitmapRectExpand = Float.valueOf(expand);
        return this;
    }

    @NotNull
    public final EmbedShapeBean setBitmapScale(float scale) {
        this.bitmapScale = Float.valueOf(scale);
        return this;
    }

    @NotNull
    public final EmbedShapeBean setBounds(@Nullable RectF bounds) {
        this.bounds = bounds;
        return this;
    }

    @NotNull
    public final EmbedShapeBean setDocumentUniqueId(@Nullable String documentUniqueId) {
        this.documentUniqueId = documentUniqueId;
        return this;
    }

    @NotNull
    public final EmbedShapeBean setEditText(@Nullable String editText) {
        this.editText = editText;
        return this;
    }

    @NotNull
    public final EmbedShapeBean setExtraAttr(@Nullable String extraAttr) {
        this.extraAttr = extraAttr;
        return this;
    }

    @NotNull
    public final EmbedShapeBean setFillColor(int fillColor) {
        this.fillColor = fillColor;
        return this;
    }

    @NotNull
    public final EmbedShapeBean setLayerId(@Nullable String layerId) {
        this.layerId = layerId;
        return this;
    }

    public final void setLinkModelMap(@Nullable Map<String, LinkModel> map) {
        this.linkModelMap = map;
    }

    @NotNull
    public final EmbedShapeBean setMatrixValues(@Nullable MatrixValues values) {
        this.matrixValues = values;
        return this;
    }

    @NotNull
    public final EmbedShapeBean setPageUniqueId(@Nullable String pageUniqueId) {
        this.pageUniqueId = pageUniqueId;
        return this;
    }

    @NotNull
    public final EmbedShapeBean setPointList(@NotNull TouchPointList pointList) {
        Intrinsics.checkNotNullParameter(pointList, "pointList");
        this.pointList = pointList;
        return this;
    }

    @NotNull
    public final EmbedShapeBean setRenderMatrixValues(@Nullable MatrixValues renderMatrixValues) {
        this.renderMatrixValues = renderMatrixValues;
        return this;
    }

    @NotNull
    public final EmbedShapeBean setResource(@Nullable ShapeResource resource) {
        this.resource = resource;
        return this;
    }

    @NotNull
    public final EmbedShapeBean setRichText(@Nullable String richText) {
        this.richText = richText;
        return this;
    }

    @NotNull
    public final EmbedShapeBean setShapeCreateArgs(@Nullable ShapeCreateArgs shapeCreateArgs) {
        this.shapeCreateArgs = shapeCreateArgs;
        return this;
    }

    @NotNull
    public final EmbedShapeBean setShapeLineStyle(@Nullable ShapeLineStyle shapeLineStyle) {
        this.shapeLineStyle = shapeLineStyle;
        return this;
    }

    @NotNull
    public final EmbedShapeBean setShapeStatus(int shapeStatus) {
        this.shapeStatus = shapeStatus;
        return this;
    }

    @NotNull
    public final EmbedShapeBean setShapeType(int shapeType) {
        this.shapeType = shapeType;
        return this;
    }

    @NotNull
    public final EmbedShapeBean setShapeUniqueId(@Nullable String shapeUniqueId) {
        this.shapeUniqueId = shapeUniqueId;
        return this;
    }

    public final void setShowExcerptIndicator(boolean show) {
        this.showExcerptIndicator = show;
    }

    @NotNull
    public final EmbedShapeBean setStrokeColor(int strokeColor) {
        this.strokeColor = strokeColor;
        return this;
    }

    @NotNull
    public final EmbedShapeBean setStrokeWidth(float strokeWidth) {
        this.strokeWidth = strokeWidth;
        return this;
    }

    @NotNull
    public final EmbedShapeBean setText(@Nullable String text) {
        this.text = text;
        return this;
    }

    @NotNull
    public final EmbedShapeBean setTextStyle(@Nullable ShapeTextStyle textStyle) {
        this.textStyle = textStyle;
        return this;
    }

    public final float getWavyLength(float value) {
        return getShapeCreateArgs().getCreateScaleValue(value);
    }

    public final float getWavyPeak(float value) {
        return getShapeCreateArgs().getCreateScaleValue(value);
    }
}
