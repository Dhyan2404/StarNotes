package net.p110sf.saxon.str;

import java.util.Arrays;
import java.util.function.IntPredicate;
import net.p110sf.saxon.p111z.IntIterator;

/* loaded from: classes11.dex */
public class Twine16 extends UnicodeString {
    protected int cachedHash = 0;
    protected char[] chars;

    /* renamed from: net.sf.saxon.str.Twine16$a */
    /* loaded from: classes11.dex */
    public class C18515a implements IntIterator {

        /* renamed from: a */
        public int f101709a = 0;

        public C18515a() {
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public boolean hasNext() {
            return this.f101709a < Twine16.this.chars.length;
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public int next() {
            char[] cArr = Twine16.this.chars;
            int i = this.f101709a;
            this.f101709a = i + 1;
            return cArr[i];
        }
    }

    public Twine16(char[] cArr) {
        this.chars = cArr;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    /* renamed from: a */
    public void mo63878a(char[] cArr, int i) {
        char[] cArr2 = this.chars;
        System.arraycopy(cArr2, 0, cArr, i, cArr2.length);
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    /* renamed from: b */
    public void mo63879b(byte[] bArr, int i) {
        int i2 = 0;
        while (true) {
            char[] cArr = this.chars;
            if (i2 >= cArr.length) {
                return;
            }
            int i3 = i2 + 1;
            char c = cArr[i2];
            int i4 = i + 1;
            bArr[i] = 0;
            int i5 = i4 + 1;
            bArr[i4] = (byte) (c >> '\b');
            bArr[i5] = (byte) (c & 255);
            i = i5 + 1;
            i2 = i3;
        }
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public int codePointAt(long j) throws IndexOutOfBoundsException {
        int requireInt = StringTool.requireInt(j);
        if (requireInt < 0 || requireInt >= length32()) {
            throw new IndexOutOfBoundsException();
        }
        return this.chars[requireInt];
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public IntIterator codePoints() {
        return new C18515a();
    }

    public String details() {
        return "Twine16 length = " + this.chars.length;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public boolean equals(Object obj) {
        return obj instanceof Twine16 ? Arrays.equals(this.chars, ((Twine16) obj).chars) : super.equals(obj);
    }

    public char[] getCharArray() {
        return this.chars;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public int getWidth() {
        return 16;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public int hashCode() {
        int i = this.cachedHash;
        if (i != 0) {
            return i;
        }
        int i2 = 0;
        for (char c : this.chars) {
            i2 = (i2 * 31) + c;
        }
        this.cachedHash = i2;
        return i2;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public long indexOf(int i, long j) {
        if (i >= 0 && i <= 65535) {
            int length = this.chars.length;
            for (int max = Math.max(UnicodeString.requireInt(j), 0); max < length; max++) {
                if (this.chars[max] == i) {
                    return max;
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
            if (intPredicate.test(this.chars[requireInt])) {
                return j2;
            }
            requireInt++;
        }
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public boolean isEmpty() {
        return this.chars.length == 0;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public long length() {
        return this.chars.length;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public int length32() {
        return this.chars.length;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public UnicodeString substring(long j, long j2) {
        int requireInt = StringTool.requireInt(j);
        int requireInt2 = StringTool.requireInt(j2);
        int length32 = length32();
        checkSubstringBounds(j, j2);
        return j2 == j ? EmptyUnicodeString.getInstance() : (j == 0 && j2 == ((long) length32)) ? this : new Slice16(this.chars, requireInt, requireInt2);
    }

    public String toString() {
        return new String(this.chars);
    }

    @Override // net.p110sf.saxon.str.UnicodeString, java.lang.Comparable
    public int compareTo(UnicodeString unicodeString) {
        if (unicodeString instanceof Twine16) {
            Twine16 twine16 = (Twine16) unicodeString;
            char[] cArr = this.chars;
            char[] cArr2 = twine16.chars;
            int min = Math.min(cArr.length, cArr2.length);
            for (int i = 0; i < min; i++) {
                int i2 = cArr[i] - cArr2[i];
                if (i2 != 0) {
                    return i2;
                }
            }
            return Long.compare(length(), twine16.length());
        }
        return super.compareTo(unicodeString);
    }

    public Twine16(char[] cArr, int i, int i2) {
        if (i == 0) {
            this.chars = Arrays.copyOf(cArr, i2);
            return;
        }
        char[] cArr2 = new char[i2];
        this.chars = cArr2;
        System.arraycopy(cArr, i, cArr2, 0, i2);
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
}
