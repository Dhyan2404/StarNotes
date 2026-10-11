package net.p110sf.saxon.str;

import java.io.IOException;
import java.io.Writer;
import java.util.function.IntPredicate;
import net.p110sf.saxon.p111z.IntIterator;

/* loaded from: classes11.dex */
public class Slice16 extends UnicodeString {

    /* renamed from: e */
    public char[] f101679e;

    /* renamed from: f */
    public int f101680f;

    /* renamed from: g */
    public int f101681g;

    /* renamed from: h */
    public int f101682h;

    /* renamed from: net.sf.saxon.str.Slice16$a */
    /* loaded from: classes11.dex */
    public class C18511a implements IntIterator {

        /* renamed from: a */
        public int f101683a;

        public C18511a() {
            this.f101683a = Slice16.this.f101680f;
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public boolean hasNext() {
            return this.f101683a < Slice16.this.f101681g;
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public int next() {
            char[] cArr = Slice16.this.f101679e;
            int i = this.f101683a;
            this.f101683a = i + 1;
            return cArr[i];
        }
    }

    public Slice16(char[] cArr, int i, int i2) {
        this.f101679e = cArr;
        this.f101680f = i;
        this.f101681g = i2;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    /* renamed from: a */
    public void mo63878a(char[] cArr, int i) {
        char[] cArr2 = this.f101679e;
        int i2 = this.f101680f;
        System.arraycopy(cArr2, i2, cArr, i, this.f101681g - i2);
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    /* renamed from: b */
    public void mo63879b(byte[] bArr, int i) {
        int i2 = this.f101680f;
        while (i2 < this.f101681g) {
            int i3 = i2 + 1;
            char c = this.f101679e[i2];
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
    public int codePointAt(long j) {
        return this.f101679e[this.f101680f + UnicodeString.requireInt(j)];
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public IntIterator codePoints() {
        return new C18511a();
    }

    public char[] getCharArray() {
        return this.f101679e;
    }

    public int getEnd() {
        return this.f101681g;
    }

    public int getStart() {
        return this.f101680f;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public int getWidth() {
        return 16;
    }

    /* renamed from: h */
    public final void m63893h(Writer writer, long j, long j2) throws IOException {
        writer.write(this.f101679e, this.f101680f + UnicodeString.requireInt(j), UnicodeString.requireInt(j2));
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public int hashCode() {
        int i = this.f101682h;
        if (i != 0) {
            return i;
        }
        int i2 = 0;
        for (int i3 = this.f101680f; i3 < this.f101681g; i3++) {
            i2 = (i2 * 31) + this.f101679e[i3];
        }
        this.f101682h = i2;
        return i2;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public long indexOf(int i, long j) {
        if (i > 65535) {
            return -1L;
        }
        char c = (char) (i & 65535);
        int i2 = this.f101681g;
        for (int max = this.f101680f + Math.max(UnicodeString.requireInt(j), 0); max < i2; max++) {
            if (this.f101679e[max] == c) {
                return max - this.f101680f;
            }
        }
        return -1L;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public long indexWhere(IntPredicate intPredicate, long j) {
        for (int requireInt = UnicodeString.requireInt(j) + this.f101680f; requireInt < this.f101681g; requireInt++) {
            if (intPredicate.test(this.f101679e[requireInt])) {
                return requireInt - this.f101680f;
            }
        }
        return -1L;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public long length() {
        return this.f101681g - this.f101680f;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public UnicodeString substring(long j, long j2) {
        checkSubstringBounds(j, j2);
        return j2 == j ? EmptyUnicodeString.getInstance() : new Slice16(this.f101679e, UnicodeString.requireInt(j) + this.f101680f, UnicodeString.requireInt(j2) + this.f101680f);
    }

    public String toString() {
        char[] cArr = this.f101679e;
        int i = this.f101680f;
        return new String(cArr, i, this.f101681g - i);
    }
}
