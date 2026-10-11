package net.p110sf.saxon.str;

import java.util.Arrays;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.serialize.charcode.UTF16CharacterSet;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class StringTool {

    /* renamed from: net.sf.saxon.str.StringTool$a */
    /* loaded from: classes11.dex */
    public static class C18514a implements IntIterator {

        /* renamed from: a */
        public int f101698a = 0;

        /* renamed from: b */
        public boolean f101699b;

        /* renamed from: c */
        public final /* synthetic */ CharSequence f101700c;

        public C18514a(CharSequence charSequence) {
            this.f101700c = charSequence;
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public boolean hasNext() {
            return this.f101698a < this.f101700c.length();
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public int next() {
            char c;
            CharSequence charSequence = this.f101700c;
            int i = this.f101698a;
            this.f101698a = i + 1;
            char charAt = charSequence.charAt(i);
            if (!UTF16CharacterSet.isHighSurrogate(charAt)) {
                return charAt;
            }
            try {
                if (hasNext()) {
                    CharSequence charSequence2 = this.f101700c;
                    int i2 = this.f101698a;
                    this.f101698a = i2 + 1;
                    c = charSequence2.charAt(i2);
                } else {
                    c = 65535;
                }
                if (UTF16CharacterSet.isLowSurrogate(c)) {
                    return UTF16CharacterSet.combinePair(charAt, c);
                }
                throw new IllegalStateException("Unmatched surrogate code value " + ((int) charAt) + " at position " + this.f101698a);
            } catch (StringIndexOutOfBoundsException unused) {
                throw new IllegalStateException("Invalid surrogate at end of string");
            }
        }
    }

    public static void appendRepeated(StringBuilder sb, char c, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            sb.append(c);
        }
    }

    public static IntIterator codePoints(CharSequence charSequence) {
        return new C18514a(charSequence);
    }

    public static UnicodeString compress(char[] cArr, int i, int i2, boolean z) {
        if (i2 == 0) {
            return EmptyUnicodeString.getInstance();
        }
        int i3 = i + i2;
        int i4 = 0;
        int i5 = 255;
        int i6 = 0;
        for (int i7 = i; i7 < i3; i7++) {
            char c = cArr[i7];
            i5 |= c;
            if (z && !Whitespace.isWhite(c)) {
                z = false;
            }
            if (UTF16CharacterSet.isSurrogate(c)) {
                i6++;
            }
        }
        if (z) {
            return CompressedWhitespace.compressWS(cArr, i, i3);
        }
        if (i5 < 256) {
            byte[] bArr = new byte[i2];
            while (i < i3) {
                bArr[i4] = (byte) cArr[i];
                i4++;
                i++;
            }
            return new Twine8(bArr);
        }
        if (i6 == 0) {
            return new Twine16(Arrays.copyOfRange(cArr, i, i3));
        }
        byte[] bArr2 = new byte[(i2 - (i6 / 2)) * 3];
        int i8 = 0;
        while (i < i3) {
            int i9 = i + 1;
            char c2 = cArr[i];
            if (UTF16CharacterSet.isSurrogate(c2)) {
                int i10 = i9 + 1;
                int combinePair = UTF16CharacterSet.combinePair(c2, cArr[i9]);
                int i11 = i8 + 1;
                bArr2[i8] = (byte) ((16777215 & combinePair) >> 16);
                int i12 = i11 + 1;
                bArr2[i11] = (byte) ((65535 & combinePair) >> 8);
                bArr2[i12] = (byte) (combinePair & 255);
                i8 = i12 + 1;
                i = i10;
            } else {
                int i13 = i8 + 1;
                bArr2[i8] = 0;
                int i14 = i13 + 1;
                bArr2[i13] = (byte) ((65535 & c2) >> 8);
                bArr2[i14] = (byte) (c2 & 255);
                i = i9;
                i8 = i14 + 1;
            }
        }
        return new Twine24(bArr2);
    }

    public static boolean containsSurrogates(String str) {
        for (int i = 0; i < str.length(); i++) {
            if (UTF16CharacterSet.isSurrogate(str.charAt(i))) {
                return true;
            }
        }
        return false;
    }

    public static void copy16to24(char[] cArr, int i, byte[] bArr, int i2, int i3) {
        int i4 = i3 + i;
        int i5 = i2 * 3;
        while (i < i4) {
            int i6 = i + 1;
            char c = cArr[i];
            int i7 = i5 + 1;
            bArr[i5] = 0;
            int i8 = i7 + 1;
            bArr[i7] = (byte) ((c >> '\b') & 255);
            bArr[i8] = (byte) (c & 255);
            i = i6;
            i5 = i8 + 1;
        }
    }

    public static void copy8to16(byte[] bArr, int i, char[] cArr, int i2, int i3) {
        int i4 = i3 + i;
        while (i < i4) {
            cArr[i2] = (char) (bArr[i] & 255);
            i2++;
            i++;
        }
    }

    public static void copy8to24(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        int i4 = i3 + i;
        int i5 = i2 * 3;
        while (i < i4) {
            int i6 = i5 + 1;
            bArr2[i5] = 0;
            int i7 = i6 + 1;
            bArr2[i6] = 0;
            bArr2[i7] = bArr[i];
            i5 = i7 + 1;
            i++;
        }
    }

    public static String diagnosticDisplay(String str) {
        StringBuilder sb = new StringBuilder(str.length());
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt < ' ' || charAt > '~') {
                sb.append("\\u");
                for (int i2 = 12; i2 >= 0; i2 -= 4) {
                    sb.append("0123456789ABCDEF".charAt((charAt >> i2) & 15));
                }
            } else {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    public static int[] expand(UnicodeString unicodeString) {
        int[] iArr = new int[unicodeString.length32()];
        IntIterator codePoints = unicodeString.codePoints();
        int i = 0;
        while (codePoints.hasNext()) {
            iArr[i] = codePoints.next();
            i++;
        }
        return iArr;
    }

    public static UnicodeString fromCharSequence(CharSequence charSequence) {
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder();
        IntIterator codePoints = codePoints(charSequence);
        while (codePoints.hasNext()) {
            unicodeBuilder.append(codePoints.next());
        }
        return unicodeBuilder.toUnicodeString();
    }

    public static UnicodeString fromCodePoints(int[] iArr, int i) {
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder();
        for (int i2 = 0; i2 < i; i2++) {
            unicodeBuilder.append(iArr[i2]);
        }
        return unicodeBuilder.toUnicodeString();
    }

    public static UnicodeString fromLatin1(String str) {
        byte[] bArr = new byte[str.length()];
        for (int i = 0; i < str.length(); i++) {
            bArr[i] = (byte) (str.charAt(i) & 255);
        }
        return new Twine8(bArr);
    }

    public static int getStringLength(CharSequence charSequence) {
        int i = 0;
        for (int i2 = 0; i2 < charSequence.length(); i2++) {
            char charAt = charSequence.charAt(i2);
            if (charAt < 55296 || charAt > 56319) {
                i++;
            }
        }
        return i;
    }

    public static int lastCodePoint(UnicodeString unicodeString) {
        return unicodeString.codePointAt(unicodeString.length() - 1);
    }

    public static long lastIndexOf(UnicodeString unicodeString, int i) {
        long length = unicodeString.length();
        do {
            length--;
            if (length < 0) {
                return -1L;
            }
        } while (unicodeString.codePointAt(length) != i);
        return length;
    }

    public static void prependRepeated(StringBuilder sb, char c, int i) {
        char[] cArr = new char[i];
        Arrays.fill(cArr, c);
        sb.insert(0, cArr);
    }

    public static void prependWideChar(StringBuilder sb, int i) {
        if (i > 65535) {
            sb.insert(0, new char[]{UTF16CharacterSet.highSurrogate(i), UTF16CharacterSet.lowSurrogate(i)});
        } else {
            sb.insert(0, (char) i);
        }
    }

    public static int requireInt(long j) {
        if (j <= 2147483647L) {
            return (int) j;
        }
        throw new UnsupportedOperationException("String exceeds 2^31 characters");
    }
}
