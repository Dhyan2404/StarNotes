package com.onyx.galaxy.note.editor.view.custom;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.ColorRes;
import androidx.core.app.NotificationCompat;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.DrawableKt;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.Tintable;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.extension.ViewExtKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.Range;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b4\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\b\u0016\u0012\n\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0086\u0001¢\u0006\u0006\b\u0088\u0001\u0010\u0089\u0001B!\b\u0016\u0012\n\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0086\u0001\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0006\b\u0088\u0001\u0010\u008a\u0001B*\b\u0016\u0012\n\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0086\u0001\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0007\u0010\u008b\u0001\u001a\u000204¢\u0006\u0006\b\u0088\u0001\u0010\u008c\u0001J\u0012\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0002J\b\u0010\u0007\u001a\u00020\u0005H\u0002J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH\u0002J\u0010\u0010\u000b\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0002J\u001a\u0010\u000f\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\b2\b\b\u0002\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\bH\u0002J\b\u0010\u0012\u001a\u00020\u0005H\u0002J\b\u0010\u0013\u001a\u00020\bH\u0002J\u0010\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0010\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0018\u0010\u001a\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0019\u001a\u00020\bH\u0002J\b\u0010\u001c\u001a\u00020\u001bH\u0002J\b\u0010\u001d\u001a\u00020\u001bH\u0002J\b\u0010\u001e\u001a\u00020\bH\u0002J\u0010\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0010\u0010 \u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0010\u0010!\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0018\u0010#\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\"\u001a\u00020\bH\u0002J\u0010\u0010$\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020\bH\u0002J\u0014\u0010'\u001a\u00020\u00052\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\b0%JS\u0010.\u001a\u00020\u00052K\u0010-\u001aG\u0012\u0013\u0012\u00110\b¢\u0006\f\b)\u0012\b\b*\u0012\u0004\b\b(+\u0012\u0013\u0012\u00110\b¢\u0006\f\b)\u0012\b\b*\u0012\u0004\b\b(\u0010\u0012\u0013\u0012\u00110\r¢\u0006\f\b)\u0012\b\b*\u0012\u0004\b\b(,\u0012\u0004\u0012\u00020\u00050(J\u000e\u00100\u001a\u00020\u00052\u0006\u0010/\u001a\u00020\bJ\u0012\u00103\u001a\u00020\r2\b\u00102\u001a\u0004\u0018\u000101H\u0017J\u0010\u00106\u001a\u00020\u00052\b\b\u0001\u00105\u001a\u000204J\u0010\u00108\u001a\u00020\u00052\b\b\u0001\u00107\u001a\u000204J\u0006\u00109\u001a\u00020\bJ\u0018\u0010<\u001a\u00020\u00052\u0006\u0010:\u001a\u0002042\u0006\u0010;\u001a\u000204H\u0014J\u0010\u0010=\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0014H\u0014J\b\u0010>\u001a\u00020\u0005H\u0016R\u0014\u0010@\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010?R\u0014\u0010C\u001a\u00020A8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010BR\u0014\u0010D\u001a\u00020A8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010BR*\u0010+\u001a\u00020\b2\u0006\u0010/\u001a\u00020\b8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010?\u001a\u0004\bE\u0010F\"\u0004\bG\u0010HR\"\u0010N\u001a\u0002048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010I\u001a\u0004\bJ\u0010K\"\u0004\bL\u0010MR\u0016\u0010O\u001a\u0002048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010IR\u0016\u0010P\u001a\u0002048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010IR\u0018\u0010T\u001a\u0004\u0018\u00010Q8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bR\u0010SR\u0016\u0010U\u001a\u0002048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010IR\u0016\u0010V\u001a\u00020Q8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0006\u0010SR\u0014\u0010W\u001a\u0002048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010IR\u001c\u0010Y\u001a\n X*\u0004\u0018\u00010Q0Q8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010SR\u0016\u0010[\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010?R\u0016\u0010]\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010?R\u0016\u0010_\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010?R\u0016\u0010a\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b`\u0010?R\u0016\u0010c\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bb\u0010?R\u0016\u0010e\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bd\u0010?R\u0016\u0010g\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010?R\u0016\u0010h\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010?R\u0016\u0010i\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010?R\u0016\u0010k\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bj\u0010?R\u0016\u0010n\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bl\u0010mR\"\u0010p\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bo\u0010m\u001a\u0004\bp\u0010q\"\u0004\br\u0010sR\u0016\u0010u\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bt\u0010mR]\u0010-\u001aI\u0012\u0013\u0012\u00110\b¢\u0006\f\b)\u0012\b\b*\u0012\u0004\b\b(+\u0012\u0013\u0012\u00110\b¢\u0006\f\b)\u0012\b\b*\u0012\u0004\b\b(\u0010\u0012\u0013\u0012\u00110\r¢\u0006\f\b)\u0012\b\b*\u0012\u0004\b\b(,\u0012\u0004\u0012\u00020\u0005\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bv\u0010wR\"\u0010{\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bx\u0010?\u001a\u0004\by\u0010F\"\u0004\bz\u0010HR\"\u0010\u007f\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b|\u0010?\u001a\u0004\b}\u0010F\"\u0004\b~\u0010HR\u0018\u0010\u0081\u0001\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0080\u0001\u0010?R\u0018\u0010\u0083\u0001\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0082\u0001\u0010?R\u0018\u0010\u0085\u0001\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0084\u0001\u0010?¨\u0006\u008d\u0001"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;", "Landroid/view/View;", "Lcom/onyx/android/sdk/theme/widgets/Tintable;", "Landroid/util/AttributeSet;", "attrs", "", GoogleApiAvailabilityLight.f29016b, "p", "", "currentPosition", C4921e.f26528e, C6998g.f39679a, "stickPercent", "", "forceCallback", C4921e.f26537n, "progressValue", "i", "m", "getTotalWidth", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "e", C6997f.f39671c, "x", "y", "a", "Landroid/graphics/RectF;", "getThumbRectF", "getThumbTouchRectF", "getProgressPosition", "c", "b", "j", "segmentPosition", "d", C6999h.f39688c, "Lorg/apache/commons/lang3/Range;", SessionDescription.f26441q, "setValueRange", "Lkotlin/Function3;", "Lkotlin/ParameterName;", "name", "progress", "isFromUser", "callback", "setProgressChangeCallback", "value", "setProgressValue", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "onTouchEvent", "", "backgroundRes", "setBackgroundColorRes", "progressRes", "setProgressColorRes", "getProgressValue", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "onDraw", "tint", "F", "maxProgress", "Landroid/graphics/Paint;", "Landroid/graphics/Paint;", "strokePaint", "thumbPaint", "getProgress", "()F", "setProgress", "(F)V", "I", "getSegmentCount", "()I", "setSegmentCount", "(I)V", "segmentCount", "backgroundColorId", "progressColorId", "Landroid/graphics/drawable/Drawable;", "l", "Landroid/graphics/drawable/Drawable;", "segmentThumb", "thumbRes", "thumb", "disabledProgressColorId", "kotlin.jvm.PlatformType", "disabledThumb", "q", "progressHeight", "r", "thumbSize", "s", "thumbTouchSize", "t", "halfThumbSize", "u", "halfThumbTouchSize", "v", "segmentThumbSize", "w", "halfSegmentThumbSize", "centerY", "startX", "z", "endX", "J", Constants.HASIDCALL_INDEX_SIG, "isDragging", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "isStick", Constants.BOOLEAN_VALUE_SIG, "setStick", "(Z)V", "Q", "isDrawSegment", "k0", "Lkotlin/jvm/functions/Function3;", "q0", "getMinValue", "setMinValue", "minValue", "t0", "getMaxValue", "setMaxValue", "maxValue", "u0", "lastProgress", "v0", "downPosition", "w0", "downX", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nStickSeekBarView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StickSeekBarView.kt\ncom/onyx/galaxy/note/editor/view/custom/StickSeekBarView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,409:1\n1#2:410\n*E\n"})
/* loaded from: classes9.dex */
public final class StickSeekBarView extends View implements Tintable {

    /* renamed from: J, reason: from kotlin metadata */
    public boolean isDragging;

    /* renamed from: O, reason: from kotlin metadata */
    public boolean isStick;

    /* renamed from: Q, reason: from kotlin metadata */
    public boolean isDrawSegment;

    /* renamed from: e, reason: from kotlin metadata */
    public final float maxProgress;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Paint strokePaint;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Paint thumbPaint;

    /* renamed from: h, reason: from kotlin metadata */
    public float progress;

    /* renamed from: i, reason: from kotlin metadata */
    public int segmentCount;

    /* renamed from: j, reason: from kotlin metadata */
    public int backgroundColorId;

    /* renamed from: k, reason: from kotlin metadata */
    public int progressColorId;

    /* renamed from: k0, reason: from kotlin metadata */
    @Nullable
    public Function3<? super Float, ? super Float, ? super Boolean, Unit> callback;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public Drawable segmentThumb;

    /* renamed from: m, reason: from kotlin metadata */
    public int thumbRes;

    /* renamed from: n, reason: from kotlin metadata */
    public Drawable thumb;

    /* renamed from: o, reason: from kotlin metadata */
    public final int disabledProgressColorId;

    /* renamed from: p, reason: from kotlin metadata */
    public final Drawable disabledThumb;

    /* renamed from: q, reason: from kotlin metadata */
    public float progressHeight;

    /* renamed from: q0, reason: from kotlin metadata */
    public float minValue;

    /* renamed from: r, reason: from kotlin metadata */
    public float thumbSize;

    /* renamed from: s, reason: from kotlin metadata */
    public float thumbTouchSize;

    /* renamed from: t, reason: from kotlin metadata */
    public float halfThumbSize;

    /* renamed from: t0, reason: from kotlin metadata */
    public float maxValue;

    /* renamed from: u, reason: from kotlin metadata */
    public float halfThumbTouchSize;

    /* renamed from: u0, reason: from kotlin metadata */
    public float lastProgress;

    /* renamed from: v, reason: from kotlin metadata */
    public float segmentThumbSize;

    /* renamed from: v0, reason: from kotlin metadata */
    public float downPosition;

    /* renamed from: w, reason: from kotlin metadata */
    public float halfSegmentThumbSize;

    /* renamed from: w0, reason: from kotlin metadata */
    public float downX;

    /* renamed from: x, reason: from kotlin metadata */
    public float centerY;

    /* renamed from: y, reason: from kotlin metadata */
    public float startX;

    /* renamed from: z, reason: from kotlin metadata */
    public float endX;

    public StickSeekBarView(@Nullable Context context) {
        this(context, null);
    }

    private final float getProgressPosition() {
        return ViewExtKt.isLayoutDirectionRtl(this) ? this.startX - ((this.progress / this.maxProgress) * getTotalWidth()) : this.startX + ((this.progress / this.maxProgress) * getTotalWidth());
    }

    private final RectF getThumbRectF() {
        float progressPosition = getProgressPosition();
        float f = this.halfThumbSize;
        float f2 = progressPosition - f;
        float f3 = this.thumbSize;
        float f4 = this.centerY - f;
        return new RectF(f2, f4, f2 + f3, f3 + f4);
    }

    private final RectF getThumbTouchRectF() {
        float progressPosition = getProgressPosition();
        float f = this.halfThumbTouchSize;
        float f2 = progressPosition - f;
        float f3 = this.thumbTouchSize;
        float f4 = this.centerY - f;
        return new RectF(f2, f4, f2 + f3, f3 + f4);
    }

    private final float getTotalWidth() {
        return getMeasuredWidth() - this.thumbTouchSize;
    }

    /* renamed from: l */
    public static /* synthetic */ void m47805l(StickSeekBarView stickSeekBarView, float f, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        stickSeekBarView.m47816k(f, z);
    }

    /* renamed from: a */
    public final boolean m47806a(float x, float y) {
        return y > getThumbTouchRectF().top && y < getThumbTouchRectF().bottom;
    }

    /* renamed from: b */
    public final void m47807b(Canvas canvas) {
        this.strokePaint.setColor(ThemeUtils.getColorById(isEnabled() ? this.backgroundColorId : this.disabledProgressColorId));
        float f = this.startX;
        float f2 = this.centerY;
        canvas.drawLine(f, f2, this.endX, f2, this.strokePaint);
    }

    /* renamed from: c */
    public final void m47808c(Canvas canvas) {
        this.strokePaint.setColor(ThemeUtils.getColorById(isEnabled() ? this.progressColorId : this.disabledProgressColorId));
        canvas.drawLine(this.startX, this.centerY, getProgressPosition(), this.centerY, this.strokePaint);
    }

    /* renamed from: d */
    public final void m47809d(Canvas canvas, float segmentPosition) {
        boolean z = segmentPosition < getProgressPosition();
        if (ViewExtKt.isLayoutDirectionRtl(this)) {
            z = !z;
        }
        if (z) {
            this.strokePaint.setColor(ThemeUtils.getColorById(isEnabled() ? this.progressColorId : this.disabledProgressColorId));
        } else {
            this.strokePaint.setColor(ThemeUtils.getColorById(isEnabled() ? this.backgroundColorId : this.disabledProgressColorId));
        }
        float f = this.centerY;
        float f2 = this.halfSegmentThumbSize;
        canvas.drawLine(segmentPosition, f - f2, segmentPosition, f + f2, this.strokePaint);
    }

    /* renamed from: e */
    public final void m47810e(Canvas canvas) {
        Drawable drawable;
        if (isEnabled()) {
            drawable = this.thumb;
            if (drawable == null) {
                Intrinsics.throwUninitializedPropertyAccessException("thumb");
                drawable = null;
            }
        } else {
            drawable = this.disabledThumb;
        }
        Intrinsics.checkNotNull(drawable);
        Bitmap bitmap = DrawableKt.toBitmap(drawable);
        if (bitmap != null) {
            canvas.drawBitmap(bitmap, (Rect) null, getThumbRectF(), this.thumbPaint);
        }
    }

    /* renamed from: f */
    public final void m47811f(Canvas canvas) {
        if (this.isDragging) {
            this.strokePaint.setColor(ResManager.INSTANCE.getColor(C10651R.color.overlay_04));
            canvas.drawCircle(getProgressPosition(), this.centerY, this.halfThumbTouchSize, this.strokePaint);
        }
    }

    /* renamed from: g */
    public final float m47812g(float currentPosition) {
        return ViewExtKt.isLayoutDirectionRtl(this) ? ((this.startX - currentPosition) / getTotalWidth()) * this.maxProgress : ((currentPosition - this.startX) / getTotalWidth()) * this.maxProgress;
    }

    public final float getMaxValue() {
        return this.maxValue;
    }

    public final float getMinValue() {
        return this.minValue;
    }

    public final float getProgress() {
        return this.progress;
    }

    public final float getProgressValue() {
        float f = this.minValue;
        return m47814i(f + ((this.maxValue - f) * (this.progress / this.maxProgress)));
    }

    public final int getSegmentCount() {
        return this.segmentCount;
    }

    /* renamed from: h */
    public final RectF m47813h(float segmentPosition) {
        float f = this.halfSegmentThumbSize;
        float f2 = this.centerY;
        return new RectF(segmentPosition - f, f2 - f, segmentPosition + f, f2 + f);
    }

    /* renamed from: i */
    public final float m47814i(float progressValue) {
        ResManager resManager = ResManager.INSTANCE;
        int integer = (int) (resManager.getInteger(C10651R.integer.times_100) * progressValue);
        int integer2 = ((int) (progressValue * resManager.getInteger(C10651R.integer.times_100))) % resManager.getInteger(C10651R.integer.tens);
        return ((integer - integer2) + ((integer2 <= 0 || ((float) integer2) > resManager.getFloat(C10651R.dimen.seek_smallest_unit)) ? ((float) integer2) > resManager.getFloat(C10651R.dimen.seek_smallest_unit) ? resManager.getFloat(C10651R.dimen.seek_smallest_unit) * resManager.getInteger(C10651R.integer.twice) : 0.0f : resManager.getFloat(C10651R.dimen.seek_smallest_unit))) / resManager.getInteger(C10651R.integer.times_100);
    }

    /* renamed from: isStick, reason: from getter */
    public final boolean getIsStick() {
        return this.isStick;
    }

    /* renamed from: j */
    public final void m47815j(Canvas canvas) {
        if (this.segmentCount <= 0 || !this.isDrawSegment) {
            return;
        }
        float totalWidth = getTotalWidth();
        int i = this.segmentCount;
        float f = totalWidth / i;
        if (i < 0) {
            return;
        }
        int i2 = 0;
        while (true) {
            m47809d(canvas, ViewExtKt.isLayoutDirectionRtl(this) ? this.startX - (i2 * f) : this.startX + (i2 * f));
            if (i2 == i) {
                return;
            } else {
                i2++;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0022, code lost:
    
        if ((r8.lastProgress == r8.progress) == false) goto L11;
     */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m47816k(float r9, boolean r10) {
        /*
            r8 = this;
            float r0 = r8.maxProgress
            int r1 = r8.segmentCount
            float r1 = (float) r1
            float r0 = r0 / r1
            float r1 = r8.progress
            float r2 = r1 % r0
            float r9 = r9 * r0
            int r3 = (r2 > r9 ? 1 : (r2 == r9 ? 0 : -1))
            r4 = 1
            r5 = 0
            if (r3 > 0) goto L3f
            float r1 = r1 - r2
            r8.setProgress(r1)
            if (r10 != 0) goto L24
            float r1 = r8.lastProgress
            float r3 = r8.progress
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 != 0) goto L21
            r1 = r4
            goto L22
        L21:
            r1 = r5
        L22:
            if (r1 != 0) goto L3f
        L24:
            kotlin.jvm.functions.Function3<? super java.lang.Float, ? super java.lang.Float, ? super java.lang.Boolean, kotlin.Unit> r1 = r8.callback
            if (r1 == 0) goto L3f
            float r3 = r8.progress
            java.lang.Float r3 = java.lang.Float.valueOf(r3)
            float r6 = r8.getProgressValue()
            java.lang.Float r6 = java.lang.Float.valueOf(r6)
            boolean r7 = r8.isDragging
            java.lang.Boolean r7 = java.lang.Boolean.valueOf(r7)
            r1.invoke(r3, r6, r7)
        L3f:
            float r0 = r0 - r2
            int r9 = (r0 > r9 ? 1 : (r0 == r9 ? 0 : -1))
            if (r9 >= 0) goto L73
            float r9 = r8.progress
            float r9 = r9 + r0
            r8.setProgress(r9)
            if (r10 != 0) goto L58
            float r9 = r8.lastProgress
            float r10 = r8.progress
            int r9 = (r9 > r10 ? 1 : (r9 == r10 ? 0 : -1))
            if (r9 != 0) goto L55
            goto L56
        L55:
            r4 = r5
        L56:
            if (r4 != 0) goto L73
        L58:
            kotlin.jvm.functions.Function3<? super java.lang.Float, ? super java.lang.Float, ? super java.lang.Boolean, kotlin.Unit> r9 = r8.callback
            if (r9 == 0) goto L73
            float r10 = r8.progress
            java.lang.Float r10 = java.lang.Float.valueOf(r10)
            float r0 = r8.getProgressValue()
            java.lang.Float r0 = java.lang.Float.valueOf(r0)
            boolean r8 = r8.isDragging
            java.lang.Boolean r8 = java.lang.Boolean.valueOf(r8)
            r9.invoke(r10, r0, r8)
        L73:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.editor.view.custom.StickSeekBarView.m47816k(float, boolean):void");
    }

    /* renamed from: m */
    public final void m47817m() {
        this.strokePaint.setStrokeWidth(this.progressHeight);
        this.strokePaint.setStrokeCap(Paint.Cap.ROUND);
        this.strokePaint.setStyle(Paint.Style.FILL);
        this.thumbPaint.setAntiAlias(true);
    }

    /* renamed from: n */
    public final void m47818n(AttributeSet attrs) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, C10651R.styleable.SegmentSeekBarView);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        this.backgroundColorId = obtainStyledAttributes.getResourceId(C10651R.styleable.SegmentSeekBarView_backgroundColor, C7996R.color.theme_background_color_03);
        this.progressColorId = obtainStyledAttributes.getResourceId(C10651R.styleable.SegmentSeekBarView_progressColor, C7996R.color.theme_primary_color_01);
        this.segmentThumb = obtainStyledAttributes.getDrawable(C10651R.styleable.SegmentSeekBarView_segmentThumb);
        int resourceId = obtainStyledAttributes.getResourceId(C10651R.styleable.SegmentSeekBarView_android_thumb, 0);
        this.thumbRes = resourceId;
        Drawable themeDrawable = ThemeUtils.getThemeDrawable(resourceId);
        Intrinsics.checkNotNullExpressionValue(themeDrawable, "getThemeDrawable(...)");
        this.thumb = themeDrawable;
        setProgress(obtainStyledAttributes.getFloat(C10651R.styleable.SegmentSeekBarView_android_progress, 0.0f));
        float f = this.progress;
        float f2 = this.maxProgress;
        if (f > f2) {
            setProgress(f2);
        }
        this.minValue = obtainStyledAttributes.getFloat(C10651R.styleable.SegmentSeekBarView_minValue, 0.0f);
        int i = C10651R.styleable.SegmentSeekBarView_maxValue;
        ResManager resManager = ResManager.INSTANCE;
        this.maxValue = obtainStyledAttributes.getFloat(i, resManager.getFloat(C10651R.dimen.seek_bar_max_progress));
        this.segmentCount = obtainStyledAttributes.getInt(C10651R.styleable.SegmentSeekBarView_segmentCount, -1);
        this.isStick = obtainStyledAttributes.getBoolean(C10651R.styleable.SegmentSeekBarView_isStick, false);
        this.isDrawSegment = obtainStyledAttributes.getBoolean(C10651R.styleable.SegmentSeekBarView_drawSegment, this.isDrawSegment);
        this.progressHeight = obtainStyledAttributes.getFloat(C10651R.styleable.SegmentSeekBarView_progressHeight, getResources().getDimension(C7384R.dimen.dp_2));
        float dimension = obtainStyledAttributes.getDimension(C10651R.styleable.SegmentSeekBarView_thumbIconSize, resManager.getDimension(C7384R.dimen.dp_16));
        this.thumbSize = dimension;
        this.thumbTouchSize = dimension * resManager.getFloat(C10651R.dimen.thumbSizeTime);
        this.halfThumbSize = this.thumbSize / resManager.getFloat(C10651R.dimen.twice);
        this.halfThumbTouchSize = this.thumbTouchSize / resManager.getFloat(C10651R.dimen.twice);
        float dimension2 = obtainStyledAttributes.getDimension(C10651R.styleable.SegmentSeekBarView_segmentThumbSize, resManager.getDimension(C7384R.dimen.dp_4));
        this.segmentThumbSize = dimension2;
        this.halfSegmentThumbSize = dimension2 / resManager.getFloat(C10651R.dimen.twice);
        obtainStyledAttributes.recycle();
        m47817m();
    }

    /* renamed from: o */
    public final void m47819o(float currentPosition) {
        Function3<? super Float, ? super Float, ? super Boolean, Unit> function3;
        setProgress(m47812g(currentPosition));
        setProgress(((Number) MathUtils.INSTANCE.clamp(Float.valueOf(this.progress), Float.valueOf(0.0f), Float.valueOf(this.maxProgress))).floatValue());
        if (!this.isStick) {
            float f = this.lastProgress;
            float f2 = this.progress;
            if (!(f == f2) && (function3 = this.callback) != null) {
                function3.invoke(Float.valueOf(f2), Float.valueOf(getProgressValue()), Boolean.valueOf(this.isDragging));
            }
        }
        if (this.isStick && this.segmentCount > 0) {
            m47805l(this, ResManager.INSTANCE.getFloat(C10651R.dimen.seek_bar_stick_percent), false, 2, null);
        }
        this.lastProgress = this.progress;
        invalidate();
    }

    @Override // android.view.View
    public void onDraw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        m47807b(canvas);
        m47808c(canvas);
        m47815j(canvas);
        m47811f(canvas);
        m47810e(canvas);
    }

    @Override // android.view.View
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        this.centerY = getMeasuredHeight() / ResManager.INSTANCE.getFloat(C10651R.dimen.twice);
        if (!ViewExtKt.isLayoutDirectionRtl(this)) {
            this.startX = this.halfThumbTouchSize;
            this.endX = getMeasuredWidth() - this.halfThumbTouchSize;
        } else {
            float measuredWidth = getMeasuredWidth();
            float f = this.halfThumbTouchSize;
            this.startX = measuredWidth - f;
            this.endX = f;
        }
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(@Nullable MotionEvent event) {
        Boolean valueOf = Boolean.valueOf(isEnabled());
        if (!valueOf.booleanValue()) {
            valueOf = null;
        }
        boolean z = true;
        if (valueOf == null) {
            return true;
        }
        valueOf.booleanValue();
        Integer valueOf2 = event != null ? Integer.valueOf(event.getAction()) : null;
        if (valueOf2 != null && valueOf2.intValue() == 0) {
            this.isDragging = m47806a(event.getX(), event.getY());
            this.downPosition = getProgressPosition();
            this.lastProgress = this.progress;
            this.downX = event.getRawX() - (event.getX() - (getThumbTouchRectF().left + (getThumbTouchRectF().width() / ResManager.INSTANCE.getFloat(C10651R.dimen.twice))));
        } else if (valueOf2 != null && valueOf2.intValue() == 2) {
            m47819o(this.downPosition + (event.getRawX() - this.downX));
        } else {
            if ((valueOf2 == null || valueOf2.intValue() != 1) && (valueOf2 == null || valueOf2.intValue() != 3)) {
                z = false;
            }
            if (z) {
                this.isDragging = false;
                m47820p();
            }
        }
        return this.isDragging;
    }

    /* renamed from: p */
    public final void m47820p() {
        if (this.isStick) {
            m47816k(ResManager.INSTANCE.getFloat(C10651R.dimen.seek_bar_stick_percent_up), true);
            invalidate();
        } else {
            Function3<? super Float, ? super Float, ? super Boolean, Unit> function3 = this.callback;
            if (function3 != null) {
                function3.invoke(Float.valueOf(this.progress), Float.valueOf(getProgressValue()), Boolean.valueOf(this.isDragging));
            }
        }
    }

    public final void setBackgroundColorRes(@ColorRes int backgroundRes) {
        this.backgroundColorId = backgroundRes;
    }

    public final void setMaxValue(float f) {
        this.maxValue = f;
    }

    public final void setMinValue(float f) {
        this.minValue = f;
    }

    public final void setProgress(float f) {
        Function3<? super Float, ? super Float, ? super Boolean, Unit> function3;
        if (this.progress == f) {
            return;
        }
        this.progress = f;
        if (this.isDragging || (function3 = this.callback) == null) {
            return;
        }
        function3.invoke(Float.valueOf(f), Float.valueOf(getProgressValue()), Boolean.valueOf(this.isDragging));
    }

    public final void setProgressChangeCallback(@NotNull Function3<? super Float, ? super Float, ? super Boolean, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.callback = callback;
    }

    public final void setProgressColorRes(@ColorRes int progressRes) {
        this.progressColorId = progressRes;
    }

    public final void setProgressValue(float value) {
        float floatValue = ((Number) MathUtils.INSTANCE.clamp(Float.valueOf(value), Float.valueOf(this.minValue), Float.valueOf(this.maxValue))).floatValue();
        float f = this.minValue;
        float f2 = (floatValue - f) / (this.maxValue - f);
        ResManager resManager = ResManager.INSTANCE;
        setProgress(f2 * resManager.getInteger(C10651R.integer.times_100));
        if (this.isStick) {
            m47805l(this, resManager.getFloat(C10651R.dimen.seek_bar_stick_percent), false, 2, null);
        }
        Function3<? super Float, ? super Float, ? super Boolean, Unit> function3 = this.callback;
        if (function3 != null) {
            function3.invoke(Float.valueOf(this.progress), Float.valueOf(getProgressValue()), Boolean.FALSE);
        }
        invalidate();
    }

    public final void setSegmentCount(int i) {
        this.segmentCount = i;
    }

    public final void setStick(boolean z) {
        this.isStick = z;
    }

    public final void setValueRange(@NotNull Range<Float> range) {
        Intrinsics.checkNotNullParameter(range, "range");
        Float minimum = range.getMinimum();
        Intrinsics.checkNotNullExpressionValue(minimum, "getMinimum(...)");
        this.minValue = minimum.floatValue();
        Float maximum = range.getMaximum();
        Intrinsics.checkNotNullExpressionValue(maximum, "getMaximum(...)");
        this.maxValue = maximum.floatValue();
    }

    @Override // com.onyx.android.sdk.theme.widgets.Tintable
    public void tint() {
        Drawable themeDrawable = ThemeUtils.getThemeDrawable(this.thumbRes);
        Intrinsics.checkNotNullExpressionValue(themeDrawable, "getThemeDrawable(...)");
        this.thumb = themeDrawable;
        invalidate();
    }

    public StickSeekBarView(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public StickSeekBarView(@Nullable Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        ResManager resManager = ResManager.INSTANCE;
        this.maxProgress = resManager.getFloat(C10651R.dimen.seek_bar_max_progress);
        this.strokePaint = new Paint(1);
        this.thumbPaint = new Paint();
        this.segmentCount = -1;
        this.backgroundColorId = C7996R.color.theme_background_stick_progress_bar_color;
        this.progressColorId = C7996R.color.theme_primary_color_01;
        this.disabledProgressColorId = C7996R.color.theme_background_color_03;
        this.disabledThumb = ThemeUtils.getThemeDrawable(C10651R.drawable.ic_common_seek_bar_thumb_disabled);
        this.progressHeight = getResources().getDimension(C7384R.dimen.dp_2);
        this.isDrawSegment = true;
        this.maxValue = resManager.getFloat(C10651R.dimen.seek_bar_max_progress);
        m47818n(attributeSet);
    }
}
