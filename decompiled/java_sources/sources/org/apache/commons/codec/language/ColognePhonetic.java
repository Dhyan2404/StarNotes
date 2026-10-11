package org.apache.commons.codec.language;

import java.util.Locale;
import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.StringEncoder;

/* loaded from: classes9.dex */
public class ColognePhonetic implements StringEncoder {

    /* renamed from: a */
    public static final char[] f104726a = {'A', 'E', 'I', 'J', 'O', 'U', 'Y'};

    /* renamed from: b */
    public static final char[] f104727b = {'C', 'S', 'Z'};

    /* renamed from: c */
    public static final char[] f104728c = {'F', 'P', 'V', 'W'};

    /* renamed from: d */
    public static final char[] f104729d = {'G', 'K', 'Q'};

    /* renamed from: e */
    public static final char[] f104730e = {'C', 'K', 'Q'};

    /* renamed from: f */
    public static final char[] f104731f = {'A', 'H', 'K', 'L', 'O', 'Q', 'R', 'U', 'X'};

    /* renamed from: g */
    public static final char[] f104732g = {'S', 'Z'};

    /* renamed from: h */
    public static final char[] f104733h = {'A', 'H', 'K', 'O', 'Q', 'U', 'X'};

    /* renamed from: i */
    public static final char[] f104734i = {'D', 'T', 'X'};

    /* renamed from: j */
    public static final char f104735j = '-';

    /* renamed from: org.apache.commons.codec.language.ColognePhonetic$b */
    /* loaded from: classes9.dex */
    public class C18667b extends AbstractC18666a {
        public C18667b(char[] cArr) {
            super(cArr);
        }

        @Override // org.apache.commons.codec.language.ColognePhonetic.AbstractC18666a
        /* renamed from: a */
        public char[] mo65758a(int i, int i2) {
            char[] cArr = new char[i2];
            char[] cArr2 = this.f104736a;
            System.arraycopy(cArr2, (cArr2.length - this.f104737b) + i, cArr, 0, i2);
            return cArr;
        }

        /* renamed from: c */
        public char m65760c() {
            return this.f104736a[m65761d()];
        }

        /* renamed from: d */
        public int m65761d() {
            return this.f104736a.length - this.f104737b;
        }

        /* renamed from: e */
        public char m65762e() {
            this.f104737b--;
            return m65760c();
        }
    }

    /* renamed from: org.apache.commons.codec.language.ColognePhonetic$c */
    /* loaded from: classes9.dex */
    public class C18668c extends AbstractC18666a {

        /* renamed from: d */
        public char f104740d;

        public C18668c(int i) {
            super(i);
            this.f104740d = '/';
        }

        @Override // org.apache.commons.codec.language.ColognePhonetic.AbstractC18666a
        /* renamed from: a */
        public char[] mo65758a(int i, int i2) {
            char[] cArr = new char[i2];
            System.arraycopy(this.f104736a, i, cArr, 0, i2);
            return cArr;
        }

        /* renamed from: c */
        public void m65763c(char c) {
            if (c != '-' && this.f104740d != c && (c != '0' || this.f104737b == 0)) {
                char[] cArr = this.f104736a;
                int i = this.f104737b;
                cArr[i] = c;
                this.f104737b = i + 1;
            }
            this.f104740d = c;
        }
    }

    /* renamed from: a */
    public static boolean m65756a(char[] cArr, char c) {
        for (char c2 : cArr) {
            if (c2 == c) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public final char[] m65757b(String str) {
        char[] charArray = str.toUpperCase(Locale.GERMAN).toCharArray();
        for (int i = 0; i < charArray.length; i++) {
            char c = charArray[i];
            if (c == 196) {
                charArray[i] = 'A';
            } else if (c == 214) {
                charArray[i] = 'O';
            } else if (c == 220) {
                charArray[i] = 'U';
            }
        }
        return charArray;
    }

    public String colognePhonetic(String str) {
        if (str == null) {
            return null;
        }
        C18667b c18667b = new C18667b(m65757b(str));
        C18668c c18668c = new C18668c(c18667b.m65759b() * 2);
        char c = '-';
        while (c18667b.m65759b() > 0) {
            char m65762e = c18667b.m65762e();
            char m65760c = c18667b.m65759b() > 0 ? c18667b.m65760c() : '-';
            if (m65762e >= 'A' && m65762e <= 'Z') {
                if (m65756a(f104726a, m65762e)) {
                    c18668c.m65763c('0');
                } else if (m65762e == 'B' || (m65762e == 'P' && m65760c != 'H')) {
                    c18668c.m65763c('1');
                } else if ((m65762e == 'D' || m65762e == 'T') && !m65756a(f104727b, m65760c)) {
                    c18668c.m65763c('2');
                } else if (m65756a(f104728c, m65762e)) {
                    c18668c.m65763c('3');
                } else if (m65756a(f104729d, m65762e)) {
                    c18668c.m65763c('4');
                } else if (m65762e == 'X' && !m65756a(f104730e, c)) {
                    c18668c.m65763c('4');
                    c18668c.m65763c('8');
                } else if (m65762e == 'S' || m65762e == 'Z') {
                    c18668c.m65763c('8');
                } else if (m65762e == 'C') {
                    if (c18668c.m65759b() == 0) {
                        if (m65756a(f104731f, m65760c)) {
                            c18668c.m65763c('4');
                        } else {
                            c18668c.m65763c('8');
                        }
                    } else if (m65756a(f104732g, c) || !m65756a(f104733h, m65760c)) {
                        c18668c.m65763c('8');
                    } else {
                        c18668c.m65763c('4');
                    }
                } else if (m65756a(f104734i, m65762e)) {
                    c18668c.m65763c('8');
                } else if (m65762e == 'R') {
                    c18668c.m65763c('7');
                } else if (m65762e == 'L') {
                    c18668c.m65763c('5');
                } else if (m65762e == 'M' || m65762e == 'N') {
                    c18668c.m65763c('6');
                } else if (m65762e == 'H') {
                    c18668c.m65763c('-');
                }
                c = m65762e;
            }
        }
        return c18668c.toString();
    }

    @Override // org.apache.commons.codec.Encoder
    public Object encode(Object obj) throws EncoderException {
        if (obj instanceof String) {
            return encode((String) obj);
        }
        throw new EncoderException("This method's parameter was expected to be of the type " + String.class.getName() + ". But actually it was of the type " + obj.getClass().getName() + ".");
    }

    public boolean isEncodeEqual(String str, String str2) {
        return colognePhonetic(str).equals(colognePhonetic(str2));
    }

    /* renamed from: org.apache.commons.codec.language.ColognePhonetic$a */
    /* loaded from: classes9.dex */
    public abstract class AbstractC18666a {

        /* renamed from: a */
        public final char[] f104736a;

        /* renamed from: b */
        public int f104737b;

        public AbstractC18666a(char[] cArr) {
            this.f104737b = 0;
            this.f104736a = cArr;
            this.f104737b = cArr.length;
        }

        /* renamed from: a */
        public abstract char[] mo65758a(int i, int i2);

        /* renamed from: b */
        public int m65759b() {
            return this.f104737b;
        }

        public String toString() {
            return new String(mo65758a(0, this.f104737b));
        }

        public AbstractC18666a(int i) {
            this.f104737b = 0;
            this.f104736a = new char[i];
            this.f104737b = 0;
        }
    }

    @Override // org.apache.commons.codec.StringEncoder
    public String encode(String str) {
        return colognePhonetic(str);
    }
}
