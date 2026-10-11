package com.onegravity.rteditor.spans;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.Layout;
import android.text.Spanned;
import android.text.style.LeadingMarginSpan;
import com.sunia.HTREnginev2.AbstractC14357rn;

/* loaded from: classes7.dex */
public class NumberSpan extends AbstractC14357rn implements LeadingMarginSpan, RTSpan<Boolean>, RTParagraphSpan<Boolean> {

    /* renamed from: e */
    public final int f40512e;

    /* renamed from: f */
    public final int f40513f;

    /* renamed from: g */
    public final boolean f40514g;

    /* renamed from: h */
    public float f40515h;

    public NumberSpan(int i, int i2, boolean z, boolean z2, boolean z3) {
        this.f40512e = i;
        this.f40513f = i2;
        this.f40514g = z && z3 && !z2;
    }

    @Override // android.text.style.LeadingMarginSpan
    public void drawLeadingMargin(Canvas canvas, Paint paint, int i, int i2, int i3, int i4, int i5, CharSequence charSequence, int i6, int i7, boolean z, Layout layout) {
        Spanned spanned = (Spanned) charSequence;
        if (this.f40514g || spanned.getSpanStart(this) != i6) {
            return;
        }
        Paint.Style style = paint.getStyle();
        float textSize = paint.getTextSize();
        paint.setStyle(Paint.Style.FILL);
        paint.setTextSize(m56985a(spanned, i6, i7, textSize));
        this.f40515h = paint.measureText(this.f40512e + ".");
        canvas.drawText(this.f40512e + ".", i, i4, paint);
        paint.setStyle(style);
        paint.setTextSize(textSize);
    }

    @Override // android.text.style.LeadingMarginSpan
    public int getLeadingMargin(boolean z) {
        if (this.f40514g) {
            return 0;
        }
        return Math.max(Math.round(this.f40515h + 2.0f), this.f40513f);
    }

    @Override // com.onegravity.rteditor.spans.RTParagraphSpan
    /* renamed from: createClone */
    public RTParagraphSpan<Boolean> createClone2() {
        return new NumberSpan(this.f40512e, this.f40513f, this.f40514g);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onegravity.rteditor.spans.RTSpan
    public Boolean getValue() {
        return Boolean.TRUE;
    }

    public NumberSpan(int i, int i2, boolean z) {
        this.f40512e = i;
        this.f40513f = i2;
        this.f40514g = z;
    }
}
