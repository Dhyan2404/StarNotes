package org.apache.commons.compress.compressors.deflate64;

import com.onyx.galaxy.note.DataBinderMapperImpl;
import com.sunia.HTREnginev2.k2e;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;
import java.util.Arrays;
import okhttp3.internal.ws.WebSocketProtocol;
import org.apache.commons.compress.utils.BitInputStream;
import org.apache.commons.compress.utils.ByteUtils;
import org.apache.commons.compress.utils.ExactMath;
import org.apache.poi.hssf.record.ArrayRecord;
import org.apache.poi.hssf.record.DSFRecord;
import org.apache.poi.hssf.record.chart.SeriesIndexRecord;

/* renamed from: org.apache.commons.compress.compressors.deflate64.a */
/* loaded from: classes12.dex */
public class C18881a implements Closeable {

    /* renamed from: j */
    public static final short[] f106112j = {96, 128, 160, 192, 224, 256, k2e.C13968c.f74956f, 320, DSFRecord.sid, 417, 481, ArrayRecord.sid, 610, 738, 866, 994, 1123, 1379, 1635, 1891, 2148, 2660, 3172, 3684, SeriesIndexRecord.sid, 5221, 6245, 7269, 112};

    /* renamed from: k */
    public static final int[] f106113k = {16, 32, 48, 64, 81, 113, 146, 210, DataBinderMapperImpl.f53262o4, 403, 532, 788, 1045, 1557, 2070, 3094, 4119, 6167, 8216, 12312, 16409, 24601, 32794, 49178, 65563, 98331, 131100, 196636, 262173, 393245, 524318, 786462};

    /* renamed from: l */
    public static final int[] f106114l = {16, 17, 18, 0, 8, 7, 9, 6, 10, 5, 11, 4, 12, 3, 13, 2, 14, 1, 15};

    /* renamed from: m */
    public static final int[] f106115m;

    /* renamed from: n */
    public static final int[] f106116n;

    /* renamed from: e */
    public boolean f106117e;

    /* renamed from: f */
    public c f106118f;

    /* renamed from: g */
    public BitInputStream f106119g;

    /* renamed from: h */
    public final InputStream f106120h;

    /* renamed from: i */
    public final d f106121i;

    /* renamed from: org.apache.commons.compress.compressors.deflate64.a$b */
    /* loaded from: classes12.dex */
    public static class b {

        /* renamed from: a */
        public final int f106122a;

        /* renamed from: b */
        public int f106123b;

        /* renamed from: c */
        public b f106124c;

        /* renamed from: d */
        public b f106125d;

        /* renamed from: a */
        public void m66691a(int i) {
            this.f106123b = i;
            this.f106124c = null;
            this.f106125d = null;
        }

        /* renamed from: b */
        public b m66692b() {
            if (this.f106124c == null && this.f106123b == -1) {
                this.f106124c = new b(this.f106122a + 1);
            }
            return this.f106124c;
        }

        /* renamed from: c */
        public b m66693c() {
            if (this.f106125d == null && this.f106123b == -1) {
                this.f106125d = new b(this.f106122a + 1);
            }
            return this.f106125d;
        }

        public b(int i) {
            this.f106123b = -1;
            this.f106122a = i;
        }
    }

    /* renamed from: org.apache.commons.compress.compressors.deflate64.a$c */
    /* loaded from: classes12.dex */
    public static abstract class c {
        public c() {
        }

        /* renamed from: a */
        public abstract int mo66694a() throws IOException;

        /* renamed from: b */
        public abstract boolean mo66695b();

        /* renamed from: c */
        public abstract int mo66696c(byte[] bArr, int i, int i2) throws IOException;

        /* renamed from: d */
        public abstract HuffmanState mo66697d();
    }

    /* renamed from: org.apache.commons.compress.compressors.deflate64.a$d */
    /* loaded from: classes12.dex */
    public static class d {

        /* renamed from: a */
        public final byte[] f106126a;

        /* renamed from: b */
        public final int f106127b;

        /* renamed from: c */
        public int f106128c;

        /* renamed from: d */
        public boolean f106129d;

        /* renamed from: a */
        public byte m66698a(byte b) {
            byte[] bArr = this.f106126a;
            int i = this.f106128c;
            bArr[i] = b;
            this.f106128c = m66700c(i);
            return b;
        }

        /* renamed from: b */
        public void m66699b(byte[] bArr, int i, int i2) {
            for (int i3 = i; i3 < i + i2; i3++) {
                m66698a(bArr[i3]);
            }
        }

        /* renamed from: c */
        public final int m66700c(int i) {
            int i2 = (i + 1) & this.f106127b;
            if (!this.f106129d && i2 < i) {
                this.f106129d = true;
            }
            return i2;
        }

        /* renamed from: d */
        public void m66701d(int i, int i2, byte[] bArr) {
            if (i > this.f106126a.length) {
                throw new IllegalStateException("Illegal distance parameter: " + i);
            }
            int i3 = this.f106128c;
            int i4 = (i3 - i) & this.f106127b;
            if (!this.f106129d && i4 >= i3) {
                throw new IllegalStateException("Attempt to read beyond memory: dist=" + i);
            }
            int i5 = 0;
            while (i5 < i2) {
                bArr[i5] = m66698a(this.f106126a[i4]);
                i5++;
                i4 = m66700c(i4);
            }
        }

        public d() {
            this(16);
        }

        public d(int i) {
            byte[] bArr = new byte[1 << i];
            this.f106126a = bArr;
            this.f106127b = bArr.length - 1;
        }
    }

    /* renamed from: org.apache.commons.compress.compressors.deflate64.a$e */
    /* loaded from: classes12.dex */
    public class e extends c {

        /* renamed from: a */
        public boolean f106130a;

        /* renamed from: b */
        public final HuffmanState f106131b;

        /* renamed from: c */
        public final b f106132c;

        /* renamed from: d */
        public final b f106133d;

        /* renamed from: e */
        public int f106134e;

        /* renamed from: f */
        public byte[] f106135f;

        /* renamed from: g */
        public int f106136g;

        public e(HuffmanState huffmanState, int[] iArr, int[] iArr2) {
            super();
            this.f106135f = ByteUtils.EMPTY_BYTE_ARRAY;
            this.f106131b = huffmanState;
            this.f106132c = C18881a.m66679g0(iArr);
            this.f106133d = C18881a.m66679g0(iArr2);
        }

        @Override // org.apache.commons.compress.compressors.deflate64.C18881a.c
        /* renamed from: a */
        public int mo66694a() {
            return this.f106136g - this.f106134e;
        }

        @Override // org.apache.commons.compress.compressors.deflate64.C18881a.c
        /* renamed from: b */
        public boolean mo66695b() {
            return !this.f106130a;
        }

        @Override // org.apache.commons.compress.compressors.deflate64.C18881a.c
        /* renamed from: c */
        public int mo66696c(byte[] bArr, int i, int i2) throws IOException {
            if (i2 == 0) {
                return 0;
            }
            return m66703f(bArr, i, i2);
        }

        @Override // org.apache.commons.compress.compressors.deflate64.C18881a.c
        /* renamed from: d */
        public HuffmanState mo66697d() {
            return this.f106130a ? HuffmanState.INITIAL : this.f106131b;
        }

        /* renamed from: e */
        public final int m66702e(byte[] bArr, int i, int i2) {
            int i3 = this.f106136g - this.f106134e;
            if (i3 <= 0) {
                return 0;
            }
            int min = Math.min(i2, i3);
            System.arraycopy(this.f106135f, this.f106134e, bArr, i, min);
            this.f106134e += min;
            return min;
        }

        /* renamed from: f */
        public final int m66703f(byte[] bArr, int i, int i2) throws IOException {
            if (this.f106130a) {
                return -1;
            }
            int m66702e = m66702e(bArr, i, i2);
            while (true) {
                if (m66702e < i2) {
                    int m66682l0 = C18881a.m66682l0(C18881a.this.f106119g, this.f106132c);
                    if (m66682l0 >= 256) {
                        if (m66682l0 <= 256) {
                            this.f106130a = true;
                            break;
                        }
                        short s = C18881a.f106112j[m66682l0 - 257];
                        int add = ExactMath.add(s >>> 5, C18881a.this.readBits(s & 31));
                        int i3 = C18881a.f106113k[C18881a.m66682l0(C18881a.this.f106119g, this.f106133d)];
                        int add2 = ExactMath.add(i3 >>> 4, C18881a.this.readBits(i3 & 15));
                        if (this.f106135f.length < add) {
                            this.f106135f = new byte[add];
                        }
                        this.f106136g = add;
                        this.f106134e = 0;
                        C18881a.this.f106121i.m66701d(add2, add, this.f106135f);
                        m66702e += m66702e(bArr, i + m66702e, i2 - m66702e);
                    } else {
                        bArr[m66702e + i] = C18881a.this.f106121i.m66698a((byte) m66682l0);
                        m66702e++;
                    }
                } else {
                    break;
                }
            }
            return m66702e;
        }
    }

    /* renamed from: org.apache.commons.compress.compressors.deflate64.a$f */
    /* loaded from: classes12.dex */
    public static class f extends c {
        public f() {
            super();
        }

        @Override // org.apache.commons.compress.compressors.deflate64.C18881a.c
        /* renamed from: a */
        public int mo66694a() {
            return 0;
        }

        @Override // org.apache.commons.compress.compressors.deflate64.C18881a.c
        /* renamed from: b */
        public boolean mo66695b() {
            return false;
        }

        @Override // org.apache.commons.compress.compressors.deflate64.C18881a.c
        /* renamed from: c */
        public int mo66696c(byte[] bArr, int i, int i2) throws IOException {
            if (i2 == 0) {
                return 0;
            }
            throw new IllegalStateException("Cannot read in this state");
        }

        @Override // org.apache.commons.compress.compressors.deflate64.C18881a.c
        /* renamed from: d */
        public HuffmanState mo66697d() {
            return HuffmanState.INITIAL;
        }
    }

    /* renamed from: org.apache.commons.compress.compressors.deflate64.a$g */
    /* loaded from: classes12.dex */
    public class g extends c {

        /* renamed from: a */
        public final long f106138a;

        /* renamed from: b */
        public long f106139b;

        @Override // org.apache.commons.compress.compressors.deflate64.C18881a.c
        /* renamed from: a */
        public int mo66694a() throws IOException {
            return (int) Math.min(this.f106138a - this.f106139b, C18881a.this.f106119g.bitsAvailable() / 8);
        }

        @Override // org.apache.commons.compress.compressors.deflate64.C18881a.c
        /* renamed from: b */
        public boolean mo66695b() {
            return this.f106139b < this.f106138a;
        }

        @Override // org.apache.commons.compress.compressors.deflate64.C18881a.c
        /* renamed from: c */
        public int mo66696c(byte[] bArr, int i, int i2) throws IOException {
            int read;
            int i3 = 0;
            if (i2 == 0) {
                return 0;
            }
            int min = (int) Math.min(this.f106138a - this.f106139b, i2);
            while (i3 < min) {
                if (C18881a.this.f106119g.bitsCached() > 0) {
                    bArr[i + i3] = C18881a.this.f106121i.m66698a((byte) C18881a.this.readBits(8));
                    read = 1;
                } else {
                    int i4 = i + i3;
                    read = C18881a.this.f106120h.read(bArr, i4, min - i3);
                    if (read == -1) {
                        throw new EOFException("Truncated Deflate64 Stream");
                    }
                    C18881a.this.f106121i.m66699b(bArr, i4, read);
                }
                this.f106139b += read;
                i3 += read;
            }
            return min;
        }

        @Override // org.apache.commons.compress.compressors.deflate64.C18881a.c
        /* renamed from: d */
        public HuffmanState mo66697d() {
            return this.f106139b < this.f106138a ? HuffmanState.STORED : HuffmanState.INITIAL;
        }

        public g(long j) {
            super();
            this.f106138a = j;
        }
    }

    static {
        int[] iArr = new int[288];
        f106115m = iArr;
        Arrays.fill(iArr, 0, 144, 8);
        Arrays.fill(iArr, 144, 256, 9);
        Arrays.fill(iArr, 256, 280, 7);
        Arrays.fill(iArr, 280, 288, 8);
        int[] iArr2 = new int[32];
        f106116n = iArr2;
        Arrays.fill(iArr2, 5);
    }

    public C18881a(InputStream inputStream) {
        this.f106121i = new d();
        this.f106119g = new BitInputStream(inputStream, ByteOrder.LITTLE_ENDIAN);
        this.f106120h = inputStream;
        this.f106118f = new f();
    }

    /* renamed from: g0 */
    public static b m66679g0(int[] iArr) {
        int[] m66681k0 = m66681k0(iArr);
        int i = 0;
        b bVar = new b(i);
        while (i < iArr.length) {
            int i2 = iArr[i];
            if (i2 != 0) {
                int i3 = i2 - 1;
                int i4 = m66681k0[i3];
                b bVar2 = bVar;
                for (int i5 = i3; i5 >= 0; i5--) {
                    bVar2 = ((1 << i5) & i4) == 0 ? bVar2.m66692b() : bVar2.m66693c();
                    if (bVar2 == null) {
                        throw new IllegalStateException("node doesn't exist in Huffman tree");
                    }
                }
                bVar2.m66691a(i);
                m66681k0[i3] = m66681k0[i3] + 1;
            }
            i++;
        }
        return bVar;
    }

    /* renamed from: k0 */
    public static int[] m66681k0(int[] iArr) {
        int[] iArr2 = new int[65];
        int i = 0;
        for (int i2 : iArr) {
            if (i2 < 0 || i2 > 64) {
                throw new IllegalArgumentException("Invalid code " + i2 + " in literal table");
            }
            i = Math.max(i, i2);
            iArr2[i2] = iArr2[i2] + 1;
        }
        int i3 = i + 1;
        int[] copyOf = Arrays.copyOf(iArr2, i3);
        int[] iArr3 = new int[i3];
        int i4 = 0;
        for (int i5 = 0; i5 <= i; i5++) {
            i4 = (i4 + copyOf[i5]) << 1;
            iArr3[i5] = i4;
        }
        return iArr3;
    }

    /* renamed from: l0 */
    public static int m66682l0(BitInputStream bitInputStream, b bVar) throws IOException {
        while (bVar != null && bVar.f106123b == -1) {
            bVar = m66684n0(bitInputStream, 1) == 0 ? bVar.f106124c : bVar.f106125d;
        }
        if (bVar != null) {
            return bVar.f106123b;
        }
        return -1;
    }

    /* renamed from: m0 */
    public static void m66683m0(BitInputStream bitInputStream, int[] iArr, int[] iArr2) throws IOException {
        long m66684n0;
        int m66684n02 = (int) (m66684n0(bitInputStream, 4) + 4);
        int[] iArr3 = new int[19];
        for (int i = 0; i < m66684n02; i++) {
            iArr3[f106114l[i]] = (int) m66684n0(bitInputStream, 3);
        }
        b m66679g0 = m66679g0(iArr3);
        int length = iArr.length + iArr2.length;
        int[] iArr4 = new int[length];
        int i2 = -1;
        int i3 = 0;
        int i4 = 0;
        while (i3 < length) {
            if (i4 > 0) {
                iArr4[i3] = i2;
                i4--;
                i3++;
            } else {
                int m66682l0 = m66682l0(bitInputStream, m66679g0);
                if (m66682l0 < 16) {
                    iArr4[i3] = m66682l0;
                    i3++;
                    i2 = m66682l0;
                } else {
                    long j = 3;
                    switch (m66682l0) {
                        case 16:
                            i4 = (int) (m66684n0(bitInputStream, 2) + 3);
                            continue;
                        case 17:
                            m66684n0 = m66684n0(bitInputStream, 3);
                            break;
                        case 18:
                            m66684n0 = m66684n0(bitInputStream, 7);
                            j = 11;
                            break;
                    }
                    i4 = (int) (m66684n0 + j);
                    i2 = 0;
                }
            }
        }
        System.arraycopy(iArr4, 0, iArr, 0, iArr.length);
        System.arraycopy(iArr4, iArr.length, iArr2, 0, iArr2.length);
    }

    /* renamed from: n0 */
    public static long m66684n0(BitInputStream bitInputStream, int i) throws IOException {
        long readBits = bitInputStream.readBits(i);
        if (readBits != -1) {
            return readBits;
        }
        throw new EOFException("Truncated Deflate64 Stream");
    }

    public int available() throws IOException {
        return this.f106118f.mo66694a();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f106118f = new f();
        this.f106119g = null;
    }

    /* renamed from: h0 */
    public int m66686h0(byte[] bArr) throws IOException {
        return m66687i0(bArr, 0, bArr.length);
    }

    /* renamed from: i0 */
    public int m66687i0(byte[] bArr, int i, int i2) throws IOException {
        while (true) {
            if (this.f106117e && !this.f106118f.mo66695b()) {
                return -1;
            }
            if (this.f106118f.mo66697d() == HuffmanState.INITIAL) {
                this.f106117e = readBits(1) == 1;
                int readBits = (int) readBits(2);
                if (readBits == 0) {
                    m66690p0();
                } else if (readBits == 1) {
                    this.f106118f = new e(HuffmanState.FIXED_CODES, f106115m, f106116n);
                } else {
                    if (readBits != 2) {
                        throw new IllegalStateException("Unsupported compression: " + readBits);
                    }
                    int[][] m66689o0 = m66689o0();
                    this.f106118f = new e(HuffmanState.DYNAMIC_CODES, m66689o0[0], m66689o0[1]);
                }
            } else {
                int mo66696c = this.f106118f.mo66696c(bArr, i, i2);
                if (mo66696c != 0) {
                    return mo66696c;
                }
            }
        }
    }

    /* renamed from: j0 */
    public long m66688j0() {
        return this.f106119g.getBytesRead();
    }

    /* renamed from: o0 */
    public final int[][] m66689o0() throws IOException {
        int[] iArr = new int[(int) (readBits(5) + 1)];
        int[][] iArr2 = {new int[(int) (readBits(5) + 257)], iArr};
        m66683m0(this.f106119g, iArr2[0], iArr);
        return iArr2;
    }

    /* renamed from: p0 */
    public final void m66690p0() throws IOException {
        this.f106119g.alignWithByteBoundary();
        long readBits = readBits(16);
        if ((WebSocketProtocol.PAYLOAD_SHORT_MAX & (readBits ^ WebSocketProtocol.PAYLOAD_SHORT_MAX)) != readBits(16)) {
            throw new IllegalStateException("Illegal LEN / NLEN values");
        }
        this.f106118f = new g(readBits);
    }

    public final long readBits(int i) throws IOException {
        return m66684n0(this.f106119g, i);
    }
}
