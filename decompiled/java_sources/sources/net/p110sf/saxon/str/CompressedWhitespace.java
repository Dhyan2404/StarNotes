package net.p110sf.saxon.str;

import java.io.IOException;
import java.util.Arrays;
import net.p110sf.saxon.p111z.IntIterator;

/* loaded from: classes11.dex */
public class CompressedWhitespace extends WhitespaceString {

    /* renamed from: f */
    public static final char[] f101659f = {'\t', '\n', '\r', ' '};

    /* renamed from: g */
    public static final int[] f101660g = {-1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 1, -1, -1, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 3};

    /* renamed from: h */
    public static final /* synthetic */ boolean f101661h = false;

    /* renamed from: e */
    public final long f101662e;

    public CompressedWhitespace(long j) {
        this.f101662e = j;
    }

    public static UnicodeString compressWS(char[] cArr, int i, int i2) {
        int i3 = 1;
        int i4 = 0;
        for (int i5 = 0; i5 < i2; i5++) {
            char c = cArr[i5];
            if (c > ' ' || f101660g[c] < 0) {
                return StringTool.compress(cArr, i, i2, false);
            }
            if (i5 == i2 - 1 || c != cArr[i5 + 1] || i3 == 63) {
                i4++;
                if (i4 > 8) {
                    return StringTool.compress(cArr, i, i2, false);
                }
                i3 = 1;
            } else {
                i3++;
            }
        }
        int[] iArr = new int[i4];
        int i6 = 1;
        int i7 = 0;
        for (int i8 = 0; i8 < i2; i8++) {
            char c2 = cArr[i8];
            if (i8 == i2 - 1 || c2 != cArr[i8 + 1] || i6 == 63) {
                iArr[i7] = i6 | (f101660g[c2] << 6);
                i6 = 1;
                i7++;
            } else {
                i6++;
            }
        }
        long j = 0;
        for (int i9 = 0; i9 < i4; i9++) {
            j = (j << 8) | iArr[i9];
        }
        return new CompressedWhitespace(j << ((8 - i4) * 8));
    }

    public static int length(long j) {
        int i = 0;
        for (int i2 = 56; i2 >= 0; i2 -= 8) {
            int i3 = (int) ((j >> i2) & 63);
            if (i3 == 0) {
                break;
            }
            i += i3;
        }
        return i;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public int codePointAt(long j) {
        int i = 0;
        for (int i2 = 56; i2 >= 0; i2 -= 8) {
            byte b = (byte) ((this.f101662e >> i2) & 255);
            if (b == 0) {
                break;
            }
            i += b & 63;
            if (i > j) {
                return f101659f[(b >> 6) & 3];
            }
        }
        throw new IndexOutOfBoundsException(j + "");
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public IntIterator codePoints() {
        return uncompress().codePoints();
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public boolean equals(Object obj) {
        return obj instanceof CompressedWhitespace ? this.f101662e == ((CompressedWhitespace) obj).f101662e : uncompress().equals(obj);
    }

    public long getCompressedValue() {
        return this.f101662e;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public int hashCode() {
        return super.hashCode();
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public int length32() {
        return length(this.f101662e);
    }

    @Override // net.p110sf.saxon.str.WhitespaceString
    public UnicodeString uncompress() {
        return uncompress(this.f101662e);
    }

    @Override // net.p110sf.saxon.str.WhitespaceString
    public void write(UnicodeWriter unicodeWriter) throws IOException {
        for (int i = 56; i >= 0; i -= 8) {
            byte b = (byte) ((this.f101662e >> i) & 255);
            if (b == 0) {
                return;
            }
            unicodeWriter.writeRepeatedAscii((byte) f101659f[(b >> 6) & 3], b & 63);
        }
    }

    @Override // net.p110sf.saxon.str.WhitespaceString
    public void writeEscape(boolean[] zArr, UnicodeWriter unicodeWriter) throws IOException {
        for (int i = 56; i >= 0; i -= 8) {
            byte b = (byte) ((this.f101662e >> i) & 255);
            if (b == 0) {
                return;
            }
            char c = f101659f[(b >> 6) & 3];
            int i2 = b & 63;
            if (zArr[c]) {
                byte[] bArr = c == '\n' ? StringConstants.ESCAPE_NL : c == '\r' ? StringConstants.ESCAPE_CR : c == '\t' ? StringConstants.ESCAPE_TAB : null;
                for (int i3 = 0; i3 < i2; i3++) {
                    unicodeWriter.writeAscii(bArr);
                }
            } else {
                unicodeWriter.writeRepeatedAscii((byte) c, i2);
            }
        }
    }

    public static UnicodeString uncompress(long j) {
        byte[] bArr = new byte[1000];
        int i = 0;
        for (int i2 = 56; i2 >= 0; i2 -= 8) {
            byte b = (byte) ((j >> i2) & 255);
            if (b == 0) {
                break;
            }
            byte b2 = (byte) (f101659f[(b >> 6) & 3] & 255);
            int i3 = b & 63;
            int i4 = 0;
            while (i4 < i3) {
                bArr[i] = b2;
                i4++;
                i++;
            }
        }
        return new Twine8(Arrays.copyOf(bArr, i));
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public long length() {
        return length(this.f101662e);
    }
}
