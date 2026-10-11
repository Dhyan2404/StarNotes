package net.p110sf.saxon.str;

import java.io.IOException;
import java.io.Writer;
import java.nio.charset.StandardCharsets;
import java.util.function.IntPredicate;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.serialize.UTF8Writer;

/* loaded from: classes11.dex */
public class Slice8 extends UnicodeString {

    /* renamed from: e */
    public final byte[] f101692e;

    /* renamed from: f */
    public final int f101693f;

    /* renamed from: g */
    public final int f101694g;

    /* renamed from: h */
    public int f101695h;

    /* renamed from: net.sf.saxon.str.Slice8$a */
    /* loaded from: classes11.dex */
    public class C18513a implements IntIterator {

        /* renamed from: a */
        public int f101696a;

        public C18513a() {
            this.f101696a = Slice8.this.f101693f;
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public boolean hasNext() {
            return this.f101696a < Slice8.this.f101694g;
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public int next() {
            byte[] bArr = Slice8.this.f101692e;
            int i = this.f101696a;
            this.f101696a = i + 1;
            return bArr[i] & 255;
        }
    }

    public Slice8(byte[] bArr, int i, int i2) {
        this.f101692e = bArr;
        this.f101693f = i;
        this.f101694g = i2;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    /* renamed from: a */
    public void mo63878a(char[] cArr, int i) {
        for (int i2 = this.f101693f; i2 < this.f101694g; i2++) {
            cArr[i] = (char) (this.f101692e[i2] & 255);
            i++;
        }
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    /* renamed from: b */
    public void mo63879b(byte[] bArr, int i) {
        for (int i2 = this.f101693f; i2 < this.f101694g; i2++) {
            int i3 = i + 1;
            bArr[i] = 0;
            int i4 = i3 + 1;
            bArr[i3] = 0;
            bArr[i4] = this.f101692e[i2];
            i = i4 + 1;
        }
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    /* renamed from: c */
    public void mo63880c(byte[] bArr, int i) {
        byte[] bArr2 = this.f101692e;
        int i2 = this.f101693f;
        System.arraycopy(bArr2, i2, bArr, i, this.f101694g - i2);
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public int codePointAt(long j) {
        return this.f101692e[this.f101693f + UnicodeString.requireInt(j)] & 255;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public IntIterator codePoints() {
        return new C18513a();
    }

    public byte[] getByteArray() {
        return this.f101692e;
    }

    public int getEnd() {
        return this.f101694g;
    }

    public int getStart() {
        return this.f101693f;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public int getWidth() {
        return 8;
    }

    /* renamed from: h */
    public final void m63900h(Writer writer, long j, long j2) throws IOException {
        if (writer instanceof UTF8Writer) {
            ((UTF8Writer) writer).writeLatin1(this.f101692e, this.f101693f + UnicodeString.requireInt(j), UnicodeString.requireInt(j2));
        } else {
            writer.write(substring(UnicodeString.requireInt(j), UnicodeString.requireInt(j + j2)).toString());
        }
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public int hashCode() {
        int i = this.f101695h;
        if (i != 0) {
            return i;
        }
        int i2 = 0;
        for (int i3 = this.f101693f; i3 < this.f101694g; i3++) {
            i2 = (i2 * 31) + (this.f101692e[i3] & 255);
        }
        this.f101695h = i2;
        return i2;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public long indexOf(int i, long j) {
        if (i > 255) {
            return -1L;
        }
        byte b = (byte) (i & 255);
        for (int requireInt = this.f101693f + UnicodeString.requireInt(j); requireInt < this.f101694g; requireInt++) {
            if (this.f101692e[requireInt] == b) {
                return requireInt - this.f101693f;
            }
        }
        return -1L;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public long indexWhere(IntPredicate intPredicate, long j) {
        for (int requireInt = UnicodeString.requireInt(j) + this.f101693f; requireInt < this.f101694g; requireInt++) {
            if (intPredicate.test(this.f101692e[requireInt] & 255)) {
                return requireInt - this.f101693f;
            }
        }
        return -1L;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public long length() {
        return this.f101694g - this.f101693f;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public UnicodeString substring(long j, long j2) {
        checkSubstringBounds(j, j2);
        return j2 == j ? EmptyUnicodeString.getInstance() : new Slice8(this.f101692e, UnicodeString.requireInt(j) + this.f101693f, UnicodeString.requireInt(j2) + this.f101693f);
    }

    public String toString() {
        byte[] bArr = this.f101692e;
        int i = this.f101693f;
        return new String(bArr, i, this.f101694g - i, StandardCharsets.ISO_8859_1);
    }
}
