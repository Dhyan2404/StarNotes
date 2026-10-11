package net.p110sf.saxon.str;

import java.util.function.IntPredicate;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.serialize.charcode.UTF16CharacterSet;

/* loaded from: classes11.dex */
public class Slice24 extends UnicodeString {

    /* renamed from: e */
    public final byte[] f101685e;

    /* renamed from: f */
    public final int f101686f;

    /* renamed from: g */
    public final int f101687g;

    /* renamed from: h */
    public int f101688h;

    /* renamed from: net.sf.saxon.str.Slice24$a */
    /* loaded from: classes11.dex */
    public class C18512a implements IntIterator {

        /* renamed from: a */
        public int f101689a;

        /* renamed from: b */
        public int f101690b;

        public C18512a() {
            this.f101689a = Slice24.this.f101686f * 3;
            this.f101690b = Slice24.this.f101687g * 3;
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public boolean hasNext() {
            return this.f101689a < this.f101690b;
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public int next() {
            int i = ((Slice24.this.f101685e[this.f101689a] & 255) << 16) | ((Slice24.this.f101685e[this.f101689a + 1] & 255) << 8);
            byte[] bArr = Slice24.this.f101685e;
            int i2 = this.f101689a;
            int i3 = i | (bArr[i2 + 2] & 255);
            this.f101689a = i2 + 3;
            return i3;
        }
    }

    public Slice24(byte[] bArr, int i, int i2) {
        this.f101685e = bArr;
        this.f101686f = i;
        this.f101687g = i2;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    /* renamed from: b */
    public void mo63879b(byte[] bArr, int i) {
        byte[] bArr2 = this.f101685e;
        int i2 = this.f101686f;
        System.arraycopy(bArr2, i2 * 3, bArr, i, (this.f101687g - i2) * 3);
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public int codePointAt(long j) {
        int requireInt = UnicodeString.requireInt(j);
        if (requireInt < 0 || requireInt >= length32()) {
            throw new IndexOutOfBoundsException();
        }
        int i = (this.f101686f + requireInt) * 3;
        byte[] bArr = this.f101685e;
        return ((bArr[i + 2] & 255) | (bArr[i] << 16) | ((bArr[i + 1] & 255) << 8)) & 16777215;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public IntIterator codePoints() {
        return new C18512a();
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public int getWidth() {
        return 24;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public int hashCode() {
        int i;
        int i2 = this.f101688h;
        if (i2 != 0) {
            return i2;
        }
        int i3 = 0;
        for (int i4 = this.f101686f * 3; i4 < this.f101687g * 3; i4 += 3) {
            byte[] bArr = this.f101685e;
            int i5 = ((bArr[i4 + 2] & 255) | (bArr[i4] << 16) | ((bArr[i4 + 1] & 255) << 8)) & 16777215;
            if ((16711680 & i5) != 0) {
                i = ((i3 * 31) + UTF16CharacterSet.highSurrogate(i5)) * 31;
                i5 = UTF16CharacterSet.lowSurrogate(i5);
            } else {
                i = i3 * 31;
            }
            i3 = i + i5;
        }
        this.f101688h = i3;
        return i3;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public long indexOf(int i, long j) {
        byte b = (byte) ((i >> 16) & 255);
        byte b2 = (byte) ((i >> 8) & 255);
        byte b3 = (byte) (i & 255);
        for (int max = (this.f101686f + Math.max(UnicodeString.requireInt(j), 0)) * 3; max < this.f101687g * 3; max += 3) {
            byte[] bArr = this.f101685e;
            if (bArr[max + 2] == b3 && bArr[max + 1] == b2 && bArr[max] == b) {
                return (max / 3) - this.f101686f;
            }
        }
        return -1L;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public long indexWhere(IntPredicate intPredicate, long j) {
        for (int requireInt = (this.f101686f + UnicodeString.requireInt(j)) * 3; requireInt < this.f101687g * 3; requireInt += 3) {
            byte[] bArr = this.f101685e;
            if (intPredicate.test(((bArr[requireInt + 2] & 255) | (bArr[requireInt] << 16) | ((bArr[requireInt + 1] & 255) << 8)) & 16777215)) {
                return (requireInt / 3) - this.f101686f;
            }
        }
        return -1L;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public long length() {
        return this.f101687g - this.f101686f;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public UnicodeString substring(long j, long j2) {
        checkSubstringBounds(j, j2);
        return j2 == j ? EmptyUnicodeString.getInstance() : new Slice24(this.f101685e, UnicodeString.requireInt(j) + this.f101686f, UnicodeString.requireInt(j2) + this.f101686f);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(length32());
        IntIterator codePoints = codePoints();
        while (codePoints.hasNext()) {
            sb.appendCodePoint(codePoints.next());
        }
        return sb.toString();
    }
}
