package com.onyx.galaxy.note.editor.view.magnifier;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.data.utils.SvgUtil;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u00108\u001a\u000207¢\u0006\u0004\b9\u0010:B\u001b\b\u0016\u0012\u0006\u00108\u001a\u000207\u0012\b\u0010<\u001a\u0004\u0018\u00010;¢\u0006\u0004\b9\u0010=B#\b\u0016\u0012\u0006\u00108\u001a\u000207\u0012\b\u0010<\u001a\u0004\u0018\u00010;\u0012\u0006\u0010>\u001a\u00020\u0005¢\u0006\u0004\b9\u0010?J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0004\u001a\u00020\u0002H\u0014J(\u0010\n\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005H\u0014J\u0006\u0010\u000b\u001a\u00020\u0002J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\fH\u0014J\u0010\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fH\u0017J\u0006\u0010\u0014\u001a\u00020\u0013J\b\u0010\u0015\u001a\u00020\u0002H\u0002J\b\u0010\u0016\u001a\u00020\u0002H\u0002J\u0018\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u0017H\u0002J\u0010\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\b\u0010\u001c\u001a\u00020\u0002H\u0002R\u0016\u0010\u001f\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010\"\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010#\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010!R\u0016\u0010&\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0016\u0010(\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010!R\u0014\u0010*\u001a\u00020\u00178\u0002X\u0082D¢\u0006\u0006\n\u0004\b)\u0010!R\u0014\u0010,\u001a\u00020\u00178\u0002X\u0082D¢\u0006\u0006\n\u0004\b+\u0010!R\u0016\u0010.\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010%R\u0018\u00102\u001a\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R\u0014\u00106\u001a\u0002038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b4\u00105¨\u0006@"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierNewLineAreaView;", "Lcom/onyx/android/sdk/theme/widgets/TintView;", "", "tint", "onAttachedToWindow", "", "w", C6999h.f39688c, "oldw", "oldh", "onSizeChanged", "onLayoutChanged", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "onDraw", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "", "onTouchEvent", "Landroid/graphics/RectF;", "getRealRect", "c", "e", "", "x", "y", "b", "d", "a", C6997f.f39671c, Constants.HASIDCALL_INDEX_SIG, "isDragging", C6998g.f39679a, "F", "lastTouchX", "lastTouchY", "i", "I", "initialWidth", "j", "currentWidthPercent", C4921e.f26537n, "minPercent", "l", "maxPercent", "m", "parentWidth", "Landroid/graphics/Bitmap;", GoogleApiAvailabilityLight.f29016b, "Landroid/graphics/Bitmap;", "indicatorBitmap", "Landroid/graphics/Paint;", C4921e.f26528e, "Landroid/graphics/Paint;", "paint", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nMagnifierNewLineAreaView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MagnifierNewLineAreaView.kt\ncom/onyx/galaxy/note/editor/view/magnifier/MagnifierNewLineAreaView\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,149:1\n310#2:150\n326#2,4:151\n311#2:155\n*S KotlinDebug\n*F\n+ 1 MagnifierNewLineAreaView.kt\ncom/onyx/galaxy/note/editor/view/magnifier/MagnifierNewLineAreaView\n*L\n139#1:150\n139#1:151,4\n139#1:155\n*E\n"})
/* loaded from: classes9.dex */
public final class MagnifierNewLineAreaView extends TintView {

    /* renamed from: f, reason: from kotlin metadata */
    public boolean isDragging;

    /* renamed from: g, reason: from kotlin metadata */
    public float lastTouchX;

    /* renamed from: h, reason: from kotlin metadata */
    public float lastTouchY;

    /* renamed from: i, reason: from kotlin metadata */
    public int initialWidth;

    /* renamed from: j, reason: from kotlin metadata */
    public float currentWidthPercent;

    /* renamed from: k, reason: from kotlin metadata */
    public final float minPercent;

    /* renamed from: l, reason: from kotlin metadata */
    public final float maxPercent;

    /* renamed from: m, reason: from kotlin metadata */
    public int parentWidth;

    /* renamed from: n, reason: from kotlin metadata */
    @Nullable
    public Bitmap indicatorBitmap;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public final Paint paint;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MagnifierNewLineAreaView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: a */
    public final void m48433a() {
        float coerceIn;
        int i = this.parentWidth;
        if (i <= 0) {
            return;
        }
        coerceIn = RangesKt___RangesKt.coerceIn(i * this.currentWidthPercent, i * this.minPercent, i * this.maxPercent);
        int i2 = (int) coerceIn;
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
        }
        layoutParams.width = i2;
        setLayoutParams(layoutParams);
    }

    /* renamed from: b */
    public final void m48434b(float x, float y) {
        Bitmap bitmap = this.indicatorBitmap;
        if (bitmap == null) {
            return;
        }
        this.isDragging = x <= ((float) bitmap.getWidth()) && y > ((float) (getHeight() - bitmap.getHeight()));
    }

    /* renamed from: c */
    public final void m48435c() {
        BitmapDrawable bitmapDrawable;
        Drawable themeDrawable = ThemeUtils.getThemeDrawable(C10651R.drawable.ic_magnifier_width_indicator);
        this.indicatorBitmap = (themeDrawable == null || (bitmapDrawable = SvgUtil.INSTANCE.toBitmapDrawable(themeDrawable)) == null) ? null : bitmapDrawable.getBitmap();
        this.paint.setColor(ThemeUtils.getColorById(C7996R.color.theme_shape_icon_bg_color));
    }

    /* renamed from: d */
    public final void m48436d(MotionEvent event) {
        float coerceIn;
        if (this.parentWidth <= 0) {
            return;
        }
        coerceIn = RangesKt___RangesKt.coerceIn(((this.initialWidth - event.getRawX()) + this.lastTouchX) / this.parentWidth, this.minPercent, this.maxPercent);
        this.currentWidthPercent = coerceIn;
        m48433a();
    }

    /* renamed from: e */
    public final void m48437e() {
        ViewParent parent = getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            this.parentWidth = viewGroup.getWidth();
        }
    }

    @NotNull
    public final RectF getRealRect() {
        RectF rectF = new RectF(0.0f, 0.0f, getWidth(), getHeight());
        if (this.indicatorBitmap != null) {
            rectF.left = r4.getWidth() / 2.0f;
        }
        return rectF;
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        onLayoutChanged();
    }

    @Override // android.view.View
    public void onDraw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        Bitmap bitmap = this.indicatorBitmap;
        if (bitmap != null) {
            canvas.drawRect(getRealRect(), this.paint);
            canvas.drawBitmap(bitmap, 0.0f, getHeight() - bitmap.getHeight(), (Paint) null);
        }
    }

    public final void onLayoutChanged() {
        m48437e();
        m48433a();
    }

    @Override // android.view.View
    public void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        m48437e();
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        int actionMasked = event.getActionMasked();
        if (actionMasked == 0) {
            m48434b(event.getX(), event.getY());
            this.lastTouchX = event.getRawX();
            this.lastTouchY = event.getRawY();
            this.initialWidth = getWidth();
            return this.isDragging;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                m48436d(event);
            } else if (actionMasked != 3) {
                return false;
            }
        }
        return true;
    }

    @Override // com.onyx.android.sdk.theme.widgets.TintView, com.onyx.android.sdk.theme.widgets.Tintable
    public void tint() {
        m48435c();
        invalidate();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MagnifierNewLineAreaView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MagnifierNewLineAreaView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.currentWidthPercent = 0.15f;
        this.minPercent = 0.1f;
        this.maxPercent = 0.25f;
        this.paint = new Paint();
        m48435c();
    }
}
