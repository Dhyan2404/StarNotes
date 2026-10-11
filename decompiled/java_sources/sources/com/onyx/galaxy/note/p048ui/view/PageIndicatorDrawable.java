package com.onyx.galaxy.note.p048ui.view;

import android.graphics.Canvas;
import android.graphics.Paint;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.sun.org.apache.bcel.internal.Constants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b'\u0010(J\u0016\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016R\u0016\u0010\f\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0016\u0010\u000e\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000bR\u001b\u0010\u0014\u001a\u00020\u000f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u001b\u0010\u0016\u001a\u00020\u000f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0011\u001a\u0004\b\u0010\u0010\u0013R\u001b\u0010\u0018\u001a\u00020\u000f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0011\u001a\u0004\b\r\u0010\u0013R\u001b\u0010\u001a\u001a\u00020\u000f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u0011\u001a\u0004\b\n\u0010\u0013R\u001b\u0010\u001c\u001a\u00020\u000f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u0011\u001a\u0004\b\u0015\u0010\u0013R\u0014\u0010\u001e\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u000bR\u0014\u0010 \u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010\u000bR\u0014\u0010$\u001a\u00020!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0014\u0010&\u001a\u00020!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010#¨\u0006)"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;", "Lcom/onyx/galaxy/note/ui/view/BaseDrawable;", "", Keywords.FUNC_CURRENT_STRING, "total", "", "setIndicatorIndex", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "draw", "b", "I", "currentIndex", "c", "totalCount", "", "d", "Lkotlin/Lazy;", "a", "()F", "height", "e", "radius", C6997f.f39671c, Constant.PADDING_TAG, C6998g.f39679a, "normalWidth", C6999h.f39688c, "selectedWidth", "i", "normalColor", "j", "selectedColor", "Landroid/graphics/Paint;", C4921e.f26537n, "Landroid/graphics/Paint;", "normalPaint", "l", "selectedPaint", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class PageIndicatorDrawable extends BaseDrawable {

    /* renamed from: b, reason: from kotlin metadata */
    public int currentIndex = -1;

    /* renamed from: c, reason: from kotlin metadata */
    public int totalCount;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final Lazy height;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Lazy radius;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Lazy padding;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Lazy normalWidth;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Lazy selectedWidth;

    /* renamed from: i, reason: from kotlin metadata */
    public final int normalColor;

    /* renamed from: j, reason: from kotlin metadata */
    public final int selectedColor;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Paint normalPaint;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final Paint selectedPaint;

    public PageIndicatorDrawable() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Float>() { // from class: com.onyx.galaxy.note.ui.view.PageIndicatorDrawable$height$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Float invoke() {
                return Float.valueOf(PageIndicatorDrawable.this.getBounds().height());
            }
        });
        this.height = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<Float>() { // from class: com.onyx.galaxy.note.ui.view.PageIndicatorDrawable$radius$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Float invoke() {
                float m51454a;
                m51454a = PageIndicatorDrawable.this.m51454a();
                return Float.valueOf(m51454a / 2);
            }
        });
        this.radius = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<Float>() { // from class: com.onyx.galaxy.note.ui.view.PageIndicatorDrawable$padding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Float invoke() {
                float m51454a;
                m51454a = PageIndicatorDrawable.this.m51454a();
                return Float.valueOf(m51454a * 2);
            }
        });
        this.padding = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<Float>() { // from class: com.onyx.galaxy.note.ui.view.PageIndicatorDrawable$normalWidth$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Float invoke() {
                float m51454a;
                m51454a = PageIndicatorDrawable.this.m51454a();
                return Float.valueOf(m51454a);
            }
        });
        this.normalWidth = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new Function0<Float>() { // from class: com.onyx.galaxy.note.ui.view.PageIndicatorDrawable$selectedWidth$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Float invoke() {
                float m51454a;
                m51454a = PageIndicatorDrawable.this.m51454a();
                return Float.valueOf(m51454a * 6);
            }
        });
        this.selectedWidth = lazy5;
        int colorById = ThemeUtils.getColorById(C7996R.color.theme_background_color_04);
        this.normalColor = colorById;
        int colorById2 = ThemeUtils.getColorById(C7996R.color.theme_primary_color_01);
        this.selectedColor = colorById2;
        Paint paint = new Paint();
        this.normalPaint = paint;
        Paint paint2 = new Paint();
        this.selectedPaint = paint2;
        paint.setColor(colorById);
        paint2.setColor(colorById2);
    }

    /* renamed from: a */
    public final float m51454a() {
        return ((Number) this.height.getValue()).floatValue();
    }

    /* renamed from: b */
    public final float m51455b() {
        return ((Number) this.normalWidth.getValue()).floatValue();
    }

    /* renamed from: c */
    public final float m51456c() {
        return ((Number) this.padding.getValue()).floatValue();
    }

    /* renamed from: d */
    public final float m51457d() {
        return ((Number) this.radius.getValue()).floatValue();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NotNull Canvas canvas) {
        float m51455b;
        float m51456c;
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        if (this.totalCount <= 0) {
            return;
        }
        float m51455b2 = (m51455b() * this.totalCount) + (m51456c() * (this.totalCount - 1));
        if (this.currentIndex >= 0) {
            m51455b2 = (m51455b2 - m51455b()) + m51458e();
        }
        float m51455b3 = m51455b();
        float width = getBounds().width() - m51455b2;
        float f = 2;
        float f2 = getBounds().left + (width / f);
        float height = getBounds().top + ((getBounds().height() - m51455b3) / f);
        int i = this.totalCount;
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 == this.currentIndex) {
                canvas.drawRoundRect(f2, height, f2 + m51458e(), height + m51454a(), m51457d(), m51457d(), this.selectedPaint);
                m51455b = m51458e();
                m51456c = m51456c();
            } else {
                canvas.drawRoundRect(f2, height, f2 + m51455b(), height + m51454a(), m51457d(), m51457d(), this.normalPaint);
                m51455b = m51455b();
                m51456c = m51456c();
            }
            f2 += m51455b + m51456c;
        }
    }

    /* renamed from: e */
    public final float m51458e() {
        return ((Number) this.selectedWidth.getValue()).floatValue();
    }

    public final void setIndicatorIndex(int current, int total) {
        int coerceIn;
        if (current == this.currentIndex && total == this.totalCount) {
            return;
        }
        coerceIn = RangesKt___RangesKt.coerceIn(current, 0, total - 1);
        this.currentIndex = coerceIn;
        this.totalCount = total;
        invalidateSelf();
    }
}
