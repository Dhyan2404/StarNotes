package okhttp3.internal.http2;

import com.google.common.base.Ascii;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.b7n;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.Util;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.mortbay.jetty.HttpHeaderValues;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0012B\t\b\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0002J\u001e\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u0004J \u0010\u0012\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tH\u0002R\u0014\u0010\u0015\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006 "}, m61528d2 = {"Lokhttp3/internal/http2/Huffman;", "", "Lokio/ByteString;", "source", "Lokio/BufferedSink;", "sink", "", "encode", HttpHeaderValues.BYTES, "", "encodedLength", "Lokio/BufferedSource;", "", "byteCount", "decode", "symbol", "code", "codeBitCount", "a", "", Constants.TYPES_INDEX_SIG, "CODES", "", "b", "[B", "CODE_BIT_COUNTS", "Lokhttp3/internal/http2/Huffman$a;", "c", "Lokhttp3/internal/http2/Huffman$a;", "root", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "okhttp"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes11.dex */
public final class Huffman {

    @NotNull
    public static final Huffman INSTANCE = new Huffman();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final int[] CODES = {8184, 8388568, 268435426, 268435427, 268435428, 268435429, 268435430, 268435431, 268435432, 16777194, 1073741820, 268435433, 268435434, 1073741821, 268435435, 268435436, 268435437, 268435438, 268435439, 268435440, 268435441, 268435442, 1073741822, 268435443, 268435444, 268435445, 268435446, 268435447, 268435448, 268435449, 268435450, 268435451, 20, 1016, 1017, 4090, 8185, 21, 248, 2042, 1018, 1019, 249, 2043, 250, 22, 23, 24, 0, 1, 2, 25, 26, 27, 28, 29, 30, 31, 92, 251, 32764, 32, 4091, 1020, 8186, 33, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 252, 115, 253, 8187, 524272, 8188, 16380, 34, 32765, 3, 35, 4, 36, 5, 37, 38, 39, 6, 116, 117, 40, 41, 42, 7, 43, 118, 44, 8, 9, 45, 119, 120, 121, 122, 123, b7n.f65480a, 2044, 16381, 8189, 268435452, 1048550, 4194258, 1048551, 1048552, 4194259, 4194260, 4194261, 8388569, 4194262, 8388570, 8388571, 8388572, 8388573, 8388574, 16777195, 8388575, 16777196, 16777197, 4194263, 8388576, 16777198, 8388577, 8388578, 8388579, 8388580, 2097116, 4194264, 8388581, 4194265, 8388582, 8388583, 16777199, 4194266, 2097117, 1048553, 4194267, 4194268, 8388584, 8388585, 2097118, 8388586, 4194269, 4194270, 16777200, 2097119, 4194271, 8388587, 8388588, 2097120, 2097121, 4194272, 2097122, 8388589, 4194273, 8388590, 8388591, 1048554, 4194274, 4194275, 4194276, 8388592, 4194277, 4194278, 8388593, 67108832, 67108833, 1048555, 524273, 4194279, 8388594, 4194280, 33554412, 67108834, 67108835, 67108836, 134217694, 134217695, 67108837, 16777201, 33554413, 524274, 2097123, 67108838, 134217696, 134217697, 67108839, 134217698, 16777202, 2097124, 2097125, 67108840, 67108841, 268435453, 134217699, 134217700, 134217701, 1048556, 16777203, 1048557, 2097126, 4194281, 2097127, 2097128, 8388595, 4194282, 4194283, 33554414, 33554415, 16777204, 16777205, 67108842, 8388596, 67108843, 134217702, 67108844, 67108845, 134217703, 134217704, 134217705, 134217706, 134217707, 268435454, 134217708, 134217709, 134217710, 134217711, 134217712, 67108846};

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final byte[] CODE_BIT_COUNTS;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static final C18614a root;

    static {
        byte[] bArr = {13, 23, 28, 28, 28, 28, 28, 28, 28, 24, 30, 28, 28, 30, 28, 28, 28, 28, 28, 28, 28, 28, 30, 28, 28, 28, 28, 28, 28, 28, 28, 28, 6, 10, 10, 12, 13, 6, 8, 11, 10, 10, 8, 11, 8, 6, 6, 6, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 7, 8, 15, 6, 12, 10, 13, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 8, 7, 8, 13, 19, 13, 14, 6, 15, 5, 6, 5, 6, 5, 6, 6, 6, 5, 7, 7, 6, 6, 6, 5, 6, 7, 6, 5, 5, 6, 7, 7, 7, 7, 7, 15, 11, 14, 13, 28, 20, 22, 20, 20, 22, 22, 22, 23, 22, 23, 23, 23, 23, 23, 24, 23, 24, 24, 22, 23, 24, 23, 23, 23, 23, 21, 22, 23, 22, 23, 23, 24, 22, 21, 20, 22, 22, 23, 23, 21, 23, 22, 22, 24, 21, 22, 23, 23, 21, 21, 22, 21, 23, 22, 23, 23, 20, 22, 22, 22, 23, 22, 22, 23, Ascii.SUB, Ascii.SUB, 20, 19, 22, 23, 22, 25, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.ESC, Ascii.ESC, Ascii.SUB, 24, 25, 19, 21, Ascii.SUB, Ascii.ESC, Ascii.ESC, Ascii.SUB, Ascii.ESC, 24, 21, 21, Ascii.SUB, Ascii.SUB, 28, Ascii.ESC, Ascii.ESC, Ascii.ESC, 20, 24, 20, 21, 22, 21, 21, 23, 22, 22, 25, 25, 24, 24, Ascii.SUB, 23, Ascii.SUB, Ascii.ESC, Ascii.SUB, Ascii.SUB, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, 28, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.SUB};
        CODE_BIT_COUNTS = bArr;
        root = new C18614a();
        int length = bArr.length;
        for (int i = 0; i < length; i++) {
            INSTANCE.m64948a(i, CODES[i], CODE_BIT_COUNTS[i]);
        }
    }

    /* renamed from: a */
    public final void m64948a(int symbol, int code, int codeBitCount) {
        C18614a c18614a = new C18614a(symbol, codeBitCount);
        C18614a c18614a2 = root;
        while (codeBitCount > 8) {
            codeBitCount -= 8;
            int i = (code >>> codeBitCount) & 255;
            C18614a[] m64949a = c18614a2.m64949a();
            Intrinsics.checkNotNull(m64949a);
            C18614a c18614a3 = m64949a[i];
            if (c18614a3 == null) {
                c18614a3 = new C18614a();
                m64949a[i] = c18614a3;
            }
            c18614a2 = c18614a3;
        }
        int i2 = 8 - codeBitCount;
        int i3 = (code << i2) & 255;
        C18614a[] m64949a2 = c18614a2.m64949a();
        Intrinsics.checkNotNull(m64949a2);
        ArraysKt___ArraysJvmKt.fill(m64949a2, c18614a, i3, (1 << i2) + i3);
    }

    public final void decode(@NotNull BufferedSource source, long byteCount, @NotNull BufferedSink sink) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(sink, "sink");
        C18614a c18614a = root;
        int i = 0;
        int i2 = 0;
        for (long j = 0; j < byteCount; j++) {
            i = (i << 8) | Util.and(source.readByte(), 255);
            i2 += 8;
            while (i2 >= 8) {
                C18614a[] m64949a = c18614a.m64949a();
                Intrinsics.checkNotNull(m64949a);
                c18614a = m64949a[(i >>> (i2 - 8)) & 255];
                Intrinsics.checkNotNull(c18614a);
                if (c18614a.m64949a() == null) {
                    sink.writeByte(c18614a.m64950b());
                    i2 -= c18614a.m64951c();
                    c18614a = root;
                } else {
                    i2 -= 8;
                }
            }
        }
        while (i2 > 0) {
            C18614a[] m64949a2 = c18614a.m64949a();
            Intrinsics.checkNotNull(m64949a2);
            C18614a c18614a2 = m64949a2[(i << (8 - i2)) & 255];
            Intrinsics.checkNotNull(c18614a2);
            if (c18614a2.m64949a() != null || c18614a2.m64951c() > i2) {
                return;
            }
            sink.writeByte(c18614a2.m64950b());
            i2 -= c18614a2.m64951c();
            c18614a = root;
        }
    }

    public final void encode(@NotNull ByteString source, @NotNull BufferedSink sink) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(sink, "sink");
        int size = source.size();
        long j = 0;
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            int and = Util.and(source.getByte(i2), 255);
            int i3 = CODES[and];
            byte b = CODE_BIT_COUNTS[and];
            j = (j << b) | i3;
            i += b;
            while (i >= 8) {
                i -= 8;
                sink.writeByte((int) (j >> i));
            }
        }
        if (i > 0) {
            sink.writeByte((int) ((j << (8 - i)) | (255 >>> i)));
        }
    }

    public final int encodedLength(@NotNull ByteString bytes) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        long j = 0;
        for (int i = 0; i < bytes.size(); i++) {
            j += CODE_BIT_COUNTS[Util.and(bytes.getByte(i), 255)];
        }
        return (int) ((j + 7) >> 3);
    }

    /* renamed from: okhttp3.internal.http2.Huffman$a */
    /* loaded from: classes11.dex */
    public static final class C18614a {

        /* renamed from: a */
        @Nullable
        public final C18614a[] f103841a;

        /* renamed from: b */
        public final int f103842b;

        /* renamed from: c */
        public final int f103843c;

        public C18614a() {
            this.f103841a = new C18614a[256];
            this.f103842b = 0;
            this.f103843c = 0;
        }

        @Nullable
        /* renamed from: a */
        public final C18614a[] m64949a() {
            return this.f103841a;
        }

        /* renamed from: b */
        public final int m64950b() {
            return this.f103842b;
        }

        /* renamed from: c */
        public final int m64951c() {
            return this.f103843c;
        }

        public C18614a(int i, int i2) {
            this.f103841a = null;
            this.f103842b = i;
            int i3 = i2 & 7;
            this.f103843c = i3 == 0 ? 8 : i3;
        }
    }
}
