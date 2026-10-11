package com.sunia.HTREnginev2;

import android.text.Spanned;
import com.onegravity.rteditor.spans.AbsoluteSizeSpan;

/* renamed from: com.sunia.HTREnginev2.rn */
/* loaded from: classes7.dex */
public abstract class AbstractC14357rn {
    /* renamed from: a */
    public float m56985a(Spanned spanned, int i, int i2, float f) {
        int m56986b = m56986b(spanned, i, i2);
        if (m56986b >= 0) {
            if (((AbsoluteSizeSpan[]) spanned.getSpans(m56986b, m56986b, AbsoluteSizeSpan.class)).length > 0) {
                return r0[r0.length - 1].getValue().intValue();
            }
        }
        return f;
    }

    /* renamed from: b */
    public final int m56986b(Spanned spanned, int i, int i2) {
        while (i < i2) {
            if (m56987c(spanned.charAt(i))) {
                return i;
            }
            i++;
        }
        return -1;
    }

    /* renamed from: c */
    public final boolean m56987c(char c) {
        return (c == 8203 || c == 65519) ? false : true;
    }
}
