package com.sunia.HTREnginev2;

import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.RelativeSizeSpan;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.text.span.LanguageFeatureSpan;
import com.google.android.exoplayer2.util.Assertions;
import com.google.common.base.Predicate;

/* loaded from: classes5.dex */
public final class p5n {
    /* renamed from: c */
    public static /* synthetic */ boolean m56217c(Object obj) {
        return !(obj instanceof LanguageFeatureSpan);
    }

    /* renamed from: d */
    public static /* synthetic */ boolean m56218d(Object obj) {
        return (obj instanceof AbsoluteSizeSpan) || (obj instanceof RelativeSizeSpan);
    }

    /* renamed from: e */
    public static void m56219e(Cue.Builder builder) {
        builder.clearWindowColor();
        if (builder.getText() instanceof Spanned) {
            if (!(builder.getText() instanceof Spannable)) {
                builder.setText(SpannableString.valueOf(builder.getText()));
            }
            m56221g((Spannable) Assertions.checkNotNull(builder.getText()), new Predicate() { // from class: com.sunia.HTREnginev2.o5n
                @Override // com.google.common.base.Predicate
                public final boolean apply(Object obj) {
                    boolean m56217c;
                    m56217c = p5n.m56217c(obj);
                    return m56217c;
                }
            });
        }
        m56220f(builder);
    }

    /* renamed from: f */
    public static void m56220f(Cue.Builder builder) {
        builder.setTextSize(-3.4028235E38f, Integer.MIN_VALUE);
        if (builder.getText() instanceof Spanned) {
            if (!(builder.getText() instanceof Spannable)) {
                builder.setText(SpannableString.valueOf(builder.getText()));
            }
            m56221g((Spannable) Assertions.checkNotNull(builder.getText()), new Predicate() { // from class: com.sunia.HTREnginev2.n5n
                @Override // com.google.common.base.Predicate
                public final boolean apply(Object obj) {
                    boolean m56218d;
                    m56218d = p5n.m56218d(obj);
                    return m56218d;
                }
            });
        }
    }

    /* renamed from: g */
    public static void m56221g(Spannable spannable, Predicate<Object> predicate) {
        for (Object obj : spannable.getSpans(0, spannable.length(), Object.class)) {
            if (predicate.apply(obj)) {
                spannable.removeSpan(obj);
            }
        }
    }

    /* renamed from: h */
    public static float m56222h(int i, float f, int i2, int i3) {
        float f2;
        if (f == -3.4028235E38f) {
            return -3.4028235E38f;
        }
        if (i == 0) {
            f2 = i3;
        } else {
            if (i != 1) {
                if (i != 2) {
                    return -3.4028235E38f;
                }
                return f;
            }
            f2 = i2;
        }
        return f * f2;
    }
}
