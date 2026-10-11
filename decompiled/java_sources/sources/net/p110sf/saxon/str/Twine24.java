package net.p110sf.saxon.str;

import java.util.Arrays;
import java.util.function.IntPredicate;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.serialize.charcode.UTF16CharacterSet;

/* loaded from: classes11.dex */
public class Twine24 extends UnicodeString {
    protected byte[] bytes;
    protected int cachedHash;

    /* renamed from: net.sf.saxon.str.Twine24$a */
    /* loaded from: classes11.dex */
    public class C18516a implements IntIterator {

        /* renamed from: a */
        public int f101711a = 0;

        public C18516a() {
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public boolean hasNext() {
            return this.f101711a < Twine24.this.bytes.length;
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public int next() {
            byte[] bArr = Twine24.this.bytes;
            int i = this.f101711a;
            int i2 = (bArr[i + 2] & 255) | ((bArr[i] & 255) << 16) | ((bArr[i + 1] & 255) << 8);
            this.f101711a = i + 3;
            return i2;
        }
    }

    public Twine24(byte[] bArr) {
        this.cachedHash = 0;
        this.bytes = bArr;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    /* renamed from: b */
    public void mo63879b(byte[] bArr, int i) {
        byte[] bArr2 = this.bytes;
        System.arraycopy(bArr2, 0, bArr, i, bArr2.length);
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public int codePointAt(long j) throws IndexOutOfBoundsException {
        int requireInt = StringTool.requireInt(j);
        if (requireInt < 0 || requireInt >= length32()) {
            throw new IndexOutOfBoundsException();
        }
        int i = requireInt * 3;
        byte[] bArr = this.bytes;
        return ((bArr[i + 2] & 255) | (bArr[i] << 16) | ((bArr[i + 1] & 255) << 8)) & 16777215;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public IntIterator codePoints() {
        return new C18516a();
    }

    public String details() {
        return "Twine24 bytes.length = " + this.bytes.length;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public boolean equals(Object obj) {
        if (!(obj instanceof Twine24)) {
            return super.equals(obj);
        }
        if (hashCode() != obj.hashCode()) {
            return false;
        }
        return Arrays.equals(this.bytes, ((Twine24) obj).bytes);
    }

    public byte[] getByteArray() {
        return this.bytes;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public int getWidth() {
        return 24;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public int hashCode() {
        int i;
        int i2 = this.cachedHash;
        if (i2 != 0) {
            return i2;
        }
        int length = this.bytes.length;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4 += 3) {
            byte[] bArr = this.bytes;
            int i5 = ((bArr[i4 + 2] & 255) | (bArr[i4] << 16) | ((bArr[i4 + 1] & 255) << 8)) & 16777215;
            if ((16711680 & i5) != 0) {
                i = ((i3 * 31) + UTF16CharacterSet.highSurrogate(i5)) * 31;
                i5 = UTF16CharacterSet.lowSurrogate(i5);
            } else {
                i = i3 * 31;
            }
            i3 = i + i5;
        }
        this.cachedHash = i3;
        return i3;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public long indexOf(int i, long j) {
        int max = Math.max(UnicodeString.requireInt(j), 0);
        if (max >= length32()) {
            return -1L;
        }
        int length = this.bytes.length;
        if (i >= 0 && i <= 16777215) {
            byte b = (byte) ((i >> 16) & 255);
            byte b2 = (byte) ((i >> 8) & 255);
            byte b3 = (byte) (i & 255);
            for (int i2 = max * 3; i2 < length; i2 += 3) {
                byte[] bArr = this.bytes;
                if (bArr[i2 + 2] == b3 && bArr[i2 + 1] == b2 && bArr[i2] == b) {
                    return i2 / 3;
                }
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
            int i = requireInt * 3;
            byte[] bArr = this.bytes;
            if (intPredicate.test(((bArr[i + 2] & 255) | (bArr[i] << 16) | ((bArr[i + 1] & 255) << 8)) & 16777215)) {
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
        return this.bytes.length / 3;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public int length32() {
        return this.bytes.length / 3;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public UnicodeString substring(long j, long j2) {
        int requireInt = StringTool.requireInt(j);
        int requireInt2 = StringTool.requireInt(j2);
        int length32 = length32();
        checkSubstringBounds(j, j2);
        return j2 == j ? EmptyUnicodeString.getInstance() : (j == 0 && j2 == ((long) length32)) ? this : new Slice24(this.bytes, requireInt, requireInt2);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(length32());
        IntIterator codePoints = codePoints();
        while (codePoints.hasNext()) {
            sb.appendCodePoint(codePoints.next());
        }
        return sb.toString();
    }

    @Override // net.p110sf.saxon.str.UnicodeString, java.lang.Comparable
    public int compareTo(UnicodeString unicodeString) {
        if (unicodeString instanceof Twine24) {
            byte[] bArr = this.bytes;
            byte[] bArr2 = ((Twine24) unicodeString).bytes;
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

    public Twine24(int[] iArr, int i) {
        int i2 = 0;
        this.cachedHash = 0;
        this.bytes = new byte[i * 3];
        int i3 = 0;
        while (i2 < i) {
            int i4 = iArr[i2];
            byte[] bArr = this.bytes;
            bArr[i3] = (byte) ((i4 >> 16) & 255);
            bArr[i3 + 1] = (byte) ((i4 >> 8) & 255);
            bArr[i3 + 2] = (byte) (i4 & 255);
            i2++;
            i3 += 3;
        }
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public long indexOf(UnicodeString unicodeString, long j) {
        int requireInt = StringTool.requireInt(j);
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

    public Twine24(int[] iArr) {
        this(iArr, iArr.length);
    }
}
