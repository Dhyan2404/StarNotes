package com.google.android.exoplayer2.source;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.decoder.CryptoInfo;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.source.SampleQueue;
import com.google.android.exoplayer2.upstream.Allocation;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.DataReader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* renamed from: com.google.android.exoplayer2.source.c */
/* loaded from: classes5.dex */
public class C4859c {

    /* renamed from: h */
    public static final int f25568h = 32;

    /* renamed from: a */
    public final Allocator f25569a;

    /* renamed from: b */
    public final int f25570b;

    /* renamed from: c */
    public final ParsableByteArray f25571c;

    /* renamed from: d */
    public a f25572d;

    /* renamed from: e */
    public a f25573e;

    /* renamed from: f */
    public a f25574f;

    /* renamed from: g */
    public long f25575g;

    /* renamed from: com.google.android.exoplayer2.source.c$a */
    /* loaded from: classes5.dex */
    public static final class a implements Allocator.AllocationNode {

        /* renamed from: a */
        public long f25576a;

        /* renamed from: b */
        public long f25577b;

        /* renamed from: c */
        @Nullable
        public Allocation f25578c;

        /* renamed from: d */
        @Nullable
        public a f25579d;

        public a(long j, int i) {
            m19880c(j, i);
        }

        /* renamed from: a */
        public a m19878a() {
            this.f25578c = null;
            a aVar = this.f25579d;
            this.f25579d = null;
            return aVar;
        }

        /* renamed from: b */
        public void m19879b(Allocation allocation, a aVar) {
            this.f25578c = allocation;
            this.f25579d = aVar;
        }

        /* renamed from: c */
        public void m19880c(long j, int i) {
            Assertions.checkState(this.f25578c == null);
            this.f25576a = j;
            this.f25577b = j + i;
        }

        /* renamed from: d */
        public int m19881d(long j) {
            return ((int) (j - this.f25576a)) + this.f25578c.offset;
        }

        @Override // com.google.android.exoplayer2.upstream.Allocator.AllocationNode
        public Allocation getAllocation() {
            return (Allocation) Assertions.checkNotNull(this.f25578c);
        }

        @Override // com.google.android.exoplayer2.upstream.Allocator.AllocationNode
        @Nullable
        public Allocator.AllocationNode next() {
            a aVar = this.f25579d;
            if (aVar == null || aVar.f25578c == null) {
                return null;
            }
            return aVar;
        }
    }

    public C4859c(Allocator allocator) {
        this.f25569a = allocator;
        int individualAllocationLength = allocator.getIndividualAllocationLength();
        this.f25570b = individualAllocationLength;
        this.f25571c = new ParsableByteArray(32);
        a aVar = new a(0L, individualAllocationLength);
        this.f25572d = aVar;
        this.f25573e = aVar;
        this.f25574f = aVar;
    }

    /* renamed from: d */
    public static a m19861d(a aVar, long j) {
        while (j >= aVar.f25577b) {
            aVar = aVar.f25579d;
        }
        return aVar;
    }

    /* renamed from: i */
    public static a m19862i(a aVar, long j, ByteBuffer byteBuffer, int i) {
        a m19861d = m19861d(aVar, j);
        while (i > 0) {
            int min = Math.min(i, (int) (m19861d.f25577b - j));
            byteBuffer.put(m19861d.f25578c.data, m19861d.m19881d(j), min);
            i -= min;
            j += min;
            if (j == m19861d.f25577b) {
                m19861d = m19861d.f25579d;
            }
        }
        return m19861d;
    }

    /* renamed from: j */
    public static a m19863j(a aVar, long j, byte[] bArr, int i) {
        a m19861d = m19861d(aVar, j);
        int i2 = i;
        while (i2 > 0) {
            int min = Math.min(i2, (int) (m19861d.f25577b - j));
            System.arraycopy(m19861d.f25578c.data, m19861d.m19881d(j), bArr, i - i2, min);
            i2 -= min;
            j += min;
            if (j == m19861d.f25577b) {
                m19861d = m19861d.f25579d;
            }
        }
        return m19861d;
    }

    /* renamed from: k */
    public static a m19864k(a aVar, DecoderInputBuffer decoderInputBuffer, SampleQueue.C4844b c4844b, ParsableByteArray parsableByteArray) {
        long j = c4844b.f25357b;
        int i = 1;
        parsableByteArray.reset(1);
        a m19863j = m19863j(aVar, j, parsableByteArray.getData(), 1);
        long j2 = j + 1;
        byte b = parsableByteArray.getData()[0];
        boolean z = (b & 128) != 0;
        int i2 = b & Byte.MAX_VALUE;
        CryptoInfo cryptoInfo = decoderInputBuffer.cryptoInfo;
        byte[] bArr = cryptoInfo.f23330iv;
        if (bArr == null) {
            cryptoInfo.f23330iv = new byte[16];
        } else {
            Arrays.fill(bArr, (byte) 0);
        }
        a m19863j2 = m19863j(m19863j, j2, cryptoInfo.f23330iv, i2);
        long j3 = j2 + i2;
        if (z) {
            parsableByteArray.reset(2);
            m19863j2 = m19863j(m19863j2, j3, parsableByteArray.getData(), 2);
            j3 += 2;
            i = parsableByteArray.readUnsignedShort();
        }
        int i3 = i;
        int[] iArr = cryptoInfo.numBytesOfClearData;
        if (iArr == null || iArr.length < i3) {
            iArr = new int[i3];
        }
        int[] iArr2 = iArr;
        int[] iArr3 = cryptoInfo.numBytesOfEncryptedData;
        if (iArr3 == null || iArr3.length < i3) {
            iArr3 = new int[i3];
        }
        int[] iArr4 = iArr3;
        if (z) {
            int i4 = i3 * 6;
            parsableByteArray.reset(i4);
            m19863j2 = m19863j(m19863j2, j3, parsableByteArray.getData(), i4);
            j3 += i4;
            parsableByteArray.setPosition(0);
            for (int i5 = 0; i5 < i3; i5++) {
                iArr2[i5] = parsableByteArray.readUnsignedShort();
                iArr4[i5] = parsableByteArray.readUnsignedIntToInt();
            }
        } else {
            iArr2[0] = 0;
            iArr4[0] = c4844b.f25356a - ((int) (j3 - c4844b.f25357b));
        }
        TrackOutput.CryptoData cryptoData = (TrackOutput.CryptoData) Util.castNonNull(c4844b.f25358c);
        cryptoInfo.set(i3, iArr2, iArr4, cryptoData.encryptionKey, cryptoInfo.f23330iv, cryptoData.cryptoMode, cryptoData.encryptedBlocks, cryptoData.clearBlocks);
        long j4 = c4844b.f25357b;
        int i6 = (int) (j3 - j4);
        c4844b.f25357b = j4 + i6;
        c4844b.f25356a -= i6;
        return m19863j2;
    }

    /* renamed from: l */
    public static a m19865l(a aVar, DecoderInputBuffer decoderInputBuffer, SampleQueue.C4844b c4844b, ParsableByteArray parsableByteArray) {
        if (decoderInputBuffer.isEncrypted()) {
            aVar = m19864k(aVar, decoderInputBuffer, c4844b, parsableByteArray);
        }
        if (!decoderInputBuffer.hasSupplementalData()) {
            decoderInputBuffer.ensureSpaceForWrite(c4844b.f25356a);
            return m19862i(aVar, c4844b.f25357b, decoderInputBuffer.data, c4844b.f25356a);
        }
        parsableByteArray.reset(4);
        a m19863j = m19863j(aVar, c4844b.f25357b, parsableByteArray.getData(), 4);
        int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        c4844b.f25357b += 4;
        c4844b.f25356a -= 4;
        decoderInputBuffer.ensureSpaceForWrite(readUnsignedIntToInt);
        a m19862i = m19862i(m19863j, c4844b.f25357b, decoderInputBuffer.data, readUnsignedIntToInt);
        c4844b.f25357b += readUnsignedIntToInt;
        int i = c4844b.f25356a - readUnsignedIntToInt;
        c4844b.f25356a = i;
        decoderInputBuffer.resetSupplementalData(i);
        return m19862i(m19862i, c4844b.f25357b, decoderInputBuffer.supplementalData, c4844b.f25356a);
    }

    /* renamed from: a */
    public final void m19866a(a aVar) {
        if (aVar.f25578c == null) {
            return;
        }
        this.f25569a.release(aVar);
        aVar.m19878a();
    }

    /* renamed from: b */
    public void m19867b(long j) {
        a aVar;
        if (j == -1) {
            return;
        }
        while (true) {
            aVar = this.f25572d;
            if (j < aVar.f25577b) {
                break;
            }
            this.f25569a.release(aVar.f25578c);
            this.f25572d = this.f25572d.m19878a();
        }
        if (this.f25573e.f25576a < aVar.f25576a) {
            this.f25573e = aVar;
        }
    }

    /* renamed from: c */
    public void m19868c(long j) {
        Assertions.checkArgument(j <= this.f25575g);
        this.f25575g = j;
        if (j != 0) {
            a aVar = this.f25572d;
            if (j != aVar.f25576a) {
                while (this.f25575g > aVar.f25577b) {
                    aVar = aVar.f25579d;
                }
                a aVar2 = (a) Assertions.checkNotNull(aVar.f25579d);
                m19866a(aVar2);
                a aVar3 = new a(aVar.f25577b, this.f25570b);
                aVar.f25579d = aVar3;
                if (this.f25575g == aVar.f25577b) {
                    aVar = aVar3;
                }
                this.f25574f = aVar;
                if (this.f25573e == aVar2) {
                    this.f25573e = aVar3;
                    return;
                }
                return;
            }
        }
        m19866a(this.f25572d);
        a aVar4 = new a(this.f25575g, this.f25570b);
        this.f25572d = aVar4;
        this.f25573e = aVar4;
        this.f25574f = aVar4;
    }

    /* renamed from: e */
    public long m19869e() {
        return this.f25575g;
    }

    /* renamed from: f */
    public void m19870f(DecoderInputBuffer decoderInputBuffer, SampleQueue.C4844b c4844b) {
        m19865l(this.f25573e, decoderInputBuffer, c4844b, this.f25571c);
    }

    /* renamed from: g */
    public final void m19871g(int i) {
        long j = this.f25575g + i;
        this.f25575g = j;
        a aVar = this.f25574f;
        if (j == aVar.f25577b) {
            this.f25574f = aVar.f25579d;
        }
    }

    /* renamed from: h */
    public final int m19872h(int i) {
        a aVar = this.f25574f;
        if (aVar.f25578c == null) {
            aVar.m19879b(this.f25569a.allocate(), new a(this.f25574f.f25577b, this.f25570b));
        }
        return Math.min(i, (int) (this.f25574f.f25577b - this.f25575g));
    }

    /* renamed from: m */
    public void m19873m(DecoderInputBuffer decoderInputBuffer, SampleQueue.C4844b c4844b) {
        this.f25573e = m19865l(this.f25573e, decoderInputBuffer, c4844b, this.f25571c);
    }

    /* renamed from: n */
    public void m19874n() {
        m19866a(this.f25572d);
        this.f25572d.m19880c(0L, this.f25570b);
        a aVar = this.f25572d;
        this.f25573e = aVar;
        this.f25574f = aVar;
        this.f25575g = 0L;
        this.f25569a.trim();
    }

    /* renamed from: o */
    public void m19875o() {
        this.f25573e = this.f25572d;
    }

    /* renamed from: p */
    public int m19876p(DataReader dataReader, int i, boolean z) throws IOException {
        int m19872h = m19872h(i);
        a aVar = this.f25574f;
        int read = dataReader.read(aVar.f25578c.data, aVar.m19881d(this.f25575g), m19872h);
        if (read != -1) {
            m19871g(read);
            return read;
        }
        if (z) {
            return -1;
        }
        throw new EOFException();
    }

    /* renamed from: q */
    public void m19877q(ParsableByteArray parsableByteArray, int i) {
        while (i > 0) {
            int m19872h = m19872h(i);
            a aVar = this.f25574f;
            parsableByteArray.readBytes(aVar.f25578c.data, aVar.m19881d(this.f25575g), m19872h);
            i -= m19872h;
            m19871g(m19872h);
        }
    }
}
