package org.apache.commons.codec.language;

import com.sunia.HTREnginev2.wvm;
import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.StringEncoder;

/* loaded from: classes9.dex */
public class RefinedSoundex implements StringEncoder {

    /* renamed from: a */
    public final char[] f104806a;
    public static final String US_ENGLISH_MAPPING_STRING = "01360240043788015936020505";

    /* renamed from: b */
    public static final char[] f104805b = US_ENGLISH_MAPPING_STRING.toCharArray();
    public static final RefinedSoundex US_ENGLISH = new RefinedSoundex();

    public RefinedSoundex() {
        this.f104806a = f104805b;
    }

    /* renamed from: a */
    public char m65819a(char c) {
        if (Character.isLetter(c)) {
            return this.f104806a[Character.toUpperCase(c) - 'A'];
        }
        return (char) 0;
    }

    public int difference(String str, String str2) throws EncoderException {
        return wvm.m58138b(this, str, str2);
    }

    @Override // org.apache.commons.codec.Encoder
    public Object encode(Object obj) throws EncoderException {
        if (obj instanceof String) {
            return soundex((String) obj);
        }
        throw new EncoderException("Parameter supplied to RefinedSoundex encode is not of type java.lang.String");
    }

    public String soundex(String str) {
        if (str == null) {
            return null;
        }
        String m58137a = wvm.m58137a(str);
        if (m58137a.length() == 0) {
            return m58137a;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(m58137a.charAt(0));
        char c = '*';
        for (int i = 0; i < m58137a.length(); i++) {
            char m65819a = m65819a(m58137a.charAt(i));
            if (m65819a != c) {
                if (m65819a != 0) {
                    sb.append(m65819a);
                }
                c = m65819a;
            }
        }
        return sb.toString();
    }

    public RefinedSoundex(char[] cArr) {
        char[] cArr2 = new char[cArr.length];
        this.f104806a = cArr2;
        System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
    }

    @Override // org.apache.commons.codec.StringEncoder
    public String encode(String str) {
        return soundex(str);
    }

    public RefinedSoundex(String str) {
        this.f104806a = str.toCharArray();
    }
}
