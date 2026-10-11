package com.onyx.galaxy.note.p048ui.colorpicker.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.annotation.ColorInt;
import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.replicator.colorset.data.ColorPickerValues;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPanelView;
import com.onyx.galaxy.note.settings.data.PermissionRequestConst;
import com.onyx.galaxy.note.settings.utils.PermissionActionUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u0014\n\u0002\b\r\n\u0002\b\u0004\n\u0002\b\u0003\n\u0002\b\u0004\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0004DHKO\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010S\u001a\u00020R¢\u0006\u0004\bT\u0010UB\u001b\b\u0016\u0012\u0006\u0010S\u001a\u00020R\u0012\b\u0010W\u001a\u0004\u0018\u00010V¢\u0006\u0004\bT\u0010XJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\t\u001a\u00020\u0004H\u0002J\b\u0010\n\u001a\u00020\u0004H\u0002J\b\u0010\u000b\u001a\u00020\u0004H\u0002J\b\u0010\f\u001a\u00020\u0004H\u0002J\b\u0010\r\u001a\u00020\u0004H\u0002J\b\u0010\u000f\u001a\u00020\u000eH\u0002J\b\u0010\u0010\u001a\u00020\u000eH\u0002J\b\u0010\u0011\u001a\u00020\u000eH\u0002J\b\u0010\u0012\u001a\u00020\u000eH\u0002J \u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J \u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J \u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J \u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\b\u0010\u001c\u001a\u00020\u0004H\u0002J\b\u0010\u001d\u001a\u00020\u0004H\u0002J \u0010!\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\u000e2\u0006\u0010 \u001a\u00020\u000eH\u0002J\u000e\u0010$\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\"J\b\u0010%\u001a\u00020\u0004H\u0014J\u0018\u0010(\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u00172\u0006\u0010'\u001a\u00020\u0017H\u0014J\u0010\u0010)\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0010\u0010-\u001a\u00020,2\u0006\u0010+\u001a\u00020*H\u0016J\u000e\u0010/\u001a\u00020\u00042\u0006\u0010.\u001a\u00020,J\u0010\u00101\u001a\u00020\u00042\b\b\u0001\u00100\u001a\u00020\u0017J\u0006\u00102\u001a\u00020\u0017R\u0018\u0010#\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u00103R\u0016\u00105\u001a\u00020\u00178\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b!\u00104R\u0014\u00108\u001a\u0002068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u00107R\u0016\u00109\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u00104R\u0016\u0010;\u001a\u00020,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010:R\u0016\u0010=\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010<R\u0016\u0010>\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010<R\u0016\u0010?\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010<R\u0016\u0010A\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010@R\u0016\u0010B\u001a\u00020,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010:R\u0014\u0010C\u001a\u00020\u00178\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u001c\u00104R\u0014\u0010G\u001a\u00020D8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bE\u0010FR\u0014\u0010J\u001a\u00020H8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010IR\u0014\u0010N\u001a\u00020K8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bL\u0010MR\u0014\u0010Q\u001a\u00020O8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010P¨\u0006Y"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;", "Lcom/onyx/android/sdk/theme/widgets/TintView;", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "", "d", "e", "c", C6997f.f39671c, "m", "r", "l", C4921e.f26528e, GoogleApiAvailabilityLight.f29016b, "", "getHuePercent", "getSaturationPercent", "getValuePercent", "getAlphaPercent", "x", "y", "", "t", "", "b", "i", "j", C4921e.f26537n, "p", C6999h.f39688c, "value", "min", "max", C6998g.f39679a, "Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;", "callback", "setCallback", "onAttachedToWindow", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "onDraw", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "", "onTouchEvent", "disable", "disableColorAlpha", "color", "setSelectionColor", "getSelectionColor", "Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;", "I", "argb", "", "[F", "hsv", "actionMode", Constants.HASIDCALL_INDEX_SIG, "isScreenPickerFocused", "F", "previousBlockX", "previousEventX", "previousEventY", "J", "previousEventT", "enableColorAlpha", "HUE_MAX", "com/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$sizes$1", "q", "Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$sizes$1;", "sizes", "com/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$bounds$1", "Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$bounds$1;", "bounds", "com/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$drawables$1", "s", "Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$drawables$1;", "drawables", "com/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$paints$1", "Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$paints$1;", "paints", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nColorPanelView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColorPanelView.kt\ncom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n+ 3 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,499:1\n344#2,3:500\n117#3:503\n117#3:504\n117#3:505\n125#3,17:506\n*S KotlinDebug\n*F\n+ 1 ColorPanelView.kt\ncom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView\n*L\n216#1:500,3\n343#1:503\n410#1:504\n417#1:505\n427#1:506,17\n*E\n"})
/* loaded from: classes9.dex */
public final class ColorPanelView extends TintView {

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public ColorPickerCallback callback;

    /* renamed from: g, reason: from kotlin metadata */
    @ColorInt
    public int argb;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final float[] hsv;

    /* renamed from: i, reason: from kotlin metadata */
    public int actionMode;

    /* renamed from: j, reason: from kotlin metadata */
    public boolean isScreenPickerFocused;

    /* renamed from: k, reason: from kotlin metadata */
    public float previousBlockX;

    /* renamed from: l, reason: from kotlin metadata */
    public float previousEventX;

    /* renamed from: m, reason: from kotlin metadata */
    public float previousEventY;

    /* renamed from: n, reason: from kotlin metadata */
    public long previousEventT;

    /* renamed from: o, reason: from kotlin metadata */
    public boolean enableColorAlpha;

    /* renamed from: p, reason: from kotlin metadata */
    public final int HUE_MAX;

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final ColorPanelView$sizes$1 sizes;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final ColorPanelView$bounds$1 bounds;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final ColorPanelView$drawables$1 drawables;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final ColorPanelView$paints$1 paints;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ColorPanelView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final float getAlphaPercent() {
        return ((this.argb >> 24) & 255) / 255.0f;
    }

    private final float getHuePercent() {
        return this.hsv[0] / this.HUE_MAX;
    }

    private final float getSaturationPercent() {
        return this.hsv[1];
    }

    private final float getValuePercent() {
        return 1 - this.hsv[2];
    }

    /* renamed from: q */
    public static final void m51259q(ColorPanelView this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ColorPickerCallback colorPickerCallback = this$0.callback;
        if (colorPickerCallback != null) {
            colorPickerCallback.startScreenCapture(this$0);
        }
    }

    /* renamed from: b */
    public final int m51260b(float x, float y, long t) {
        if (this.bounds.getColorPanel().contains(x, y)) {
            return 1;
        }
        if (this.bounds.getHueSlideBar().contains(x, y)) {
            return 3;
        }
        if (this.bounds.getAlphaSlideBar().contains(x, y)) {
            return 4;
        }
        return this.bounds.getScreenPicker().contains(x, y) ? 2 : 0;
    }

    /* renamed from: c */
    public final void m51261c(Canvas canvas) {
        if (this.enableColorAlpha) {
            this.drawables.getAlphaMarkDrawable().setBounds(this.bounds.getAlphaSlideBar());
            this.drawables.getAlphaMarkDrawable().draw(canvas);
            this.drawables.getAlphaDrawable().setBounds(this.bounds.getAlphaSlideBar());
            this.drawables.getAlphaDrawable().draw(canvas);
        } else {
            this.paints.getAlphaBlockFill().setColor(ResManager.INSTANCE.getColor(C10651R.color.color_panel_color_alpha_disable));
            this.paints.getSelectionBlockStroke().setColor(this.paints.getAlphaBlockFill().getColor());
            float height = this.bounds.getAlphaSlideBar().height() / 2;
            canvas.drawRoundRect(this.bounds.getAlphaSlideBar(), height, height, this.paints.getAlphaBlockFill());
        }
        float f = 3;
        canvas.drawRoundRect(this.bounds.getAlphaSlideBlock(), this.sizes.getSlideBlock() / f, this.sizes.getSlideBlock() / f, this.paints.getAlphaBlockFill());
        canvas.drawRoundRect(this.bounds.getAlphaSlideBlock(), this.sizes.getSlideBlock() / f, this.sizes.getSlideBlock() / f, this.paints.getSelectionBlockStroke());
    }

    /* renamed from: d */
    public final void m51262d(Canvas canvas) {
        this.drawables.getPanelDrawable().setBounds(this.bounds.getColorPanel());
        this.drawables.getPanelDrawable().draw(canvas);
        float f = 3;
        canvas.drawRoundRect(this.bounds.getPickBlock(), this.sizes.getPickBlock() / f, this.sizes.getPickBlock() / f, this.paints.getPickBlockStroke());
    }

    public final void disableColorAlpha(boolean disable) {
        this.enableColorAlpha = !disable;
    }

    /* renamed from: e */
    public final void m51263e(Canvas canvas) {
        this.drawables.getHueDrawable().setBounds(this.bounds.getHueSlideBar());
        this.drawables.getHueDrawable().draw(canvas);
        float f = 3;
        canvas.drawRoundRect(this.bounds.getHueSlideBlock(), this.sizes.getSlideBlock() / f, this.sizes.getSlideBlock() / f, this.paints.getHueBlockFill());
        canvas.drawRoundRect(this.bounds.getHueSlideBlock(), this.sizes.getSlideBlock() / f, this.sizes.getSlideBlock() / f, this.paints.getSelectionBlockStroke());
    }

    /* renamed from: f */
    public final void m51264f(Canvas canvas) {
        if (this.isScreenPickerFocused) {
            float f = 5;
            canvas.drawRoundRect(this.bounds.getScreenPicker(), this.sizes.getScreenPicker() / f, this.sizes.getScreenPicker() / f, this.paints.getScreenPickerBorder());
        }
        Drawable screenPickerDrawable = this.drawables.getScreenPickerDrawable();
        RectF screenPickerIcon = this.bounds.getScreenPickerIcon();
        Rect rect = new Rect();
        screenPickerIcon.roundOut(rect);
        screenPickerDrawable.setBounds(rect);
        this.drawables.getScreenPickerDrawable().draw(canvas);
    }

    /* renamed from: g */
    public final float m51265g(float value, float min, float max) {
        return value < min ? min : value > max ? max : value;
    }

    /* renamed from: getSelectionColor, reason: from getter */
    public final int getArgb() {
        return this.argb;
    }

    /* renamed from: h */
    public final void m51266h() {
        int i = this.actionMode;
        if (i != 1) {
            if (i == 2) {
                this.isScreenPickerFocused = false;
                invalidate();
                return;
            } else if (i != 3 && i != 4) {
                return;
            }
        }
        m51273o();
    }

    /* renamed from: i */
    public final void m51267i(float x, float y, long t) {
        this.previousEventX = x;
        this.previousEventY = y;
        this.previousEventT = t;
        int i = this.actionMode;
        if (i == 2) {
            this.isScreenPickerFocused = true;
            invalidate();
        } else if (i == 3) {
            this.previousBlockX = x;
        } else {
            if (i != 4) {
                return;
            }
            this.previousBlockX = x;
        }
    }

    /* renamed from: j */
    public final void m51268j(float x, float y, long t) {
        int i = this.actionMode;
        if (i == 1) {
            float m51265g = m51265g(x, this.sizes.getMinPanelX(), this.sizes.getMaxPanelX());
            float m51265g2 = m51265g(y, this.sizes.getMinPanelY(), this.sizes.getMaxPanelY());
            this.hsv[1] = (m51265g - this.sizes.getMinPanelX()) / (this.sizes.getMaxPanelX() - this.sizes.getMinPanelX());
            this.hsv[2] = 1 - ((m51265g2 - this.sizes.getMinPanelY()) / (this.sizes.getMaxPanelY() - this.sizes.getMinPanelY()));
            this.argb = Color.HSVToColor((this.argb >> 24) & 255, this.hsv);
            m51272n();
            return;
        }
        if (i == 3) {
            this.hsv[0] = (this.HUE_MAX * (m51265g(this.previousBlockX + (x - this.previousEventX), this.sizes.getMinBarX(), this.sizes.getMaxBarX()) - this.sizes.getMinBarX())) / (this.sizes.getMaxBarX() - this.sizes.getMinBarX());
            this.argb = Color.HSVToColor((this.argb >> 24) & 255, this.hsv);
            m51272n();
            return;
        }
        if (i == 4 && this.enableColorAlpha) {
            int m51265g3 = (int) ((255 * (m51265g(this.previousBlockX + (x - this.previousEventX), this.sizes.getMinBarX(), this.sizes.getMaxBarX()) - this.sizes.getMinBarX())) / (this.sizes.getMaxBarX() - this.sizes.getMinBarX()));
            int i2 = this.argb;
            this.argb = Color.argb(m51265g3, (i2 >> 16) & 255, (i2 >> 8) & 255, i2 & 255);
            m51272n();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x000d, code lost:
    
        if (r4 != 4) goto L17;
     */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m51269k(float r2, float r3, long r4) {
        /*
            r1 = this;
            int r4 = r1.actionMode
            r5 = 1
            r0 = 0
            if (r4 == r5) goto L22
            r5 = 2
            if (r4 == r5) goto L10
            r2 = 3
            if (r4 == r2) goto L22
            r2 = 4
            if (r4 == r2) goto L22
            goto L2e
        L10:
            r1.isScreenPickerFocused = r0
            com.onyx.galaxy.note.ui.colorpicker.view.ColorPanelView$bounds$1 r4 = r1.bounds
            android.graphics.RectF r4 = r4.getScreenPicker()
            boolean r2 = r4.contains(r2, r3)
            if (r2 == 0) goto L2e
            r1.m51274p()
            goto L2e
        L22:
            r1.m51273o()
            com.onyx.galaxy.note.ui.colorpicker.view.ColorPickerCallback r2 = r1.callback
            if (r2 == 0) goto L2e
            int r3 = r1.argb
            r2.onColorSelected(r3)
        L2e:
            r1.isScreenPickerFocused = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPanelView.m51269k(float, float, long):void");
    }

    /* renamed from: l */
    public final void m51270l() {
        int i = ColorPickerValues.INSTANCE.getRecentColorOption().get();
        this.argb = i;
        Color.colorToHSV(i, this.hsv);
    }

    /* renamed from: m */
    public final void m51271m() {
        Math.min(this.sizes.getViewWidth() / 223, this.sizes.getViewHeight() / 229);
        ColorPanelView$sizes$1 colorPanelView$sizes$1 = this.sizes;
        ResManager resManager = ResManager.INSTANCE;
        colorPanelView$sizes$1.setBarHeight(resManager.getDimension(C7384R.dimen.dp_8));
        ColorPanelView$sizes$1 colorPanelView$sizes$12 = this.sizes;
        float f = 2;
        colorPanelView$sizes$12.setSlideBlock(colorPanelView$sizes$12.getBarHeight() * f);
        ColorPanelView$sizes$1 colorPanelView$sizes$13 = this.sizes;
        colorPanelView$sizes$13.setPickBlock(colorPanelView$sizes$13.getBarHeight() * f);
        ColorPanelView$sizes$1 colorPanelView$sizes$14 = this.sizes;
        colorPanelView$sizes$14.setScreenPicker(colorPanelView$sizes$14.getBarHeight() * 4);
        ColorPanelView$sizes$1 colorPanelView$sizes$15 = this.sizes;
        colorPanelView$sizes$15.setPickBlockStroke(colorPanelView$sizes$15.getPickBlock() / 15);
        this.sizes.setSlideBlockStroke(resManager.getDimension(C7384R.dimen.dp_2));
        ColorPanelView$sizes$1 colorPanelView$sizes$16 = this.sizes;
        colorPanelView$sizes$16.setScreenPickerStroke(colorPanelView$sizes$16.getScreenPicker() / 40);
        this.paints.getPickBlockStroke().setStrokeWidth(this.sizes.getPickBlockStroke());
        this.paints.getSelectionBlockStroke().setStrokeWidth(this.sizes.getSlideBlockStroke());
        this.paints.getScreenPickerBorder().setStrokeWidth(this.sizes.getScreenPickerStroke());
        ColorPanelView$bounds$1 colorPanelView$bounds$1 = this.bounds;
        RectF rectF = new RectF();
        rectF.left = this.sizes.getScreenPickerStroke() / f;
        rectF.top = this.sizes.getViewHeight() - (this.sizes.getBarHeight() * 5);
        rectF.right = rectF.left + this.sizes.getScreenPicker();
        rectF.bottom = rectF.top + this.sizes.getScreenPicker();
        colorPanelView$bounds$1.setScreenPicker(rectF);
        ColorPanelView$bounds$1 colorPanelView$bounds$12 = this.bounds;
        RectF rectF2 = new RectF();
        rectF2.left = this.bounds.getScreenPicker().left + (this.sizes.getScreenPicker() * this.sizes.getCaptureIconPaddingPercent());
        rectF2.top = this.bounds.getScreenPicker().top + (this.sizes.getScreenPicker() * this.sizes.getCaptureIconPaddingPercent());
        rectF2.right = this.bounds.getScreenPicker().right - (this.sizes.getScreenPicker() * this.sizes.getCaptureIconPaddingPercent());
        rectF2.bottom = this.bounds.getScreenPicker().bottom - (this.sizes.getScreenPicker() * this.sizes.getCaptureIconPaddingPercent());
        colorPanelView$bounds$12.setScreenPickerIcon(rectF2);
        ColorPanelView$bounds$1 colorPanelView$bounds$13 = this.bounds;
        RectF rectF3 = new RectF();
        rectF3.left = this.bounds.getScreenPicker().right + (this.sizes.getBarHeight() * f);
        rectF3.top = this.bounds.getScreenPicker().top;
        rectF3.right = this.sizes.getViewWidth();
        rectF3.bottom = rectF3.top + this.sizes.getBarHeight();
        colorPanelView$bounds$13.setHueSlideBar(rectF3);
        ColorPanelView$bounds$1 colorPanelView$bounds$14 = this.bounds;
        RectF rectF4 = new RectF();
        rectF4.left = this.bounds.getScreenPicker().right + (this.sizes.getBarHeight() * f);
        rectF4.top = this.bounds.getScreenPicker().bottom - this.sizes.getBarHeight();
        rectF4.right = this.sizes.getViewWidth();
        rectF4.bottom = this.bounds.getScreenPicker().bottom;
        colorPanelView$bounds$14.setAlphaSlideBar(rectF4);
        ColorPanelView$bounds$1 colorPanelView$bounds$15 = this.bounds;
        RectF rectF5 = new RectF();
        rectF5.left = 0.0f;
        rectF5.top = 0.0f;
        rectF5.right = this.sizes.getViewWidth();
        rectF5.bottom = this.bounds.getScreenPicker().top - (this.sizes.getBarHeight() * f);
        colorPanelView$bounds$15.setColorPanel(rectF5);
        this.paints.getSelectionBlockStroke().setShadowLayer(this.sizes.getSlideBlockShadowSize(), 0.0f, 0.0f, resManager.getColor(C7996R.color.theme_divider_color_01));
        this.sizes.setMinPanelX(this.bounds.getColorPanel().left + (this.sizes.getPickBlock() / f) + (this.sizes.getPickBlockStroke() / f));
        this.sizes.setMaxPanelX((this.bounds.getColorPanel().right - (this.sizes.getPickBlock() / f)) - (this.sizes.getPickBlockStroke() / f));
        this.sizes.setMinPanelY(this.bounds.getColorPanel().top + (this.sizes.getPickBlock() / f) + (this.sizes.getPickBlockStroke() / f));
        this.sizes.setMaxPanelY((this.bounds.getColorPanel().bottom - (this.sizes.getPickBlock() / f)) - (this.sizes.getPickBlockStroke() / f));
        this.sizes.setMinBarX(((this.bounds.getHueSlideBar().left + (this.sizes.getSlideBlock() / f)) + (this.sizes.getSlideBlockStroke() / f)) - 1.0f);
        this.sizes.setMaxBarX(((this.bounds.getHueSlideBar().right - (this.sizes.getSlideBlock() / f)) - (this.sizes.getSlideBlockStroke() / f)) + 1.0f);
    }

    /* renamed from: n */
    public final void m51272n() {
        this.paints.getHueBlockFill().setColor(Color.HSVToColor(new float[]{this.hsv[0], 1.0f, 1.0f}));
        this.paints.getAlphaBlockFill().setColor(this.argb);
        m51275r();
        invalidate();
        ColorPickerCallback colorPickerCallback = this.callback;
        if (colorPickerCallback != null) {
            colorPickerCallback.onColorChange(this.argb);
        }
    }

    /* renamed from: o */
    public final void m51273o() {
        ColorPickerValues.INSTANCE.getRecentColorOption().put(this.argb);
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m51272n();
    }

    @Override // android.view.View
    public void onDraw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        m51262d(canvas);
        m51263e(canvas);
        m51261c(canvas);
        m51264f(canvas);
        invalidate();
    }

    @Override // android.view.View
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        this.sizes.setViewWidth(getMeasuredWidth());
        this.sizes.setViewHeight(getMeasuredHeight());
        m51271m();
        m51272n();
    }

    @Override // android.view.View
    public boolean onTouchEvent(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        float x = event.getX();
        float y = event.getY();
        long eventTime = event.getEventTime();
        int action = event.getAction();
        if (action == 0) {
            this.actionMode = m51260b(x, y, eventTime);
            m51267i(x, y, eventTime);
        } else if (action == 1) {
            m51269k(x, y, eventTime);
            this.actionMode = 0;
        } else if (action == 2) {
            m51268j(x, y, eventTime);
        } else if (action == 3) {
            m51266h();
            this.actionMode = 0;
        }
        return true;
    }

    /* renamed from: p */
    public final void m51274p() {
        PermissionActionUtils permissionActionUtils = PermissionActionUtils.INSTANCE;
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        ResManager resManager = ResManager.INSTANCE;
        PermissionRequestConst permissionRequestConst = PermissionRequestConst.INSTANCE;
        RxjavaKt.doOnNextIfTrue(permissionActionUtils.requestFloatingWindowPermission(context, resManager.getStringSafely(permissionRequestConst.getPERMISSION_FLOATING_COLOR_PICKER_FUNCTION_NAME()), resManager.getStringSafely(permissionRequestConst.getPERMISSION_FLOATING_COLOR_PICKER_INTENT_NAME())).build(), new Consumer() { // from class: com.sunia.HTREnginev2.r1e
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                ColorPanelView.m51259q(ColorPanelView.this, ((Boolean) obj).booleanValue());
            }
        }).subscribe();
    }

    /* renamed from: r */
    public final void m51275r() {
        ColorPanelView$bounds$1 colorPanelView$bounds$1 = this.bounds;
        RectF rectF = new RectF();
        float minPanelX = this.sizes.getMinPanelX() + ((this.sizes.getMaxPanelX() - this.sizes.getMinPanelX()) * getSaturationPercent());
        float minPanelY = this.sizes.getMinPanelY() + ((this.sizes.getMaxPanelY() - this.sizes.getMinPanelY()) * getValuePercent());
        float f = 2;
        rectF.left = minPanelX - (this.sizes.getPickBlock() / f);
        rectF.top = minPanelY - (this.sizes.getPickBlock() / f);
        rectF.right = minPanelX + (this.sizes.getPickBlock() / f);
        rectF.bottom = minPanelY + (this.sizes.getPickBlock() / f);
        colorPanelView$bounds$1.setPickBlock(rectF);
        ColorPanelView$bounds$1 colorPanelView$bounds$12 = this.bounds;
        RectF rectF2 = new RectF();
        float minBarX = this.sizes.getMinBarX() + ((this.sizes.getMaxBarX() - this.sizes.getMinBarX()) * getHuePercent());
        float centerY = this.bounds.getHueSlideBar().centerY();
        rectF2.left = minBarX - (this.sizes.getSlideBlock() / f);
        rectF2.top = centerY - (this.sizes.getSlideBlock() / f);
        rectF2.right = minBarX + (this.sizes.getSlideBlock() / f);
        rectF2.bottom = centerY + (this.sizes.getSlideBlock() / f);
        colorPanelView$bounds$12.setHueSlideBlock(rectF2);
        ColorPanelView$bounds$1 colorPanelView$bounds$13 = this.bounds;
        RectF rectF3 = new RectF();
        float minBarX2 = this.sizes.getMinBarX() + ((this.sizes.getMaxBarX() - this.sizes.getMinBarX()) * getAlphaPercent());
        float centerY2 = this.bounds.getAlphaSlideBar().centerY();
        rectF3.left = minBarX2 - (this.sizes.getSlideBlock() / f);
        rectF3.top = centerY2 - (this.sizes.getSlideBlock() / f);
        rectF3.right = minBarX2 + (this.sizes.getSlideBlock() / f);
        rectF3.bottom = centerY2 + (this.sizes.getSlideBlock() / f);
        colorPanelView$bounds$13.setAlphaSlideBlock(rectF3);
    }

    public final void setCallback(@NotNull ColorPickerCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.callback = callback;
    }

    public final void setSelectionColor(@ColorInt int color) {
        if (color != this.argb) {
            this.argb = color;
            Color.colorToHSV(color, this.hsv);
            m51273o();
            m51272n();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ColorPanelView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.argb = ColorPickerValues.INSTANCE.getPICKER_COLOR_DEFAULT();
        this.hsv = new float[]{0.0f, 0.5f, 0.5f};
        this.enableColorAlpha = true;
        this.HUE_MAX = 359;
        this.sizes = new ColorPanelView$sizes$1();
        this.bounds = new ColorPanelView$bounds$1();
        ColorPanelView$drawables$1 colorPanelView$drawables$1 = new ColorPanelView$drawables$1(this);
        this.drawables = colorPanelView$drawables$1;
        this.paints = new ColorPanelView$paints$1();
        Drawable themeDrawable = ThemeUtils.getThemeDrawable(C10651R.drawable.icon_pick_screen);
        Intrinsics.checkNotNullExpressionValue(themeDrawable, "getThemeDrawable(...)");
        colorPanelView$drawables$1.setScreenPickerDrawable(themeDrawable);
        m51270l();
    }
}
