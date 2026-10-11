package com.onyx.galaxy.note.editor.view.ruler;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.app.NotificationCompat;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.MotionEventKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.note.common.utils.ShapeUtils;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.ruler.RulerUnitsPopupWindow;
import com.onyx.galaxy.note.editor.view.ruler.RulerView;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u001f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u0098\u00012\u00020\u0001:\u0004\u0098\u0001\u0099\u0001B\u0015\b\u0016\u0012\b\u0010\u0092\u0001\u001a\u00030\u0091\u0001¢\u0006\u0006\b\u0093\u0001\u0010\u0094\u0001B\u001f\b\u0016\u0012\b\u0010\u0092\u0001\u001a\u00030\u0091\u0001\u0012\b\u0010\u0096\u0001\u001a\u00030\u0095\u0001¢\u0006\u0006\b\u0093\u0001\u0010\u0097\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0010\u0010\u000f\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0010\u0010\u0010\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0010\u0010\u0015\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0010\u0010\u0016\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0018\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\u0018\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J0\u0010!\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u000f\u001a\u00020\u001d2\u0006\u0010\u000e\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001fH\u0002J(\u0010$\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010#\u001a\u00020\"2\u0006\u0010\u000f\u001a\u00020\u001d2\u0006\u0010\u000e\u001a\u00020\u001dH\u0002J \u0010'\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010%\u001a\u00020\u001d2\u0006\u0010&\u001a\u00020\u001dH\u0002J(\u0010)\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010%\u001a\u00020\u001d2\u0006\u0010&\u001a\u00020\u001d2\u0006\u0010(\u001a\u00020\u001dH\u0002J(\u0010*\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010%\u001a\u00020\u001d2\u0006\u0010&\u001a\u00020\u001d2\u0006\u0010(\u001a\u00020\u001dH\u0002J@\u0010-\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010%\u001a\u00020\u001d2\u0006\u0010&\u001a\u00020\u001d2\u0006\u0010(\u001a\u00020\u001d2\u0006\u0010+\u001a\u00020\u00132\u0006\u0010,\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001fH\u0002J \u0010.\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010%\u001a\u00020\u001d2\u0006\u0010&\u001a\u00020\u001dH\u0002J\b\u0010/\u001a\u00020\u0019H\u0002J\b\u00100\u001a\u00020\u0002H\u0002J\u0010\u00102\u001a\u00020\u00022\u0006\u00101\u001a\u00020\u0007H\u0002J\b\u00103\u001a\u00020\u0002H\u0002J\u0010\u00104\u001a\u00020\u001d2\u0006\u0010+\u001a\u00020\u001dH\u0002J\b\u00101\u001a\u00020\u0002H\u0002J\b\u00105\u001a\u00020\u0002H\u0002J\b\u00106\u001a\u00020\u0002H\u0002J\u0010\u00109\u001a\u00020\u00132\u0006\u00108\u001a\u000207H\u0002J\u000e\u0010:\u001a\u00020\u00022\u0006\u00108\u001a\u000207J\u0006\u0010;\u001a\u00020\u0019J\u0006\u0010<\u001a\u000207J\u0016\u0010?\u001a\u00020\u00022\u0006\u0010=\u001a\u00020\u001d2\u0006\u0010>\u001a\u00020\u001dJ\u0010\u0010B\u001a\u00020\u00022\b\u0010A\u001a\u0004\u0018\u00010@J0\u0010H\u001a\u00020\u00022\u0006\u0010C\u001a\u00020\t2\u0006\u0010D\u001a\u00020\u00132\u0006\u0010E\u001a\u00020\u00132\u0006\u0010F\u001a\u00020\u00132\u0006\u0010G\u001a\u00020\u0013H\u0014J\u0010\u0010I\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0017H\u0014J\u0010\u0010J\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0016R\u0016\u0010K\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u0016\u0010L\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00102R\u0016\u0010M\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u00102R\u0016\u0010N\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u00102R\u0016\u0010O\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u00102R\u0016\u0010P\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u00102R\u0014\u0010Q\u001a\u00020\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u00102R\u0016\u0010R\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u00102R\u0016\u0010T\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010SR\u0016\u0010U\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010SR\u0014\u0010V\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010SR\u0014\u0010W\u001a\u00020\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00102R\u0014\u0010X\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b9\u0010SR\u0014\u0010Y\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010SR\u0014\u0010Z\u001a\u00020\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u00102R\u0016\u0010\\\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010[R\u0016\u0010^\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010]R\u0016\u0010_\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010[R\u0016\u0010b\u001a\u00020`8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u0010aR\u0016\u0010c\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u00102R\u0016\u0010e\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010dR2\u0010j\u001a\u001e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020g0fj\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020g`h8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010iR\u0016\u0010l\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010]R\u0016\u0010n\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bm\u0010]R\u0016\u0010p\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bo\u0010]R\u0016\u0010r\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bq\u0010]R\u0016\u0010t\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bs\u0010]R\u0016\u0010v\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bu\u0010]R\u0016\u0010x\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bw\u0010]R\u0016\u0010z\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\by\u0010]R\u0016\u0010}\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b{\u0010|R\u0017\u0010\u0080\u0001\u001a\u0002078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b~\u0010\u007fR\u001a\u0010\u0084\u0001\u001a\u00030\u0081\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0082\u0001\u0010\u0083\u0001R\u001c\u0010\u0088\u0001\u001a\u0005\u0018\u00010\u0085\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0086\u0001\u0010\u0087\u0001R\u0018\u0010\u008a\u0001\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0089\u0001\u0010]R\u0019\u0010\u008d\u0001\u001a\u00030\u008b\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u008c\u0001\u0010kR\u001b\u0010\u0090\u0001\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008e\u0001\u0010\u008f\u0001¨\u0006\u009a\u0001"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;", "Landroid/view/View;", "", "G", "Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;", "type", "H", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "", "t", "u", "v", "s", "y", "x", "z", "A", "r", "", "b", "E", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "Landroid/graphics/RectF;", "rect", "l", "m", "", "height", "Landroid/graphics/Paint;", "paint", GoogleApiAvailabilityLight.f29016b, "", "value", C4921e.f26528e, "centerX", "centerY", C6998g.f39679a, "radius", C6999h.f39688c, "j", "angle", "lineLength", "i", C4921e.f26537n, "p", "w", "e", "F", C6997f.f39671c, "c", "B", "d", "Landroid/graphics/Matrix;", "matrix", "q", "setRulerMatrix", "getRulerRect", "getRulerMatrix", "width", "millimeter", "updatePageSize", "Lcom/onyx/galaxy/note/editor/view/ruler/RulerView$RulerListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setRulerListener", "changed", "left", OneDriverConstants.TOP, gon.f71288n0, "bottom", "onLayout", "onDraw", "onTouchEvent", "pageWidth", "pageMillimeter", "rulerHeight", "smallScaleHeight", "middleScaleHeight", "bigScaleHeight", "angleRadius", "scaleInterval", "Landroid/graphics/Paint;", "backgroundPaint", "scalePaint", "scaleTextPaint", "scaleTextSize", "anglePaint", "angleTextPaint", "angleTextSize", Constants.HASIDCALL_INDEX_SIG, "angleMode", "I", "anglePointId", "visibleAngleLine", "Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;", "Lcom/onyx/galaxy/note/editor/view/ruler/RulerScaleType;", "rulerScaleType", "angleScaleHeight", "Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;", "unitsType", "Ljava/util/HashMap;", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "Lkotlin/collections/HashMap;", "Ljava/util/HashMap;", "touchEventMap", "J", "rulerBackgroundColor", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "rulerBackgroundBorderColor", "Q", "textColor", "k0", "originalScaleColor", "q0", "scaleColor", "t0", "angleBackgroundColor", "u0", "angleColor", "v0", "angleSelectedColor", "w0", "Landroid/graphics/RectF;", "rulerRect", "x0", "Landroid/graphics/Matrix;", "rulerMatrix", "Landroid/view/GestureDetector;", "y0", "Landroid/view/GestureDetector;", "gestureDetector", "Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow;", "z0", "Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow;", "rulerUnitsPopupWindow", "A0", "multiHandleMode", "", "B0", "multiHandleModeLastTime", "C0", "Lcom/onyx/galaxy/note/editor/view/ruler/RulerView$RulerListener;", "rulerListener", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attr", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "Companion", "RulerListener", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRulerView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RulerView.kt\ncom/onyx/galaxy/note/editor/view/ruler/RulerView\n+ 2 Canvas.kt\nandroidx/core/graphics/CanvasKt\n+ 3 Rect.kt\nandroidx/core/graphics/RectKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,732:1\n121#2,8:733\n30#2,7:741\n332#3:748\n1#4:749\n*S KotlinDebug\n*F\n+ 1 RulerView.kt\ncom/onyx/galaxy/note/editor/view/ruler/RulerView\n*L\n200#1:733,8\n204#1:741,7\n291#1:748\n*E\n"})
/* loaded from: classes9.dex */
public final class RulerView extends View {
    public static final int ADSORB_LIMIT = 45;
    public static final int ADSORB_MIN_CHANGE = 2;
    public static final int ANGLE_DOUBLE_CLICK_VALUE = 90;
    public static final int ANGLE_SCALE_STEP = 15;
    public static final double ROTATION_CHANGE_MIN_ANGLE = 0.2d;
    public static final float RULER_HITTEST_SCALE_RANGE = 40.0f;
    public static final int RULER_MULTI_HANDLE_DEFAULT_MODE = 0;
    public static final int RULER_MULTI_HANDLE_ROTATION_MODE = 1;
    public static final int RULER_MULTI_HANDLE_TRANSFORM_MODE = 2;

    /* renamed from: A0, reason: from kotlin metadata */
    public int multiHandleMode;

    /* renamed from: B0, reason: from kotlin metadata */
    public long multiHandleModeLastTime;

    /* renamed from: C0, reason: from kotlin metadata */
    @Nullable
    public RulerListener rulerListener;

    /* renamed from: J, reason: from kotlin metadata */
    public int rulerBackgroundColor;

    /* renamed from: O, reason: from kotlin metadata */
    public int rulerBackgroundBorderColor;

    /* renamed from: Q, reason: from kotlin metadata */
    public int textColor;

    /* renamed from: e, reason: from kotlin metadata */
    public float pageWidth;

    /* renamed from: f, reason: from kotlin metadata */
    public float pageMillimeter;

    /* renamed from: g, reason: from kotlin metadata */
    public float rulerHeight;

    /* renamed from: h, reason: from kotlin metadata */
    public float smallScaleHeight;

    /* renamed from: i, reason: from kotlin metadata */
    public float middleScaleHeight;

    /* renamed from: j, reason: from kotlin metadata */
    public float bigScaleHeight;

    /* renamed from: k, reason: from kotlin metadata */
    public final float angleRadius;

    /* renamed from: k0, reason: from kotlin metadata */
    public int originalScaleColor;

    /* renamed from: l, reason: from kotlin metadata */
    public float scaleInterval;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public Paint backgroundPaint;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public Paint scalePaint;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public final Paint scaleTextPaint;

    /* renamed from: p, reason: from kotlin metadata */
    public final float scaleTextSize;

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final Paint anglePaint;

    /* renamed from: q0, reason: from kotlin metadata */
    public int scaleColor;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final Paint angleTextPaint;

    /* renamed from: s, reason: from kotlin metadata */
    public final float angleTextSize;

    /* renamed from: t, reason: from kotlin metadata */
    public boolean angleMode;

    /* renamed from: t0, reason: from kotlin metadata */
    public int angleBackgroundColor;

    /* renamed from: u, reason: from kotlin metadata */
    public int anglePointId;

    /* renamed from: u0, reason: from kotlin metadata */
    public int angleColor;

    /* renamed from: v, reason: from kotlin metadata */
    public boolean visibleAngleLine;

    /* renamed from: v0, reason: from kotlin metadata */
    public int angleSelectedColor;

    /* renamed from: w, reason: from kotlin metadata */
    @NotNull
    public RulerScaleType rulerScaleType;

    /* renamed from: w0, reason: from kotlin metadata */
    @NotNull
    public RectF rulerRect;

    /* renamed from: x, reason: from kotlin metadata */
    public float angleScaleHeight;

    /* renamed from: x0, reason: from kotlin metadata */
    @NotNull
    public Matrix rulerMatrix;

    /* renamed from: y, reason: from kotlin metadata */
    @NotNull
    public RulerUnitsType unitsType;

    /* renamed from: y0, reason: from kotlin metadata */
    public GestureDetector gestureDetector;

    /* renamed from: z, reason: from kotlin metadata */
    @NotNull
    public HashMap<Integer, TouchPoint> touchEventMap;

    /* renamed from: z0, reason: from kotlin metadata */
    @Nullable
    public RulerUnitsPopupWindow rulerUnitsPopupWindow;

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&¨\u0006\b"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/ruler/RulerView$RulerListener;", "", "onTransform", "", "view", "Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;", "matrix", "Landroid/graphics/Matrix;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface RulerListener {
        void onTransform(@NotNull RulerView view, @NotNull Matrix matrix);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RulerView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        ResManager resManager = ResManager.INSTANCE;
        this.rulerHeight = resManager.getDimension(C10651R.dimen.ruler_height);
        this.smallScaleHeight = resManager.getDimension(C10651R.dimen.ruler_small_scale);
        this.middleScaleHeight = resManager.getDimension(C10651R.dimen.ruler_middle_scale);
        this.bigScaleHeight = resManager.getDimension(C10651R.dimen.ruler_big_scale);
        this.angleRadius = resManager.getDimension(C10651R.dimen.ruler_angle_radius);
        this.scaleInterval = 1.0f;
        float dimension = resManager.getDimension(C10651R.dimen.ruler_scale_text_size);
        this.scaleTextSize = dimension;
        float dimension2 = resManager.getDimension(C10651R.dimen.ruler_angle_text_size);
        this.angleTextSize = dimension2;
        this.rulerScaleType = RulerScaleType.CM_DEFAULT;
        this.angleScaleHeight = resManager.getDimension(C10651R.dimen.ruler_angle_scale);
        this.unitsType = RulerUnitsType.f60706CM;
        this.touchEventMap = new HashMap<>();
        this.rulerBackgroundColor = resManager.getColor(C10651R.color.ruler_background);
        this.rulerBackgroundBorderColor = resManager.getColor(C10651R.color.overlay_04);
        this.textColor = resManager.getColor(C10651R.color.overlay_01);
        this.originalScaleColor = resManager.getColor(C10651R.color.overlay_01);
        this.scaleColor = resManager.getColor(C10651R.color.overlay_03);
        this.angleBackgroundColor = resManager.getColor(C10651R.color.overlay_07);
        this.angleColor = resManager.getColor(C10651R.color.overlay_04);
        this.angleSelectedColor = resManager.getColor(C10651R.color.warning_200);
        this.rulerRect = new RectF();
        this.rulerMatrix = new Matrix();
        Paint paint = new Paint();
        paint.setColor(this.rulerBackgroundColor);
        paint.setAntiAlias(true);
        this.backgroundPaint = paint;
        Paint paint2 = new Paint();
        paint2.setAntiAlias(true);
        paint2.setStrokeWidth(resManager.getDimension(C10651R.dimen.ruler_scale_width));
        this.scalePaint = paint2;
        Paint paint3 = new Paint();
        paint3.setColor(this.textColor);
        paint3.setTextSize(dimension);
        paint3.setAntiAlias(true);
        this.scaleTextPaint = paint3;
        Paint paint4 = new Paint();
        paint4.setTextSize(dimension2);
        paint4.setColor(this.textColor);
        paint4.setAntiAlias(true);
        this.angleTextPaint = paint4;
        Paint paint5 = new Paint();
        paint5.setColor(this.rulerBackgroundColor);
        paint5.setStrokeWidth(resManager.getDimension(C10651R.dimen.ruler_angle_width));
        paint5.setStyle(Paint.Style.STROKE);
        this.anglePaint = paint5;
        m49850w();
    }

    /* renamed from: C */
    public static final void m49820C(Ref.IntRef lastValue, RulerView this$0, RectF rect, ValueAnimator it2) {
        Intrinsics.checkNotNullParameter(lastValue, "$lastValue");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(rect, "$rect");
        Intrinsics.checkNotNullParameter(it2, "it");
        Object animatedValue = it2.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        int intValue = ((Integer) animatedValue).intValue();
        int i = intValue - lastValue.element;
        if (i == 0) {
            return;
        }
        this$0.rulerMatrix.postRotate(-i, rect.centerX(), rect.centerY());
        this$0.invalidate();
        lastValue.element = intValue;
    }

    /* renamed from: A */
    public final void m49822A(MotionEvent event) {
        TouchPoint touchPoint = this.touchEventMap.get(Integer.valueOf(this.anglePointId));
        if (touchPoint == null) {
            return;
        }
        int findPointerIndex = event.findPointerIndex(this.anglePointId);
        float y = event.getY(findPointerIndex);
        int height = getHeight() / 360;
        float y2 = y - touchPoint.getY();
        float f = height;
        if (Math.abs(y2) < f) {
            return;
        }
        float m49830c = m49830c((y2 / f) % 360);
        if (Math.abs(m49830c) < 0.2d) {
            return;
        }
        RectF copy = RectFKt.copy(this.rulerRect);
        this.rulerMatrix.mapRect(copy);
        this.rulerMatrix.postRotate(m49830c, copy.centerX(), copy.centerY());
        touchPoint.setX(event.getX(findPointerIndex));
        touchPoint.setY(event.getY(findPointerIndex));
        invalidate();
        m49833f();
    }

    /* renamed from: B */
    public final void m49823B() {
        final RectF copy = RectFKt.copy(this.rulerRect);
        this.rulerMatrix.mapRect(copy);
        ValueAnimator ofInt = ValueAnimator.ofInt(0, 90);
        final Ref.IntRef intRef = new Ref.IntRef();
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.dul
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                RulerView.m49820C(Ref.IntRef.this, this, copy, valueAnimator);
            }
        });
        ofInt.start();
    }

    /* renamed from: D */
    public final void m49824D(MotionEvent event) {
        TouchPoint touchPoint;
        int pointerId = event.getPointerId(0);
        int pointerId2 = event.getPointerId(1);
        TouchPoint touchPoint2 = this.touchEventMap.get(Integer.valueOf(pointerId));
        if (touchPoint2 == null || (touchPoint = this.touchEventMap.get(Integer.valueOf(pointerId2))) == null) {
            return;
        }
        TouchPoint touchPoint3 = new TouchPoint(event.getX(0), event.getY(0));
        TouchPoint touchPoint4 = new TouchPoint(event.getX(1), event.getY(1));
        TouchPoint.Companion companion = TouchPoint.INSTANCE;
        float pointAngle = companion.getPointAngle(touchPoint2, touchPoint4) - companion.getPointAngle(touchPoint2, touchPoint);
        float pointAngle2 = companion.getPointAngle(touchPoint, touchPoint3) - companion.getPointAngle(touchPoint, touchPoint2);
        float m49830c = m49830c(pointAngle);
        float m49830c2 = m49830c(pointAngle2);
        RectF copy = RectFKt.copy(this.rulerRect);
        Matrix copy2 = MatrixKt.copy(this.rulerMatrix);
        if (Math.abs(m49830c) >= 0.2d) {
            copy2.postRotate(m49830c, touchPoint2.getX(), touchPoint2.getY());
            this.touchEventMap.put(Integer.valueOf(pointerId2), new TouchPoint(touchPoint4.getX(), touchPoint4.getY()));
        }
        if (Math.abs(m49830c2) >= 0.2d) {
            copy2.postRotate(m49830c2, touchPoint.getX(), touchPoint.getY());
            this.touchEventMap.put(Integer.valueOf(pointerId), new TouchPoint(touchPoint3.getX(), touchPoint3.getY()));
        }
        copy2.mapRect(copy);
        if (copy.centerX() < 0.0f || copy.centerX() > getWidth() || copy.centerY() < 0.0f || copy.centerY() > getHeight()) {
            return;
        }
        this.multiHandleModeLastTime = System.currentTimeMillis();
        this.rulerMatrix = copy2;
        invalidate();
        m49833f();
    }

    /* renamed from: E */
    public final void m49825E(MotionEvent event) {
        if (m49853z(event)) {
            return;
        }
        int pointerCount = event.getPointerCount();
        float f = 0.0f;
        float f2 = 0.0f;
        for (int i = 0; i < pointerCount; i++) {
            TouchPoint touchPoint = this.touchEventMap.get(Integer.valueOf(event.getPointerId(i)));
            if (touchPoint != null) {
                float x = event.getX(i) - touchPoint.getX();
                float y = event.getY(i) - touchPoint.getY();
                if (Math.abs(x) > Math.abs(f)) {
                    f = x;
                }
                if (Math.abs(y) > Math.abs(f2)) {
                    f2 = y;
                }
            }
        }
        RectF copy = RectFKt.copy(this.rulerRect);
        Matrix copy2 = MatrixKt.copy(this.rulerMatrix);
        copy2.postTranslate(f, f2);
        copy2.mapRect(copy);
        if (copy.centerX() < 0.0f || copy.centerX() > getWidth()) {
            f = 0.0f;
        }
        if (copy.centerY() < 0.0f || copy.centerY() > getHeight()) {
            f2 = 0.0f;
        }
        int pointerCount2 = event.getPointerCount();
        for (int i2 = 0; i2 < pointerCount2; i2++) {
            int pointerId = event.getPointerId(i2);
            if (this.touchEventMap.containsKey(Integer.valueOf(pointerId))) {
                this.touchEventMap.put(Integer.valueOf(pointerId), new TouchPoint(event.getX(i2), event.getY(i2)));
            }
        }
        if (f2 == 0.0f) {
            if (f == 0.0f) {
                return;
            }
        }
        this.multiHandleModeLastTime = System.currentTimeMillis();
        this.rulerMatrix.postTranslate(f, f2);
        invalidate();
        m49833f();
    }

    /* renamed from: F */
    public final void m49826F(MotionEvent e) {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        RulerUnitsPopupWindow rulerUnitsPopupWindow = new RulerUnitsPopupWindow(context, this.unitsType, new RulerUnitsPopupWindow.RulerListener() { // from class: com.onyx.galaxy.note.editor.view.ruler.RulerView$showRulerUnitsWindow$1
            @Override // com.onyx.galaxy.note.editor.view.ruler.RulerUnitsPopupWindow.RulerListener
            public void onChangeUnits() {
                RulerUnitsType rulerUnitsType;
                rulerUnitsType = RulerView.this.unitsType;
                RulerUnitsType rulerUnitsType2 = RulerUnitsType.f60706CM;
                if (rulerUnitsType == rulerUnitsType2) {
                    RulerView.this.m49828H(RulerUnitsType.f60707IN);
                } else {
                    RulerView.this.m49828H(rulerUnitsType2);
                }
            }
        });
        this.rulerUnitsPopupWindow = rulerUnitsPopupWindow;
        rulerUnitsPopupWindow.show(this, (int) e.getX(), (int) e.getY());
    }

    /* renamed from: G */
    public final void m49827G() {
        float millimeter = ((this.pageWidth / this.pageMillimeter) * this.unitsType.getMillimeter()) / this.unitsType.getRadix();
        this.scaleInterval = millimeter;
        float max = Math.max(millimeter, 1.0f);
        this.scaleInterval = max;
        this.rulerScaleType = RulerScaleType.INSTANCE.loadRulerScaleType(max, this.angleTextPaint, this.unitsType);
        invalidate();
    }

    /* renamed from: H */
    public final void m49828H(RulerUnitsType type) {
        this.unitsType = type;
        m49827G();
    }

    /* renamed from: b */
    public final int m49829b(MotionEvent event) {
        TouchPoint touchPoint;
        int pointerId = event.getPointerId(0);
        int pointerId2 = event.getPointerId(1);
        TouchPoint touchPoint2 = this.touchEventMap.get(Integer.valueOf(pointerId));
        if (touchPoint2 == null || (touchPoint = this.touchEventMap.get(Integer.valueOf(pointerId2))) == null) {
            return 0;
        }
        TouchPoint touchPoint3 = new TouchPoint(event.getX(0), event.getY(0));
        TouchPoint touchPoint4 = new TouchPoint(event.getX(1), event.getY(1));
        float x = touchPoint3.getX() - touchPoint2.getX();
        float y = touchPoint3.getY() - touchPoint2.getY();
        float x2 = touchPoint4.getX() - touchPoint.getX();
        float y2 = touchPoint4.getY() - touchPoint.getY();
        float f = 5;
        if (Math.abs(x) >= f || Math.abs(y) >= f || Math.abs(x2) >= f || Math.abs(y2) >= f) {
            return (Math.abs(x - x2) >= f || Math.abs(y - y2) >= f) ? 1 : 2;
        }
        return 0;
    }

    /* renamed from: c */
    public final float m49830c(float angle) {
        if (m49844q(this.rulerMatrix) % 45 != 0) {
            return angle;
        }
        if (Math.abs(angle) < 2.0f) {
            return 0.0f;
        }
        return angle > 0.0f ? 0.2f : -0.2f;
    }

    /* renamed from: d */
    public final void m49831d() {
        RectF copy = RectFKt.copy(this.rulerRect);
        Matrix copy2 = MatrixKt.copy(this.rulerMatrix);
        Matrix matrix = new Matrix();
        matrix.postRotate(m49844q(copy2), copy.centerX(), copy.centerY());
        copy2.mapRect(copy);
        matrix.postTranslate(copy.centerX() - this.rulerRect.centerX(), copy.centerY() - this.rulerRect.centerY());
        this.rulerMatrix = matrix;
        invalidate();
    }

    /* renamed from: e */
    public final void m49832e() {
        RectF copy = RectFKt.copy(this.rulerRect);
        this.rulerMatrix.mapRect(copy);
        float width = copy.centerX() < 0.0f ? -copy.centerX() : copy.centerX() > ((float) getWidth()) ? getWidth() - copy.centerX() : 0.0f;
        float height = copy.centerY() < 0.0f ? -copy.centerY() : copy.centerY() > ((float) getHeight()) ? getHeight() - copy.centerY() : 0.0f;
        if (width == 0.0f) {
            if (height == 0.0f) {
                return;
            }
        }
        this.rulerMatrix.postTranslate(width, height);
        invalidate();
    }

    /* renamed from: f */
    public final void m49833f() {
        RulerUnitsPopupWindow rulerUnitsPopupWindow = this.rulerUnitsPopupWindow;
        if (rulerUnitsPopupWindow != null) {
            rulerUnitsPopupWindow.dismiss();
        }
        this.rulerUnitsPopupWindow = null;
    }

    /* renamed from: g */
    public final void m49834g(Canvas canvas, float centerX, float centerY) {
        m49835h(canvas, centerX, centerY, this.angleRadius);
        m49837j(canvas, centerX, centerY, this.angleRadius);
        m49838k(canvas, centerX, centerY);
    }

    @NotNull
    public final Matrix getRulerMatrix() {
        return this.rulerMatrix;
    }

    @NotNull
    public final RectF getRulerRect() {
        return RectFKt.copy(this.rulerRect);
    }

    /* renamed from: h */
    public final void m49835h(Canvas canvas, float centerX, float centerY, float radius) {
        this.anglePaint.setColor(this.angleBackgroundColor);
        this.anglePaint.setStyle(Paint.Style.FILL_AND_STROKE);
        canvas.drawCircle(centerX, centerY, radius, this.anglePaint);
        this.anglePaint.setColor(this.angleColor);
        this.anglePaint.setStyle(Paint.Style.STROKE);
        canvas.drawCircle(centerX, centerY, radius, this.anglePaint);
        for (int i = 0; i < 360; i += 15) {
            m49836i(canvas, centerX, centerY, radius, i, i % 90 == 0 ? this.angleScaleHeight * 2 : this.angleScaleHeight, this.anglePaint);
        }
    }

    /* renamed from: i */
    public final void m49836i(Canvas canvas, float centerX, float centerY, float radius, int angle, float lineLength, Paint paint) {
        double d = angle;
        double radians = Math.toRadians(d);
        float cos = centerX + (((float) Math.cos(radians)) * radius);
        float sin = centerY + (radius * ((float) Math.sin(radians)));
        double radians2 = Math.toRadians(d);
        canvas.drawLine(cos, sin, cos - (((float) Math.cos(radians2)) * lineLength), sin - (lineLength * ((float) Math.sin(radians2))), paint);
    }

    /* renamed from: j */
    public final void m49837j(Canvas canvas, float centerX, float centerY, float radius) {
        if (this.visibleAngleLine) {
            int m49844q = (m49844q(this.rulerMatrix) + 180) % 180;
            this.anglePaint.setColor(this.angleSelectedColor);
            float f = 2;
            m49836i(canvas, centerX, centerY, radius, 360 - m49844q, this.angleScaleHeight * f, this.anglePaint);
            m49836i(canvas, centerX, centerY, radius, 180 - m49844q, this.angleScaleHeight * f, this.anglePaint);
        }
    }

    /* renamed from: k */
    public final void m49838k(Canvas canvas, float centerX, float centerY) {
        int matrixRotateAngel = (int) MatrixKt.getMatrixRotateAngel(this.rulerMatrix);
        if (matrixRotateAngel == -180 || matrixRotateAngel == 0) {
            matrixRotateAngel = Math.abs(matrixRotateAngel);
        } else if (matrixRotateAngel < 0) {
            matrixRotateAngel += 180;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(matrixRotateAngel);
        sb.append((char) 186);
        String sb2 = sb.toString();
        float measureText = this.angleTextPaint.measureText(sb2);
        Paint.FontMetrics fontMetrics = this.angleTextPaint.getFontMetrics();
        Intrinsics.checkNotNullExpressionValue(fontMetrics, "getFontMetrics(...)");
        float f = 2;
        canvas.drawText(sb2, centerX - (measureText / f), (centerY - (fontMetrics.top / f)) - (fontMetrics.bottom / f), this.angleTextPaint);
    }

    /* renamed from: l */
    public final void m49839l(Canvas canvas, RectF rect) {
        this.backgroundPaint.setColor(this.rulerBackgroundColor);
        this.backgroundPaint.setStyle(Paint.Style.FILL_AND_STROKE);
        canvas.drawRect(rect, this.backgroundPaint);
        this.backgroundPaint.setColor(this.rulerBackgroundBorderColor);
        this.backgroundPaint.setStyle(Paint.Style.STROKE);
        canvas.drawRect(rect, this.backgroundPaint);
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x00a4 A[LOOP:0: B:3:0x0040->B:6:0x00a4, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x00a7 A[SYNTHETIC] */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m49840m(android.graphics.Canvas r15, android.graphics.RectF r16) {
        /*
            r14 = this;
            r6 = r14
            r7 = r16
            float r8 = r7.top
            float r9 = r7.bottom
            float r10 = r16.centerX()
            float r0 = r7.left
            float r1 = r6.scaleInterval
            float r0 = r0 / r1
            int r11 = (int) r0
            float r0 = r7.right
            float r0 = r0 / r1
            int r12 = (int) r0
            android.graphics.Paint r0 = r6.scalePaint
            int r1 = r6.originalScaleColor
            r0.setColor(r1)
            float r2 = r16.centerX()
            float r4 = r6.bigScaleHeight
            android.graphics.Paint r5 = r6.scalePaint
            r0 = r14
            r1 = r15
            r3 = r8
            r0.m49841n(r1, r2, r3, r4, r5)
            float r2 = r16.centerX()
            float r4 = r6.bigScaleHeight
            float r3 = r9 - r4
            android.graphics.Paint r5 = r6.scalePaint
            r0.m49841n(r1, r2, r3, r4, r5)
            android.graphics.Paint r0 = r6.scalePaint
            int r1 = r6.scaleColor
            r0.setColor(r1)
            if (r11 > r12) goto La7
        L40:
            if (r11 != 0) goto L44
        L42:
            r1 = r15
            goto La2
        L44:
            float r0 = (float) r11
            float r1 = r6.scaleInterval
            float r0 = r0 * r1
            float r7 = r10 + r0
            com.onyx.galaxy.note.editor.view.ruler.RulerScaleType r0 = r6.rulerScaleType
            int r0 = r0.getBigScaleStep()
            int r0 = r11 % r0
            if (r0 != 0) goto L58
            float r0 = r6.bigScaleHeight
        L56:
            r13 = r0
            goto L72
        L58:
            com.onyx.galaxy.note.editor.view.ruler.RulerScaleType r0 = r6.rulerScaleType
            int r0 = r0.getMiddleScaleStep()
            int r0 = r11 % r0
            if (r0 != 0) goto L65
            float r0 = r6.middleScaleHeight
            goto L56
        L65:
            com.onyx.galaxy.note.editor.view.ruler.RulerScaleType r0 = r6.rulerScaleType
            int r0 = r0.getSmallScaleStep()
            int r0 = r11 % r0
            if (r0 != 0) goto L42
            float r0 = r6.smallScaleHeight
            goto L56
        L72:
            android.graphics.Paint r5 = r6.scalePaint
            r0 = r14
            r1 = r15
            r2 = r7
            r3 = r8
            r4 = r13
            r0.m49841n(r1, r2, r3, r4, r5)
            float r3 = r9 - r13
            android.graphics.Paint r5 = r6.scalePaint
            r0.m49841n(r1, r2, r3, r4, r5)
            com.onyx.galaxy.note.editor.view.ruler.RulerScaleType r0 = r6.rulerScaleType
            int r0 = r0.getScaleTextStep()
            int r0 = r11 % r0
            if (r0 == 0) goto L8e
            goto L42
        L8e:
            int r0 = java.lang.Math.abs(r11)
            com.onyx.galaxy.note.editor.view.ruler.RulerUnitsType r1 = r6.unitsType
            int r1 = r1.getRadix()
            int r0 = r0 / r1
            java.lang.String r0 = java.lang.String.valueOf(r0)
            float r13 = r13 + r8
            r1 = r15
            r14.m49842o(r15, r0, r7, r13)
        La2:
            if (r11 == r12) goto La7
            int r11 = r11 + 1
            goto L40
        La7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.editor.view.ruler.RulerView.m49840m(android.graphics.Canvas, android.graphics.RectF):void");
    }

    /* renamed from: n */
    public final void m49841n(Canvas canvas, float x, float y, float height, Paint paint) {
        canvas.drawLine(x, y, x, y + height, paint);
    }

    /* renamed from: o */
    public final void m49842o(Canvas canvas, String value, float x, float y) {
        canvas.drawText(value, x - (this.scaleTextPaint.measureText(value) / 2), y + this.scaleTextSize, this.scaleTextPaint);
    }

    @Override // android.view.View
    public void onDraw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        if (this.pageWidth == 0.0f) {
            return;
        }
        RectF copy = RectFKt.copy(this.rulerRect);
        Matrix matrix = this.rulerMatrix;
        int save = canvas.save();
        canvas.concat(matrix);
        try {
            m49839l(canvas, copy);
            m49840m(canvas, copy);
            canvas.restoreToCount(save);
            save = canvas.save();
            try {
                this.rulerMatrix.mapRect(copy);
                m49834g(canvas, copy.centerX(), copy.centerY());
            } finally {
            }
        } finally {
        }
    }

    @Override // android.view.View
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        RectF rectF = this.rulerRect;
        this.rulerRect = m49843p();
        if (rectF.isEmpty() && !this.rulerMatrix.isIdentity()) {
            m49832e();
            return;
        }
        if (rectF.isEmpty()) {
            return;
        }
        if (rectF.centerX() == this.rulerRect.centerX()) {
            if (rectF.centerY() == this.rulerRect.centerY()) {
                return;
            }
        }
        float centerX = rectF.centerX();
        float centerY = rectF.centerY();
        this.rulerMatrix.mapRect(rectF);
        float m49844q = m49844q(this.rulerMatrix);
        Matrix matrix = new Matrix();
        matrix.postRotate(m49844q, this.rulerRect.centerX(), this.rulerRect.centerY());
        matrix.postTranslate(rectF.centerX() - centerX, rectF.centerY() - centerY);
        this.rulerMatrix = matrix;
        m49832e();
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0018, code lost:
    
        if (r0 != 6) goto L18;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(@org.jetbrains.annotations.NotNull android.view.MotionEvent r4) {
        /*
            r3 = this;
            java.lang.String r0 = "event"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            int r0 = r4.getActionMasked()
            if (r0 == 0) goto L43
            r1 = 1
            if (r0 == r1) goto L33
            r2 = 2
            if (r0 == r2) goto L2f
            r2 = 3
            if (r0 == r2) goto L1b
            r2 = 5
            if (r0 == r2) goto L43
            r2 = 6
            if (r0 == r2) goto L33
            goto L2a
        L1b:
            r3.m49846s(r4)
            r3.m49831d()
            com.onyx.galaxy.note.editor.view.ruler.RulerView$RulerListener r0 = r3.rulerListener
            if (r0 == 0) goto L2a
            android.graphics.Matrix r1 = r3.rulerMatrix
            r0.onTransform(r3, r1)
        L2a:
            boolean r3 = super.onTouchEvent(r4)
            return r3
        L2f:
            r3.m49848u(r4)
            return r1
        L33:
            r3.m49849v(r4)
            r3.m49831d()
            com.onyx.galaxy.note.editor.view.ruler.RulerView$RulerListener r4 = r3.rulerListener
            if (r4 == 0) goto L42
            android.graphics.Matrix r0 = r3.rulerMatrix
            r4.onTransform(r3, r0)
        L42:
            return r1
        L43:
            boolean r3 = r3.m49847t(r4)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.editor.view.ruler.RulerView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    /* renamed from: p */
    public final RectF m49843p() {
        int height = getHeight() / 2;
        int i = (int) this.rulerHeight;
        int i2 = height - (i / 2);
        int i3 = i + i2;
        float diagonalLength = RectFKt.getDiagonalLength(ViewKt.localVisibleRectF(this));
        return new RectF(-diagonalLength, i2, getWidth() + diagonalLength, i3);
    }

    /* renamed from: q */
    public final int m49844q(Matrix matrix) {
        return Math.round(MatrixKt.getMatrixRotateAngel(matrix, this.rulerRect));
    }

    /* renamed from: r */
    public final void m49845r(MotionEvent event) {
        if (this.touchEventMap.size() != 2 || event.getPointerCount() < 2) {
            m49825E(event);
            return;
        }
        int m49829b = m49829b(event);
        this.multiHandleMode = m49829b;
        if (m49829b == 1) {
            m49824D(event);
        } else if (m49829b == 2) {
            m49825E(event);
        }
    }

    /* renamed from: s */
    public final void m49846s(MotionEvent event) {
        GestureDetector gestureDetector = this.gestureDetector;
        if (gestureDetector == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gestureDetector");
            gestureDetector = null;
        }
        gestureDetector.onTouchEvent(event);
        this.touchEventMap.clear();
        this.anglePointId = 0;
        this.visibleAngleLine = false;
        this.angleMode = false;
        invalidate();
    }

    public final void setRulerListener(@Nullable RulerListener listener) {
        this.rulerListener = listener;
    }

    public final void setRulerMatrix(@NotNull Matrix matrix) {
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        this.rulerMatrix = matrix;
        m49832e();
        invalidate();
    }

    /* renamed from: t */
    public final boolean m49847t(MotionEvent event) {
        if (!m49852y(event)) {
            return false;
        }
        this.multiHandleMode = 0;
        GestureDetector gestureDetector = this.gestureDetector;
        if (gestureDetector == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gestureDetector");
            gestureDetector = null;
        }
        gestureDetector.onTouchEvent(event);
        int pointerId = event.getPointerId(event.getActionIndex());
        boolean m49851x = m49851x(event);
        this.angleMode = m49851x;
        if (m49851x) {
            this.visibleAngleLine = true;
            this.anglePointId = pointerId;
        }
        this.touchEventMap.put(Integer.valueOf(pointerId), new TouchPoint(event.getX(event.getActionIndex()), event.getY(event.getActionIndex())));
        invalidate();
        return true;
    }

    /* renamed from: u */
    public final void m49848u(MotionEvent event) {
        if (this.touchEventMap.isEmpty()) {
            return;
        }
        GestureDetector gestureDetector = this.gestureDetector;
        if (gestureDetector == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gestureDetector");
            gestureDetector = null;
        }
        gestureDetector.onTouchEvent(event);
        if (this.angleMode) {
            m49822A(event);
        } else {
            m49845r(event);
        }
    }

    public final void updatePageSize(float width, float millimeter) {
        this.pageWidth = width;
        this.pageMillimeter = millimeter;
        m49827G();
    }

    /* renamed from: v */
    public final void m49849v(MotionEvent event) {
        int pointerId = event.getPointerId(event.getActionIndex());
        GestureDetector gestureDetector = this.gestureDetector;
        if (gestureDetector == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gestureDetector");
            gestureDetector = null;
        }
        gestureDetector.onTouchEvent(event);
        this.touchEventMap.remove(Integer.valueOf(pointerId));
        if (pointerId == this.anglePointId) {
            this.visibleAngleLine = false;
            this.angleMode = false;
            this.anglePointId = 0;
        }
        invalidate();
    }

    /* renamed from: w */
    public final void m49850w() {
        this.gestureDetector = new GestureDetector(getContext(), new GestureDetector.SimpleOnGestureListener() { // from class: com.onyx.galaxy.note.editor.view.ruler.RulerView$initGestureListener$1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public boolean onDoubleTap(@NotNull MotionEvent e) {
                boolean m49851x;
                boolean m49852y;
                Intrinsics.checkNotNullParameter(e, "e");
                m49851x = RulerView.this.m49851x(e);
                if (m49851x) {
                    RulerView.this.m49823B();
                    return true;
                }
                m49852y = RulerView.this.m49852y(e);
                if (!m49852y) {
                    return true;
                }
                RulerView.this.m49826F(e);
                return true;
            }
        });
    }

    /* renamed from: x */
    public final boolean m49851x(MotionEvent event) {
        PointF mapPoint = MatrixKt.mapPoint(MatrixKt.invertMatrix(this.rulerMatrix), event.getX(event.getActionIndex()), event.getY(event.getActionIndex()));
        return ShapeUtils.INSTANCE.inCircle(this.rulerRect.centerX(), this.rulerRect.centerY(), this.angleRadius, mapPoint.x, mapPoint.y);
    }

    /* renamed from: y */
    public final boolean m49852y(MotionEvent event) {
        PointF mapPoint = MatrixKt.mapPoint(MatrixKt.invertMatrix(this.rulerMatrix), event.getX(event.getActionIndex()), event.getY(event.getActionIndex()));
        return this.rulerRect.contains(mapPoint.x, mapPoint.y);
    }

    /* renamed from: z */
    public final boolean m49853z(MotionEvent event) {
        return event.getPointerCount() == 1 && MotionEventKt.getToolType(event) != 1;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RulerView(@NotNull Context context, @NotNull AttributeSet attr) {
        super(context, attr);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attr, "attr");
        ResManager resManager = ResManager.INSTANCE;
        this.rulerHeight = resManager.getDimension(C10651R.dimen.ruler_height);
        this.smallScaleHeight = resManager.getDimension(C10651R.dimen.ruler_small_scale);
        this.middleScaleHeight = resManager.getDimension(C10651R.dimen.ruler_middle_scale);
        this.bigScaleHeight = resManager.getDimension(C10651R.dimen.ruler_big_scale);
        this.angleRadius = resManager.getDimension(C10651R.dimen.ruler_angle_radius);
        this.scaleInterval = 1.0f;
        float dimension = resManager.getDimension(C10651R.dimen.ruler_scale_text_size);
        this.scaleTextSize = dimension;
        float dimension2 = resManager.getDimension(C10651R.dimen.ruler_angle_text_size);
        this.angleTextSize = dimension2;
        this.rulerScaleType = RulerScaleType.CM_DEFAULT;
        this.angleScaleHeight = resManager.getDimension(C10651R.dimen.ruler_angle_scale);
        this.unitsType = RulerUnitsType.f60706CM;
        this.touchEventMap = new HashMap<>();
        this.rulerBackgroundColor = resManager.getColor(C10651R.color.ruler_background);
        this.rulerBackgroundBorderColor = resManager.getColor(C10651R.color.overlay_04);
        this.textColor = resManager.getColor(C10651R.color.overlay_01);
        this.originalScaleColor = resManager.getColor(C10651R.color.overlay_01);
        this.scaleColor = resManager.getColor(C10651R.color.overlay_03);
        this.angleBackgroundColor = resManager.getColor(C10651R.color.overlay_07);
        this.angleColor = resManager.getColor(C10651R.color.overlay_04);
        this.angleSelectedColor = resManager.getColor(C10651R.color.warning_200);
        this.rulerRect = new RectF();
        this.rulerMatrix = new Matrix();
        Paint paint = new Paint();
        paint.setColor(this.rulerBackgroundColor);
        paint.setAntiAlias(true);
        this.backgroundPaint = paint;
        Paint paint2 = new Paint();
        paint2.setAntiAlias(true);
        paint2.setStrokeWidth(resManager.getDimension(C10651R.dimen.ruler_scale_width));
        this.scalePaint = paint2;
        Paint paint3 = new Paint();
        paint3.setColor(this.textColor);
        paint3.setTextSize(dimension);
        paint3.setAntiAlias(true);
        this.scaleTextPaint = paint3;
        Paint paint4 = new Paint();
        paint4.setTextSize(dimension2);
        paint4.setColor(this.textColor);
        paint4.setAntiAlias(true);
        this.angleTextPaint = paint4;
        Paint paint5 = new Paint();
        paint5.setColor(this.rulerBackgroundColor);
        paint5.setStrokeWidth(resManager.getDimension(C10651R.dimen.ruler_angle_width));
        paint5.setStyle(Paint.Style.STROKE);
        this.anglePaint = paint5;
        m49850w();
    }
}
