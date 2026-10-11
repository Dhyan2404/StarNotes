package org.apache.commons.codec.language;

import com.google.android.material.motion.MotionUtils;
import com.sunia.HTREnginev2.wvm;
import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.StringEncoder;

/* loaded from: classes9.dex */
public class Soundex implements StringEncoder {
    public static final char SILENT_MARKER = '-';

    /* renamed from: a */
    @Deprecated
    public int f104808a;

    /* renamed from: b */
    public final char[] f104809b;

    /* renamed from: c */
    public final boolean f104810c;
    public static final String US_ENGLISH_MAPPING_STRING = "01230120022455012623010202";

    /* renamed from: d */
    public static final char[] f104807d = US_ENGLISH_MAPPING_STRING.toCharArray();
    public static final Soundex US_ENGLISH = new Soundex();
    public static final Soundex US_ENGLISH_SIMPLIFIED = new Soundex(US_ENGLISH_MAPPING_STRING, false);
    public static final Soundex US_ENGLISH_GENEALOGY = new Soundex("-123-12--22455-12623-1-2-2");

    public Soundex() {
        this.f104808a = 4;
        this.f104809b = f104807d;
        this.f104810c = true;
    }

    /* renamed from: a */
    public final boolean m65820a(char[] cArr) {
        for (char c : cArr) {
            if (c == '-') {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public final char m65821b(char c) {
        int i = c - 'A';
        if (i >= 0) {
            char[] cArr = this.f104809b;
            if (i < cArr.length) {
                return cArr[i];
            }
        }
        throw new IllegalArgumentException("The character is not mapped: " + c + " (index=" + i + MotionUtils.f31762d);
    }

    public int difference(String str, String str2) throws EncoderException {
        return wvm.m58138b(this, str, str2);
    }

    @Override // org.apache.commons.codec.Encoder
    public Object encode(Object obj) throws EncoderException {
        if (obj instanceof String) {
            return soundex((String) obj);
        }
        throw new EncoderException("Parameter supplied to Soundex encode is not of type java.lang.String");
    }

    @Deprecated
    public int getMaxLength() {
        return this.f104808a;
    }

    @Deprecated
    public void setMaxLength(int i) {
        this.f104808a = i;
    }

    public String soundex(String str) {
        char m65821b;
        if (str == null) {
            return null;
        }
        String m58137a = wvm.m58137a(str);
        if (m58137a.length() == 0) {
            return m58137a;
        }
        char[] cArr = {'0', '0', '0', '0'};
        char charAt = m58137a.charAt(0);
        cArr[0] = charAt;
        char m65821b2 = m65821b(charAt);
        int i = 1;
        for (int i2 = 1; i2 < m58137a.length() && i < 4; i2++) {
            char charAt2 = m58137a.charAt(i2);
            if ((!this.f104810c || (charAt2 != 'H' && charAt2 != 'W')) && (m65821b = m65821b(charAt2)) != '-') {
                if (m65821b != '0' && m65821b != m65821b2) {
                    cArr[i] = m65821b;
                    i++;
                }
                m65821b2 = m65821b;
            }
        }
        return new String(cArr);
    }

    @Override // org.apache.commons.codec.StringEncoder
    public String encode(String str) {
        return soundex(str);
    }

    public Soundex(char[] cArr) {
        this.f104808a = 4;
        char[] cArr2 = new char[cArr.length];
        this.f104809b = cArr2;
        System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
        this.f104810c = !m65820a(cArr2);
    }

    public Soundex(String str) {
        this.f104808a = 4;
        this.f104809b = str.toCharArray();
        this.f104810c = !m65820a(r2);
    }

    public Soundex(String str, boolean z) {
        this.f104808a = 4;
        this.f104809b = str.toCharArray();
        this.f104810c = z;
    }
}
