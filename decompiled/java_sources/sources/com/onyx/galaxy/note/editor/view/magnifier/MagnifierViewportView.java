package com.onyx.galaxy.note.editor.view.magnifier;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Size;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.PointFKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.onyx.android.sdk.data.utils.SvgUtil;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.magnifier.MagnifierViewportView;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import org.apache.commons.lang3.Range;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b'\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u00012\u00020\u0002:\u0003ijkB\u0011\b\u0016\u0012\u0006\u0010a\u001a\u00020`¢\u0006\u0004\bb\u0010cB\u001b\b\u0016\u0012\u0006\u0010a\u001a\u00020`\u0012\b\u0010e\u001a\u0004\u0018\u00010d¢\u0006\u0004\bb\u0010fB#\b\u0016\u0012\u0006\u0010a\u001a\u00020`\u0012\b\u0010e\u001a\u0004\u0018\u00010d\u0012\u0006\u0010g\u001a\u00020\u0012¢\u0006\u0004\bb\u0010hJ\b\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0018\u0010\f\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0002J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\tH\u0002J\b\u0010\u0011\u001a\u00020\u0003H\u0002J\b\u0010\u0013\u001a\u00020\u0012H\u0002J\b\u0010\u0014\u001a\u00020\u0003H\u0002J\b\u0010\u0016\u001a\u00020\u0015H\u0002J,\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00172\b\b\u0002\u0010\u001b\u001a\u00020\u001a2\b\b\u0002\u0010\u001d\u001a\u00020\u001cH\u0002J\u000e\u0010!\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u001fJ\b\u0010\"\u001a\u00020\u0003H\u0016J\b\u0010#\u001a\u00020\u0003H\u0014J\b\u0010$\u001a\u00020\u0003H\u0014JR\u0010/\u001a\u00020\u00032\b\u0010&\u001a\u0004\u0018\u00010%2\u0006\u0010'\u001a\u00020\u00122\u0006\u0010(\u001a\u00020\u00122\u0006\u0010)\u001a\u00020\u00122\u0006\u0010*\u001a\u00020\u00122\u0006\u0010+\u001a\u00020\u00122\u0006\u0010,\u001a\u00020\u00122\u0006\u0010-\u001a\u00020\u00122\u0006\u0010.\u001a\u00020\u0012H\u0016J\u0010\u00102\u001a\u00020\u00032\u0006\u00101\u001a\u000200H\u0014J\u0014\u00105\u001a\u00020\u00032\f\u00104\u001a\b\u0012\u0004\u0012\u00020\t03J\u0018\u00108\u001a\u00020\u00032\u0006\u00106\u001a\u00020\u00172\b\b\u0002\u00107\u001a\u00020\u0007J\u000e\u00109\u001a\u00020\u00032\u0006\u00106\u001a\u00020\u0017J \u0010:\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\b\b\u0002\u00107\u001a\u00020\u0007J \u00108\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\b\b\u0002\u00107\u001a\u00020\u0007J*\u0010=\u001a\u00020\u00032\u0006\u0010;\u001a\u00020\t2\u0006\u0010<\u001a\u00020\t2\b\b\u0002\u0010\u001d\u001a\u00020\u001c2\b\b\u0002\u00107\u001a\u00020\u0007J\u0006\u0010>\u001a\u00020\u0003J\u0006\u0010?\u001a\u00020\u0003J\u0006\u0010@\u001a\u00020\u0003J\u000e\u0010A\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\tJ\u001a\u0010A\u001a\u00020\u00032\b\b\u0002\u0010\u001b\u001a\u00020\t2\b\b\u0002\u0010B\u001a\u00020\tJ\u000e\u0010C\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\tJ\u001a\u0010C\u001a\u00020\u00032\b\b\u0002\u0010\u001b\u001a\u00020\t2\b\b\u0002\u0010B\u001a\u00020\tJ\u000e\u0010D\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\tJ\u000e\u0010E\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\tJ\u0006\u0010F\u001a\u00020\u0017J\u0006\u0010G\u001a\u00020\tJ\u0006\u0010H\u001a\u00020\tJ\u0006\u0010I\u001a\u00020\tJ\u0006\u0010J\u001a\u00020\tR\u0016\u0010L\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010KR\u0016\u0010N\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010MR\u0016\u0010P\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010MR\u0016\u0010R\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0004\u0010QR\u0016\u0010S\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010QR\u0016\u0010U\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010MR\u0016\u0010V\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010MR:\u0010Z\u001a&\u0012\f\u0012\n W*\u0004\u0018\u00010\t0\t W*\u0012\u0012\f\u0012\n W*\u0004\u0018\u00010\t0\t\u0018\u000103038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010YR\u0018\u0010]\u001a\u0004\u0018\u00010[8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\\R\u0018\u0010_\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010^¨\u0006l"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;", "Lcom/onyx/android/sdk/theme/widgets/TintView;", "Landroid/view/View$OnLayoutChangeListener;", "", "i", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "", C6998g.f39679a, "", "x", "y", "e", C6997f.f39671c, C4921e.f26528e, "scaleFactor", GoogleApiAvailabilityLight.f29016b, "p", "", "getParentWidth", "j", "Landroid/util/Size;", "getParentViewSize", "Landroid/graphics/RectF;", "oldRectF", "newRectF", "Landroid/graphics/PointF;", TypedValues.CycleType.S_WAVE_OFFSET, "Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;", Constants.ATTRNAME_MODE, "l", "Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$OnViewStateChangedListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setOnViewStateChangedListener", "tint", "onAttachedToWindow", "onDetachedFromWindow", "Landroid/view/View;", "v", "left", OneDriverConstants.TOP, gon.f71288n0, "bottom", "oldLeft", "oldTop", "oldRight", "oldBottom", "onLayoutChange", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "onDraw", "Lorg/apache/commons/lang3/Range;", SessionDescription.f26441q, "setWidthLimitRange", "rectF", "notify", "moveTo", "moveToWithoutLimit", "moveCenterToPoint", "dx", "dy", BaiduYunConstant.OPERATION_MOVE, "newLine", "moveDefaultLeft", "moveDefaultRight", "moveLeft", "newLineOffset", "moveRight", "moveUp", "moveDown", "getLocationRect", "getNewLineOffset", "getNewLineMinOffset", "getDefaultXOffset", "getMinXOffset", "Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;", "touchMode", "F", "lastTouchX", C6999h.f39688c, "lastTouchY", "I", "initialWidth", "initialHeight", C4921e.f26537n, "parentMaxX", "parentMaxY", "kotlin.jvm.PlatformType", "m", "Lorg/apache/commons/lang3/Range;", "widthLimitRange", "Landroid/graphics/Bitmap;", "Landroid/graphics/Bitmap;", "indicatorBitmap", "Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$OnViewStateChangedListener;", "changedListener", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Mode", "OnViewStateChangedListener", "a", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nMagnifierViewportView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MagnifierViewportView.kt\ncom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,437:1\n1#2:438\n310#3:439\n326#3,4:440\n311#3:444\n310#3:445\n326#3,4:446\n311#3:450\n310#3:451\n326#3,4:452\n311#3:456\n*S KotlinDebug\n*F\n+ 1 MagnifierViewportView.kt\ncom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView\n*L\n241#1:439\n241#1:440,4\n241#1:444\n259#1:445\n259#1:446,4\n259#1:450\n274#1:451\n274#1:452,4\n274#1:456\n*E\n"})
/* loaded from: classes9.dex */
public final class MagnifierViewportView extends TintView implements View.OnLayoutChangeListener {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public Mode touchMode;

    /* renamed from: g, reason: from kotlin metadata */
    public float lastTouchX;

    /* renamed from: h, reason: from kotlin metadata */
    public float lastTouchY;

    /* renamed from: i, reason: from kotlin metadata */
    public int initialWidth;

    /* renamed from: j, reason: from kotlin metadata */
    public int initialHeight;

    /* renamed from: k, reason: from kotlin metadata */
    public float parentMaxX;

    /* renamed from: l, reason: from kotlin metadata */
    public float parentMaxY;

    /* renamed from: m, reason: from kotlin metadata */
    public Range<Float> widthLimitRange;

    /* renamed from: n, reason: from kotlin metadata */
    @Nullable
    public Bitmap indicatorBitmap;

    /* renamed from: o, reason: from kotlin metadata */
    @Nullable
    public OnViewStateChangedListener changedListener;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0012\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0000J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0000J\u0006\u0010\b\u001a\u00020\u0004J\u0006\u0010\t\u001a\u00020\u0004J\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0000J\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0000J\u0006\u0010\f\u001a\u00020\u0004j\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;", "", "(Ljava/lang/String;I)V", "isDragging", "", "isEnterDrag", "previous", "isEnterResize", "isMove", "isNone", "isQuitDrag", "isQuitResize", "isResizing", "NONE", "DRAG", "RESIZE", "GESTURE_RESIZE", "MOVE_LEFT", "MOVE_RIGHT", "MOVE_UP", "MOVE_DOWN", "MOVE_NEW_LINE", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Mode {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Mode[] $VALUES;
        public static final Mode NONE = new Mode("NONE", 0);
        public static final Mode DRAG = new Mode("DRAG", 1);
        public static final Mode RESIZE = new Mode("RESIZE", 2);
        public static final Mode GESTURE_RESIZE = new Mode("GESTURE_RESIZE", 3);
        public static final Mode MOVE_LEFT = new Mode("MOVE_LEFT", 4);
        public static final Mode MOVE_RIGHT = new Mode("MOVE_RIGHT", 5);
        public static final Mode MOVE_UP = new Mode("MOVE_UP", 6);
        public static final Mode MOVE_DOWN = new Mode("MOVE_DOWN", 7);
        public static final Mode MOVE_NEW_LINE = new Mode("MOVE_NEW_LINE", 8);

        private static final /* synthetic */ Mode[] $values() {
            return new Mode[]{NONE, DRAG, RESIZE, GESTURE_RESIZE, MOVE_LEFT, MOVE_RIGHT, MOVE_UP, MOVE_DOWN, MOVE_NEW_LINE};
        }

        static {
            Mode[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        private Mode(String str, int i) {
        }

        @NotNull
        public static EnumEntries<Mode> getEntries() {
            return $ENTRIES;
        }

        public static Mode valueOf(String str) {
            return (Mode) Enum.valueOf(Mode.class, str);
        }

        public static Mode[] values() {
            return (Mode[]) $VALUES.clone();
        }

        public final boolean isDragging() {
            return this == DRAG;
        }

        public final boolean isEnterDrag(@NotNull Mode previous) {
            Intrinsics.checkNotNullParameter(previous, "previous");
            return !previous.isDragging() && isDragging();
        }

        public final boolean isEnterResize(@NotNull Mode previous) {
            Intrinsics.checkNotNullParameter(previous, "previous");
            return !previous.isResizing() && isResizing();
        }

        public final boolean isMove() {
            return this == MOVE_UP || this == MOVE_DOWN || this == MOVE_LEFT || this == MOVE_RIGHT || this == MOVE_NEW_LINE;
        }

        public final boolean isNone() {
            return this == NONE;
        }

        public final boolean isQuitDrag(@NotNull Mode previous) {
            Intrinsics.checkNotNullParameter(previous, "previous");
            return previous.isDragging() && !isDragging();
        }

        public final boolean isQuitResize(@NotNull Mode previous) {
            Intrinsics.checkNotNullParameter(previous, "previous");
            return previous.isResizing() && !isResizing();
        }

        public final boolean isResizing() {
            return this == RESIZE || this == GESTURE_RESIZE;
        }
    }

    @Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J0\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH&¨\u0006\r"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$OnViewStateChangedListener;", "", "onViewStateChanged", "", "view", "Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;", "oldRectF", "Landroid/graphics/RectF;", "newRectF", TypedValues.CycleType.S_WAVE_OFFSET, "Landroid/graphics/PointF;", "currentType", "Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface OnViewStateChangedListener {
        void onViewStateChanged(@NotNull MagnifierViewportView view, @NotNull RectF oldRectF, @NotNull RectF newRectF, @NotNull PointF offset, @NotNull Mode currentType);
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Mode.values().length];
            try {
                iArr[Mode.DRAG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Mode.RESIZE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.magnifier.MagnifierViewportView$a */
    /* loaded from: classes9.dex */
    public final class C12366a extends ScaleGestureDetector.SimpleOnScaleGestureListener {

        /* renamed from: a */
        public float f60085a = 1.0f;

        /* renamed from: b */
        public final boolean f60086b;

        public C12366a() {
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScale(@NotNull ScaleGestureDetector detector) {
            Intrinsics.checkNotNullParameter(detector, "detector");
            float scaleFactor = this.f60085a * detector.getScaleFactor();
            this.f60085a = scaleFactor;
            MagnifierViewportView.this.m48477n(scaleFactor);
            return true;
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScaleBegin(@NotNull ScaleGestureDetector detector) {
            Intrinsics.checkNotNullParameter(detector, "detector");
            MagnifierViewportView magnifierViewportView = MagnifierViewportView.this;
            MagnifierViewportView.m48470m(magnifierViewportView, magnifierViewportView.getLocationRect(), MagnifierViewportView.this.getLocationRect(), null, Mode.NONE, 4, null);
            this.f60085a = 1.0f;
            MagnifierViewportView.this.touchMode = Mode.GESTURE_RESIZE;
            return this.f60086b;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MagnifierViewportView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: d */
    public static final boolean m48467d(ScaleGestureDetector scaleGestureDetector, MagnifierViewportView this$0, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(scaleGestureDetector, "$scaleGestureDetector");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        scaleGestureDetector.onTouchEvent(motionEvent);
        Intrinsics.checkNotNull(motionEvent);
        return this$0.m48473g(motionEvent);
    }

    private final Size getParentViewSize() {
        ViewParent parent = getParent();
        Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
        return ViewKt.getSize((ViewGroup) parent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getParentWidth() {
        ViewParent parent = getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup == null) {
            return 0;
        }
        return viewGroup.getWidth();
    }

    /* renamed from: h */
    public static final void m48468h(MagnifierViewportView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        m48470m(this$0, this$0.getLocationRect(), this$0.getLocationRect(), null, null, 12, null);
    }

    /* renamed from: k */
    public static final void m48469k(MagnifierViewportView this$0, RectF oldRectF, RectF newRectF) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(oldRectF, "$oldRectF");
        Intrinsics.checkNotNullParameter(newRectF, "$newRectF");
        m48470m(this$0, oldRectF, newRectF, null, null, 12, null);
    }

    /* renamed from: m */
    public static /* synthetic */ void m48470m(MagnifierViewportView magnifierViewportView, RectF rectF, RectF rectF2, PointF pointF, Mode mode, int i, Object obj) {
        if ((i & 4) != 0) {
            pointF = PointFKt.getEMPTY_POINTF();
        }
        if ((i & 8) != 0) {
            mode = magnifierViewportView.touchMode;
        }
        magnifierViewportView.m48476l(rectF, rectF2, pointF, mode);
    }

    public static /* synthetic */ void move$default(MagnifierViewportView magnifierViewportView, float f, float f2, Mode mode, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            mode = magnifierViewportView.touchMode;
        }
        if ((i & 8) != 0) {
            z = true;
        }
        magnifierViewportView.move(f, f2, mode, z);
    }

    public static /* synthetic */ void moveCenterToPoint$default(MagnifierViewportView magnifierViewportView, float f, float f2, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        magnifierViewportView.moveCenterToPoint(f, f2, z);
    }

    public static /* synthetic */ void moveLeft$default(MagnifierViewportView magnifierViewportView, float f, float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            f = -magnifierViewportView.getDefaultXOffset();
        }
        if ((i & 2) != 0) {
            f2 = -magnifierViewportView.getNewLineOffset();
        }
        magnifierViewportView.moveLeft(f, f2);
    }

    public static /* synthetic */ void moveRight$default(MagnifierViewportView magnifierViewportView, float f, float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            f = magnifierViewportView.getDefaultXOffset();
        }
        if ((i & 2) != 0) {
            f2 = magnifierViewportView.getNewLineOffset();
        }
        magnifierViewportView.moveRight(f, f2);
    }

    public static /* synthetic */ void moveTo$default(MagnifierViewportView magnifierViewportView, RectF rectF, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        magnifierViewportView.moveTo(rectF, z);
    }

    /* renamed from: e */
    public final void m48471e(float x, float y) {
        Bitmap bitmap = this.indicatorBitmap;
        if (bitmap == null) {
            this.touchMode = Mode.DRAG;
        } else {
            this.touchMode = (x <= ((float) getWidth()) - (((float) bitmap.getWidth()) * 1.5f) || y <= ((float) getHeight()) - (((float) bitmap.getHeight()) * 1.5f)) ? Mode.DRAG : Mode.RESIZE;
        }
    }

    /* renamed from: f */
    public final void m48472f(MotionEvent event) {
        float coerceIn;
        float coerceIn2;
        RectF locationRect = getLocationRect();
        PointF pointF = new PointF(event.getRawX() - this.lastTouchX, event.getRawY() - this.lastTouchY);
        coerceIn = RangesKt___RangesKt.coerceIn(getX() + pointF.x, 0.0f, this.parentMaxX);
        setX(coerceIn);
        coerceIn2 = RangesKt___RangesKt.coerceIn(getY() + pointF.y, 0.0f, this.parentMaxY);
        setY(coerceIn2);
        this.lastTouchX = event.getRawX();
        this.lastTouchY = event.getRawY();
        m48470m(this, locationRect, getLocationRect(), pointF, null, 8, null);
    }

    /* renamed from: g */
    public final boolean m48473g(MotionEvent event) {
        int actionMasked = event.getActionMasked();
        if (actionMasked == 0) {
            m48471e(event.getX(), event.getY());
            this.lastTouchX = event.getRawX();
            this.lastTouchY = event.getRawY();
            this.initialWidth = getWidth();
            this.initialHeight = getHeight();
            return true;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                int i = WhenMappings.$EnumSwitchMapping$0[this.touchMode.ordinal()];
                if (i == 1) {
                    m48472f(event);
                } else if (i == 2) {
                    m48478o(event);
                }
                return true;
            }
            if (actionMasked != 3) {
                return true;
            }
        }
        this.touchMode = Mode.NONE;
        post(new Runnable() { // from class: com.sunia.HTREnginev2.g7j
            @Override // java.lang.Runnable
            public final void run() {
                MagnifierViewportView.m48468h(MagnifierViewportView.this);
            }
        });
        return true;
    }

    public final float getDefaultXOffset() {
        return getWidth() - getMinXOffset();
    }

    @NotNull
    public final RectF getLocationRect() {
        return new RectF(getX(), getY(), getX() + getWidth(), getY() + getHeight());
    }

    public final float getMinXOffset() {
        return getWidth() * 0.15f;
    }

    public final float getNewLineMinOffset() {
        return getHeight() * 0.15f;
    }

    public final float getNewLineOffset() {
        return getHeight() - getNewLineMinOffset();
    }

    /* renamed from: i */
    public final void m48474i() {
        BitmapDrawable bitmapDrawable;
        Drawable themeDrawable = ThemeUtils.getThemeDrawable(C10651R.drawable.ic_magnifier_scale_indicator);
        this.indicatorBitmap = (themeDrawable == null || (bitmapDrawable = SvgUtil.INSTANCE.toBitmapDrawable(themeDrawable)) == null) ? null : bitmapDrawable.getBitmap();
        Drawable themeDrawable2 = ThemeUtils.getThemeDrawable(C10651R.drawable.magnifier_viewport_rectangle_primary_bg);
        if (themeDrawable2 != null) {
            setBackgroundDrawable(themeDrawable2);
        }
    }

    /* renamed from: j */
    public final void m48475j() {
    }

    /* renamed from: l */
    public final void m48476l(RectF oldRectF, RectF newRectF, PointF offset, Mode mode) {
        OnViewStateChangedListener onViewStateChangedListener = this.changedListener;
        if (onViewStateChangedListener != null) {
            onViewStateChangedListener.onViewStateChanged(this, oldRectF, newRectF, offset, mode);
        }
    }

    public final void move(float dx, float dy, @NotNull Mode mode, boolean notify) {
        Intrinsics.checkNotNullParameter(mode, "mode");
        final RectF locationRect = getLocationRect();
        float coerceIn = !((dx > 0.0f ? 1 : (dx == 0.0f ? 0 : -1)) == 0) ? RangesKt___RangesKt.coerceIn(getX() + dx, 0.0f, this.parentMaxX) : getX();
        float coerceIn2 = !(dy == 0.0f) ? RangesKt___RangesKt.coerceIn(getY() + dy, 0.0f, this.parentMaxY) : getY();
        setX(coerceIn);
        setY(coerceIn2);
        final RectF locationRect2 = getLocationRect();
        if (notify) {
            m48470m(this, locationRect, locationRect2, null, mode, 4, null);
        }
        this.touchMode = Mode.NONE;
        if (notify) {
            post(new Runnable() { // from class: com.sunia.HTREnginev2.f7j
                @Override // java.lang.Runnable
                public final void run() {
                    MagnifierViewportView.m48469k(MagnifierViewportView.this, locationRect, locationRect2);
                }
            });
        }
    }

    public final void moveCenterToPoint(float x, float y, boolean notify) {
        moveTo(x - (getWidth() / 2), y - (getHeight() / 2), notify);
    }

    public final void moveDefaultLeft() {
        moveLeft(-getDefaultXOffset());
    }

    public final void moveDefaultRight() {
        moveRight(getDefaultXOffset());
    }

    public final void moveDown(float offset) {
        move$default(this, 0.0f, offset, Mode.MOVE_DOWN, false, 8, null);
    }

    public final void moveLeft(float offset) {
        move$default(this, offset, 0.0f, Mode.MOVE_LEFT, false, 8, null);
    }

    public final void moveRight(float offset) {
        move$default(this, offset, 0.0f, Mode.MOVE_RIGHT, false, 8, null);
    }

    public final void moveTo(@NotNull RectF rectF, boolean notify) {
        int coerceIn;
        int coerceIn2;
        Intrinsics.checkNotNullParameter(rectF, "rectF");
        final RectF locationRect = getLocationRect();
        moveTo(rectF.left, rectF.top, false);
        Size parentViewSize = getParentViewSize();
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            coerceIn = RangesKt___RangesKt.coerceIn((int) rectF.width(), 0, parentViewSize.getWidth());
            layoutParams.width = coerceIn;
            coerceIn2 = RangesKt___RangesKt.coerceIn((int) rectF.height(), 0, parentViewSize.getHeight());
            layoutParams.height = coerceIn2;
            setLayoutParams(layoutParams);
            if (notify) {
                m48479p();
                ViewKt.postSelf(this, new Function1<MagnifierViewportView, Unit>() { // from class: com.onyx.galaxy.note.editor.view.magnifier.MagnifierViewportView$moveTo$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(MagnifierViewportView magnifierViewportView) {
                        invoke2(magnifierViewportView);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull MagnifierViewportView it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        MagnifierViewportView magnifierViewportView = MagnifierViewportView.this;
                        MagnifierViewportView.m48470m(magnifierViewportView, locationRect, magnifierViewportView.getLocationRect(), null, null, 12, null);
                    }
                });
                return;
            }
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
    }

    public final void moveToWithoutLimit(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "rectF");
        setX(rectF.left);
        setY(rectF.top);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
        }
        MathUtils mathUtils = MathUtils.INSTANCE;
        layoutParams.width = ((Number) mathUtils.atLeast(Integer.valueOf((int) rectF.width()), 0)).intValue();
        layoutParams.height = ((Number) mathUtils.atLeast(Integer.valueOf((int) rectF.height()), 0)).intValue();
        setLayoutParams(layoutParams);
        this.touchMode = Mode.NONE;
    }

    public final void moveUp(float offset) {
        move$default(this, 0.0f, offset, Mode.MOVE_UP, false, 8, null);
    }

    /* renamed from: n */
    public final void m48477n(float scaleFactor) {
        float coerceIn;
        final RectF locationRect = getLocationRect();
        int i = this.initialWidth;
        float f = i / this.initialHeight;
        float f2 = i * scaleFactor;
        Float minimum = this.widthLimitRange.getMinimum();
        Float f3 = minimum;
        Intrinsics.checkNotNull(f3);
        if (!(f3.floatValue() > 0.0f)) {
            minimum = null;
        }
        float floatValue = ((Number) AnyKt.getOrElse(minimum, new Function0<Float>() { // from class: com.onyx.galaxy.note.editor.view.magnifier.MagnifierViewportView$resize$newWidth$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Float invoke() {
                int parentWidth;
                parentWidth = MagnifierViewportView.this.getParentWidth();
                return Float.valueOf(parentWidth / 6.0f);
            }
        })).floatValue();
        Float maximum = this.widthLimitRange.getMaximum();
        Float f4 = maximum;
        Intrinsics.checkNotNull(f4);
        coerceIn = RangesKt___RangesKt.coerceIn(f2, floatValue, ((Number) AnyKt.getOrElse(f4.floatValue() > 0.0f ? maximum : null, new Function0<Float>() { // from class: com.onyx.galaxy.note.editor.view.magnifier.MagnifierViewportView$resize$newWidth$4
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Float invoke() {
                int parentWidth;
                parentWidth = MagnifierViewportView.this.getParentWidth();
                return Float.valueOf(parentWidth / 1.0f);
            }
        })).floatValue());
        int i2 = (int) coerceIn;
        int i3 = (int) (i2 / f);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
        }
        layoutParams.width = i2;
        layoutParams.height = i3;
        setLayoutParams(layoutParams);
        m48479p();
        ViewKt.postSelf(this, new Function1<MagnifierViewportView, Unit>() { // from class: com.onyx.galaxy.note.editor.view.magnifier.MagnifierViewportView$resize$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(MagnifierViewportView magnifierViewportView) {
                invoke2(magnifierViewportView);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull MagnifierViewportView it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                MagnifierViewportView magnifierViewportView = MagnifierViewportView.this;
                MagnifierViewportView.m48470m(magnifierViewportView, locationRect, magnifierViewportView.getLocationRect(), null, MagnifierViewportView.Mode.RESIZE, 4, null);
            }
        });
    }

    public final void newLine() {
        move$default(this, -getX(), getNewLineOffset(), Mode.MOVE_NEW_LINE, false, 8, null);
    }

    /* renamed from: o */
    public final void m48478o(MotionEvent event) {
        m48477n(((this.initialWidth + event.getRawX()) - this.lastTouchX) / this.initialWidth);
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.addOnLayoutChangeListener(this);
        }
        m48479p();
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ViewParent parent = getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.removeOnLayoutChangeListener(this);
        }
    }

    @Override // android.view.View
    public void onDraw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        Bitmap bitmap = this.indicatorBitmap;
        if (bitmap != null) {
            canvas.drawBitmap(bitmap, getWidth() - bitmap.getWidth(), getHeight() - bitmap.getHeight(), (Paint) null);
        }
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(@Nullable View v, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
        m48479p();
        m48475j();
    }

    /* renamed from: p */
    public final void m48479p() {
        ViewParent parent = getParent();
        if ((parent instanceof ViewGroup ? (ViewGroup) parent : null) == null) {
            return;
        }
        MathUtils mathUtils = MathUtils.INSTANCE;
        this.parentMaxX = ((Number) mathUtils.atLeast(Float.valueOf(r0.getWidth() - getWidth()), Float.valueOf(0.0f))).floatValue();
        this.parentMaxY = ((Number) mathUtils.atLeast(Float.valueOf(r0.getHeight() - getHeight()), Float.valueOf(0.0f))).floatValue();
    }

    public final void setOnViewStateChangedListener(@NotNull OnViewStateChangedListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.changedListener = listener;
    }

    public final void setWidthLimitRange(@NotNull Range<Float> range) {
        Intrinsics.checkNotNullParameter(range, "range");
        this.widthLimitRange = range;
    }

    @Override // com.onyx.android.sdk.theme.widgets.TintView, com.onyx.android.sdk.theme.widgets.Tintable
    public void tint() {
        m48474i();
        invalidate();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MagnifierViewportView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public static /* synthetic */ void moveTo$default(MagnifierViewportView magnifierViewportView, float f, float f2, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        magnifierViewportView.moveTo(f, f2, z);
    }

    public final void moveLeft(float offset, float newLineOffset) {
        if (MathUtils.INSTANCE.areApproximatelyEqual(getX(), 0.0f, 2.0f)) {
            move$default(this, this.parentMaxX, newLineOffset, Mode.MOVE_NEW_LINE, false, 8, null);
        } else {
            moveLeft(offset);
        }
    }

    public final void moveRight(float offset, float newLineOffset) {
        if (MathUtils.INSTANCE.areApproximatelyEqual(getX(), this.parentMaxX, 2.0f)) {
            move$default(this, -getX(), newLineOffset, Mode.MOVE_NEW_LINE, false, 8, null);
        } else {
            moveRight(offset);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MagnifierViewportView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.touchMode = Mode.NONE;
        Float valueOf = Float.valueOf(0.0f);
        this.widthLimitRange = Range.between(valueOf, valueOf);
        m48474i();
        final ScaleGestureDetector scaleGestureDetector = new ScaleGestureDetector(context, new C12366a());
        setOnTouchListener(new View.OnTouchListener() { // from class: com.sunia.HTREnginev2.h7j
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean m48467d;
                m48467d = MagnifierViewportView.m48467d(scaleGestureDetector, this, view, motionEvent);
                return m48467d;
            }
        });
    }

    public final void moveTo(float x, float y, boolean notify) {
        float coerceIn;
        float coerceIn2;
        RectF locationRect = getLocationRect();
        coerceIn = RangesKt___RangesKt.coerceIn(x, 0.0f, this.parentMaxX);
        coerceIn2 = RangesKt___RangesKt.coerceIn(y, 0.0f, this.parentMaxY);
        setX(coerceIn);
        setY(coerceIn2);
        if (notify) {
            m48470m(this, locationRect, getLocationRect(), null, null, 12, null);
        }
        this.touchMode = Mode.NONE;
    }
}
