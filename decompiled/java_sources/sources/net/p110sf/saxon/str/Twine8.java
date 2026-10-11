package net.p110sf.saxon.str;

import java.io.IOException;
import java.io.Writer;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.function.IntPredicate;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.serialize.UTF8Writer;

/* loaded from: classes11.dex */
public class Twine8 extends UnicodeString {
    protected byte[] bytes;
    protected int cachedHash = 0;

    /* renamed from: net.sf.saxon.str.Twine8$a */
    /* loaded from: classes11.dex */
    public class C18517a implements IntIterator {

        /* renamed from: a */
        public int f101713a = 0;

        public C18517a() {
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public boolean hasNext() {
            return this.f101713a < Twine8.this.bytes.length;
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public int next() {
            byte[] bArr = Twine8.this.bytes;
            int i = this.f101713a;
            this.f101713a = i + 1;
            return bArr[i] & 255;
        }
    }

    public Twine8(byte[] bArr) {
        this.bytes = bArr;
    }

    /* renamed from: e */
    public static byte[] m63910e(String str) {
        return str.getBytes(StandardCharsets.ISO_8859_1);
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    /* renamed from: a */
    public void mo63878a(char[] cArr, int i) {
        int i2 = 0;
        while (true) {
            byte[] bArr = this.bytes;
            if (i2 >= bArr.length) {
                return;
            }
            cArr[i] = (char) (bArr[i2] & 255);
            i++;
            i2++;
        }
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    /* renamed from: b */
    public void mo63879b(byte[] bArr, int i) {
        int i2 = 0;
        while (true) {
            byte[] bArr2 = this.bytes;
            if (i2 >= bArr2.length) {
                return;
            }
            int i3 = i + 1;
            bArr[i] = 0;
            int i4 = i3 + 1;
            bArr[i3] = 0;
            bArr[i4] = bArr2[i2];
            i = i4 + 1;
            i2++;
        }
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    /* renamed from: c */
    public void mo63880c(byte[] bArr, int i) {
        byte[] bArr2 = this.bytes;
        System.arraycopy(bArr2, 0, bArr, i, bArr2.length);
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public int codePointAt(long j) throws IndexOutOfBoundsException {
        int requireInt = StringTool.requireInt(j);
        if (requireInt < 0 || requireInt >= length32()) {
            throw new IndexOutOfBoundsException();
        }
        return this.bytes[requireInt] & 255;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public IntIterator codePoints() {
        return new C18517a();
    }

    public String details() {
        return "Twine8 bytes.length = " + this.bytes.length;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public boolean equals(Object obj) {
        if (!(obj instanceof Twine8)) {
            return super.equals(obj);
        }
        Twine8 twine8 = (Twine8) obj;
        if (length32() == twine8.length32() && hashCode() == twine8.hashCode()) {
            return Arrays.equals(this.bytes, twine8.bytes);
        }
        return false;
    }

    /* renamed from: f */
    public final void m63911f(Writer writer, long j, long j2) throws IOException {
        if (writer instanceof UTF8Writer) {
            ((UTF8Writer) writer).writeLatin1(this.bytes, UnicodeString.requireInt(j), UnicodeString.requireInt(j2));
        } else {
            writer.write(toString().substring(UnicodeString.requireInt(j), UnicodeString.requireInt(j + j2)));
        }
    }

    public byte[] getByteArray() {
        return this.bytes;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public int getWidth() {
        return 8;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public int hashCode() {
        int i = this.cachedHash;
        if (i != 0) {
            return i;
        }
        int hashCode = super.hashCode();
        this.cachedHash = hashCode;
        return hashCode;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public long indexOf(int i, long j) {
        int requireInt = StringTool.requireInt(j);
        if (requireInt < 0) {
            requireInt = 0;
        } else if (requireInt >= length32()) {
            return -1L;
        }
        int length = this.bytes.length;
        if (i >= 0 && i <= 255) {
            while (requireInt < length) {
                if ((this.bytes[requireInt] & 255) == i) {
                    return requireInt;
                }
                requireInt++;
            }
        }
        return -1L;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public long indexWhere(IntPredicate intPredicate, long j) {
        int requireInt = UnicodeString.requireInt(j);
        while (true) {
            long j2 = requireInt;
            if (j2 >= length()) {
                return -1L;
            }
            if (intPredicate.test(this.bytes[requireInt] & 255)) {
                return j2;
            }
            requireInt++;
        }
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public boolean isEmpty() {
        return this.bytes.length == 0;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public long length() {
        return this.bytes.length;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public int length32() {
        return this.bytes.length;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public UnicodeString substring(long j, long j2) {
        long length = length();
        if (j < 0 || j2 < j || j2 > length) {
            throw new IndexOutOfBoundsException();
        }
        return j2 == j ? EmptyUnicodeString.getInstance() : (j == 0 && j2 == length) ? this : new Slice8(this.bytes, UnicodeString.requireInt(j), UnicodeString.requireInt(j2));
    }

    public String toString() {
        return new String(this.bytes, StandardCharsets.ISO_8859_1);
    }

    @Override // net.p110sf.saxon.str.UnicodeString, java.lang.Comparable
    public int compareTo(UnicodeString unicodeString) {
        if (unicodeString instanceof Twine8) {
            byte[] bArr = this.bytes;
            byte[] bArr2 = ((Twine8) unicodeString).bytes;
            int min = Math.min(bArr.length, bArr2.length);
            for (int i = 0; i < min; i++) {
                int i2 = (bArr[i] & 255) - (bArr2[i] & 255);
                if (i2 != 0) {
                    return i2;
                }
            }
            return Integer.compare(bArr.length, bArr2.length);
        }
        return super.compareTo(unicodeString);
    }

    public Twine8(char[] cArr, int i, int i2) {
        this.bytes = new byte[i2];
        while (i < i2) {
            char c = cArr[i];
            if (Configuration.isAssertionsEnabled() && c > 255) {
                throw new IllegalArgumentException();
            }
            this.bytes[i] = (byte) (cArr[i] & 255);
            i++;
        }
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public long indexOf(UnicodeString unicodeString, long j) {
        int requireInt = UnicodeString.requireInt(j);
        if (requireInt < 0) {
            requireInt = 0;
        } else if (requireInt >= length32()) {
            return -1L;
        }
        if (unicodeString.isEmpty()) {
            return j;
        }
        int codePointAt = unicodeString.codePointAt(0L);
        int length32 = length32() - StringTool.requireInt(unicodeString.length());
        while (requireInt <= length32) {
            int requireInt2 = StringTool.requireInt(indexOf(codePointAt, requireInt));
            if (requireInt2 < 0) {
                return -1L;
            }
            long j2 = requireInt2;
            if (hasSubstring(unicodeString, j2)) {
                return j2;
            }
            requireInt = requireInt2 + 1;
        }
        return -1L;
    }

    public Twine8(String str) {
        this.bytes = m63910e(str);
    }
}
