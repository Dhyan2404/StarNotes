package net.p110sf.saxon.str;

import java.util.function.IntPredicate;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.p111z.IntIterator;

/* loaded from: classes11.dex */
public class BMPString extends UnicodeString {

    /* renamed from: f */
    public static final /* synthetic */ boolean f101656f = false;

    /* renamed from: e */
    public final String f101657e;

    public BMPString(String str) {
        this.f101657e = str;
    }

    /* renamed from: of */
    public static UnicodeString m63877of(String str) {
        if (Configuration.isAssertionsEnabled()) {
            for (int i = 0; i < str.length(); i++) {
            }
        }
        return new BMPString(str);
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    /* renamed from: a */
    public void mo63878a(char[] cArr, int i) {
        String str = this.f101657e;
        str.getChars(0, str.length(), cArr, i);
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    /* renamed from: b */
    public void mo63879b(byte[] bArr, int i) {
        char[] charArray = this.f101657e.toCharArray();
        int i2 = 0;
        while (i2 < charArray.length) {
            int i3 = i2 + 1;
            char c = charArray[i2];
            int i4 = i + 1;
            bArr[i] = 0;
            int i5 = i4 + 1;
            bArr[i4] = (byte) (c >> '\b');
            bArr[i5] = (byte) (c & 255);
            i2 = i3;
            i = i5 + 1;
        }
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public int codePointAt(long j) {
        return this.f101657e.charAt(StringTool.requireInt(j));
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public IntIterator codePoints() {
        return StringTool.codePoints(this.f101657e);
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public UnicodeString concat(UnicodeString unicodeString) {
        if (!(unicodeString instanceof BMPString)) {
            return new UnicodeBuilder().accept((UnicodeString) this).accept(unicodeString).toUnicodeString();
        }
        return new BMPString(this.f101657e + ((BMPString) unicodeString).f101657e);
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public boolean equals(Object obj) {
        return obj instanceof BMPString ? this.f101657e.equals(((BMPString) obj).f101657e) : super.equals(obj);
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public int getWidth() {
        return 16;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public int hashCode() {
        return this.f101657e.hashCode();
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public long indexOf(int i) {
        if (i > 65535) {
            return -1L;
        }
        return this.f101657e.indexOf((char) i);
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public long indexWhere(IntPredicate intPredicate, long j) {
        for (int requireInt = UnicodeString.requireInt(j); requireInt < this.f101657e.length(); requireInt++) {
            if (intPredicate.test(this.f101657e.charAt(requireInt))) {
                return requireInt;
            }
        }
        return -1L;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public boolean isEmpty() {
        return this.f101657e.isEmpty();
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public long length() {
        return this.f101657e.length();
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public UnicodeString substring(long j, long j2) {
        return new BMPString(this.f101657e.substring(StringTool.requireInt(j), StringTool.requireInt(j2)));
    }

    public String toString() {
        return this.f101657e;
    }

    @Override // net.p110sf.saxon.str.UnicodeString, java.lang.Comparable
    public int compareTo(UnicodeString unicodeString) {
        if (unicodeString instanceof BMPString) {
            return this.f101657e.compareTo(((BMPString) unicodeString).f101657e);
        }
        return super.compareTo(unicodeString);
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public long indexOf(int i, long j) {
        int requireInt = UnicodeString.requireInt(j);
        if (i > 65535) {
            return -1L;
        }
        return this.f101657e.indexOf((char) i, requireInt);
    }
}
