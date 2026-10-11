package net.p110sf.saxon.str;

import java.util.function.IntPredicate;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.p111z.IntSingletonIterator;
import net.p110sf.saxon.serialize.charcode.UTF16CharacterSet;

/* loaded from: classes11.dex */
public class UnicodeChar extends UnicodeString {

    /* renamed from: e */
    public final int f101719e;

    public UnicodeChar(int i) {
        this.f101719e = i;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    /* renamed from: a */
    public void mo63878a(char[] cArr, int i) {
        cArr[i] = (char) this.f101719e;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    /* renamed from: b */
    public void mo63879b(byte[] bArr, int i) {
        int i2 = this.f101719e;
        bArr[i] = (byte) (i2 >> 16);
        bArr[i + 1] = (byte) (i2 >> 8);
        bArr[i + 2] = (byte) (i2 & 255);
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    /* renamed from: c */
    public void mo63880c(byte[] bArr, int i) {
        bArr[i] = (byte) (this.f101719e & 255);
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public int codePointAt(long j) {
        if (j == 0) {
            return this.f101719e;
        }
        throw new IndexOutOfBoundsException("Only valid index for a single-character string is zero");
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public IntIterator codePoints() {
        return new IntSingletonIterator(this.f101719e);
    }

    public int getCodepoint() {
        return this.f101719e;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public int getWidth() {
        int i = this.f101719e;
        if (i < 128) {
            return 7;
        }
        if (i < 256) {
            return 8;
        }
        return i < 65536 ? 16 : 24;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public long indexOf(int i, long j) {
        return (this.f101719e != i || j > 0) ? -1L : 0L;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public long indexWhere(IntPredicate intPredicate, long j) {
        return (j == 0 && intPredicate.test(this.f101719e)) ? 0L : -1L;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public long length() {
        return 1L;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public UnicodeString substring(long j, long j2) {
        checkSubstringBounds(j, j2);
        return (j == 0 && j2 == 1) ? this : EmptyUnicodeString.getInstance();
    }

    public String toString() {
        if (this.f101719e < 65536) {
            return "" + ((char) this.f101719e);
        }
        return "" + UTF16CharacterSet.highSurrogate(this.f101719e) + UTF16CharacterSet.lowSurrogate(this.f101719e);
    }
}
