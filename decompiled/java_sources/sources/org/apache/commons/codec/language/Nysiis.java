package org.apache.commons.codec.language;

import com.couchbase.lite.internal.BaseTLSIdentity;
import com.sunia.HTREnginev2.wvm;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.util.regex.Pattern;
import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.StringEncoder;

/* loaded from: classes9.dex */
public class Nysiis implements StringEncoder {

    /* renamed from: b */
    public static final char[] f104786b = {'A'};

    /* renamed from: c */
    public static final char[] f104787c = {'A', 'F'};

    /* renamed from: d */
    public static final char[] f104788d = {'C'};

    /* renamed from: e */
    public static final char[] f104789e = {'F', 'F'};

    /* renamed from: f */
    public static final char[] f104790f = {'G'};

    /* renamed from: g */
    public static final char[] f104791g = {'N'};

    /* renamed from: h */
    public static final char[] f104792h = {'N', 'N'};

    /* renamed from: i */
    public static final char[] f104793i = {'S'};

    /* renamed from: j */
    public static final char[] f104794j = {'S', 'S', 'S'};

    /* renamed from: k */
    public static final Pattern f104795k = Pattern.compile("^MAC");

    /* renamed from: l */
    public static final Pattern f104796l = Pattern.compile("^KN");

    /* renamed from: m */
    public static final Pattern f104797m = Pattern.compile("^K");

    /* renamed from: n */
    public static final Pattern f104798n = Pattern.compile("^(PH|PF)");

    /* renamed from: o */
    public static final Pattern f104799o = Pattern.compile("^SCH");

    /* renamed from: p */
    public static final Pattern f104800p = Pattern.compile("(EE|IE)$");

    /* renamed from: q */
    public static final Pattern f104801q = Pattern.compile("(DT|RT|RD|NT|ND)$");

    /* renamed from: r */
    public static final char f104802r = ' ';

    /* renamed from: s */
    public static final int f104803s = 6;

    /* renamed from: a */
    public final boolean f104804a;

    public Nysiis() {
        this(true);
    }

    /* renamed from: a */
    public static boolean m65817a(char c) {
        return c == 'A' || c == 'E' || c == 'I' || c == 'O' || c == 'U';
    }

    /* renamed from: b */
    public static char[] m65818b(char c, char c2, char c3, char c4) {
        return (c2 == 'E' && c3 == 'V') ? f104787c : m65817a(c2) ? f104786b : c2 == 'Q' ? f104790f : c2 == 'Z' ? f104793i : c2 == 'M' ? f104791g : c2 == 'K' ? c3 == 'N' ? f104792h : f104788d : (c2 == 'S' && c3 == 'C' && c4 == 'H') ? f104794j : (c2 == 'P' && c3 == 'H') ? f104789e : (c2 != 'H' || (m65817a(c) && m65817a(c3))) ? (c2 == 'W' && m65817a(c)) ? new char[]{c} : new char[]{c2} : new char[]{c};
    }

    @Override // org.apache.commons.codec.Encoder
    public Object encode(Object obj) throws EncoderException {
        if (obj instanceof String) {
            return nysiis((String) obj);
        }
        throw new EncoderException("Parameter supplied to Nysiis encode is not of type java.lang.String");
    }

    public boolean isStrict() {
        return this.f104804a;
    }

    public String nysiis(String str) {
        if (str == null) {
            return null;
        }
        String m58137a = wvm.m58137a(str);
        if (m58137a.length() == 0) {
            return m58137a;
        }
        String replaceFirst = f104801q.matcher(f104800p.matcher(f104799o.matcher(f104798n.matcher(f104797m.matcher(f104796l.matcher(f104795k.matcher(m58137a).replaceFirst("MCC")).replaceFirst("NN")).replaceFirst(BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY)).replaceFirst("FF")).replaceFirst("SSS")).replaceFirst("Y")).replaceFirst(SardineUtil.DEFAULT_NAMESPACE_PREFIX);
        StringBuilder sb = new StringBuilder(replaceFirst.length());
        sb.append(replaceFirst.charAt(0));
        char[] charArray = replaceFirst.toCharArray();
        int length = charArray.length;
        int i = 1;
        while (i < length) {
            int i2 = i - 1;
            char[] m65818b = m65818b(charArray[i2], charArray[i], i < length + (-1) ? charArray[i + 1] : ' ', i < length + (-2) ? charArray[i + 2] : ' ');
            System.arraycopy(m65818b, 0, charArray, i, m65818b.length);
            char c = charArray[i];
            if (c != charArray[i2]) {
                sb.append(c);
            }
            i++;
        }
        if (sb.length() > 1) {
            char charAt = sb.charAt(sb.length() - 1);
            if (charAt == 'S') {
                sb.deleteCharAt(sb.length() - 1);
                charAt = sb.charAt(sb.length() - 1);
            }
            if (sb.length() > 2 && sb.charAt(sb.length() - 2) == 'A' && charAt == 'Y') {
                sb.deleteCharAt(sb.length() - 2);
            }
            if (charAt == 'A') {
                sb.deleteCharAt(sb.length() - 1);
            }
        }
        String sb2 = sb.toString();
        return isStrict() ? sb2.substring(0, Math.min(6, sb2.length())) : sb2;
    }

    public Nysiis(boolean z) {
        this.f104804a = z;
    }

    @Override // org.apache.commons.codec.StringEncoder
    public String encode(String str) {
        return nysiis(str);
    }
}
