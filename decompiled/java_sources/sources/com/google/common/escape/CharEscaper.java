package com.google.common.escape;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.sunia.HTREnginev2.h4l;
import com.sunia.HTREnginev2.tnf;
import javax.annotation.CheckForNull;

@GwtCompatible
@tnf
/* loaded from: classes6.dex */
public abstract class CharEscaper extends Escaper {

    /* renamed from: b */
    public static final int f34649b = 2;

    /* renamed from: a */
    public static char[] m27026a(char[] cArr, int i, int i2) {
        if (i2 < 0) {
            throw new AssertionError("Cannot increase internal buffer any further");
        }
        char[] cArr2 = new char[i2];
        if (i > 0) {
            System.arraycopy(cArr, 0, cArr2, 0, i);
        }
        return cArr2;
    }

    @Override // com.google.common.escape.Escaper
    public String escape(String str) {
        Preconditions.checkNotNull(str);
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (escape(str.charAt(i)) != null) {
                return escapeSlow(str, i);
            }
        }
        return str;
    }

    @CheckForNull
    public abstract char[] escape(char c);

    public final String escapeSlow(String str, int i) {
        int length = str.length();
        char[] m54396a = h4l.m54396a();
        int length2 = m54396a.length;
        int i2 = 0;
        int i3 = 0;
        while (i < length) {
            char[] escape = escape(str.charAt(i));
            if (escape != null) {
                int length3 = escape.length;
                int i4 = i - i2;
                int i5 = i3 + i4;
                int i6 = i5 + length3;
                if (length2 < i6) {
                    length2 = ((length - i) * 2) + i6;
                    m54396a = m27026a(m54396a, i3, length2);
                }
                if (i4 > 0) {
                    str.getChars(i2, i, m54396a, i3);
                    i3 = i5;
                }
                if (length3 > 0) {
                    System.arraycopy(escape, 0, m54396a, i3, length3);
                    i3 += length3;
                }
                i2 = i + 1;
            }
            i++;
        }
        int i7 = length - i2;
        if (i7 > 0) {
            int i8 = i7 + i3;
            if (length2 < i8) {
                m54396a = m27026a(m54396a, i3, i8);
            }
            str.getChars(i2, length, m54396a, i3);
            i3 = i8;
        }
        return new String(m54396a, 0, i3);
    }
}
