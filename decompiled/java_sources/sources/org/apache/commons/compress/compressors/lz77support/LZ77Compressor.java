package org.apache.commons.compress.compressors.lz77support;

import java.io.IOException;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes12.dex */
public class LZ77Compressor {

    /* renamed from: n */
    public static final Block f106256n = new EOD();

    /* renamed from: o */
    public static final int f106257o = 3;

    /* renamed from: p */
    public static final int f106258p = -1;

    /* renamed from: q */
    public static final int f106259q = 32768;

    /* renamed from: r */
    public static final int f106260r = 32767;

    /* renamed from: s */
    public static final int f106261s = 5;

    /* renamed from: a */
    public final Parameters f106262a;

    /* renamed from: b */
    public final Callback f106263b;

    /* renamed from: c */
    public final byte[] f106264c;

    /* renamed from: d */
    public final int[] f106265d;

    /* renamed from: e */
    public final int[] f106266e;

    /* renamed from: f */
    public final int f106267f;

    /* renamed from: g */
    public boolean f106268g;

    /* renamed from: h */
    public int f106269h;

    /* renamed from: i */
    public int f106270i;

    /* renamed from: j */
    public int f106271j;

    /* renamed from: k */
    public int f106272k;

    /* renamed from: l */
    public int f106273l = -1;

    /* renamed from: m */
    public int f106274m;

    /* loaded from: classes12.dex */
    public static final class BackReference extends Block {

        /* renamed from: a */
        public final int f106275a;

        /* renamed from: b */
        public final int f106276b;

        public BackReference(int i, int i2) {
            this.f106275a = i;
            this.f106276b = i2;
        }

        public int getLength() {
            return this.f106276b;
        }

        public int getOffset() {
            return this.f106275a;
        }

        @Override // org.apache.commons.compress.compressors.lz77support.LZ77Compressor.Block
        public Block.BlockType getType() {
            return Block.BlockType.BACK_REFERENCE;
        }

        public String toString() {
            return "BackReference with offset " + this.f106275a + " and length " + this.f106276b;
        }
    }

    /* loaded from: classes12.dex */
    public static abstract class Block {

        /* loaded from: classes12.dex */
        public enum BlockType {
            LITERAL,
            BACK_REFERENCE,
            EOD
        }

        public abstract BlockType getType();
    }

    /* loaded from: classes12.dex */
    public interface Callback {
        void accept(Block block) throws IOException;
    }

    /* loaded from: classes12.dex */
    public static final class EOD extends Block {
        @Override // org.apache.commons.compress.compressors.lz77support.LZ77Compressor.Block
        public Block.BlockType getType() {
            return Block.BlockType.EOD;
        }
    }

    /* loaded from: classes12.dex */
    public static final class LiteralBlock extends Block {

        /* renamed from: a */
        public final byte[] f106277a;

        /* renamed from: b */
        public final int f106278b;

        /* renamed from: c */
        public final int f106279c;

        public LiteralBlock(byte[] bArr, int i, int i2) {
            this.f106277a = bArr;
            this.f106278b = i;
            this.f106279c = i2;
        }

        public byte[] getData() {
            return this.f106277a;
        }

        public int getLength() {
            return this.f106279c;
        }

        public int getOffset() {
            return this.f106278b;
        }

        @Override // org.apache.commons.compress.compressors.lz77support.LZ77Compressor.Block
        public Block.BlockType getType() {
            return Block.BlockType.LITERAL;
        }

        public String toString() {
            return "LiteralBlock starting at " + this.f106278b + " with length " + this.f106279c;
        }
    }

    public LZ77Compressor(Parameters parameters, Callback callback) {
        Objects.requireNonNull(parameters, "params");
        Objects.requireNonNull(callback, "callback");
        this.f106262a = parameters;
        this.f106263b = callback;
        int windowSize = parameters.getWindowSize();
        this.f106264c = new byte[windowSize * 2];
        this.f106267f = windowSize - 1;
        int[] iArr = new int[32768];
        this.f106265d = iArr;
        Arrays.fill(iArr, -1);
        this.f106266e = new int[windowSize];
    }

    /* renamed from: a */
    public final void m66776a() {
        while (true) {
            int i = this.f106274m;
            if (i <= 0) {
                return;
            }
            int i2 = this.f106269h;
            this.f106274m = i - 1;
            m66782g(i2 - i);
        }
    }

    /* renamed from: b */
    public final void m66777b() throws IOException {
        int i;
        int minBackReferenceLength = this.f106262a.getMinBackReferenceLength();
        boolean lazyMatching = this.f106262a.getLazyMatching();
        int lazyMatchingThreshold = this.f106262a.getLazyMatchingThreshold();
        while (this.f106270i >= minBackReferenceLength) {
            m66776a();
            int m66782g = m66782g(this.f106269h);
            if (m66782g == -1 || m66782g - this.f106269h > this.f106262a.getMaxOffset()) {
                i = 0;
            } else {
                i = m66784i(m66782g);
                if (lazyMatching && i <= lazyMatchingThreshold && this.f106270i > minBackReferenceLength) {
                    i = m66785j(i);
                }
            }
            if (i >= minBackReferenceLength) {
                if (this.f106272k != this.f106269h) {
                    m66780e();
                    this.f106272k = -1;
                }
                m66779d(i);
                m66783h(i);
                this.f106270i -= i;
                int i2 = this.f106269h + i;
                this.f106269h = i2;
                this.f106272k = i2;
            } else {
                this.f106270i--;
                int i3 = this.f106269h + 1;
                this.f106269h = i3;
                if (i3 - this.f106272k >= this.f106262a.getMaxLiteralLength()) {
                    m66780e();
                    this.f106272k = this.f106269h;
                }
            }
        }
    }

    /* renamed from: c */
    public final void m66778c(byte[] bArr, int i, int i2) throws IOException {
        if (i2 > (this.f106264c.length - this.f106269h) - this.f106270i) {
            m66787l();
        }
        System.arraycopy(bArr, i, this.f106264c, this.f106269h + this.f106270i, i2);
        int i3 = this.f106270i + i2;
        this.f106270i = i3;
        if (!this.f106268g && i3 >= this.f106262a.getMinBackReferenceLength()) {
            m66781f();
        }
        if (this.f106268g) {
            m66777b();
        }
    }

    public void compress(byte[] bArr) throws IOException {
        compress(bArr, 0, bArr.length);
    }

    /* renamed from: d */
    public final void m66779d(int i) throws IOException {
        this.f106263b.accept(new BackReference(this.f106269h - this.f106273l, i));
    }

    /* renamed from: e */
    public final void m66780e() throws IOException {
        Callback callback = this.f106263b;
        byte[] bArr = this.f106264c;
        int i = this.f106272k;
        callback.accept(new LiteralBlock(bArr, i, this.f106269h - i));
    }

    /* renamed from: f */
    public final void m66781f() {
        for (int i = 0; i < 2; i++) {
            this.f106271j = m66786k(this.f106271j, this.f106264c[i]);
        }
        this.f106268g = true;
    }

    public void finish() throws IOException {
        int i = this.f106272k;
        int i2 = this.f106269h;
        if (i != i2 || this.f106270i > 0) {
            this.f106269h = i2 + this.f106270i;
            m66780e();
        }
        this.f106263b.accept(f106256n);
    }

    /* renamed from: g */
    public final int m66782g(int i) {
        int m66786k = m66786k(this.f106271j, this.f106264c[(i - 1) + 3]);
        this.f106271j = m66786k;
        int[] iArr = this.f106265d;
        int i2 = iArr[m66786k];
        this.f106266e[this.f106267f & i] = i2;
        iArr[m66786k] = i;
        return i2;
    }

    /* renamed from: h */
    public final void m66783h(int i) {
        int min = Math.min(i - 1, this.f106270i - 3);
        for (int i2 = 1; i2 <= min; i2++) {
            m66782g(this.f106269h + i2);
        }
        this.f106274m = (i - min) - 1;
    }

    /* renamed from: i */
    public final int m66784i(int i) {
        int minBackReferenceLength = this.f106262a.getMinBackReferenceLength() - 1;
        int min = Math.min(this.f106262a.getMaxBackReferenceLength(), this.f106270i);
        int max = Math.max(0, this.f106269h - this.f106262a.getMaxOffset());
        int min2 = Math.min(min, this.f106262a.getNiceBackReferenceLength());
        int maxCandidates = this.f106262a.getMaxCandidates();
        for (int i2 = 0; i2 < maxCandidates && i >= max; i2++) {
            int i3 = 0;
            for (int i4 = 0; i4 < min; i4++) {
                byte[] bArr = this.f106264c;
                if (bArr[i + i4] != bArr[this.f106269h + i4]) {
                    break;
                }
                i3++;
            }
            if (i3 > minBackReferenceLength) {
                this.f106273l = i;
                minBackReferenceLength = i3;
                if (i3 >= min2) {
                    break;
                }
            }
            i = this.f106266e[i & this.f106267f];
        }
        return minBackReferenceLength;
    }

    /* renamed from: j */
    public final int m66785j(int i) {
        int i2 = this.f106273l;
        int i3 = this.f106271j;
        this.f106270i--;
        int i4 = this.f106269h + 1;
        this.f106269h = i4;
        int m66782g = m66782g(i4);
        int i5 = this.f106266e[this.f106269h & this.f106267f];
        int m66784i = m66784i(m66782g);
        if (m66784i > i) {
            return m66784i;
        }
        this.f106273l = i2;
        this.f106265d[this.f106271j] = i5;
        this.f106271j = i3;
        this.f106269h--;
        this.f106270i++;
        return i;
    }

    /* renamed from: k */
    public final int m66786k(int i, byte b) {
        return ((b & 255) ^ (i << 5)) & 32767;
    }

    /* renamed from: l */
    public final void m66787l() throws IOException {
        int windowSize = this.f106262a.getWindowSize();
        int i = this.f106272k;
        if (i != this.f106269h && i < windowSize) {
            m66780e();
            this.f106272k = this.f106269h;
        }
        byte[] bArr = this.f106264c;
        System.arraycopy(bArr, windowSize, bArr, 0, windowSize);
        this.f106269h -= windowSize;
        this.f106273l -= windowSize;
        this.f106272k -= windowSize;
        int i2 = 0;
        while (true) {
            int i3 = -1;
            if (i2 >= 32768) {
                break;
            }
            int[] iArr = this.f106265d;
            int i4 = iArr[i2];
            if (i4 >= windowSize) {
                i3 = i4 - windowSize;
            }
            iArr[i2] = i3;
            i2++;
        }
        for (int i5 = 0; i5 < windowSize; i5++) {
            int[] iArr2 = this.f106266e;
            int i6 = iArr2[i5];
            iArr2[i5] = i6 >= windowSize ? i6 - windowSize : -1;
        }
    }

    public void prefill(byte[] bArr) {
        if (this.f106269h != 0 || this.f106270i != 0) {
            throw new IllegalStateException("The compressor has already started to accept data, can't prefill anymore");
        }
        int min = Math.min(this.f106262a.getWindowSize(), bArr.length);
        System.arraycopy(bArr, bArr.length - min, this.f106264c, 0, min);
        if (min >= 3) {
            m66781f();
            int i = (min - 3) + 1;
            for (int i2 = 0; i2 < i; i2++) {
                m66782g(i2);
            }
            this.f106274m = 2;
        } else {
            this.f106274m = min;
        }
        this.f106269h = min;
        this.f106272k = min;
    }

    public void compress(byte[] bArr, int i, int i2) throws IOException {
        int windowSize = this.f106262a.getWindowSize();
        while (i2 > windowSize) {
            m66778c(bArr, i, windowSize);
            i += windowSize;
            i2 -= windowSize;
        }
        if (i2 > 0) {
            m66778c(bArr, i, i2);
        }
    }
}
