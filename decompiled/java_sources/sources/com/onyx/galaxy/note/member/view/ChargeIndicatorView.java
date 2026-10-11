package com.onyx.galaxy.note.member.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.skin.C7996R;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010(\u001a\u00020'¢\u0006\u0004\b)\u0010*B\u001b\b\u0016\u0012\u0006\u0010(\u001a\u00020'\u0012\b\u0010,\u001a\u0004\u0018\u00010+¢\u0006\u0004\b)\u0010-J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0016J0\u0010\u0011\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0010\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0002H\u0002R\u0016\u0010\u0016\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0018\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0015R\u0016\u0010\u001b\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001d\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001aR\u0016\u0010 \u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0016\u0010\"\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\u001fR\u0016\u0010$\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010\u001fR\u0016\u0010&\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010\u001f¨\u0006."}, m61528d2 = {"Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;", "Landroid/view/View;", "", "value", "", "updateIndicatorTotal", FirebaseAnalytics.Param.INDEX, "updateSelectedIndex", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "draw", "", "x", "y", "width", "Landroid/graphics/Paint;", "paint", "b", "total", "a", "e", "I", "currentIndex", C6997f.f39671c, "totalIndicator", C6998g.f39679a, "Landroid/graphics/Paint;", "selectedPaint", C6999h.f39688c, "normalPaint", "i", "F", "indicatorSelectedWidth", "j", "indicatorHeight", C4921e.f26537n, "indicatorNormalWidth", "l", "indicatorInterval", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ChargeIndicatorView extends View {

    /* renamed from: e, reason: from kotlin metadata */
    public int currentIndex;

    /* renamed from: f, reason: from kotlin metadata */
    public int totalIndicator;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public Paint selectedPaint;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public Paint normalPaint;

    /* renamed from: i, reason: from kotlin metadata */
    public float indicatorSelectedWidth;

    /* renamed from: j, reason: from kotlin metadata */
    public float indicatorHeight;

    /* renamed from: k, reason: from kotlin metadata */
    public float indicatorNormalWidth;

    /* renamed from: l, reason: from kotlin metadata */
    public float indicatorInterval;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChargeIndicatorView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        ResManager resManager = ResManager.INSTANCE;
        this.indicatorHeight = resManager.getDimension(C7384R.dimen.dp_2);
        this.indicatorInterval = resManager.getDimension(C7384R.dimen.dp_3);
        this.indicatorNormalWidth = this.indicatorHeight;
        this.indicatorSelectedWidth = resManager.getDimension(C7384R.dimen.dp_12);
        Paint paint = new Paint();
        this.selectedPaint = paint;
        paint.setColor(resManager.getColor(C7996R.color.theme_icon_color_01));
        this.selectedPaint.setAntiAlias(true);
        this.selectedPaint.setStyle(Paint.Style.FILL);
        this.selectedPaint.setStrokeWidth(this.indicatorHeight);
        Paint paint2 = new Paint();
        this.normalPaint = paint2;
        paint2.setColor(resManager.getColor(C7996R.color.theme_icon_color_03));
        this.normalPaint.setAntiAlias(true);
        this.normalPaint.setStyle(Paint.Style.FILL);
        this.normalPaint.setStrokeWidth(this.indicatorHeight);
    }

    /* renamed from: a */
    public final float m50521a(int total) {
        float f = total - 1;
        return this.indicatorSelectedWidth + (this.indicatorNormalWidth * f) + (f * this.indicatorInterval);
    }

    /* renamed from: b */
    public final void m50522b(Canvas canvas, float x, float y, float width, Paint paint) {
        canvas.drawLine(x, y, x + width, y, paint);
    }

    @Override // android.view.View
    public void draw(@NotNull Canvas canvas) {
        float f;
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.draw(canvas);
        int i = this.totalIndicator;
        if (i <= 1) {
            return;
        }
        float f2 = 2;
        float width = (getWidth() / 2) - (m50521a(i) / f2);
        float height = (getHeight() / 2) - (this.indicatorHeight / f2);
        int i2 = this.totalIndicator;
        for (int i3 = 0; i3 < i2; i3++) {
            if (i3 == this.currentIndex) {
                m50522b(canvas, width, height, this.indicatorSelectedWidth, this.selectedPaint);
                f = this.indicatorSelectedWidth;
            } else {
                m50522b(canvas, width, height, this.indicatorNormalWidth, this.normalPaint);
                f = this.indicatorNormalWidth;
            }
            width = width + f + this.indicatorInterval;
        }
    }

    public final void updateIndicatorTotal(int value) {
        this.totalIndicator = value;
        invalidate();
    }

    public final void updateSelectedIndex(int index) {
        this.currentIndex = index;
        invalidate();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChargeIndicatorView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        ResManager resManager = ResManager.INSTANCE;
        this.indicatorHeight = resManager.getDimension(C7384R.dimen.dp_2);
        this.indicatorInterval = resManager.getDimension(C7384R.dimen.dp_3);
        this.indicatorNormalWidth = this.indicatorHeight;
        this.indicatorSelectedWidth = resManager.getDimension(C7384R.dimen.dp_12);
        Paint paint = new Paint();
        this.selectedPaint = paint;
        paint.setColor(resManager.getColor(C7996R.color.theme_icon_color_01));
        this.selectedPaint.setAntiAlias(true);
        this.selectedPaint.setStyle(Paint.Style.FILL);
        this.selectedPaint.setStrokeWidth(this.indicatorHeight);
        Paint paint2 = new Paint();
        this.normalPaint = paint2;
        paint2.setColor(resManager.getColor(C7996R.color.theme_icon_color_03));
        this.normalPaint.setAntiAlias(true);
        this.normalPaint.setStyle(Paint.Style.FILL);
        this.normalPaint.setStrokeWidth(this.indicatorHeight);
    }
}
