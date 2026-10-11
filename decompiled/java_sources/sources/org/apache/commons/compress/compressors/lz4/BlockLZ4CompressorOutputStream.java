package org.apache.commons.compress.compressors.lz4;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Deque;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.function.Consumer;
import java.util.function.ToIntFunction;
import org.apache.commons.compress.compressors.CompressorOutputStream;
import org.apache.commons.compress.compressors.lz4.BlockLZ4CompressorOutputStream;
import org.apache.commons.compress.compressors.lz77support.LZ77Compressor;
import org.apache.commons.compress.compressors.lz77support.Parameters;
import org.apache.commons.compress.utils.ByteUtils;

/* loaded from: classes12.dex */
public class BlockLZ4CompressorOutputStream extends CompressorOutputStream {

    /* renamed from: k */
    public static final int f106178k = 4;

    /* renamed from: l */
    public static final int f106179l = 12;

    /* renamed from: e */
    public final LZ77Compressor f106180e;

    /* renamed from: f */
    public final OutputStream f106181f;

    /* renamed from: g */
    public final byte[] f106182g;

    /* renamed from: h */
    public boolean f106183h;

    /* renamed from: i */
    public final Deque<C18884b> f106184i;

    /* renamed from: j */
    public final Deque<byte[]> f106185j;

    /* renamed from: org.apache.commons.compress.compressors.lz4.BlockLZ4CompressorOutputStream$a */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C18883a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f106186a;

        static {
            int[] iArr = new int[LZ77Compressor.Block.BlockType.values().length];
            f106186a = iArr;
            try {
                iArr[LZ77Compressor.Block.BlockType.LITERAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f106186a[LZ77Compressor.Block.BlockType.BACK_REFERENCE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f106186a[LZ77Compressor.Block.BlockType.EOD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: org.apache.commons.compress.compressors.lz4.BlockLZ4CompressorOutputStream$b */
    /* loaded from: classes12.dex */
    public static final class C18884b {

        /* renamed from: a */
        public final Deque<byte[]> f106187a = new LinkedList();

        /* renamed from: b */
        public int f106188b;

        /* renamed from: c */
        public int f106189c;

        /* renamed from: d */
        public boolean f106190d;

        /* renamed from: l */
        public static /* synthetic */ int m66733l(byte[] bArr) {
            return bArr.length;
        }

        /* renamed from: n */
        public static int m66734n(int i, int i2) {
            int i3 = 15;
            int min = Math.min(i, 15);
            if (i2 < 4) {
                i3 = 0;
            } else if (i2 < 19) {
                i3 = i2 - 4;
            }
            return (min << 4) | i3;
        }

        /* renamed from: t */
        public static void m66735t(int i, OutputStream outputStream) throws IOException {
            while (i >= 255) {
                outputStream.write(255);
                i -= 255;
            }
            outputStream.write(i);
        }

        /* renamed from: g */
        public byte[] m66736g(LZ77Compressor.LiteralBlock literalBlock) {
            byte[] copyOfRange = Arrays.copyOfRange(literalBlock.getData(), literalBlock.getOffset(), literalBlock.getOffset() + literalBlock.getLength());
            this.f106187a.add(copyOfRange);
            return copyOfRange;
        }

        /* renamed from: h */
        public final int m66737h() {
            return this.f106189c;
        }

        /* renamed from: i */
        public boolean m66738i(int i) {
            return m66739j() && i >= 16;
        }

        /* renamed from: j */
        public boolean m66739j() {
            return this.f106188b > 0;
        }

        /* renamed from: k */
        public final boolean m66740k() {
            return this.f106190d;
        }

        /* renamed from: m */
        public int m66741m() {
            return m66742o() + this.f106189c;
        }

        /* renamed from: o */
        public final int m66742o() {
            return this.f106187a.stream().mapToInt(new ToIntFunction() { // from class: com.sunia.HTREnginev2.us
                @Override // java.util.function.ToIntFunction
                public final int applyAsInt(Object obj) {
                    int m66733l;
                    m66733l = BlockLZ4CompressorOutputStream.C18884b.m66733l((byte[]) obj);
                    return m66733l;
                }
            }).sum();
        }

        /* renamed from: p */
        public final void m66743p(byte[] bArr) {
            this.f106187a.addFirst(bArr);
        }

        /* renamed from: q */
        public final void m66744q(C18884b c18884b) {
            Iterator<byte[]> descendingIterator = this.f106187a.descendingIterator();
            while (descendingIterator.hasNext()) {
                c18884b.m66743p(descendingIterator.next());
            }
        }

        /* renamed from: r */
        public void m66745r(LZ77Compressor.BackReference backReference) {
            if (m66739j()) {
                throw new IllegalStateException();
            }
            this.f106188b = backReference.getOffset();
            this.f106189c = backReference.getLength();
        }

        /* renamed from: s */
        public final C18884b m66746s(int i) {
            C18884b c18884b = new C18884b();
            c18884b.f106187a.addAll(this.f106187a);
            c18884b.f106188b = this.f106188b;
            c18884b.f106189c = i;
            return c18884b;
        }

        /* renamed from: u */
        public void m66747u(OutputStream outputStream) throws IOException {
            int m66742o = m66742o();
            outputStream.write(m66734n(m66742o, this.f106189c));
            if (m66742o >= 15) {
                m66735t(m66742o - 15, outputStream);
            }
            Iterator<byte[]> it2 = this.f106187a.iterator();
            while (it2.hasNext()) {
                outputStream.write(it2.next());
            }
            if (m66739j()) {
                ByteUtils.toLittleEndian(outputStream, this.f106188b, 2);
                int i = this.f106189c;
                if (i - 4 >= 15) {
                    m66735t((i - 4) - 15, outputStream);
                }
            }
            this.f106190d = true;
        }
    }

    public BlockLZ4CompressorOutputStream(OutputStream outputStream) {
        this(outputStream, createParameterBuilder().build());
    }

    public static Parameters.Builder createParameterBuilder() {
        return Parameters.builder(65536).withMinBackReferenceLength(4).withMaxBackReferenceLength(65535).withMaxOffset(65535).withMaxLiteralLength(65535);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g0 */
    public /* synthetic */ void m66713g0(LZ77Compressor.Block block) throws IOException {
        int i = C18883a.f106186a[block.getType().ordinal()];
        if (i == 1) {
            m66726w((LZ77Compressor.LiteralBlock) block);
        } else if (i == 2) {
            m66721j((LZ77Compressor.BackReference) block);
        } else {
            if (i != 3) {
                return;
            }
            m66724l0();
        }
    }

    /* renamed from: H */
    public final void m66714H() {
        Iterator<byte[]> it2 = this.f106185j.iterator();
        int i = 0;
        int i2 = 0;
        while (it2.hasNext()) {
            i++;
            i2 += it2.next().length;
            if (i2 >= 65536) {
                break;
            }
        }
        int size = this.f106185j.size();
        while (i < size) {
            this.f106185j.removeLast();
            i++;
        }
    }

    /* renamed from: I */
    public final void m66715I() {
        m66714H();
        m66716M();
    }

    /* renamed from: M */
    public final void m66716M() {
        Iterator<C18884b> descendingIterator = this.f106184i.descendingIterator();
        int i = 0;
        int i2 = 0;
        while (descendingIterator.hasNext()) {
            i++;
            i2 += descendingIterator.next().m66741m();
            if (i2 >= 65536) {
                break;
            }
        }
        int size = this.f106184i.size();
        while (i < size && this.f106184i.peekFirst().m66740k()) {
            this.f106184i.removeFirst();
            i++;
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            finish();
        } finally {
            this.f106181f.close();
        }
    }

    /* renamed from: e0 */
    public final byte[] m66717e0(int i, int i2) {
        byte[] bArr = new byte[i2];
        if (i == 1) {
            byte[] peekFirst = this.f106185j.peekFirst();
            byte b = peekFirst[peekFirst.length - 1];
            if (b != 0) {
                Arrays.fill(bArr, b);
            }
        } else {
            m66718f0(bArr, i, i2);
        }
        return bArr;
    }

    /* renamed from: f0 */
    public final void m66718f0(byte[] bArr, int i, int i2) {
        int i3;
        int min;
        byte[] bArr2;
        int i4 = i;
        int i5 = 0;
        while (i2 > 0) {
            if (i4 > 0) {
                Iterator<byte[]> it2 = this.f106185j.iterator();
                int i6 = 0;
                while (true) {
                    if (!it2.hasNext()) {
                        bArr2 = null;
                        break;
                    }
                    bArr2 = it2.next();
                    if (bArr2.length + i6 >= i4) {
                        break;
                    } else {
                        i6 += bArr2.length;
                    }
                }
                if (bArr2 == null) {
                    throw new IllegalStateException("Failed to find a block containing offset " + i);
                }
                i3 = (i6 + bArr2.length) - i4;
                min = Math.min(i2, bArr2.length - i3);
            } else {
                i3 = -i4;
                min = Math.min(i2, i5 + i4);
                bArr2 = bArr;
            }
            System.arraycopy(bArr2, i3, bArr, i5, min);
            i4 -= min;
            i2 -= min;
            i5 += min;
        }
    }

    public void finish() throws IOException {
        if (this.f106183h) {
            return;
        }
        this.f106180e.finish();
        this.f106183h = true;
    }

    /* renamed from: h0 */
    public final void m66719h0(LZ77Compressor.BackReference backReference) {
        this.f106185j.addFirst(m66717e0(backReference.getOffset(), backReference.getLength()));
    }

    /* renamed from: i0 */
    public final void m66720i0(byte[] bArr) {
        this.f106185j.addFirst(bArr);
    }

    /* renamed from: j */
    public final void m66721j(LZ77Compressor.BackReference backReference) throws IOException {
        m66723k0(backReference.getLength()).m66745r(backReference);
        m66719h0(backReference);
        m66715I();
    }

    /* renamed from: j0 */
    public final void m66722j0() {
        LinkedList linkedList = new LinkedList();
        LinkedList linkedList2 = new LinkedList();
        Iterator<C18884b> descendingIterator = this.f106184i.descendingIterator();
        int i = 0;
        while (descendingIterator.hasNext()) {
            C18884b next = descendingIterator.next();
            if (next.m66740k()) {
                break;
            }
            int m66741m = next.m66741m();
            linkedList2.addFirst(Integer.valueOf(m66741m));
            linkedList.addFirst(next);
            i += m66741m;
            if (i >= 12) {
                break;
            }
        }
        final Deque<C18884b> deque = this.f106184i;
        deque.getClass();
        linkedList.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.ts
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                deque.remove((BlockLZ4CompressorOutputStream.C18884b) obj);
            }
        });
        int size = linkedList.size();
        int i2 = 0;
        for (int i3 = 1; i3 < size; i3++) {
            i2 += ((Integer) linkedList2.get(i3)).intValue();
        }
        C18884b c18884b = new C18884b();
        if (i2 > 0) {
            c18884b.m66743p(m66717e0(i2, i2));
        }
        C18884b c18884b2 = (C18884b) linkedList.get(0);
        int i4 = 12 - i2;
        int m66737h = c18884b2.m66739j() ? c18884b2.m66737h() : 0;
        if (!c18884b2.m66739j() || m66737h < i4 + 4) {
            if (c18884b2.m66739j()) {
                c18884b.m66743p(m66717e0(i2 + m66737h, m66737h));
            }
            c18884b2.m66744q(c18884b);
        } else {
            c18884b.m66743p(m66717e0(i2 + i4, i4));
            this.f106184i.add(c18884b2.m66746s(m66737h - i4));
        }
        this.f106184i.add(c18884b);
    }

    /* renamed from: k0 */
    public final C18884b m66723k0(int i) throws IOException {
        m66725m0(i);
        C18884b peekLast = this.f106184i.peekLast();
        if (peekLast != null && !peekLast.m66739j()) {
            return peekLast;
        }
        C18884b c18884b = new C18884b();
        this.f106184i.addLast(c18884b);
        return c18884b;
    }

    /* renamed from: l0 */
    public final void m66724l0() throws IOException {
        m66722j0();
        for (C18884b c18884b : this.f106184i) {
            if (!c18884b.m66740k()) {
                c18884b.m66747u(this.f106181f);
            }
        }
        this.f106184i.clear();
    }

    /* renamed from: m0 */
    public final void m66725m0(int i) throws IOException {
        Iterator<C18884b> descendingIterator = this.f106184i.descendingIterator();
        while (descendingIterator.hasNext()) {
            C18884b next = descendingIterator.next();
            if (next.m66740k()) {
                break;
            } else {
                i += next.m66741m();
            }
        }
        for (C18884b c18884b : this.f106184i) {
            if (!c18884b.m66740k()) {
                i -= c18884b.m66741m();
                if (!c18884b.m66738i(i)) {
                    return;
                } else {
                    c18884b.m66747u(this.f106181f);
                }
            }
        }
    }

    public void prefill(byte[] bArr, int i, int i2) {
        if (i2 > 0) {
            byte[] copyOfRange = Arrays.copyOfRange(bArr, i, i2 + i);
            this.f106180e.prefill(copyOfRange);
            m66720i0(copyOfRange);
        }
    }

    /* renamed from: w */
    public final void m66726w(LZ77Compressor.LiteralBlock literalBlock) throws IOException {
        m66720i0(m66723k0(literalBlock.getLength()).m66736g(literalBlock));
        m66715I();
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        byte[] bArr = this.f106182g;
        bArr[0] = (byte) (i & 255);
        write(bArr);
    }

    public BlockLZ4CompressorOutputStream(OutputStream outputStream, Parameters parameters) {
        this.f106182g = new byte[1];
        this.f106184i = new LinkedList();
        this.f106185j = new LinkedList();
        this.f106181f = outputStream;
        this.f106180e = new LZ77Compressor(parameters, new LZ77Compressor.Callback() { // from class: com.sunia.HTREnginev2.ss
            @Override // org.apache.commons.compress.compressors.lz77support.LZ77Compressor.Callback
            public final void accept(LZ77Compressor.Block block) {
                BlockLZ4CompressorOutputStream.this.m66713g0(block);
            }
        });
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.f106180e.compress(bArr, i, i2);
    }
}
