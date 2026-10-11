package com.bumptech.glide.load.resource.bitmap;

import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.util.Preconditions;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;

/* loaded from: classes3.dex */
public final class DefaultImageHeaderParser implements ImageHeaderParser {

    /* renamed from: a */
    public static final String f15003a = "DfltImageHeaderParser";

    /* renamed from: b */
    public static final int f15004b = 4671814;

    /* renamed from: c */
    public static final int f15005c = -1991225785;

    /* renamed from: d */
    public static final int f15006d = 65496;

    /* renamed from: e */
    public static final int f15007e = 19789;

    /* renamed from: f */
    public static final int f15008f = 18761;

    /* renamed from: i */
    public static final int f15011i = 218;

    /* renamed from: j */
    public static final int f15012j = 217;

    /* renamed from: k */
    public static final int f15013k = 255;

    /* renamed from: l */
    public static final int f15014l = 225;

    /* renamed from: m */
    public static final int f15015m = 274;

    /* renamed from: o */
    public static final int f15017o = 1380533830;

    /* renamed from: p */
    public static final int f15018p = 1464156752;

    /* renamed from: q */
    public static final int f15019q = 1448097792;

    /* renamed from: r */
    public static final int f15020r = -256;

    /* renamed from: s */
    public static final int f15021s = 255;

    /* renamed from: t */
    public static final int f15022t = 88;

    /* renamed from: u */
    public static final int f15023u = 76;

    /* renamed from: v */
    public static final int f15024v = 16;

    /* renamed from: w */
    public static final int f15025w = 8;

    /* renamed from: g */
    public static final String f15009g = "Exif\u0000\u0000";

    /* renamed from: h */
    public static final byte[] f15010h = f15009g.getBytes(Charset.forName("UTF-8"));

    /* renamed from: n */
    public static final int[] f15016n = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    /* loaded from: classes3.dex */
    public interface Reader {

        /* loaded from: classes3.dex */
        public static final class EndOfFileException extends IOException {
            private static final long serialVersionUID = 1;

            public EndOfFileException() {
                super("Unexpectedly reached end of a file");
            }
        }

        /* renamed from: a */
        int mo8936a() throws IOException;

        /* renamed from: b */
        int mo8937b(byte[] bArr, int i) throws IOException;

        /* renamed from: c */
        short mo8938c() throws IOException;

        long skip(long j) throws IOException;
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser$a */
    /* loaded from: classes3.dex */
    public static final class C1988a implements Reader {

        /* renamed from: a */
        public final ByteBuffer f15026a;

        public C1988a(ByteBuffer byteBuffer) {
            this.f15026a = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        /* renamed from: a */
        public int mo8936a() throws Reader.EndOfFileException {
            return mo8938c() | (mo8938c() << 8);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        /* renamed from: b */
        public int mo8937b(byte[] bArr, int i) {
            int min = Math.min(i, this.f15026a.remaining());
            if (min == 0) {
                return -1;
            }
            this.f15026a.get(bArr, 0, min);
            return min;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        /* renamed from: c */
        public short mo8938c() throws Reader.EndOfFileException {
            if (this.f15026a.remaining() >= 1) {
                return (short) (this.f15026a.get() & 255);
            }
            throw new Reader.EndOfFileException();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public long skip(long j) {
            int min = (int) Math.min(this.f15026a.remaining(), j);
            ByteBuffer byteBuffer = this.f15026a;
            byteBuffer.position(byteBuffer.position() + min);
            return min;
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser$b */
    /* loaded from: classes3.dex */
    public static final class C1989b {

        /* renamed from: a */
        public final ByteBuffer f15027a;

        public C1989b(byte[] bArr, int i) {
            this.f15027a = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i);
        }

        /* renamed from: a */
        public short m8939a(int i) {
            if (m8941c(i, 2)) {
                return this.f15027a.getShort(i);
            }
            return (short) -1;
        }

        /* renamed from: b */
        public int m8940b(int i) {
            if (m8941c(i, 4)) {
                return this.f15027a.getInt(i);
            }
            return -1;
        }

        /* renamed from: c */
        public final boolean m8941c(int i, int i2) {
            return this.f15027a.remaining() - i >= i2;
        }

        /* renamed from: d */
        public int m8942d() {
            return this.f15027a.remaining();
        }

        /* renamed from: e */
        public void m8943e(ByteOrder byteOrder) {
            this.f15027a.order(byteOrder);
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser$c */
    /* loaded from: classes3.dex */
    public static final class C1990c implements Reader {

        /* renamed from: a */
        public final InputStream f15028a;

        public C1990c(InputStream inputStream) {
            this.f15028a = inputStream;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        /* renamed from: a */
        public int mo8936a() throws IOException {
            return mo8938c() | (mo8938c() << 8);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        /* renamed from: b */
        public int mo8937b(byte[] bArr, int i) throws IOException {
            int i2 = 0;
            int i3 = 0;
            while (i2 < i && (i3 = this.f15028a.read(bArr, i2, i - i2)) != -1) {
                i2 += i3;
            }
            if (i2 == 0 && i3 == -1) {
                throw new Reader.EndOfFileException();
            }
            return i2;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        /* renamed from: c */
        public short mo8938c() throws IOException {
            int read = this.f15028a.read();
            if (read != -1) {
                return (short) read;
            }
            throw new Reader.EndOfFileException();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public long skip(long j) throws IOException {
            if (j < 0) {
                return 0L;
            }
            long j2 = j;
            while (j2 > 0) {
                long skip = this.f15028a.skip(j2);
                if (skip <= 0) {
                    if (this.f15028a.read() == -1) {
                        break;
                    }
                    skip = 1;
                }
                j2 -= skip;
            }
            return j - j2;
        }
    }

    /* renamed from: a */
    public static int m8928a(int i, int i2) {
        return i + 2 + (i2 * 12);
    }

    /* renamed from: d */
    public static boolean m8929d(int i) {
        return (i & 65496) == 65496 || i == 19789 || i == 18761;
    }

    /* renamed from: g */
    public static int m8930g(C1989b c1989b) {
        ByteOrder byteOrder;
        short m8939a = c1989b.m8939a(6);
        if (m8939a == 18761) {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        } else if (m8939a != 19789) {
            if (Log.isLoggable(f15003a, 3)) {
                Log.d(f15003a, "Unknown endianness = " + ((int) m8939a));
            }
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else {
            byteOrder = ByteOrder.BIG_ENDIAN;
        }
        c1989b.m8943e(byteOrder);
        int m8940b = c1989b.m8940b(10) + 6;
        short m8939a2 = c1989b.m8939a(m8940b);
        for (int i = 0; i < m8939a2; i++) {
            int m8928a = m8928a(m8940b, i);
            short m8939a3 = c1989b.m8939a(m8928a);
            if (m8939a3 == 274) {
                short m8939a4 = c1989b.m8939a(m8928a + 2);
                if (m8939a4 >= 1 && m8939a4 <= 12) {
                    int m8940b2 = c1989b.m8940b(m8928a + 4);
                    if (m8940b2 >= 0) {
                        if (Log.isLoggable(f15003a, 3)) {
                            Log.d(f15003a, "Got tagIndex=" + i + " tagType=" + ((int) m8939a3) + " formatCode=" + ((int) m8939a4) + " componentCount=" + m8940b2);
                        }
                        int i2 = m8940b2 + f15016n[m8939a4];
                        if (i2 <= 4) {
                            int i3 = m8928a + 8;
                            if (i3 >= 0 && i3 <= c1989b.m8942d()) {
                                if (i2 >= 0 && i2 + i3 <= c1989b.m8942d()) {
                                    return c1989b.m8939a(i3);
                                }
                                if (Log.isLoggable(f15003a, 3)) {
                                    Log.d(f15003a, "Illegal number of bytes for TI tag data tagType=" + ((int) m8939a3));
                                }
                            } else if (Log.isLoggable(f15003a, 3)) {
                                Log.d(f15003a, "Illegal tagValueOffset=" + i3 + " tagType=" + ((int) m8939a3));
                            }
                        } else if (Log.isLoggable(f15003a, 3)) {
                            Log.d(f15003a, "Got byte count > 4, not orientation, continuing, formatCode=" + ((int) m8939a4));
                        }
                    } else if (Log.isLoggable(f15003a, 3)) {
                        Log.d(f15003a, "Negative tiff component count");
                    }
                } else if (Log.isLoggable(f15003a, 3)) {
                    Log.d(f15003a, "Got invalid format code = " + ((int) m8939a4));
                }
            }
        }
        return -1;
    }

    /* renamed from: b */
    public final int m8931b(Reader reader, ArrayPool arrayPool) throws IOException {
        try {
            int mo8936a = reader.mo8936a();
            if (!m8929d(mo8936a)) {
                if (Log.isLoggable(f15003a, 3)) {
                    Log.d(f15003a, "Parser doesn't handle magic number: " + mo8936a);
                }
                return -1;
            }
            int m8934f = m8934f(reader);
            if (m8934f == -1) {
                if (Log.isLoggable(f15003a, 3)) {
                    Log.d(f15003a, "Failed to parse exif segment length, or exif segment not found");
                }
                return -1;
            }
            byte[] bArr = (byte[]) arrayPool.get(m8934f, byte[].class);
            try {
                return m8935h(reader, bArr, m8934f);
            } finally {
                arrayPool.put(bArr);
            }
        } catch (Reader.EndOfFileException unused) {
            return -1;
        }
    }

    @NonNull
    /* renamed from: c */
    public final ImageHeaderParser.ImageType m8932c(Reader reader) throws IOException {
        try {
            int mo8936a = reader.mo8936a();
            if (mo8936a == 65496) {
                return ImageHeaderParser.ImageType.JPEG;
            }
            int mo8938c = (mo8936a << 8) | reader.mo8938c();
            if (mo8938c == 4671814) {
                return ImageHeaderParser.ImageType.GIF;
            }
            int mo8938c2 = (mo8938c << 8) | reader.mo8938c();
            if (mo8938c2 == -1991225785) {
                reader.skip(21L);
                try {
                    return reader.mo8938c() >= 3 ? ImageHeaderParser.ImageType.PNG_A : ImageHeaderParser.ImageType.PNG;
                } catch (Reader.EndOfFileException unused) {
                    return ImageHeaderParser.ImageType.PNG;
                }
            }
            if (mo8938c2 != 1380533830) {
                return ImageHeaderParser.ImageType.UNKNOWN;
            }
            reader.skip(4L);
            if (((reader.mo8936a() << 16) | reader.mo8936a()) != 1464156752) {
                return ImageHeaderParser.ImageType.UNKNOWN;
            }
            int mo8936a2 = (reader.mo8936a() << 16) | reader.mo8936a();
            if ((mo8936a2 & (-256)) != 1448097792) {
                return ImageHeaderParser.ImageType.UNKNOWN;
            }
            int i = mo8936a2 & 255;
            if (i == 88) {
                reader.skip(4L);
                return (reader.mo8938c() & 16) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
            }
            if (i != 76) {
                return ImageHeaderParser.ImageType.WEBP;
            }
            reader.skip(4L);
            return (reader.mo8938c() & 8) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
        } catch (Reader.EndOfFileException unused2) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
    }

    /* renamed from: e */
    public final boolean m8933e(byte[] bArr, int i) {
        boolean z = bArr != null && i > f15010h.length;
        if (z) {
            int i2 = 0;
            while (true) {
                byte[] bArr2 = f15010h;
                if (i2 >= bArr2.length) {
                    break;
                }
                if (bArr[i2] != bArr2[i2]) {
                    return false;
                }
                i2++;
            }
        }
        return z;
    }

    /* renamed from: f */
    public final int m8934f(Reader reader) throws IOException {
        short mo8938c;
        int mo8936a;
        long j;
        long skip;
        do {
            short mo8938c2 = reader.mo8938c();
            if (mo8938c2 != 255) {
                if (Log.isLoggable(f15003a, 3)) {
                    Log.d(f15003a, "Unknown segmentId=" + ((int) mo8938c2));
                }
                return -1;
            }
            mo8938c = reader.mo8938c();
            if (mo8938c == 218) {
                return -1;
            }
            if (mo8938c == 217) {
                if (Log.isLoggable(f15003a, 3)) {
                    Log.d(f15003a, "Found MARKER_EOI in exif segment");
                }
                return -1;
            }
            mo8936a = reader.mo8936a() - 2;
            if (mo8938c == 225) {
                return mo8936a;
            }
            j = mo8936a;
            skip = reader.skip(j);
        } while (skip == j);
        if (Log.isLoggable(f15003a, 3)) {
            Log.d(f15003a, "Unable to skip enough data, type: " + ((int) mo8938c) + ", wanted to skip: " + mo8936a + ", but actually skipped: " + skip);
        }
        return -1;
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public int getOrientation(@NonNull InputStream inputStream, @NonNull ArrayPool arrayPool) throws IOException {
        return m8931b(new C1990c((InputStream) Preconditions.checkNotNull(inputStream)), (ArrayPool) Preconditions.checkNotNull(arrayPool));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    @NonNull
    public ImageHeaderParser.ImageType getType(@NonNull InputStream inputStream) throws IOException {
        return m8932c(new C1990c((InputStream) Preconditions.checkNotNull(inputStream)));
    }

    /* renamed from: h */
    public final int m8935h(Reader reader, byte[] bArr, int i) throws IOException {
        int mo8937b = reader.mo8937b(bArr, i);
        if (mo8937b == i) {
            if (m8933e(bArr, i)) {
                return m8930g(new C1989b(bArr, i));
            }
            if (Log.isLoggable(f15003a, 3)) {
                Log.d(f15003a, "Missing jpeg exif preamble");
            }
            return -1;
        }
        if (Log.isLoggable(f15003a, 3)) {
            Log.d(f15003a, "Unable to read exif segment data, length: " + i + ", actually read: " + mo8937b);
        }
        return -1;
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    @NonNull
    public ImageHeaderParser.ImageType getType(@NonNull ByteBuffer byteBuffer) throws IOException {
        return m8932c(new C1988a((ByteBuffer) Preconditions.checkNotNull(byteBuffer)));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public int getOrientation(@NonNull ByteBuffer byteBuffer, @NonNull ArrayPool arrayPool) throws IOException {
        return m8931b(new C1988a((ByteBuffer) Preconditions.checkNotNull(byteBuffer)), (ArrayPool) Preconditions.checkNotNull(arrayPool));
    }
}
