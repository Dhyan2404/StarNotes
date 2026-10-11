package com.google.common.escape;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.sunia.HTREnginev2.tnf;
import java.util.Map;
import javax.annotation.CheckForNull;

@GwtCompatible
@tnf
/* loaded from: classes6.dex */
public abstract class ArrayBasedCharEscaper extends CharEscaper {

    /* renamed from: c */
    public final char[][] f34637c;

    /* renamed from: d */
    public final int f34638d;

    /* renamed from: e */
    public final char f34639e;

    /* renamed from: f */
    public final char f34640f;

    public ArrayBasedCharEscaper(Map<Character, String> map, char c, char c2) {
        this(ArrayBasedEscaperMap.create(map), c, c2);
    }

    @Override // com.google.common.escape.CharEscaper, com.google.common.escape.Escaper
    public final String escape(String str) {
        Preconditions.checkNotNull(str);
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if ((charAt < this.f34638d && this.f34637c[charAt] != null) || charAt > this.f34640f || charAt < this.f34639e) {
                return escapeSlow(str, i);
            }
        }
        return str;
    }

    @CheckForNull
    public abstract char[] escapeUnsafe(char c);

    public ArrayBasedCharEscaper(ArrayBasedEscaperMap arrayBasedEscaperMap, char c, char c2) {
        Preconditions.checkNotNull(arrayBasedEscaperMap);
        char[][] m27025b = arrayBasedEscaperMap.m27025b();
        this.f34637c = m27025b;
        this.f34638d = m27025b.length;
        if (c2 < c) {
            c2 = 0;
            c = 65535;
        }
        this.f34639e = c;
        this.f34640f = c2;
    }

    @Override // com.google.common.escape.CharEscaper
    @CheckForNull
    public final char[] escape(char c) {
        char[] cArr;
        if (c < this.f34638d && (cArr = this.f34637c[c]) != null) {
            return cArr;
        }
        if (c < this.f34639e || c > this.f34640f) {
            return escapeUnsafe(c);
        }
        return null;
    }
}
