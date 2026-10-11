package org.apache.xerces.impl.p115dv.p116xs;

import java.io.UnsupportedEncodingException;
import org.apache.xerces.impl.p115dv.InvalidDatatypeValueException;
import org.apache.xerces.impl.p115dv.ValidationContext;
import org.apache.xerces.util.URI;

/* loaded from: classes13.dex */
public class AnyURIDV extends TypeValidator {

    /* renamed from: b */
    public static final URI f112317b;

    /* renamed from: c */
    public static boolean[] f112318c;

    /* renamed from: d */
    public static char[] f112319d;

    /* renamed from: e */
    public static char[] f112320e;

    /* renamed from: f */
    public static char[] f112321f;

    static {
        URI uri;
        try {
            uri = new URI("abc://def.ghi.jkl");
        } catch (URI.MalformedURIException unused) {
            uri = null;
        }
        f112317b = uri;
        f112318c = new boolean[128];
        f112319d = new char[128];
        f112320e = new char[128];
        f112321f = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
        for (int i = 0; i <= 31; i++) {
            f112318c[i] = true;
            char[] cArr = f112319d;
            char[] cArr2 = f112321f;
            cArr[i] = cArr2[i >> 4];
            f112320e[i] = cArr2[i & 15];
        }
        f112318c[127] = true;
        f112319d[127] = '7';
        f112320e[127] = 'F';
        char[] cArr3 = {' ', '<', '>', '\"', '{', '}', '|', '\\', '^', '~', '`'};
        for (int i2 = 0; i2 < 11; i2++) {
            char c = cArr3[i2];
            f112318c[c] = true;
            char[] cArr4 = f112319d;
            char[] cArr5 = f112321f;
            cArr4[c] = cArr5[c >> 4];
            f112320e[c] = cArr5[c & 15];
        }
    }

    /* renamed from: b */
    public static String m69934b(String str) {
        char c;
        char charAt;
        char c2;
        int length = str.length();
        StringBuffer stringBuffer = new StringBuffer(length * 3);
        int i = 0;
        while (i < length && (charAt = str.charAt(i)) < 128) {
            if (f112318c[charAt]) {
                stringBuffer.append('%');
                stringBuffer.append(f112319d[charAt]);
                c2 = f112320e[charAt];
            } else {
                c2 = charAt;
            }
            stringBuffer.append(c2);
            i++;
        }
        if (i < length) {
            try {
                byte[] bytes = str.substring(i).getBytes("UTF-8");
                int length2 = bytes.length;
                for (byte b : bytes) {
                    if (b < 0) {
                        int i2 = b + 256;
                        stringBuffer.append('%');
                        stringBuffer.append(f112321f[i2 >> 4]);
                        c = f112321f[i2 & 15];
                    } else if (f112318c[b]) {
                        stringBuffer.append('%');
                        stringBuffer.append(f112319d[b]);
                        c = f112320e[b];
                    } else {
                        c = (char) b;
                    }
                    stringBuffer.append(c);
                }
                length = length2;
            } catch (UnsupportedEncodingException unused) {
                return str;
            }
        }
        return stringBuffer.length() != length ? stringBuffer.toString() : str;
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public Object getActualValue(String str, ValidationContext validationContext) throws InvalidDatatypeValueException {
        try {
            if (str.length() != 0) {
                new URI(f112317b, m69934b(str));
            }
            return str;
        } catch (URI.MalformedURIException unused) {
            throw new InvalidDatatypeValueException("cvc-datatype-valid.1.2.1", new Object[]{str, "anyURI"});
        }
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public short getAllowedFacets() {
        return (short) 2079;
    }
}
