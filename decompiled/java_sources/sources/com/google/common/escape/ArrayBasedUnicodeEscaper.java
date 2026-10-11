package com.google.common.escape;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.sunia.HTREnginev2.tnf;
import java.util.Map;
import javax.annotation.CheckForNull;

@GwtCompatible
@tnf
/* loaded from: classes6.dex */
public abstract class ArrayBasedUnicodeEscaper extends UnicodeEscaper {

    /* renamed from: c */
    public final char[][] f34643c;

    /* renamed from: d */
    public final int f34644d;

    /* renamed from: e */
    public final int f34645e;

    /* renamed from: f */
    public final int f34646f;

    /* renamed from: g */
    public final char f34647g;

    /* renamed from: h */
    public final char f34648h;

    public ArrayBasedUnicodeEscaper(Map<Character, String> map, int i, int i2, String str) {
        this(ArrayBasedEscaperMap.create(map), i, i2, str);
    }

    @Override // com.google.common.escape.UnicodeEscaper, com.google.common.escape.Escaper
    public final String escape(String str) {
        Preconditions.checkNotNull(str);
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if ((charAt < this.f34644d && this.f34643c[charAt] != null) || charAt > this.f34648h || charAt < this.f34647g) {
                return escapeSlow(str, i);
            }
        }
        return str;
    }

    @CheckForNull
    public abstract char[] escapeUnsafe(int i);

    @Override // com.google.common.escape.UnicodeEscaper
    public final int nextEscapeIndex(CharSequence charSequence, int i, int i2) {
        while (i < i2) {
            char charAt = charSequence.charAt(i);
            if ((charAt < this.f34644d && this.f34643c[charAt] != null) || charAt > this.f34648h || charAt < this.f34647g) {
                break;
            }
            i++;
        }
        return i;
    }

    public ArrayBasedUnicodeEscaper(ArrayBasedEscaperMap arrayBasedEscaperMap, int i, int i2, String str) {
        Preconditions.checkNotNull(arrayBasedEscaperMap);
        char[][] m27025b = arrayBasedEscaperMap.m27025b();
        this.f34643c = m27025b;
        this.f34644d = m27025b.length;
        if (i2 < i) {
            i2 = -1;
            i = Integer.MAX_VALUE;
        }
        this.f34645e = i;
        this.f34646f = i2;
        if (i >= 55296) {
            this.f34647g = (char) 65535;
            this.f34648h = (char) 0;
        } else {
            this.f34647g = (char) i;
            this.f34648h = (char) Math.min(i2, 55295);
        }
    }

    @Override // com.google.common.escape.UnicodeEscaper
    @CheckForNull
    public final char[] escape(int i) {
        char[] cArr;
        if (i < this.f34644d && (cArr = this.f34643c[i]) != null) {
            return cArr;
        }
        if (i < this.f34645e || i > this.f34646f) {
            return escapeUnsafe(i);
        }
        return null;
    }
}
