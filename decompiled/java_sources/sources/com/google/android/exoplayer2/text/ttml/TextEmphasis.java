package com.google.android.exoplayer2.text.ttml;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.common.base.Ascii;
import com.google.common.collect.ImmutableSet;
import com.sunia.HTREnginev2.gon;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.regex.Pattern;

/* loaded from: classes5.dex */
public final class TextEmphasis {

    /* renamed from: d */
    public static final int f27097d = -1;

    /* renamed from: e */
    public static final int f27098e = -2;

    /* renamed from: f */
    public static final Pattern f27099f = Pattern.compile("\\s+");

    /* renamed from: g */
    public static final ImmutableSet<String> f27100g = ImmutableSet.m26236of("auto", "none");

    /* renamed from: h */
    public static final ImmutableSet<String> f27101h = ImmutableSet.m26237of(gon.f71308x0, gon.f71310y0, "circle");

    /* renamed from: i */
    public static final ImmutableSet<String> f27102i = ImmutableSet.m26236of(gon.f71247A0, "open");

    /* renamed from: j */
    public static final ImmutableSet<String> f27103j = ImmutableSet.m26237of(gon.f71277d0, gon.f71276c0, gon.f71278e0);

    /* renamed from: a */
    public final int f27104a;

    /* renamed from: b */
    public final int f27105b;

    /* renamed from: c */
    public final int f27106c;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface Position {
    }

    public TextEmphasis(int i, int i2, int i3) {
        this.f27104a = i;
        this.f27105b = i2;
        this.f27106c = i3;
    }

    @Nullable
    /* renamed from: a */
    public static TextEmphasis m20677a(@Nullable String str) {
        if (str == null) {
            return null;
        }
        String lowerCase = Ascii.toLowerCase(str.trim());
        if (lowerCase.isEmpty()) {
            return null;
        }
        return m20678b(ImmutableSet.copyOf(TextUtils.split(lowerCase, f27099f)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0081, code lost:
    
        if (r9.equals("auto") != false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00fe, code lost:
    
        if (r9.equals(com.sunia.HTREnginev2.gon.f71308x0) == false) goto L80;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.text.ttml.TextEmphasis m20678b(com.google.common.collect.ImmutableSet<java.lang.String> r9) {
        /*
            Method dump skipped, instructions count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.ttml.TextEmphasis.m20678b(com.google.common.collect.ImmutableSet):com.google.android.exoplayer2.text.ttml.TextEmphasis");
    }
}
