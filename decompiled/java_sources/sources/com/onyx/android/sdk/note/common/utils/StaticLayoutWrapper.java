package com.onyx.android.sdk.note.common.utils;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.RectUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.math.NumberUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010\f\n\u0002\b\u001f\b\u0016\u0018\u0000 ]2\u00020\u0001:\u0001]B\u0007¢\u0006\u0004\b[\u0010\\J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0006\u0010\u0005\u001a\u00020\u0002JF\u0010\u0013\u001a\u00020\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0011H\u0014J\b\u0010\u0014\u001a\u00020\u000eH\u0016J\b\u0010\u0015\u001a\u00020\u000eH\u0016J\u001e\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u000eJ\u0018\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u00162\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cJ\u000e\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001cJ\u000e\u0010 \u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020\u000eJ\u0010\u0010#\u001a\u00020\u000e2\b\u0010\"\u001a\u0004\u0018\u00010!J\u0018\u0010#\u001a\u00020\u000e2\u0006\u0010$\u001a\u00020\b2\b\u0010\"\u001a\u0004\u0018\u00010!J\u0006\u0010%\u001a\u00020\nJ\u000e\u0010'\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020\nJ\u0018\u0010*\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020\n2\u0006\u0010)\u001a\u00020(H\u0016J\u0010\u0010+\u001a\u00020\n2\u0006\u0010&\u001a\u00020\nH\u0016J\u0010\u0010,\u001a\u00020\n2\u0006\u0010&\u001a\u00020\nH\u0016J\u000e\u0010-\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020\nJ\u0010\u0010/\u001a\u00020\u000e2\u0006\u0010.\u001a\u00020\nH\u0016J\u000e\u00100\u001a\u00020\u000e2\u0006\u0010.\u001a\u00020\nJ\b\u00101\u001a\u0004\u0018\u00010\u0006J\u0010\u00102\u001a\u00020\n2\u0006\u0010.\u001a\u00020\nH\u0016J\u0018\u00104\u001a\u00020\n2\u0006\u0010&\u001a\u00020\n2\u0006\u00103\u001a\u00020\u000eH\u0016J\u000e\u0010\u001e\u001a\u00020\u001a2\u0006\u00105\u001a\u00020\u000eJ\u0006\u00106\u001a\u00020\u000eJ\u0010\u00107\u001a\u00020\u001a2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u0010\u00108\u001a\u00020\u001a2\b\u0010\t\u001a\u0004\u0018\u00010\bJ\u000e\u0010:\u001a\u00020\u001a2\u0006\u00109\u001a\u00020\u000eJ\u0010\u0010;\u001a\u00020\u001a2\b\u0010\r\u001a\u0004\u0018\u00010\fJ\u000e\u0010<\u001a\u00020\u001a2\u0006\u0010\u000f\u001a\u00020\u000eJ\u000e\u0010=\u001a\u00020\u001a2\u0006\u0010\u0010\u001a\u00020\u000eJ\u000e\u0010>\u001a\u00020\u001a2\u0006\u0010\u0012\u001a\u00020\u0011J\u000e\u0010A\u001a\u00020\u000e2\u0006\u0010@\u001a\u00020?J\u0006\u0010B\u001a\u00020\u000eJ\u0006\u0010C\u001a\u00020\u000eJ\u000e\u0010D\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020\nJ\u0010\u0010F\u001a\u00020\u00112\u0006\u0010E\u001a\u00020?H\u0016R\u0014\u0010I\u001a\u00020\n8\u0002X\u0082D¢\u0006\u0006\n\u0004\bG\u0010HR\u0014\u0010K\u001a\u00020\n8\u0002X\u0082D¢\u0006\u0006\n\u0004\bJ\u0010HR\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010LR\u0016\u0010O\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010NR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010QR\u0018\u0010\t\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bR\u0010SR\u0016\u00109\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010NR\u0018\u0010\r\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bU\u0010VR\u0016\u0010\u000f\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010NR\u0016\u0010\u0010\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010NR\u0016\u0010\u0012\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bY\u0010Z¨\u0006^"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;", "", "Landroid/text/StaticLayout;", gon.f71305w, "setLayout", "getLayout", "", "source", "Landroid/text/TextPaint;", "paint", "", "widthInt", "Landroid/text/Layout$Alignment;", "align", "", "spacingmult", "spacingadd", "", "includepad", "createStaticLayout", "getWidth", "getHeight", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "scaleX", "scaleY", "", "draw", "Landroid/graphics/Matrix;", "matrix", "updateFactor", "textSize", "setTextSize", "", "content", "measureText", "textPaint", "getLineCount", "line", "getLineBaseline", "Landroid/graphics/RectF;", "bounds", "getLineBounds", "getLineStart", "getLineEnd", "getLineDescent", TypedValues.CycleType.S_WAVE_OFFSET, "getPrimaryHorizontal", "getSecondaryHorizontal", "getText", "getLineForOffset", "horiz", "getOffsetForHorizontal", "scale", "getFactor", "setSource", "setPaint", "width", "setWidth", "setAlign", "setSpacingmult", "setSpacingadd", "setIncludepad", "", "c", "getFontWidth", "getBaseLineHeight", "getDescentHeight", "getLineHeight", "ch", "needRotate", "a", "I", "DEFAULT_FACTOR_NORMAL", "b", "DEFAULT_FACTOR_LITTLE", "Landroid/text/StaticLayout;", "d", "F", "factor", "e", "Ljava/lang/CharSequence;", C6997f.f39671c, "Landroid/text/TextPaint;", C6998g.f39679a, C6999h.f39688c, "Landroid/text/Layout$Alignment;", "i", "j", C4921e.f26537n, Constants.HASIDCALL_INDEX_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public class StaticLayoutWrapper {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public StaticLayout layout;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public CharSequence source;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public TextPaint paint;

    /* renamed from: g, reason: from kotlin metadata */
    public float width;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public Layout.Alignment align;

    /* renamed from: i, reason: from kotlin metadata */
    public float spacingmult;

    /* renamed from: j, reason: from kotlin metadata */
    public float spacingadd;

    /* renamed from: k, reason: from kotlin metadata */
    public boolean includepad;

    /* renamed from: a, reason: from kotlin metadata */
    public final int DEFAULT_FACTOR_NORMAL = 100;

    /* renamed from: b, reason: from kotlin metadata */
    public final int DEFAULT_FACTOR_LITTLE = 10;

    /* renamed from: d, reason: from kotlin metadata */
    public float factor = 100;

    @Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JD\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0010¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper$Companion;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;", "source", "", "paint", "Landroid/text/TextPaint;", "width", "", "align", "Landroid/text/Layout$Alignment;", "spacingmult", "spacingadd", "includepad", "", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final StaticLayoutWrapper create(@Nullable CharSequence source, @Nullable TextPaint paint, float width, @Nullable Layout.Alignment align, float spacingmult, float spacingadd, boolean includepad) {
            StaticLayoutWrapper staticLayoutWrapper = new StaticLayoutWrapper();
            staticLayoutWrapper.setSource(source);
            staticLayoutWrapper.setPaint(paint);
            staticLayoutWrapper.setWidth(width);
            staticLayoutWrapper.setAlign(align);
            staticLayoutWrapper.setSpacingmult(spacingmult);
            staticLayoutWrapper.setSpacingadd(spacingadd);
            staticLayoutWrapper.setIncludepad(includepad);
            return staticLayoutWrapper;
        }

        public Companion() {
        }
    }

    @NotNull
    public StaticLayout createStaticLayout(@Nullable CharSequence source, @Nullable TextPaint paint, int widthInt, @Nullable Layout.Alignment align, float spacingmult, float spacingadd, boolean includepad) {
        return new StaticLayout(source, paint, widthInt, align, spacingmult, spacingadd, includepad);
    }

    public final void draw(@NotNull Canvas canvas, float scaleX, float scaleY) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        float f = this.factor;
        canvas.scale(scaleX / f, scaleY / f);
        getLayout().draw(canvas);
    }

    public final float getBaseLineHeight() {
        TextPaint textPaint = this.paint;
        Intrinsics.checkNotNull(textPaint);
        return Math.abs(0.0f - textPaint.getFontMetrics().ascent) / getFactor();
    }

    public final float getDescentHeight() {
        TextPaint textPaint = this.paint;
        Intrinsics.checkNotNull(textPaint);
        Paint.FontMetrics fontMetrics = textPaint.getFontMetrics();
        return (fontMetrics.descent - fontMetrics.ascent) / getFactor();
    }

    public final float getFactor() {
        return this.factor;
    }

    public final float getFontWidth(char c) {
        float[] fArr = new float[1];
        TextPaint textPaint = this.paint;
        Intrinsics.checkNotNull(textPaint);
        textPaint.getTextWidths(String.valueOf(c), fArr);
        return fArr[0] / getFactor();
    }

    public float getHeight() {
        return getLayout().getHeight() / this.factor;
    }

    @NotNull
    public final StaticLayout getLayout() {
        if (this.layout == null) {
            TextPaint textPaint = this.paint;
            Intrinsics.checkNotNull(textPaint);
            TextPaint textPaint2 = this.paint;
            Intrinsics.checkNotNull(textPaint2);
            textPaint.setTextSize(textPaint2.getTextSize() * this.factor);
            this.layout = createStaticLayout(this.source, this.paint, (int) ((this.width * this.factor) + 1), this.align, this.spacingmult, this.spacingadd, this.includepad);
        }
        StaticLayout staticLayout = this.layout;
        Intrinsics.checkNotNull(staticLayout);
        return staticLayout;
    }

    public final float getLineBaseline(int line) {
        return getLayout().getLineBaseline(line) / this.factor;
    }

    public float getLineBounds(int line, @NotNull RectF bounds) {
        Intrinsics.checkNotNullParameter(bounds, "bounds");
        bounds.left = 0.0f;
        bounds.top = getLayout().getLineTop(line);
        bounds.right = getLayout().getWidth();
        bounds.bottom = getLayout().getLineTop(line + 1);
        RectUtils rectUtils = RectUtils.INSTANCE;
        Float f = NumberUtils.FLOAT_ONE;
        rectUtils.scale(bounds, f.floatValue() / this.factor, f.floatValue() / this.factor);
        return getLayout().getLineBaseline(line) / this.factor;
    }

    public final int getLineCount() {
        return getLayout().getLineCount();
    }

    public final float getLineDescent(int line) {
        return getLayout().getLineDescent(line) / this.factor;
    }

    public int getLineEnd(int line) {
        return getLayout().getLineEnd(line);
    }

    public int getLineForOffset(int offset) {
        return getLayout().getLineForOffset(offset);
    }

    public final float getLineHeight(int line) {
        return (getLayout().getLineBottom(line) - getLayout().getLineTop(line)) / getFactor();
    }

    public int getLineStart(int line) {
        return getLayout().getLineStart(line);
    }

    public int getOffsetForHorizontal(int line, float horiz) {
        return getLayout().getOffsetForHorizontal(line, horiz * this.factor);
    }

    public float getPrimaryHorizontal(int offset) {
        return getLayout().getPrimaryHorizontal(offset) / this.factor;
    }

    public final float getSecondaryHorizontal(int offset) {
        return getLayout().getSecondaryHorizontal(offset) / this.factor;
    }

    @Nullable
    public final CharSequence getText() {
        return getLayout().getText();
    }

    public float getWidth() {
        return getLayout().getWidth() / this.factor;
    }

    public final float measureText(@Nullable String content) {
        TextPaint paint = getLayout().getPaint();
        Intrinsics.checkNotNullExpressionValue(paint, "getPaint(...)");
        return measureText(paint, content);
    }

    public boolean needRotate(char ch) {
        return false;
    }

    public final void setAlign(@Nullable Layout.Alignment align) {
        this.align = align;
    }

    public final void setIncludepad(boolean includepad) {
        this.includepad = includepad;
    }

    @NotNull
    public final StaticLayoutWrapper setLayout(@Nullable StaticLayout layout) {
        this.layout = layout;
        return this;
    }

    public final void setPaint(@Nullable TextPaint paint) {
        this.paint = paint;
    }

    public final void setSource(@Nullable CharSequence source) {
        this.source = source;
    }

    public final void setSpacingadd(float spacingadd) {
        this.spacingadd = spacingadd;
    }

    public final void setSpacingmult(float spacingmult) {
        this.spacingmult = spacingmult;
    }

    public final void setTextSize(float textSize) {
        getLayout().getPaint().setTextSize(textSize * this.factor);
    }

    public final void setWidth(float width) {
        this.width = width;
    }

    public final void updateFactor(@NotNull Matrix matrix) {
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        float[] fArr = new float[9];
        matrix.getValues(fArr);
        updateFactor(fArr[0]);
    }

    public final float measureText(@NotNull TextPaint textPaint, @Nullable String content) {
        Intrinsics.checkNotNullParameter(textPaint, "textPaint");
        return textPaint.measureText(content) / this.factor;
    }

    public final void draw(@NotNull Canvas canvas, @Nullable Matrix matrix) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        canvas.concat(matrix);
        getLayout().draw(canvas);
    }

    public final void updateFactor(float scale) {
        this.factor = this.DEFAULT_FACTOR_NORMAL;
        if (scale <= 1.0f) {
            this.factor = this.DEFAULT_FACTOR_LITTLE;
        }
    }
}
