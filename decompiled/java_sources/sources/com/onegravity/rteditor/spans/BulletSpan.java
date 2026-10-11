package com.onegravity.rteditor.spans;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.text.Layout;
import android.text.Spanned;
import android.text.style.LeadingMarginSpan;
import com.sunia.HTREnginev2.AbstractC14357rn;

/* loaded from: classes7.dex */
public class BulletSpan extends AbstractC14357rn implements LeadingMarginSpan, RTSpan<Boolean>, RTParagraphSpan<Boolean> {

    /* renamed from: g */
    public static Path f40508g;

    /* renamed from: e */
    public final int f40509e;

    /* renamed from: f */
    public final boolean f40510f;

    public BulletSpan(int i, boolean z, boolean z2, boolean z3) {
        this.f40509e = i;
        this.f40510f = z && z3 && !z2;
        if (f40508g == null) {
            f40508g = new Path();
        }
    }

    /* renamed from: d */
    public final void m31767d(Canvas canvas, Paint paint, int i, int i2, int i3, int i4, int i5) {
        f40508g.reset();
        f40508g.addCircle(0.0f, 0.0f, i5, Path.Direction.CW);
        canvas.save();
        canvas.translate(i + (i2 * i5), (i3 + i4) / 2.0f);
        canvas.drawPath(f40508g, paint);
        canvas.restore();
    }

    @Override // android.text.style.LeadingMarginSpan
    public void drawLeadingMargin(Canvas canvas, Paint paint, int i, int i2, int i3, int i4, int i5, CharSequence charSequence, int i6, int i7, boolean z, Layout layout) {
        Spanned spanned = (Spanned) charSequence;
        if (this.f40510f || spanned.getSpanStart(this) != i6) {
            return;
        }
        Paint.Style style = paint.getStyle();
        paint.setStyle(Paint.Style.FILL);
        m31767d(canvas, paint, i, i2, i3, i5, Math.max(Math.round(m56985a(spanned, i6, i7, paint.getTextSize()) / 9.0f), 4));
        paint.setStyle(style);
    }

    @Override // android.text.style.LeadingMarginSpan
    public int getLeadingMargin(boolean z) {
        if (this.f40510f) {
            return 0;
        }
        return this.f40509e;
    }

    @Override // com.onegravity.rteditor.spans.RTParagraphSpan
    /* renamed from: createClone */
    public RTParagraphSpan<Boolean> createClone2() {
        return new BulletSpan(this.f40509e, this.f40510f);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onegravity.rteditor.spans.RTSpan
    public Boolean getValue() {
        return Boolean.TRUE;
    }

    public BulletSpan(int i, boolean z) {
        this.f40509e = i;
        this.f40510f = z;
    }
}
