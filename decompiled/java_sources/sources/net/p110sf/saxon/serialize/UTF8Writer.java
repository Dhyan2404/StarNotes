package net.p110sf.saxon.serialize;

import com.google.android.material.motion.MotionUtils;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import java.util.Arrays;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.str.BMPString;
import net.p110sf.saxon.str.Slice16;
import net.p110sf.saxon.str.Slice8;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.str.Twine16;
import net.p110sf.saxon.str.Twine8;
import net.p110sf.saxon.str.UnicodeChar;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.str.UnicodeWriter;
import net.p110sf.saxon.str.WhitespaceString;
import net.p110sf.saxon.str.ZenoString;

/* loaded from: classes11.dex */
public final class UTF8Writer extends Writer implements UnicodeWriter {

    /* renamed from: j */
    public static final int f101597j = 32;

    /* renamed from: k */
    public static final int f101598k = 4000;

    /* renamed from: l */
    public static final int f101599l = 55296;

    /* renamed from: m */
    public static final int f101600m = 56319;

    /* renamed from: n */
    public static final int f101601n = 56320;

    /* renamed from: o */
    public static final int f101602o = 57343;

    /* renamed from: p */
    public static final /* synthetic */ boolean f101603p = false;

    /* renamed from: e */
    public OutputStream f101604e;

    /* renamed from: f */
    public byte[] f101605f;

    /* renamed from: g */
    public final int f101606g;

    /* renamed from: h */
    public int f101607h;

    /* renamed from: i */
    public int f101608i;

    public UTF8Writer(OutputStream outputStream) {
        this(outputStream, 4000);
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable, net.p110sf.saxon.str.UnicodeWriter
    public void close() throws IOException {
        if (this.f101604e != null) {
            m63851j();
            this.f101605f = null;
            this.f101604e.close();
            this.f101604e = null;
            int i = this.f101608i;
            if (i != 0) {
                this.f101608i = 0;
                m63852w(i);
            }
        }
    }

    /* renamed from: f */
    public final int m63850f(int i) throws IOException {
        int i2 = this.f101608i;
        this.f101608i = 0;
        if (i >= 56320 && i <= 57343) {
            return ((i2 - 55296) << 10) + 65536 + (i - 56320);
        }
        throw new IOException("Broken surrogate pair: first char 0x" + Integer.toHexString(i2) + ", second 0x" + Integer.toHexString(i) + "; illegal combination");
    }

    @Override // java.io.Writer, java.io.Flushable, net.p110sf.saxon.str.UnicodeWriter
    public void flush() throws IOException {
        m63851j();
        this.f101604e.flush();
    }

    /* renamed from: j */
    public final void m63851j() throws IOException {
        byte[] bArr;
        int i = this.f101607h;
        if (i <= 0 || (bArr = this.f101605f) == null) {
            return;
        }
        this.f101604e.write(bArr, 0, i);
        this.f101607h = 0;
    }

    /* renamed from: w */
    public final void m63852w(int i) throws IOException {
        if (i > 1114111) {
            throw new IOException("Illegal character point (0x" + Integer.toHexString(i) + ") to output; max is 0x10FFFF as per RFC 3629");
        }
        if (i < 55296) {
            throw new IOException("Illegal character point (0x" + Integer.toHexString(i) + ") to output");
        }
        if (i <= 56319) {
            throw new IOException("Unmatched first part of surrogate pair (0x" + Integer.toHexString(i) + MotionUtils.f31762d);
        }
        throw new IOException("Unmatched second part of surrogate pair (0x" + Integer.toHexString(i) + MotionUtils.f31762d);
    }

    @Override // java.io.Writer
    public void write(char[] cArr) throws IOException {
        write(cArr, 0, cArr.length);
    }

    @Override // net.p110sf.saxon.str.UnicodeWriter
    public void writeAscii(byte[] bArr) throws IOException {
        writeAscii(bArr, 0, bArr.length);
    }

    @Override // net.p110sf.saxon.str.UnicodeWriter
    public void writeCodePoint(int i) throws IOException {
        write(i);
    }

    public void writeLatin1(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.f101607h;
        byte[] bArr2 = this.f101605f;
        int i4 = this.f101606g;
        int i5 = i2 + i;
        while (i < i5) {
            boolean z = false;
            if (i3 >= i4) {
                this.f101604e.write(bArr2, 0, i3);
                i3 = 0;
            }
            int i6 = i + 1;
            int i7 = bArr[i] & 255;
            if (i7 < 128) {
                int i8 = i3 + 1;
                bArr2[i3] = (byte) i7;
                int i9 = i5 - i6;
                int i10 = i4 - i8;
                if (i9 > i10) {
                    i9 = i10;
                }
                int i11 = i9 + i6;
                i3 = i8;
                while (true) {
                    if (i6 >= i11) {
                        z = true;
                        break;
                    }
                    int i12 = i6 + 1;
                    int i13 = bArr[i6] & 255;
                    if (i13 >= 128) {
                        i6 = i12;
                        i7 = i13;
                        break;
                    } else {
                        bArr2[i3] = (byte) i13;
                        i3++;
                        i6 = i12;
                        i7 = i13;
                    }
                }
                if (z) {
                    i = i6;
                }
            }
            int i14 = i3 + 1;
            bArr2[i3] = (byte) ((i7 >> 6) | 192);
            i3 = i14 + 1;
            bArr2[i14] = (byte) ((i7 & 63) | 128);
            i = i6;
        }
        this.f101607h = i3;
    }

    @Override // net.p110sf.saxon.str.UnicodeWriter
    public void writeRepeatedAscii(byte b, int i) throws IOException {
        int i2 = this.f101607h;
        byte[] bArr = this.f101605f;
        int i3 = this.f101606g;
        while (i > 0) {
            if (i2 >= i3) {
                this.f101604e.write(bArr, 0, i2);
                i2 = 0;
            }
            int min = Math.min(i, i3 - i2);
            int i4 = i2 + min;
            Arrays.fill(bArr, i2, i4, b);
            i -= min;
            i2 = i4;
        }
        this.f101607h = i2;
    }

    public UTF8Writer(OutputStream outputStream, int i) {
        this.f101608i = 0;
        i = i < 32 ? 32 : i;
        this.f101604e = outputStream;
        this.f101605f = new byte[i];
        this.f101606g = i - 4;
        this.f101607h = 0;
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) throws IOException {
        char c;
        if (i2 < 2) {
            if (i2 == 1) {
                write(cArr[i]);
                return;
            }
            return;
        }
        if (this.f101608i > 0) {
            i2--;
            write(m63850f(cArr[i]));
            i++;
        }
        int i3 = this.f101607h;
        byte[] bArr = this.f101605f;
        int i4 = this.f101606g;
        int i5 = i2 + i;
        while (i < i5) {
            boolean z = false;
            if (i3 >= i4) {
                this.f101604e.write(bArr, 0, i3);
                i3 = 0;
            }
            int i6 = i + 1;
            char c2 = cArr[i];
            if (c2 < 128) {
                int i7 = i3 + 1;
                bArr[i3] = (byte) c2;
                int i8 = i5 - i6;
                int i9 = i4 - i7;
                if (i8 > i9) {
                    i8 = i9;
                }
                int i10 = i8 + i6;
                i3 = i7;
                while (true) {
                    if (i6 >= i10) {
                        z = true;
                        int i11 = i6;
                        c = c2;
                        i = i11;
                        break;
                    }
                    i = i6 + 1;
                    c = cArr[i6];
                    if (c >= 128) {
                        break;
                    }
                    bArr[i3] = (byte) c;
                    i3++;
                    i6 = i;
                    c2 = c;
                }
                if (z) {
                    continue;
                } else {
                    char c3 = c;
                    i6 = i;
                    c2 = c3;
                }
            }
            if (c2 < 2048) {
                int i12 = i3 + 1;
                bArr[i3] = (byte) ((c2 >> 6) | 192);
                i3 = i12 + 1;
                bArr[i12] = (byte) ((c2 & '?') | 128);
            } else if (c2 >= 55296 && c2 <= 57343) {
                if (c2 > 56319) {
                    this.f101607h = i3;
                    m63852w(c2);
                }
                this.f101608i = c2;
                if (i6 >= i5) {
                    break;
                }
                i = i6 + 1;
                int m63850f = m63850f(cArr[i6]);
                if (m63850f > 1114111) {
                    this.f101607h = i3;
                    m63852w(m63850f);
                }
                int i13 = i3 + 1;
                bArr[i3] = (byte) ((m63850f >> 18) | 240);
                int i14 = i13 + 1;
                bArr[i13] = (byte) (((m63850f >> 12) & 63) | 128);
                int i15 = i14 + 1;
                bArr[i14] = (byte) (((m63850f >> 6) & 63) | 128);
                i3 = i15 + 1;
                bArr[i15] = (byte) ((m63850f & 63) | 128);
            } else {
                int i16 = i3 + 1;
                bArr[i3] = (byte) ((c2 >> '\f') | 224);
                int i17 = i16 + 1;
                bArr[i16] = (byte) (((c2 >> 6) & 63) | 128);
                bArr[i17] = (byte) ((c2 & '?') | 128);
                i3 = i17 + 1;
            }
            i = i6;
        }
        this.f101607h = i3;
    }

    public void writeAscii(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.f101607h;
        byte[] bArr2 = this.f101605f;
        int i4 = this.f101606g;
        while (i2 > 0) {
            if (i3 >= i4) {
                this.f101604e.write(bArr2, 0, i3);
                i3 = 0;
            }
            int min = Math.min(i2, i4 - i3);
            System.arraycopy(bArr, i, bArr2, i3, min);
            i3 += min;
            i += min;
            i2 -= min;
        }
        this.f101607h = i3;
    }

    @Override // java.io.Writer
    public void write(int i) throws IOException {
        int i2;
        if (this.f101608i > 0) {
            i = m63850f(i);
        } else if (i >= 55296 && i <= 57343) {
            if (i > 56319) {
                m63852w(i);
            }
            this.f101608i = i;
            return;
        }
        if (this.f101607h >= this.f101606g) {
            m63851j();
        }
        if (i < 128) {
            byte[] bArr = this.f101605f;
            int i3 = this.f101607h;
            this.f101607h = i3 + 1;
            bArr[i3] = (byte) i;
            return;
        }
        int i4 = this.f101607h;
        if (i < 2048) {
            byte[] bArr2 = this.f101605f;
            int i5 = i4 + 1;
            bArr2[i4] = (byte) ((i >> 6) | 192);
            i2 = i5 + 1;
            bArr2[i5] = (byte) ((i & 63) | 128);
        } else if (i <= 65535) {
            byte[] bArr3 = this.f101605f;
            int i6 = i4 + 1;
            bArr3[i4] = (byte) ((i >> 12) | 224);
            int i7 = i6 + 1;
            bArr3[i6] = (byte) (((i >> 6) & 63) | 128);
            bArr3[i7] = (byte) ((i & 63) | 128);
            i2 = i7 + 1;
        } else {
            if (i > 1114111) {
                m63852w(i);
            }
            byte[] bArr4 = this.f101605f;
            int i8 = i4 + 1;
            bArr4[i4] = (byte) ((i >> 18) | 240);
            int i9 = i8 + 1;
            bArr4[i8] = (byte) (((i >> 12) & 63) | 128);
            int i10 = i9 + 1;
            bArr4[i9] = (byte) (((i >> 6) & 63) | 128);
            i2 = i10 + 1;
            bArr4[i10] = (byte) ((i & 63) | 128);
        }
        this.f101607h = i2;
    }

    @Override // net.p110sf.saxon.str.UnicodeWriter
    public void write(UnicodeString unicodeString) throws IOException {
        if (!(unicodeString instanceof StringView) && !(unicodeString instanceof BMPString)) {
            if (unicodeString instanceof UnicodeChar) {
                writeCodePoint(((UnicodeChar) unicodeString).getCodepoint());
                return;
            }
            if (unicodeString instanceof ZenoString) {
                ((ZenoString) unicodeString).writeSegments(this);
                return;
            }
            if (unicodeString.getWidth() <= 8) {
                if (unicodeString instanceof Twine8) {
                    int width = unicodeString.getWidth();
                    if (width == 7) {
                        writeAscii(((Twine8) unicodeString).getByteArray(), 0, unicodeString.length32());
                        return;
                    } else {
                        if (width == 8) {
                            writeLatin1(((Twine8) unicodeString).getByteArray(), 0, unicodeString.length32());
                            return;
                        }
                        return;
                    }
                }
                if (unicodeString instanceof Slice8) {
                    Slice8 slice8 = (Slice8) unicodeString;
                    int width2 = unicodeString.getWidth();
                    if (width2 == 7) {
                        writeAscii(slice8.getByteArray(), slice8.getStart(), slice8.getEnd() - slice8.getStart());
                        return;
                    } else {
                        if (width2 == 8) {
                            writeLatin1(slice8.getByteArray(), slice8.getStart(), slice8.getEnd() - slice8.getStart());
                            return;
                        }
                        return;
                    }
                }
                if (unicodeString instanceof WhitespaceString) {
                    ((WhitespaceString) unicodeString).write(this);
                    return;
                }
                IntIterator codePoints = unicodeString.codePoints();
                while (codePoints.hasNext()) {
                    write(codePoints.next());
                }
                return;
            }
            if (unicodeString.getWidth() == 16) {
                if (unicodeString instanceof Twine16) {
                    write(((Twine16) unicodeString).getCharArray());
                    return;
                } else {
                    if (unicodeString instanceof Slice16) {
                        Slice16 slice16 = (Slice16) unicodeString;
                        write(slice16.getCharArray(), slice16.getStart(), slice16.getEnd() - slice16.getStart());
                        return;
                    }
                    return;
                }
            }
            IntIterator codePoints2 = unicodeString.codePoints();
            while (codePoints2.hasNext()) {
                write(codePoints2.next());
            }
            return;
        }
        write(unicodeString.toString());
    }

    @Override // java.io.Writer, net.p110sf.saxon.str.UnicodeWriter
    public void write(String str) throws IOException {
        write(str, 0, str.length());
    }

    @Override // java.io.Writer
    public void write(String str, int i, int i2) throws IOException {
        char c;
        if (i2 < 2) {
            if (i2 == 1) {
                write(str.charAt(i));
                return;
            }
            return;
        }
        if (this.f101608i > 0) {
            i2--;
            write(m63850f(str.charAt(i)));
            i++;
        }
        int i3 = this.f101607h;
        byte[] bArr = this.f101605f;
        int i4 = this.f101606g;
        int i5 = i2 + i;
        while (i < i5) {
            boolean z = false;
            if (i3 >= i4) {
                this.f101604e.write(bArr, 0, i3);
                i3 = 0;
            }
            int i6 = i + 1;
            char charAt = str.charAt(i);
            if (charAt < 128) {
                int i7 = i3 + 1;
                bArr[i3] = (byte) charAt;
                int i8 = i5 - i6;
                int i9 = i4 - i7;
                if (i8 > i9) {
                    i8 = i9;
                }
                int i10 = i8 + i6;
                i3 = i7;
                while (true) {
                    if (i6 >= i10) {
                        z = true;
                        int i11 = i6;
                        c = charAt;
                        i = i11;
                        break;
                    }
                    i = i6 + 1;
                    c = str.charAt(i6);
                    if (c >= 128) {
                        break;
                    }
                    bArr[i3] = (byte) c;
                    i3++;
                    i6 = i;
                    charAt = c;
                }
                if (z) {
                    continue;
                } else {
                    char c2 = c;
                    i6 = i;
                    charAt = c2;
                }
            }
            if (charAt < 2048) {
                int i12 = i3 + 1;
                bArr[i3] = (byte) ((charAt >> 6) | 192);
                i3 = i12 + 1;
                bArr[i12] = (byte) ((charAt & '?') | 128);
            } else if (charAt >= 55296 && charAt <= 57343) {
                if (charAt > 56319) {
                    this.f101607h = i3;
                    m63852w(charAt);
                }
                this.f101608i = charAt;
                if (i6 >= i5) {
                    break;
                }
                i = i6 + 1;
                int m63850f = m63850f(str.charAt(i6));
                if (m63850f > 1114111) {
                    this.f101607h = i3;
                    m63852w(m63850f);
                }
                int i13 = i3 + 1;
                bArr[i3] = (byte) ((m63850f >> 18) | 240);
                int i14 = i13 + 1;
                bArr[i13] = (byte) (((m63850f >> 12) & 63) | 128);
                int i15 = i14 + 1;
                bArr[i14] = (byte) (((m63850f >> 6) & 63) | 128);
                i3 = i15 + 1;
                bArr[i15] = (byte) ((m63850f & 63) | 128);
            } else {
                int i16 = i3 + 1;
                bArr[i3] = (byte) ((charAt >> '\f') | 224);
                int i17 = i16 + 1;
                bArr[i16] = (byte) (((charAt >> 6) & 63) | 128);
                bArr[i17] = (byte) ((charAt & '?') | 128);
                i3 = i17 + 1;
            }
            i = i6;
        }
        this.f101607h = i3;
    }
}
