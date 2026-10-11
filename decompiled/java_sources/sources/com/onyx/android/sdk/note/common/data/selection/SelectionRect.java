package com.onyx.android.sdk.note.common.data.selection;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.Region;
import com.alibaba.fastjson2.annotation.JSONCreator;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.SizeF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.PointFKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.utils.RectUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.geometry.data.MirrorType;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.extension.TouchPointKt;
import com.onyx.android.sdk.note.C7485R;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.shape.RectCorner;
import com.onyx.android.sdk.note.common.data.shape.ShapeTransformAction;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.object.EditTextShape;
import com.onyx.android.sdk.note.common.utils.ShapeMatrixUtils;
import com.onyx.android.sdk.note.common.utils.ShapeRegionUtils;
import com.onyx.android.sdk.note.common.utils.ShapeRenderUtils;
import com.onyx.android.sdk.note.common.utils.ShapeUtils;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle;
import com.onyx.android.sdk.replicator.note.data.shape.TransformRectF;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.math.NumberUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0018\u0002\n\u0002\b!\u0018\u0000 \u0099\u00012\u00020\u0001:\u0002\u0099\u0001B\u000b\b\u0017¢\u0006\u0006\b\u0094\u0001\u0010\u0095\u0001B\u0013\b\u0016\u0012\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0006\b\u0094\u0001\u0010\u0096\u0001B\u001f\b\u0016\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u0012\b\u0010\r\u001a\u0004\u0018\u00010#¢\u0006\u0006\b\u0094\u0001\u0010\u0097\u0001B\u0015\b\u0016\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0000¢\u0006\u0006\b\u0094\u0001\u0010\u0098\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\t\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0018\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0018\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0018\u0010\f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0018\u0010\r\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J*\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\u0011\u001a\u00020\u0010H\u0002J\u0010\u0010\u0013\u001a\u00020\u00102\u0006\u0010\b\u001a\u00020\u0007H\u0002J\b\u0010\u0014\u001a\u00020\u0007H\u0002J\u0010\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u0010H\u0002J\u0010\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0017H\u0002J\u0010\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0017H\u0002J\u0018\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u0010H\u0002J \u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u0017H\u0002J\b\u0010 \u001a\u00020\u000eH\u0002J\u0018\u0010%\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020!2\u0006\u0010$\u001a\u00020#H\u0002J\u0018\u0010'\u001a\u00020\u00172\u0006\u0010&\u001a\u00020!2\u0006\u0010$\u001a\u00020#H\u0002J\b\u0010(\u001a\u00020\u000eH\u0002J\u0018\u0010+\u001a\u00020\u000e2\u0006\u0010)\u001a\u00020!2\u0006\u0010*\u001a\u00020\u0017H\u0002J\u0018\u0010,\u001a\u00020\u000e2\u0006\u0010)\u001a\u00020!2\u0006\u0010*\u001a\u00020\u0017H\u0002J \u0010/\u001a\u00020\u000e2\u0006\u0010)\u001a\u00020!2\u0006\u0010*\u001a\u00020\u00172\u0006\u0010.\u001a\u00020-H\u0002J\u0018\u00100\u001a\u00020\u000e2\u0006\u0010)\u001a\u00020!2\u0006\u0010*\u001a\u00020\u0017H\u0002J\u000e\u00102\u001a\u0002012\u0006\u0010*\u001a\u00020\u0017J\u000e\u00104\u001a\u0002012\u0006\u00103\u001a\u00020\u0017J\u000e\u00106\u001a\u0002012\u0006\u00105\u001a\u00020\u0004J\u0010\u00107\u001a\u0002012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017J\u0006\u00108\u001a\u00020\u0017J\u0010\u00109\u001a\u0002012\b\u0010$\u001a\u0004\u0018\u00010#J\u0010\u0010<\u001a\u0002012\b\u0010;\u001a\u0004\u0018\u00010:J\b\u0010=\u001a\u0004\u0018\u00010:J\u000e\u0010?\u001a\u0002012\u0006\u0010>\u001a\u00020\u0010J\u0006\u0010@\u001a\u00020\u0010J\u000e\u0010B\u001a\u0002012\u0006\u0010A\u001a\u00020\u0004J\u0006\u0010C\u001a\u00020\u0004J\u0006\u0010D\u001a\u00020\u0004J\u000e\u0010F\u001a\u0002012\u0006\u0010E\u001a\u00020\u0004J\b\u0010G\u001a\u0004\u0018\u00010#J\u0006\u0010H\u001a\u00020#J\u0006\u0010I\u001a\u00020\u0010J\u000e\u0010K\u001a\u00020\u00002\u0006\u0010J\u001a\u00020\u0010J\u0006\u0010L\u001a\u00020!J\u000e\u0010N\u001a\u00020\u00002\u0006\u0010M\u001a\u00020!J\u0006\u0010O\u001a\u00020\u0004J\u0014\u0010R\u001a\u00020\u00002\f\u0010Q\u001a\b\u0012\u0004\u0012\u00020-0PJ\u0006\u0010S\u001a\u00020\u0004J\u0016\u0010U\u001a\u00020T2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010O\u001a\u00020\u0004J\u000e\u0010V\u001a\u00020T2\u0006\u0010\u0003\u001a\u00020\u0002J\u001c\u0010Y\u001a\u00020T2\f\u0010X\u001a\b\u0012\u0004\u0012\u00020W0P2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010[\u001a\u00020Z2\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\\\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0004J\u000e\u0010]\u001a\u00020T2\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010^\u001a\u00020\u0010J\u000e\u0010`\u001a\u00020\u00002\u0006\u0010_\u001a\u00020\u0010J\u0006\u0010a\u001a\u00020\u0010J\u000e\u0010c\u001a\u00020\u00002\u0006\u0010b\u001a\u00020\u0010J\u0010\u0010e\u001a\u0002012\b\b\u0002\u0010d\u001a\u00020\u0010J\u0006\u0010f\u001a\u00020\u0010J\u0006\u0010g\u001a\u00020!J\u000e\u0010i\u001a\u0002012\u0006\u0010h\u001a\u00020!J\u000e\u0010k\u001a\u00020\u00002\u0006\u0010j\u001a\u00020\u0010J\u0006\u0010l\u001a\u00020\u000eJ\u000e\u0010m\u001a\u0002012\u0006\u0010$\u001a\u00020#J\u000e\u0010o\u001a\u00020\u00172\u0006\u0010n\u001a\u00020\u0017J\u0006\u0010p\u001a\u00020\u000eJ\u0006\u0010q\u001a\u00020\u000eJ\u0016\u0010t\u001a\u00020\u00022\u0006\u0010r\u001a\u00020\u00102\u0006\u0010s\u001a\u00020\u0010J\u0006\u0010u\u001a\u00020\u0017J\u0016\u0010v\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u0010J\u000e\u0010x\u001a\u00020\u00042\u0006\u0010w\u001a\u00020\u0010J\u000e\u0010z\u001a\u00020\u00042\u0006\u0010.\u001a\u00020yJ\u0016\u0010}\u001a\u00020\u000e2\u0006\u0010{\u001a\u00020\u00102\u0006\u0010|\u001a\u00020\u0010J\u0016\u0010~\u001a\u00020\u000e2\u0006\u0010{\u001a\u00020\u00102\u0006\u0010|\u001a\u00020\u0010J\u0010\u0010\u007f\u001a\u00020\u000e2\b\b\u0002\u0010$\u001a\u00020#J\u0011\u0010\u0080\u0001\u001a\u00020\u000e2\b\b\u0002\u0010$\u001a\u00020#J\u0007\u0010\u0081\u0001\u001a\u00020#J\u0007\u0010\u0082\u0001\u001a\u00020\u0017J\u0007\u0010\u0083\u0001\u001a\u00020\u0004J\u0017\u0010\u0084\u0001\u001a\u00020\u00042\u0006\u0010{\u001a\u00020\u00102\u0006\u0010|\u001a\u00020\u0010J\u0007\u0010\u0085\u0001\u001a\u00020\u0000R\u0018\u0010\u0087\u0001\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u001f\u0010\u0086\u0001R\u0018\u0010\u0089\u0001\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b/\u0010\u0088\u0001R\u0019\u0010$\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b0\u0010\u0088\u0001R\u0017\u0010*\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b%\u0010\u0086\u0001R\u0018\u0010\u008a\u0001\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b'\u0010\u0086\u0001R\u0017\u0010>\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0016\u0010\u008b\u0001R\u0017\u0010C\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b(\u0010\u008c\u0001R\u0017\u0010D\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b,\u0010\u008c\u0001R\u0017\u0010J\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b \u0010\u008b\u0001R\u0017\u0010_\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b+\u0010\u008b\u0001R\u0017\u0010b\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0014\u0010\u008b\u0001R\u0017\u0010j\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0013\u0010\u008b\u0001R\u0017\u0010M\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\r\u0010\u008d\u0001R\u0019\u0010;\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\t\u0010\u008e\u0001R\u0018\u0010\u008f\u0001\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\n\u0010\u008d\u0001R\u0018\u0010\u0090\u0001\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\f\u0010\u008d\u0001R\u001e\u0010\u0092\u0001\u001a\b\u0012\u0004\u0012\u00020-0P8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u000b\u0010\u0091\u0001R\u0018\u0010\u0093\u0001\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0005\u0010\u008c\u0001¨\u0006\u009a\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "point", "", "r", "hitTestPoint", "Lcom/onyx/android/sdk/base/data/SizeF;", "selectionRenderSize", GoogleApiAvailabilityLight.f29016b, C4921e.f26528e, "q", "p", "m", "Landroid/graphics/PointF;", "centerPoint", "", "radius", "v", "l", C4921e.f26537n, "value", C6997f.f39671c, "Landroid/graphics/RectF;", "rect", "s", "u", "sx", "sy", "t", "rectF", "a", "i", "", "position", "Landroid/graphics/Matrix;", "renderMatrix", "d", "handlerPosition", "e", C6998g.f39679a, "pos", "originRect", "j", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/data/selection/SelectionHandleType;", "type", "b", "c", "", "setOriginRect", "visibleRectF", "setVisibleRect", "limit", "setScaleInUnRotateLimitRect", "setLimitRect", "getLimitRect", "setRenderMatrix", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "trackPointList", "setTrackPointList", "getTrackPointList", "renderScale", "setRenderScale", "getRenderScale", "singleSelection", "setSingleSelection", "isSingleSelection", "isTextSelection", "textSelection", "setTextSelection", "getRenderMatrix", "getSelectionMatrix", "getSelectionHandleHeight", "selectionHandleHeight", "setSelectionHandleHeight", "getOrientation", "orientation", "setOrientation", "isVertical", "", "types", "setSelectionHandleTypes", "isQuickCopyEnable", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;", "textInputTouchPointHitTest", "V2TouchPointHitTest", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapes", "V3TouchPointHitTest", "Lcom/onyx/android/sdk/note/common/data/shape/RectCorner;", "touchCornerPointHitTest", "hitTestTranslate", "hitTestTrackPoint", "getTouchDeviationRange", "touchDeviationRange", "setTouchDeviationRange", "getSelectionRotateCircleRadius", "selectionRotateCircleRadius", "setSelectionRotateCircleRadius", "scale", "expandSelectionRect", "getSelectionCircleRadius", "getSelectionMinSize", "size", "setCustomSelectionMinSize", "selectionCircleRadius", "setSelectionCircleRadius", "getRotateHandlerPoint", "updateRotationPosition", "selectRectF", "redressSelectionRect", "getNoteRotateHandlerPoint", "getCenterPoint", "dx", "dy", "onTranslate", "getBoundRect", "onScale", "addedAngle", "onRotate", "Lcom/onyx/android/sdk/geometry/data/MirrorType;", "onMirror", "x", "y", "getMatrixPoint", "getRenderMatrixPoint", "getCurrentRenderRotationPoint", "getCurrentRenderQuickCopyPoint", "getMatrix", "getOriginRect", "isEmpty", "isPointInLimitRect", "copy", "Landroid/graphics/RectF;", "limitRect", "Landroid/graphics/Matrix;", "matrix", "visibleRect", "F", Constants.HASIDCALL_INDEX_SIG, "I", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "customSelectionMinSize", "scaleHandlerPosition", "Ljava/util/List;", "selectionHandleTypes", "scaleInUnRotateLimitRect", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "(Landroid/graphics/RectF;)V", "(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V", "(Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;)V", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SelectionRect {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final long LIMIT_SELECTION_BITMAP_SIZE = 41943040;
    public static final int SCALE_HANDLER_POS_BOTTOM = 3;
    public static final int SCALE_HANDLER_POS_LEFT = 0;
    public static final int SCALE_HANDLER_POS_RIGHT = 2;
    public static final int SCALE_HANDLER_POS_TOP = 1;
    public static final float SELECTION_CIRCLE_RADIUS = 10.0f;
    public static final float SELECTION_HANDLE_HEIGHT = 50.0f;
    public static final float SELECTION_RECT_PADDING = 0.0f;
    public static final int SELECTION_SIZE_LIMIT_VALUE_FOR_TRIGGER_TOUCH_DEVIATION = 75;
    public static final float SELECTION_TRACK_PADDING = 8.0f;
    public static final float TOUCH_DEVIATION_RANGE = 30.0f;

    /* renamed from: s */
    public static float f43293s;

    /* renamed from: t */
    public static float f43294t;

    /* renamed from: u */
    public static float f43295u;

    /* renamed from: v */
    public static final float f43296v;

    /* renamed from: w */
    public static final float f43297w;

    /* renamed from: x */
    public static final float f43298x;

    /* renamed from: y */
    public static final float f43299y;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public RectF limitRect;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public Matrix matrix;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public Matrix renderMatrix;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public RectF originRect;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public RectF visibleRect;

    /* renamed from: f, reason: from kotlin metadata */
    public float renderScale;

    /* renamed from: g, reason: from kotlin metadata */
    public boolean isSingleSelection;

    /* renamed from: h, reason: from kotlin metadata */
    public boolean isTextSelection;

    /* renamed from: i, reason: from kotlin metadata */
    public float selectionHandleHeight;

    /* renamed from: j, reason: from kotlin metadata */
    public float touchDeviationRange;

    /* renamed from: k, reason: from kotlin metadata */
    public float selectionRotateCircleRadius;

    /* renamed from: l, reason: from kotlin metadata */
    public float selectionCircleRadius;

    /* renamed from: m, reason: from kotlin metadata */
    public int orientation;

    /* renamed from: n, reason: from kotlin metadata */
    @Nullable
    public TouchPointList trackPointList;

    /* renamed from: o, reason: from kotlin metadata */
    public int customSelectionMinSize;

    /* renamed from: p, reason: from kotlin metadata */
    public int scaleHandlerPosition;

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public List<? extends SelectionHandleType> selectionHandleTypes;

    /* renamed from: r, reason: from kotlin metadata */
    public boolean scaleInUnRotateLimitRect;

    @Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0014\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000e\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b9\u0010:J4\u0010\f\u001a\u0004\u0018\u00010\u000b2\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\n\u001a\u00020\tJ \u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\tH\u0002J\u001e\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0016\u0010\u0011\u001a\u00020\u000b2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00070\u0002H\u0002J \u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0003H\u0002R\"\u0010\u0016\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\"\u0010\u001c\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u0017\u001a\u0004\b\u001d\u0010\u0019\"\u0004\b\u001e\u0010\u001bR\"\u0010\u001f\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010\u0017\u001a\u0004\b \u0010\u0019\"\u0004\b!\u0010\u001bR\u001a\u0010\"\u001a\u00020\u00158\u0006X\u0086D¢\u0006\f\n\u0004\b\"\u0010\u0017\u001a\u0004\b#\u0010\u0019R\u0017\u0010$\u001a\u00020\u00158\u0006¢\u0006\f\n\u0004\b$\u0010\u0017\u001a\u0004\b%\u0010\u0019R\u0017\u0010&\u001a\u00020\u00158\u0006¢\u0006\f\n\u0004\b&\u0010\u0017\u001a\u0004\b'\u0010\u0019R\u0017\u0010(\u001a\u00020\u00158\u0006¢\u0006\f\n\u0004\b(\u0010\u0017\u001a\u0004\b)\u0010\u0019R\u0014\u0010+\u001a\u00020*8\u0006X\u0086T¢\u0006\u0006\n\u0004\b+\u0010,R\u0014\u0010.\u001a\u00020-8\u0006X\u0086T¢\u0006\u0006\n\u0004\b.\u0010/R\u0014\u00100\u001a\u00020-8\u0006X\u0086T¢\u0006\u0006\n\u0004\b0\u0010/R\u0014\u00101\u001a\u00020-8\u0006X\u0086T¢\u0006\u0006\n\u0004\b1\u0010/R\u0014\u00102\u001a\u00020-8\u0006X\u0086T¢\u0006\u0006\n\u0004\b2\u0010/R\u0014\u00103\u001a\u00020\u00158\u0006X\u0086T¢\u0006\u0006\n\u0004\b3\u0010\u0017R\u0014\u00104\u001a\u00020\u00158\u0006X\u0086T¢\u0006\u0006\n\u0004\b4\u0010\u0017R\u0014\u00105\u001a\u00020\u00158\u0006X\u0086T¢\u0006\u0006\n\u0004\b5\u0010\u0017R\u0014\u00106\u001a\u00020-8\u0006X\u0086T¢\u0006\u0006\n\u0004\b6\u0010/R\u0014\u00107\u001a\u00020\u00158\u0006X\u0086T¢\u0006\u0006\n\u0004\b7\u0010\u0017R\u0014\u00108\u001a\u00020\u00158\u0006X\u0086T¢\u0006\u0006\n\u0004\b8\u0010\u0017¨\u0006;"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect$Companion;", "", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapes", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "Landroid/graphics/RectF;", "limitRect", "", "expandRectByStrokeWidth", "Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;", "buildSelectionRect", "shape", "c", "b", "shapeRectList", "d", "originRect", "", "a", "", "SELECTION_RECT_HANDLER_SIZE", "F", "getSELECTION_RECT_HANDLER_SIZE", "()F", "setSELECTION_RECT_HANDLER_SIZE", "(F)V", "SELECTION_RECT_HANDLER_SPACE_SIZE", "getSELECTION_RECT_HANDLER_SPACE_SIZE", "setSELECTION_RECT_HANDLER_SPACE_SIZE", "SELECTION_ROTATE_CIRCLE_RADIUS", "getSELECTION_ROTATE_CIRCLE_RADIUS", "setSELECTION_ROTATE_CIRCLE_RADIUS", "SELECTION_RECT_STROKE_WIDTH", "getSELECTION_RECT_STROKE_WIDTH", "SELECTION_RECT_STRETCH_RECT_WIDTH", "getSELECTION_RECT_STRETCH_RECT_WIDTH", "SELECTION_RECT_STRETCH_RECT_HEIGHT", "getSELECTION_RECT_STRETCH_RECT_HEIGHT", "ROTATION_HANDLE_OFFSET", "getROTATION_HANDLE_OFFSET", "", "LIMIT_SELECTION_BITMAP_SIZE", "J", "", "SCALE_HANDLER_POS_BOTTOM", "I", "SCALE_HANDLER_POS_LEFT", "SCALE_HANDLER_POS_RIGHT", "SCALE_HANDLER_POS_TOP", "SELECTION_CIRCLE_RADIUS", "SELECTION_HANDLE_HEIGHT", "SELECTION_RECT_PADDING", "SELECTION_SIZE_LIMIT_VALUE_FOR_TRIGGER_TOUCH_DEVIATION", "SELECTION_TRACK_PADDING", "TOUCH_DEVIATION_RANGE", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ SelectionRect buildSelectionRect$default(Companion companion, List list, RenderContext renderContext, RectF rectF, boolean z, int i, Object obj) {
            if ((i & 8) != 0) {
                z = true;
            }
            return companion.buildSelectionRect(list, renderContext, rectF, z);
        }

        /* renamed from: a */
        public final void m33688a(RenderContext renderContext, RectF originRect, Shape shape) {
            float strokeWidth = shape.getStrokeWidth();
            if (RenderContext.INSTANCE.isNormalized()) {
                strokeWidth = renderContext.getMatrixInvertValue(shape.getStrokeWidth());
            }
            RectKt.expand(originRect, strokeWidth);
        }

        /* renamed from: b */
        public final SelectionRect m33689b(RenderContext renderContext, List<? extends Shape> shapes) {
            ArrayList arrayList = new ArrayList();
            for (Shape shape : shapes) {
                RectF rectF = new RectF(shape.getOriginRect());
                m33688a(renderContext, rectF, shape);
                Matrix shapeMatrix = shape.getShapeMatrix();
                if (shapeMatrix != null) {
                    shapeMatrix.mapRect(rectF);
                }
                arrayList.add(rectF);
            }
            return m33691d(arrayList);
        }

        @Nullable
        public final SelectionRect buildSelectionRect(@Nullable List<? extends Shape> shapes, @NotNull RenderContext renderContext, @Nullable RectF limitRect, boolean expandRectByStrokeWidth) {
            Intrinsics.checkNotNullParameter(renderContext, "renderContext");
            if (CollectionKt.isNullOrEmpty(shapes)) {
                return null;
            }
            SelectionRect m33690c = shapes.size() == 1 ? m33690c(renderContext, shapes.get(0), expandRectByStrokeWidth) : m33689b(renderContext, shapes);
            m33690c.setRenderMatrix(renderContext.getMatrix());
            m33690c.setLimitRect(limitRect);
            m33690c.setRenderScale(renderContext.getRenderMeasure().getScale());
            m33690c.setSelectionHandleTypes(SelectionHandleType.INSTANCE.getSelectionHandleTypes(shapes));
            return m33690c;
        }

        /* renamed from: c */
        public final SelectionRect m33690c(RenderContext renderContext, Shape shape, boolean expandRectByStrokeWidth) {
            RectF copy = RectFKt.copy(shape.getOriginRect());
            if (expandRectByStrokeWidth) {
                m33688a(renderContext, copy, shape);
            }
            ShapeMatrixUtils shapeMatrixUtils = ShapeMatrixUtils.INSTANCE;
            Matrix shapeMatrix = shape.getShapeMatrix();
            if (shapeMatrix == null) {
                shapeMatrix = new Matrix();
            }
            TransformRectF transformRect = shapeMatrixUtils.getTransformRect(copy, shapeMatrix);
            Matrix matrix = new Matrix();
            matrix.setRotate(transformRect.getAngle(), transformRect.getOriginCenterX(), transformRect.getOriginCenterY());
            SelectionRect selectionRect = new SelectionRect(transformRect.getOriginRectF(), matrix);
            selectionRect.setSingleSelection(true);
            if (shape instanceof EditTextShape) {
                selectionRect.setTextSelection(true);
                ShapeTextStyle textStyle = shape.getTextStyle();
                selectionRect.setOrientation(textStyle != null ? textStyle.getOrientation() : 0);
            }
            return selectionRect;
        }

        /* renamed from: d */
        public final SelectionRect m33691d(List<? extends RectF> shapeRectList) {
            RectF rectF = null;
            for (RectF rectF2 : shapeRectList) {
                if (rectF == null) {
                    rectF = new RectF(rectF2);
                } else {
                    rectF.union(rectF2);
                }
            }
            if (rectF == null) {
                rectF = new RectF();
            }
            return new SelectionRect(rectF);
        }

        public final float getROTATION_HANDLE_OFFSET() {
            return SelectionRect.f43299y;
        }

        public final float getSELECTION_RECT_HANDLER_SIZE() {
            return SelectionRect.f43293s;
        }

        public final float getSELECTION_RECT_HANDLER_SPACE_SIZE() {
            return SelectionRect.f43294t;
        }

        public final float getSELECTION_RECT_STRETCH_RECT_HEIGHT() {
            return SelectionRect.f43298x;
        }

        public final float getSELECTION_RECT_STRETCH_RECT_WIDTH() {
            return SelectionRect.f43297w;
        }

        public final float getSELECTION_RECT_STROKE_WIDTH() {
            return SelectionRect.f43296v;
        }

        public final float getSELECTION_ROTATE_CIRCLE_RADIUS() {
            return SelectionRect.f43295u;
        }

        public final void setSELECTION_RECT_HANDLER_SIZE(float f) {
            SelectionRect.f43293s = f;
        }

        public final void setSELECTION_RECT_HANDLER_SPACE_SIZE(float f) {
            SelectionRect.f43294t = f;
        }

        public final void setSELECTION_ROTATE_CIRCLE_RADIUS(float f) {
            SelectionRect.f43295u = f;
        }

        public Companion() {
        }
    }

    static {
        ResManager resManager = ResManager.INSTANCE;
        f43293s = resManager.getDimension(C7485R.dimen.selection_handler_icon_size);
        f43294t = resManager.getDimension(C7485R.dimen.selection_handler_icon_space);
        f43295u = resManager.getDimension(C7485R.dimen.selection_handler_icon_size) / 2;
        f43296v = 2.0f;
        f43297w = resManager.getDimens(C7485R.dimen.selection_rect_stretch_rect_width);
        f43298x = resManager.getDimens(C7485R.dimen.selection_rect_stretch_rect_height);
        f43299y = resManager.getDimens(C7485R.dimen.selection_rotation_handle_offset);
    }

    @JSONCreator
    public SelectionRect() {
        List<? extends SelectionHandleType> list;
        this.limitRect = new RectF();
        this.matrix = new Matrix();
        this.originRect = new RectF();
        this.visibleRect = new RectF();
        Float FLOAT_ONE = NumberUtils.FLOAT_ONE;
        Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
        this.renderScale = FLOAT_ONE.floatValue();
        this.selectionHandleHeight = 50.0f;
        this.touchDeviationRange = 30.0f;
        this.selectionRotateCircleRadius = f43295u;
        this.selectionCircleRadius = ResManager.INSTANCE.getFloat(C7485R.dimen.selection_circle_radius);
        this.customSelectionMinSize = -1;
        this.scaleHandlerPosition = 2;
        list = CollectionsKt___CollectionsKt.toList(SelectionHandleType.getEntries());
        this.selectionHandleTypes = list;
        this.scaleInUnRotateLimitRect = true;
    }

    public static /* synthetic */ void expandSelectionRect$default(SelectionRect selectionRect, float f, int i, Object obj) {
        if ((i & 1) != 0) {
            Float FLOAT_ONE = NumberUtils.FLOAT_ONE;
            Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
            f = FLOAT_ONE.floatValue();
        }
        selectionRect.expandSelectionRect(f);
    }

    public static /* synthetic */ PointF getCurrentRenderQuickCopyPoint$default(SelectionRect selectionRect, Matrix matrix, int i, Object obj) {
        if ((i & 1) != 0) {
            matrix = new Matrix();
        }
        return selectionRect.getCurrentRenderQuickCopyPoint(matrix);
    }

    public static /* synthetic */ PointF getCurrentRenderRotationPoint$default(SelectionRect selectionRect, Matrix matrix, int i, Object obj) {
        if ((i & 1) != 0) {
            matrix = new Matrix();
        }
        return selectionRect.getCurrentRenderRotationPoint(matrix);
    }

    /* renamed from: w */
    public static /* synthetic */ boolean m33665w(SelectionRect selectionRect, PointF pointF, TouchPoint touchPoint, SizeF sizeF, float f, int i, Object obj) {
        if ((i & 8) != 0) {
            f = selectionRect.getSelectionCircleRadius();
        }
        return selectionRect.m33687v(pointF, touchPoint, sizeF, f);
    }

    @NotNull
    public final ShapeTransformAction V2TouchPointHitTest(@NotNull TouchPoint point) {
        Intrinsics.checkNotNullParameter(point, "point");
        TouchPoint touchPoint = new TouchPoint(point);
        SizeF m33676k = m33676k();
        PointF m33675j = m33675j(this.scaleHandlerPosition, getOriginRect());
        return m33687v(getMatrixPoint(m33675j.x, m33675j.y), point, m33676k, getSelectionRotateCircleRadius()) ? ShapeTransformAction.Rotation : m33680o(touchPoint, m33676k) ? ShapeTransformAction.ScaleX : m33682q(touchPoint, m33676k) ? ShapeTransformAction.ScaleY : m33681p(touchPoint, m33676k) ? ShapeTransformAction.ScaleXY : hitTestTranslate(touchPoint) ? ShapeTransformAction.Translate : ShapeTransformAction.Undefined;
    }

    @NotNull
    public final ShapeTransformAction V3TouchPointHitTest(@NotNull List<? extends Shape> shapes, @NotNull TouchPoint point) {
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        Intrinsics.checkNotNullParameter(point, "point");
        TouchPoint touchPoint = new TouchPoint(point);
        SizeF m33676k = m33676k();
        ShapeUtils shapeUtils = ShapeUtils.INSTANCE;
        boolean hasTextShape = shapeUtils.hasTextShape(shapes);
        boolean hasExcerptShape = shapeUtils.hasExcerptShape(shapes);
        return (shapeUtils.hasExcerptShape(shapes) || !m33679n(touchPoint, m33676k)) ? (isQuickCopyEnable() && !shapeUtils.hasExcerptShape(shapes) && m33678m(touchPoint, m33676k)) ? ShapeTransformAction.QuickCopy : (hasExcerptShape || !m33683r(touchPoint)) ? m33681p(touchPoint, m33676k) ? ShapeTransformAction.ScaleXY : (hasTextShape || !m33680o(touchPoint, m33676k)) ? (hasTextShape || !m33682q(touchPoint, m33676k)) ? (hasExcerptShape || !hitTestTranslate(touchPoint)) ? ShapeTransformAction.Undefined : ShapeTransformAction.Translate : ShapeTransformAction.ScaleY : ShapeTransformAction.ScaleX : ShapeTransformAction.Translate : ShapeTransformAction.Rotation;
    }

    /* renamed from: a */
    public final boolean m33666a(float sx, float sy, RectF rectF) {
        int selectionMinSize = getSelectionMinSize();
        boolean z = Math.abs(sx) < 1.0f;
        float f = selectionMinSize;
        boolean z2 = rectF.width() * this.renderScale < f;
        boolean z3 = Math.abs(sy) < 1.0f;
        boolean z4 = rectF.height() * this.renderScale < f;
        if (z && z3) {
            if (z2 && z4) {
                return false;
            }
            if (!z2 || !z4) {
                return true;
            }
        } else if ((z && z2) || (z3 && z4)) {
            return false;
        }
        return this.limitRect.isEmpty() || this.limitRect.contains(rectF);
    }

    /* renamed from: b */
    public final PointF m33667b(int pos, RectF originRect, SelectionHandleType type) {
        float f = f43299y;
        float m33671f = m33671f(f) / MatrixKt.getScaleX(getMatrix());
        float m33671f2 = m33671f(f) / MatrixKt.getScaleY(getMatrix());
        int size = this.selectionHandleTypes.size();
        float scaleY = (pos == 0 || pos == 2) ? MatrixKt.getScaleY(getMatrix()) : MatrixKt.getScaleX(getMatrix());
        float m33671f3 = m33671f(f43294t) / scaleY;
        float m33671f4 = m33671f(f43293s) / scaleY;
        float f2 = (size * m33671f4) + ((size - 1) * m33671f3);
        float f3 = 2;
        float width = ((originRect.width() - f2) / f3) + originRect.left;
        float height = ((originRect.height() - f2) / f3) + originRect.top;
        float max = ((m33671f3 + m33671f4) * Math.max(SelectionHandleType.getEntries().indexOf(type), 0)) + (m33671f4 / f3);
        return pos != 0 ? pos != 1 ? pos != 2 ? new PointF(width + max, originRect.bottom + m33671f2) : new PointF(originRect.right + m33671f, height + max) : new PointF(width + max, originRect.top - m33671f2) : new PointF(originRect.left - m33671f, height + max);
    }

    /* renamed from: c */
    public final PointF m33668c(int pos, RectF originRect) {
        float f = f43299y;
        float m33671f = m33671f(f) / MatrixKt.getScaleX(getMatrix());
        float m33671f2 = m33671f(f) / MatrixKt.getScaleY(getMatrix());
        return pos != 0 ? pos != 1 ? pos != 2 ? new PointF(originRect.left + (originRect.width() / 2.0f), originRect.bottom + m33671f2) : new PointF(originRect.right + m33671f, originRect.top + (originRect.height() / 2.0f)) : new PointF(originRect.left + (originRect.width() / 2.0f), originRect.top - m33671f2) : new PointF(originRect.left - m33671f, originRect.top + (originRect.height() / 2.0f));
    }

    @NotNull
    public final SelectionRect copy() {
        return new SelectionRect(this);
    }

    /* renamed from: d */
    public final PointF m33669d(int position, Matrix renderMatrix) {
        PointF m33668c = m33668c(position, getOriginRect());
        MatrixKt.mapSelfPoint(getMatrix(), m33668c);
        MatrixKt.mapSelfPoint(renderMatrix, m33668c);
        return m33668c;
    }

    /* renamed from: e */
    public final RectF m33670e(int handlerPosition, Matrix renderMatrix) {
        PointF m33669d = m33669d(handlerPosition, renderMatrix);
        int i = this.scaleHandlerPosition;
        return PointFKt.toRect(m33669d, (f43293s * ((1 / this.renderScale) / ((i == 0 || i == 2) ? MatrixKt.getScaleX(getMatrix()) : MatrixKt.getScaleY(getMatrix())))) / 2.0f);
    }

    public final void expandSelectionRect(float scale) {
        int selectionMinSize = getSelectionMinSize();
        float width = getOriginRect().width() * scale;
        float height = getOriginRect().height() * scale;
        float f = selectionMinSize;
        float max = Math.max(width < f ? Math.max(0.0f, (f - width) / 2) : 0.0f, height < f ? Math.max(0.0f, (f - height) / 2) : 0.0f) / scale;
        RectKt.expand(getOriginRect(), max, max);
    }

    /* renamed from: f */
    public final float m33671f(float value) {
        return value / getRenderScale();
    }

    /* renamed from: g */
    public final PointF m33672g() {
        PointF m33673h = m33673h(this.scaleHandlerPosition, getOriginRect());
        return getMatrixPoint(m33673h.x, m33673h.y);
    }

    @NotNull
    public final RectF getBoundRect() {
        RectF rectF = new RectF(this.originRect);
        getMatrix().mapRect(rectF);
        return rectF;
    }

    @NotNull
    public final PointF getCenterPoint() {
        return getMatrixPoint(getOriginRect().centerX(), getOriginRect().centerY());
    }

    @NotNull
    public final PointF getCurrentRenderQuickCopyPoint(@NotNull Matrix renderMatrix) {
        Intrinsics.checkNotNullParameter(renderMatrix, "renderMatrix");
        PointF m33673h = m33673h(this.scaleHandlerPosition, getOriginRect());
        PointF renderMatrixPoint = getRenderMatrixPoint(m33673h.x, m33673h.y);
        MatrixKt.mapSelfPoint(renderMatrix, renderMatrixPoint);
        return renderMatrixPoint;
    }

    @NotNull
    public final PointF getCurrentRenderRotationPoint(@NotNull Matrix renderMatrix) {
        Intrinsics.checkNotNullParameter(renderMatrix, "renderMatrix");
        PointF m33675j = m33675j(this.scaleHandlerPosition, getOriginRect());
        PointF renderMatrixPoint = getRenderMatrixPoint(m33675j.x, m33675j.y);
        MatrixKt.mapSelfPoint(renderMatrix, renderMatrixPoint);
        return renderMatrixPoint;
    }

    @NotNull
    public final RectF getLimitRect() {
        return this.limitRect;
    }

    @NotNull
    public final Matrix getMatrix() {
        return this.matrix;
    }

    @NotNull
    public final PointF getMatrixPoint(float x, float y) {
        float[] fArr = {x, y};
        getMatrix().mapPoints(fArr);
        return new PointF(fArr[0], fArr[1]);
    }

    @NotNull
    public final PointF getNoteRotateHandlerPoint() {
        PointF m33675j = m33675j(this.scaleHandlerPosition, getOriginRect());
        return getMatrixPoint(m33675j.x, m33675j.y);
    }

    public final int getOrientation() {
        return this.orientation;
    }

    @NotNull
    public final RectF getOriginRect() {
        return this.originRect;
    }

    @Nullable
    public final Matrix getRenderMatrix() {
        return this.renderMatrix;
    }

    @NotNull
    public final PointF getRenderMatrixPoint(float x, float y) {
        float[] fArr = {x, y};
        getMatrix().mapPoints(fArr);
        if (getRenderMatrix() != null) {
            Matrix renderMatrix = getRenderMatrix();
            Intrinsics.checkNotNull(renderMatrix);
            renderMatrix.mapPoints(fArr);
        }
        return new PointF(fArr[0], fArr[1]);
    }

    public final float getRenderScale() {
        return this.renderScale;
    }

    @NotNull
    public final PointF getRotateHandlerPoint() {
        PointF matrixPoint = getMatrixPoint(getOriginRect().centerX(), getOriginRect().top);
        PointF matrixPoint2 = getMatrixPoint(getOriginRect().centerX(), getOriginRect().centerY());
        double atan = Math.atan(Math.abs(matrixPoint.y - matrixPoint2.y) / Math.abs(matrixPoint.x - matrixPoint2.x));
        float m33671f = m33671f(getSelectionHandleHeight());
        return new PointF(matrixPoint.x + (((float) Math.cos(atan)) * m33671f * (matrixPoint.x > matrixPoint2.x ? 1.0f : -1.0f)), matrixPoint.y + (((float) Math.sin(atan)) * m33671f * (matrixPoint.y <= matrixPoint2.y ? -1.0f : 1.0f)));
    }

    public final float getSelectionCircleRadius() {
        return this.selectionCircleRadius;
    }

    public final float getSelectionHandleHeight() {
        return this.selectionHandleHeight;
    }

    @NotNull
    public final Matrix getSelectionMatrix() {
        Matrix matrix = new Matrix();
        matrix.postConcat(getMatrix());
        Matrix renderMatrix = getRenderMatrix();
        if (renderMatrix != null) {
            matrix.postConcat(renderMatrix);
        }
        return matrix;
    }

    public final int getSelectionMinSize() {
        int i = this.customSelectionMinSize;
        return i > 0 ? i : ResManager.INSTANCE.getDimens(C7485R.dimen.selection_size_limit_value);
    }

    public final float getSelectionRotateCircleRadius() {
        return this.selectionRotateCircleRadius;
    }

    public final float getTouchDeviationRange() {
        return this.touchDeviationRange;
    }

    @Nullable
    public final TouchPointList getTrackPointList() {
        return this.trackPointList;
    }

    /* renamed from: h */
    public final PointF m33673h(int pos, RectF originRect) {
        return m33667b(pos, originRect, SelectionHandleType.QUICK_COPY);
    }

    @NotNull
    public final ShapeTransformAction hitTestTrackPoint(@NotNull TouchPoint point) {
        Intrinsics.checkNotNullParameter(point, "point");
        if (this.trackPointList == null) {
            return ShapeTransformAction.Undefined;
        }
        Path renderShape = ShapeRenderUtils.INSTANCE.renderShape(getMatrix(), this.trackPointList);
        if (getRenderMatrix() != null) {
            Intrinsics.checkNotNull(renderShape);
            Matrix renderMatrix = getRenderMatrix();
            Intrinsics.checkNotNull(renderMatrix);
            renderShape.transform(renderMatrix);
            float[] fArr = {point.getX(), point.getY()};
            Matrix renderMatrix2 = getRenderMatrix();
            Intrinsics.checkNotNull(renderMatrix2);
            renderMatrix2.mapPoints(fArr);
            point.setX(fArr[0]);
            point.setY(fArr[1]);
        }
        RectF rectF = new RectF();
        Intrinsics.checkNotNull(renderShape);
        renderShape.computeBounds(rectF, true);
        Region region = new Region();
        region.setPath(renderShape, new Region((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom));
        return region.contains((int) point.getX(), (int) point.getY()) ? ShapeTransformAction.Translate : ShapeTransformAction.Undefined;
    }

    public final boolean hitTestTranslate(@NotNull TouchPoint point) {
        Intrinsics.checkNotNullParameter(point, "point");
        Path path = new Path();
        path.addRect(getOriginRect(), Path.Direction.CW);
        path.transform(getMatrix());
        if (getRenderMatrix() != null) {
            Matrix renderMatrix = getRenderMatrix();
            Intrinsics.checkNotNull(renderMatrix);
            path.transform(renderMatrix);
            float[] fArr = {point.getX(), point.getY()};
            Matrix renderMatrix2 = getRenderMatrix();
            Intrinsics.checkNotNull(renderMatrix2);
            renderMatrix2.mapPoints(fArr);
            point.setX(fArr[0]);
            point.setY(fArr[1]);
        }
        return ShapeRegionUtils.createRegionByPath$default(ShapeRegionUtils.INSTANCE, path, null, true, 2, null).contains((int) point.getX(), (int) point.getY());
    }

    /* renamed from: i */
    public final PointF m33674i() {
        PointF m33675j = m33675j(this.scaleHandlerPosition, getOriginRect());
        return getMatrixPoint(m33675j.x, m33675j.y);
    }

    public final boolean isEmpty() {
        return getOriginRect().isEmpty();
    }

    public final boolean isPointInLimitRect(float x, float y) {
        return RectKt.isNullOrEmpty(this.limitRect) || this.limitRect.contains(x, y);
    }

    public final boolean isQuickCopyEnable() {
        return this.selectionHandleTypes.contains(SelectionHandleType.QUICK_COPY);
    }

    /* renamed from: isSingleSelection, reason: from getter */
    public final boolean getIsSingleSelection() {
        return this.isSingleSelection;
    }

    /* renamed from: isTextSelection, reason: from getter */
    public final boolean getIsTextSelection() {
        return this.isTextSelection;
    }

    public final boolean isVertical() {
        return this.orientation == 1;
    }

    /* renamed from: j */
    public final PointF m33675j(int pos, RectF originRect) {
        return m33667b(pos, originRect, SelectionHandleType.ROTATE);
    }

    /* renamed from: k */
    public final SizeF m33676k() {
        SizeF sizeF = new SizeF(0.0f, 0.0f, 3, null);
        PointF renderMatrixPoint = getRenderMatrixPoint(getOriginRect().left, getOriginRect().top);
        PointF renderMatrixPoint2 = getRenderMatrixPoint(getOriginRect().right, getOriginRect().top);
        PointF renderMatrixPoint3 = getRenderMatrixPoint(getOriginRect().left, getOriginRect().bottom);
        TouchPoint.Companion companion = TouchPoint.INSTANCE;
        float pointDistance = companion.getPointDistance(renderMatrixPoint.x, renderMatrixPoint.y, renderMatrixPoint2.x, renderMatrixPoint2.y);
        float pointDistance2 = companion.getPointDistance(renderMatrixPoint.x, renderMatrixPoint.y, renderMatrixPoint3.x, renderMatrixPoint3.y);
        sizeF.setWidth(pointDistance);
        sizeF.setHeight(pointDistance2);
        return sizeF;
    }

    /* renamed from: l */
    public final float m33677l(SizeF selectionRenderSize) {
        if (selectionRenderSize.getWidth() < 75.0f || selectionRenderSize.getHeight() < 75.0f) {
            return 0.0f;
        }
        return m33671f(getTouchDeviationRange());
    }

    /* renamed from: m */
    public final boolean m33678m(TouchPoint hitTestPoint, SizeF selectionRenderSize) {
        return m33687v(m33672g(), hitTestPoint, selectionRenderSize, getSelectionRotateCircleRadius());
    }

    /* renamed from: n */
    public final boolean m33679n(TouchPoint hitTestPoint, SizeF selectionRenderSize) {
        return m33687v(m33674i(), hitTestPoint, selectionRenderSize, getSelectionRotateCircleRadius());
    }

    /* renamed from: o */
    public final boolean m33680o(TouchPoint point, SizeF selectionRenderSize) {
        return m33665w(this, getMatrixPoint(getOriginRect().right, getOriginRect().centerY()), point, selectionRenderSize, 0.0f, 8, null) || m33665w(this, getMatrixPoint(getOriginRect().left, getOriginRect().centerY()), point, selectionRenderSize, 0.0f, 8, null);
    }

    public final boolean onMirror(@NotNull MirrorType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        ShapeMatrixUtils.INSTANCE.mirror(getMatrix(), type, getCenterPoint());
        return true;
    }

    public final boolean onRotate(float addedAngle) {
        PointF centerPoint = getCenterPoint();
        getMatrix().postRotate(addedAngle, centerPoint.x, centerPoint.y);
        if (this.limitRect.isEmpty()) {
            return true;
        }
        getMatrix().mapRect(new RectF(this.originRect));
        if (RectF.intersects(this.limitRect, this.originRect)) {
            return true;
        }
        getMatrix().postRotate(-addedAngle, centerPoint.x, centerPoint.y);
        return false;
    }

    public final boolean onScale(float sx, float sy) {
        Matrix matrix = new Matrix();
        matrix.set(getMatrix());
        Matrix matrix2 = getMatrix();
        RectUtils rectUtils = RectUtils.INSTANCE;
        matrix2.preTranslate(-rectUtils.getDistanceXAfterScale(getOriginRect(), sx), -rectUtils.getDistanceYAfterScale(getOriginRect(), sy));
        getMatrix().preScale(Math.abs(sx), Math.abs(sy));
        if (this.limitRect.isEmpty() && !m33685t(sx, sy)) {
            return true;
        }
        RectF rectF = new RectF(this.originRect);
        Matrix copy = MatrixKt.copy(getMatrix());
        if (this.scaleInUnRotateLimitRect) {
            copy.postRotate(-MatrixKt.getMatrixRotateAngel(getMatrix(), this.originRect), this.originRect.centerX(), this.originRect.centerY());
        }
        copy.mapRect(rectF);
        if (m33666a(sx, sy, rectF)) {
            return true;
        }
        getMatrix().set(matrix);
        return false;
    }

    @NotNull
    public final TouchPoint onTranslate(float dx, float dy) {
        RectF boundRect = getBoundRect();
        TouchPoint touchPoint = new TouchPoint(dx, dy);
        getMatrix().postTranslate(dx, dy);
        if (this.limitRect.isEmpty()) {
            return touchPoint;
        }
        RectF boundRect2 = getBoundRect();
        if (!this.limitRect.contains(boundRect2)) {
            RectF rectF = new RectF(boundRect2);
            RectF rectF2 = new RectF(boundRect);
            if (rectF.intersect(this.limitRect) && rectF2.intersect(this.limitRect)) {
                RectUtils rectUtils = RectUtils.INSTANCE;
                if (rectUtils.getRectFSize(rectF) >= rectUtils.getRectFSize(rectF2)) {
                    return touchPoint;
                }
            }
            PointF limitOffsetInLimitRect = RectUtils.INSTANCE.limitOffsetInLimitRect(this.limitRect, boundRect.left, boundRect.top, (int) boundRect.width(), (int) boundRect.height(), new PointF(dx, dy));
            if (m33684s(boundRect2)) {
                touchPoint.setX(limitOffsetInLimitRect.x);
                getMatrix().postTranslate(limitOffsetInLimitRect.x - dx, 0.0f);
            }
            if (m33686u(boundRect2)) {
                touchPoint.setY(limitOffsetInLimitRect.y);
                getMatrix().postTranslate(0.0f, limitOffsetInLimitRect.y - dy);
            }
        }
        return touchPoint;
    }

    /* renamed from: p */
    public final boolean m33681p(TouchPoint point, SizeF selectionRenderSize) {
        return m33665w(this, getMatrixPoint(getOriginRect().left, getOriginRect().top), point, selectionRenderSize, 0.0f, 8, null) || m33665w(this, getMatrixPoint(getOriginRect().right, getOriginRect().top), point, selectionRenderSize, 0.0f, 8, null) || m33665w(this, getMatrixPoint(getOriginRect().left, getOriginRect().bottom), point, selectionRenderSize, 0.0f, 8, null) || m33665w(this, getMatrixPoint(getOriginRect().right, getOriginRect().bottom), point, selectionRenderSize, 0.0f, 8, null);
    }

    /* renamed from: q */
    public final boolean m33682q(TouchPoint point, SizeF selectionRenderSize) {
        return m33665w(this, getMatrixPoint(getOriginRect().centerX(), getOriginRect().top), point, selectionRenderSize, 0.0f, 8, null) || m33665w(this, getMatrixPoint(getOriginRect().centerX(), getOriginRect().bottom), point, selectionRenderSize, 0.0f, 8, null);
    }

    /* renamed from: r */
    public final boolean m33683r(TouchPoint point) {
        RectF originRect = getOriginRect();
        PointF pointF = TouchPointKt.toPointF(point);
        MatrixKt.mapSelfPoint(MatrixKt.invertMatrix(getSelectionMatrix()), pointF);
        RectF copy = RectFKt.copy(originRect);
        copy.inset(copy.width() / 4.0f, copy.height() / 4.0f);
        return copy.contains(pointF.x, pointF.y);
    }

    @NotNull
    public final RectF redressSelectionRect(@NotNull RectF selectRectF) {
        List listOf;
        Intrinsics.checkNotNullParameter(selectRectF, "selectRectF");
        float matrixRotateAngel = MatrixKt.getMatrixRotateAngel(getMatrix());
        if (matrixRotateAngel < 0.0f) {
            matrixRotateAngel += 360;
        }
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{2, 1, 0, 3});
        int intValue = ((Number) listOf.get(((int) (listOf.indexOf(Integer.valueOf(this.scaleHandlerPosition)) + ((matrixRotateAngel + 45) / 90))) % listOf.size())).intValue();
        if (intValue != 0 && intValue != 2) {
            float f = f43293s + f43299y;
            if (intValue == 1) {
                selectRectF.top -= f;
            } else if (intValue == 3) {
                selectRectF.bottom += f;
            }
        }
        return selectRectF;
    }

    /* renamed from: s */
    public final boolean m33684s(RectF rect) {
        if (RectKt.isNullOrEmpty(this.limitRect)) {
            return false;
        }
        return (this.limitRect.contains(rect.left, rect.centerY()) && this.limitRect.contains(rect.right, rect.centerY())) ? false : true;
    }

    public final void setCustomSelectionMinSize(int size) {
        this.customSelectionMinSize = size;
    }

    public final void setLimitRect(@Nullable RectF rect) {
        RectF rectF = this.limitRect;
        if (rect == null) {
            rect = new RectF();
        }
        rectF.set(rect);
    }

    @NotNull
    public final SelectionRect setOrientation(int orientation) {
        this.orientation = orientation;
        return this;
    }

    public final void setOriginRect(@NotNull RectF originRect) {
        Intrinsics.checkNotNullParameter(originRect, "originRect");
        this.originRect = originRect;
    }

    public final void setRenderMatrix(@Nullable Matrix renderMatrix) {
        this.renderMatrix = new Matrix(renderMatrix);
    }

    public final void setRenderScale(float renderScale) {
        this.renderScale = renderScale;
    }

    public final void setScaleInUnRotateLimitRect(boolean limit) {
        this.scaleInUnRotateLimitRect = limit;
    }

    @NotNull
    public final SelectionRect setSelectionCircleRadius(float selectionCircleRadius) {
        this.selectionCircleRadius = selectionCircleRadius;
        return this;
    }

    @NotNull
    public final SelectionRect setSelectionHandleHeight(float selectionHandleHeight) {
        this.selectionHandleHeight = selectionHandleHeight;
        return this;
    }

    @NotNull
    public final SelectionRect setSelectionHandleTypes(@NotNull List<? extends SelectionHandleType> types) {
        Intrinsics.checkNotNullParameter(types, "types");
        this.selectionHandleTypes = types;
        return this;
    }

    @NotNull
    public final SelectionRect setSelectionRotateCircleRadius(float selectionRotateCircleRadius) {
        this.selectionRotateCircleRadius = selectionRotateCircleRadius;
        return this;
    }

    public final void setSingleSelection(boolean singleSelection) {
        this.isSingleSelection = singleSelection;
    }

    public final void setTextSelection(boolean textSelection) {
        this.isTextSelection = textSelection;
    }

    @NotNull
    public final SelectionRect setTouchDeviationRange(float touchDeviationRange) {
        this.touchDeviationRange = touchDeviationRange;
        return this;
    }

    public final void setTrackPointList(@Nullable TouchPointList trackPointList) {
        this.trackPointList = trackPointList;
    }

    public final void setVisibleRect(@NotNull RectF visibleRectF) {
        Intrinsics.checkNotNullParameter(visibleRectF, "visibleRectF");
        this.visibleRect = visibleRectF;
    }

    /* renamed from: t */
    public final boolean m33685t(float sx, float sy) {
        return Math.abs(sx) < 1.0f || Math.abs(sy) < 1.0f;
    }

    @NotNull
    public final ShapeTransformAction textInputTouchPointHitTest(@NotNull TouchPoint point, boolean isVertical) {
        Intrinsics.checkNotNullParameter(point, "point");
        TouchPoint touchPoint = new TouchPoint(point);
        SizeF m33676k = m33676k();
        return (isVertical || !m33680o(touchPoint, m33676k)) ? (isVertical && m33682q(touchPoint, m33676k)) ? ShapeTransformAction.ScaleY : hitTestTranslate(touchPoint) ? ShapeTransformAction.Translate : ShapeTransformAction.Undefined : ShapeTransformAction.ScaleX;
    }

    @NotNull
    public final RectCorner touchCornerPointHitTest(@NotNull TouchPoint point) {
        Intrinsics.checkNotNullParameter(point, "point");
        SizeF m33676k = m33676k();
        return m33665w(this, getMatrixPoint(getOriginRect().left, getOriginRect().top), point, m33676k, 0.0f, 8, null) ? RectCorner.LeftTop : m33665w(this, getMatrixPoint(getOriginRect().right, getOriginRect().top), point, m33676k, 0.0f, 8, null) ? RectCorner.RightTop : m33665w(this, getMatrixPoint(getOriginRect().left, getOriginRect().bottom), point, m33676k, 0.0f, 8, null) ? RectCorner.LeftBottom : m33665w(this, getMatrixPoint(getOriginRect().right, getOriginRect().bottom), point, m33676k, 0.0f, 8, null) ? RectCorner.RightBottom : RectCorner.Undefined;
    }

    /* renamed from: u */
    public final boolean m33686u(RectF rect) {
        if (RectKt.isNullOrEmpty(this.limitRect)) {
            return false;
        }
        return (this.limitRect.contains(rect.centerX(), rect.top) && this.limitRect.contains(rect.centerX(), rect.bottom)) ? false : true;
    }

    public final void updateRotationPosition(@NotNull Matrix renderMatrix) {
        List listOf;
        Intrinsics.checkNotNullParameter(renderMatrix, "renderMatrix");
        if (this.visibleRect.isEmpty()) {
            this.scaleHandlerPosition = 2;
            return;
        }
        if (this.visibleRect.contains(m33670e(this.scaleHandlerPosition, renderMatrix))) {
            return;
        }
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{2, 0, 3, 1});
        Iterator it2 = listOf.iterator();
        while (it2.hasNext()) {
            int intValue = ((Number) it2.next()).intValue();
            if (this.visibleRect.contains(m33670e(intValue, renderMatrix))) {
                this.scaleHandlerPosition = intValue;
                return;
            }
        }
    }

    /* renamed from: v */
    public final boolean m33687v(PointF centerPoint, TouchPoint point, SizeF selectionRenderSize, float radius) {
        return ShapeUtils.INSTANCE.inCircle(centerPoint.x, centerPoint.y, m33671f(radius), point.getX(), point.getY());
    }

    public SelectionRect(@NotNull RectF rect) {
        List<? extends SelectionHandleType> list;
        Intrinsics.checkNotNullParameter(rect, "rect");
        this.limitRect = new RectF();
        this.matrix = new Matrix();
        this.originRect = new RectF();
        this.visibleRect = new RectF();
        Float FLOAT_ONE = NumberUtils.FLOAT_ONE;
        Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
        this.renderScale = FLOAT_ONE.floatValue();
        this.selectionHandleHeight = 50.0f;
        this.touchDeviationRange = 30.0f;
        this.selectionRotateCircleRadius = f43295u;
        this.selectionCircleRadius = ResManager.INSTANCE.getFloat(C7485R.dimen.selection_circle_radius);
        this.customSelectionMinSize = -1;
        this.scaleHandlerPosition = 2;
        list = CollectionsKt___CollectionsKt.toList(SelectionHandleType.getEntries());
        this.selectionHandleTypes = list;
        this.scaleInUnRotateLimitRect = true;
        this.originRect.set(rect);
    }

    public SelectionRect(@Nullable RectF rectF, @Nullable Matrix matrix) {
        List<? extends SelectionHandleType> list;
        this.limitRect = new RectF();
        this.matrix = new Matrix();
        this.originRect = new RectF();
        this.visibleRect = new RectF();
        Float FLOAT_ONE = NumberUtils.FLOAT_ONE;
        Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
        this.renderScale = FLOAT_ONE.floatValue();
        this.selectionHandleHeight = 50.0f;
        this.touchDeviationRange = 30.0f;
        this.selectionRotateCircleRadius = f43295u;
        this.selectionCircleRadius = ResManager.INSTANCE.getFloat(C7485R.dimen.selection_circle_radius);
        this.customSelectionMinSize = -1;
        this.scaleHandlerPosition = 2;
        list = CollectionsKt___CollectionsKt.toList(SelectionHandleType.getEntries());
        this.selectionHandleTypes = list;
        this.scaleInUnRotateLimitRect = true;
        if (rectF == null) {
            return;
        }
        this.originRect = new RectF(rectF);
        this.matrix = new Matrix(matrix);
    }

    public SelectionRect(@Nullable SelectionRect selectionRect) {
        List<? extends SelectionHandleType> list;
        this.limitRect = new RectF();
        this.matrix = new Matrix();
        this.originRect = new RectF();
        this.visibleRect = new RectF();
        Float FLOAT_ONE = NumberUtils.FLOAT_ONE;
        Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
        this.renderScale = FLOAT_ONE.floatValue();
        this.selectionHandleHeight = 50.0f;
        this.touchDeviationRange = 30.0f;
        this.selectionRotateCircleRadius = f43295u;
        this.selectionCircleRadius = ResManager.INSTANCE.getFloat(C7485R.dimen.selection_circle_radius);
        this.customSelectionMinSize = -1;
        this.scaleHandlerPosition = 2;
        list = CollectionsKt___CollectionsKt.toList(SelectionHandleType.getEntries());
        this.selectionHandleTypes = list;
        this.scaleInUnRotateLimitRect = true;
        if (selectionRect == null) {
            return;
        }
        this.originRect = new RectF(selectionRect.originRect);
        this.matrix = new Matrix(selectionRect.matrix);
        this.renderMatrix = new Matrix(selectionRect.renderMatrix);
        this.isSingleSelection = selectionRect.isSingleSelection;
        this.isTextSelection = selectionRect.isTextSelection;
        this.visibleRect = new RectF(selectionRect.visibleRect);
        this.limitRect.set(new RectF(selectionRect.limitRect));
        if (selectionRect.renderMatrix != null) {
            this.renderMatrix = new Matrix(selectionRect.renderMatrix);
        }
        setRenderScale(selectionRect.getRenderScale());
        setSelectionHandleHeight(selectionRect.getSelectionHandleHeight());
        setSelectionCircleRadius(selectionRect.getSelectionCircleRadius());
        setSelectionRotateCircleRadius(selectionRect.getSelectionRotateCircleRadius());
        setTouchDeviationRange(selectionRect.getTouchDeviationRange());
        setTrackPointList(selectionRect.getTrackPointList());
        setOrientation(selectionRect.orientation);
        setSelectionHandleTypes(selectionRect.selectionHandleTypes);
        this.customSelectionMinSize = selectionRect.customSelectionMinSize;
        this.scaleHandlerPosition = selectionRect.scaleHandlerPosition;
    }
}
