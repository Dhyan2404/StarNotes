package com.sunia.HTREnginev2;

import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.text.span.HorizontalTextInVerticalContextSpan;
import com.google.android.exoplayer2.text.span.RubySpan;
import com.google.android.exoplayer2.text.span.SpanUtil;
import com.google.android.exoplayer2.text.span.TextEmphasisSpan;
import com.google.android.exoplayer2.text.ttml.TextEmphasis;
import com.google.android.exoplayer2.text.ttml.TtmlStyle;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.Util;
import java.util.ArrayDeque;
import java.util.Map;

/* loaded from: classes5.dex */
public final class ion {

    /* renamed from: a */
    public static final String f73449a = "TtmlRenderUtil";

    /* renamed from: a */
    public static void m54738a(Spannable spannable, int i, int i2, TtmlStyle ttmlStyle, @Nullable gon gonVar, Map<String, TtmlStyle> map, int i3) {
        gon m54742e;
        TtmlStyle m54743f;
        int i4;
        if (ttmlStyle.m20717l() != -1) {
            spannable.setSpan(new StyleSpan(ttmlStyle.m20717l()), i, i2, 33);
        }
        if (ttmlStyle.m20725t()) {
            spannable.setSpan(new StrikethroughSpan(), i, i2, 33);
        }
        if (ttmlStyle.m20726u()) {
            spannable.setSpan(new UnderlineSpan(), i, i2, 33);
        }
        if (ttmlStyle.m20722q()) {
            SpanUtil.addOrReplaceSpan(spannable, new ForegroundColorSpan(ttmlStyle.m20708c()), i, i2, 33);
        }
        if (ttmlStyle.m20721p()) {
            SpanUtil.addOrReplaceSpan(spannable, new BackgroundColorSpan(ttmlStyle.m20707b()), i, i2, 33);
        }
        if (ttmlStyle.m20709d() != null) {
            SpanUtil.addOrReplaceSpan(spannable, new TypefaceSpan(ttmlStyle.m20709d()), i, i2, 33);
        }
        if (ttmlStyle.m20720o() != null) {
            TextEmphasis textEmphasis = (TextEmphasis) Assertions.checkNotNull(ttmlStyle.m20720o());
            int i5 = textEmphasis.f27104a;
            if (i5 == -1) {
                i5 = (i3 == 2 || i3 == 1) ? 3 : 1;
                i4 = 1;
            } else {
                i4 = textEmphasis.f27105b;
            }
            int i6 = textEmphasis.f27106c;
            if (i6 == -2) {
                i6 = 1;
            }
            SpanUtil.addOrReplaceSpan(spannable, new TextEmphasisSpan(i5, i4, i6), i, i2, 33);
        }
        int m20715j = ttmlStyle.m20715j();
        if (m20715j == 2) {
            gon m54741d = m54741d(gonVar, map);
            if (m54741d != null && (m54742e = m54742e(m54741d, map)) != null) {
                if (m54742e.m54324g() != 1 || m54742e.m54323f(0).f71314b == null) {
                    Log.m21491i(f73449a, "Skipping rubyText node without exactly one text child.");
                } else {
                    String str = (String) Util.castNonNull(m54742e.m54323f(0).f71314b);
                    TtmlStyle m54743f2 = m54743f(m54742e.f71318f, m54742e.m54328l(), map);
                    int m20714i = m54743f2 != null ? m54743f2.m20714i() : -1;
                    if (m20714i == -1 && (m54743f = m54743f(m54741d.f71318f, m54741d.m54328l(), map)) != null) {
                        m20714i = m54743f.m20714i();
                    }
                    spannable.setSpan(new RubySpan(str, m20714i), i, i2, 33);
                }
            }
        } else if (m20715j == 3 || m20715j == 4) {
            spannable.setSpan(new o3f(), i, i2, 33);
        }
        if (ttmlStyle.m20719n()) {
            SpanUtil.addOrReplaceSpan(spannable, new HorizontalTextInVerticalContextSpan(), i, i2, 33);
        }
        int m20711f = ttmlStyle.m20711f();
        if (m20711f == 1) {
            SpanUtil.addOrReplaceSpan(spannable, new AbsoluteSizeSpan((int) ttmlStyle.m20710e(), true), i, i2, 33);
        } else if (m20711f == 2) {
            SpanUtil.addOrReplaceSpan(spannable, new RelativeSizeSpan(ttmlStyle.m20710e()), i, i2, 33);
        } else {
            if (m20711f != 3) {
                return;
            }
            SpanUtil.addOrReplaceSpan(spannable, new RelativeSizeSpan(ttmlStyle.m20710e() / 100.0f), i, i2, 33);
        }
    }

    /* renamed from: b */
    public static String m54739b(String str) {
        return str.replaceAll("\r\n", "\n").replaceAll(" *\n *", "\n").replaceAll("\n", " ").replaceAll("[ \t\\x0B\f\r]+", " ");
    }

    /* renamed from: c */
    public static void m54740c(SpannableStringBuilder spannableStringBuilder) {
        int length = spannableStringBuilder.length() - 1;
        while (length >= 0 && spannableStringBuilder.charAt(length) == ' ') {
            length--;
        }
        if (length < 0 || spannableStringBuilder.charAt(length) == '\n') {
            return;
        }
        spannableStringBuilder.append('\n');
    }

    @Nullable
    /* renamed from: d */
    public static gon m54741d(@Nullable gon gonVar, Map<String, TtmlStyle> map) {
        while (gonVar != null) {
            TtmlStyle m54743f = m54743f(gonVar.f71318f, gonVar.m54328l(), map);
            if (m54743f != null && m54743f.m20715j() == 1) {
                return gonVar;
            }
            gonVar = gonVar.f71322j;
        }
        return null;
    }

    @Nullable
    /* renamed from: e */
    public static gon m54742e(gon gonVar, Map<String, TtmlStyle> map) {
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(gonVar);
        while (!arrayDeque.isEmpty()) {
            gon gonVar2 = (gon) arrayDeque.pop();
            TtmlStyle m54743f = m54743f(gonVar2.f71318f, gonVar2.m54328l(), map);
            if (m54743f != null && m54743f.m20715j() == 3) {
                return gonVar2;
            }
            for (int m54324g = gonVar2.m54324g() - 1; m54324g >= 0; m54324g--) {
                arrayDeque.push(gonVar2.m54323f(m54324g));
            }
        }
        return null;
    }

    @Nullable
    /* renamed from: f */
    public static TtmlStyle m54743f(@Nullable TtmlStyle ttmlStyle, @Nullable String[] strArr, Map<String, TtmlStyle> map) {
        int i = 0;
        if (ttmlStyle == null) {
            if (strArr == null) {
                return null;
            }
            if (strArr.length == 1) {
                return map.get(strArr[0]);
            }
            if (strArr.length > 1) {
                TtmlStyle ttmlStyle2 = new TtmlStyle();
                int length = strArr.length;
                while (i < length) {
                    ttmlStyle2.m20706a(map.get(strArr[i]));
                    i++;
                }
                return ttmlStyle2;
            }
        } else {
            if (strArr != null && strArr.length == 1) {
                return ttmlStyle.m20706a(map.get(strArr[0]));
            }
            if (strArr != null && strArr.length > 1) {
                int length2 = strArr.length;
                while (i < length2) {
                    ttmlStyle.m20706a(map.get(strArr[i]));
                    i++;
                }
            }
        }
        return ttmlStyle;
    }
}
