package net.p110sf.saxon.str;

import java.io.IOException;
import java.util.Arrays;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public final class UnicodeBuilder implements UniStringConsumer, UnicodeWriter {

    /* renamed from: e */
    public int[] f101715e;

    /* renamed from: f */
    public int f101716f;

    /* renamed from: g */
    public int f101717g;

    /* renamed from: h */
    public ZenoString f101718h;

    public UnicodeBuilder() {
        this(256);
    }

    public static byte[] expand(byte[] bArr, int i, int i2, int i3, int i4, int i5) {
        int i6 = (i2 - i) / i3;
        if (i5 <= i6) {
            i5 = i6;
        }
        if (i4 <= i3) {
            byte[] bArr2 = new byte[i5 * i4];
            System.arraycopy(bArr, i, bArr2, 0, i2 * i3);
            return bArr2;
        }
        if (i3 == 1 && i4 == 2) {
            return expand1to2(bArr, i, i2, i5);
        }
        if (i3 == 1 && i4 == 3) {
            return expand1to3(bArr, i, i2, i5);
        }
        if (i3 == 2 && i4 == 3) {
            return expand2to3(bArr, i, i2, i5);
        }
        throw new IllegalArgumentException();
    }

    public static byte[] expand1to2(byte[] bArr, int i, int i2, int i3) {
        byte[] bArr2 = new byte[i3 * 2];
        int i4 = 0;
        while (i < i2) {
            int i5 = i4 + 1;
            bArr2[i4] = 0;
            i4 = i5 + 1;
            bArr2[i5] = bArr[i];
            i++;
        }
        return bArr2;
    }

    public static byte[] expand1to3(byte[] bArr, int i, int i2, int i3) {
        byte[] bArr2 = new byte[i3 * 3];
        int i4 = 0;
        while (i < i2) {
            int i5 = i4 + 1;
            bArr2[i4] = 0;
            int i6 = i5 + 1;
            bArr2[i5] = 0;
            bArr2[i6] = bArr[i];
            i4 = i6 + 1;
            i++;
        }
        return bArr2;
    }

    public static byte[] expand2to3(byte[] bArr, int i, int i2, int i3) {
        byte[] bArr2 = new byte[i3 * 3];
        int i4 = 0;
        while (i < i2) {
            int i5 = i4 + 1;
            bArr2[i4] = 0;
            int i6 = i5 + 1;
            int i7 = i + 1;
            bArr2[i5] = bArr[i];
            bArr2[i6] = bArr[i7];
            i4 = i6 + 1;
            i = i7 + 1;
        }
        return bArr2;
    }

    public static char[] expandBytesToChars(byte[] bArr, int i, int i2) {
        char[] cArr = new char[i2 - i];
        int i3 = 0;
        while (i < i2) {
            cArr[i3] = (char) bArr[i];
            i3++;
            i++;
        }
        return cArr;
    }

    /* renamed from: a */
    public final void m63912a(int i) {
        if (this.f101716f > 65535) {
            this.f101718h = this.f101718h.concat(m63913b());
            this.f101716f = 0;
            this.f101717g = 255;
        }
        while (true) {
            int i2 = this.f101716f + i;
            int[] iArr = this.f101715e;
            if (i2 <= iArr.length) {
                return;
            } else {
                this.f101715e = Arrays.copyOf(iArr, iArr.length * 2);
            }
        }
    }

    public UnicodeBuilder append(char c) {
        append((int) c);
        return this;
    }

    public UnicodeBuilder appendAll(SequenceIterator sequenceIterator) {
        while (true) {
            Item next = sequenceIterator.next();
            if (next == null) {
                return this;
            }
            append(next.getUnicodeStringValue());
        }
    }

    public UnicodeBuilder appendLatin(String str) {
        return append(new BMPString(str));
    }

    /* renamed from: b */
    public final UnicodeString m63913b() {
        int i = this.f101717g;
        if ((16711680 & i) != 0) {
            return new Twine24(this.f101715e, this.f101716f);
        }
        int i2 = 0;
        if ((i & 65280) != 0) {
            char[] cArr = new char[this.f101716f];
            while (i2 < this.f101716f) {
                cArr[i2] = (char) (this.f101715e[i2] & 65535);
                i2++;
            }
            return new Twine16(cArr);
        }
        byte[] bArr = new byte[this.f101716f];
        while (i2 < this.f101716f) {
            bArr[i2] = (byte) (this.f101715e[i2] & 255);
            i2++;
        }
        return new Twine8(bArr);
    }

    public void clear() {
        this.f101718h = ZenoString.EMPTY;
        this.f101715e = new int[256];
        this.f101716f = 0;
        this.f101717g = 0;
    }

    @Override // net.p110sf.saxon.str.UniStringConsumer
    public void close() {
    }

    public boolean isEmpty() {
        return this.f101718h.isEmpty() && this.f101716f == 0;
    }

    public long length() {
        return this.f101718h.length() + this.f101716f;
    }

    public String toString() {
        return toUnicodeString().toString();
    }

    public StringValue toStringItem(AtomicType atomicType) {
        return new StringValue(toUnicodeString(), atomicType);
    }

    public UnicodeString toUnicodeString() {
        return this.f101718h.isEmpty() ? m63913b() : this.f101718h.concat(m63913b());
    }

    public void trimToSize() {
        this.f101715e = Arrays.copyOf(this.f101715e, this.f101716f);
    }

    @Override // net.p110sf.saxon.str.UnicodeWriter
    public void write(UnicodeString unicodeString) {
        append(unicodeString);
    }

    @Override // net.p110sf.saxon.str.UnicodeWriter
    public void writeAscii(byte[] bArr) throws IOException {
        accept((UnicodeString) new Twine8(bArr));
    }

    public UnicodeBuilder(int i) {
        this.f101718h = ZenoString.EMPTY;
        this.f101715e = new int[i];
    }

    @Override // net.p110sf.saxon.str.UniStringConsumer
    public UnicodeBuilder accept(UnicodeString unicodeString) {
        return append(unicodeString);
    }

    public UnicodeBuilder append(int i) {
        m63912a(1);
        int[] iArr = this.f101715e;
        int i2 = this.f101716f;
        this.f101716f = i2 + 1;
        iArr[i2] = i;
        this.f101717g = i | this.f101717g;
        return this;
    }

    @Override // net.p110sf.saxon.str.UnicodeWriter
    public void write(String str) throws IOException {
        append(str);
    }

    public UnicodeBuilder append(IntIterator intIterator) {
        while (intIterator.hasNext()) {
            append(intIterator.next());
        }
        return this;
    }

    public UnicodeBuilder append(CharSequence charSequence) {
        return append(StringTool.codePoints(charSequence));
    }

    public UnicodeBuilder append(UnicodeString unicodeString) {
        int length32 = unicodeString.length32();
        if (length32 == 0) {
            return this;
        }
        m63912a(length32);
        IntIterator codePoints = unicodeString.codePoints();
        while (codePoints.hasNext()) {
            int[] iArr = this.f101715e;
            int i = this.f101716f;
            this.f101716f = i + 1;
            iArr[i] = codePoints.next();
        }
        int width = unicodeString.getWidth();
        if (width > 8) {
            if (width > 16) {
                this.f101717g |= 16777215;
            } else {
                this.f101717g |= 65535;
            }
        }
        return this;
    }
}
