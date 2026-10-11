package com.sunia.HTREnginev2;

import com.twelvemonkeys.imageio.metadata.jpeg.JPEG;
import com.twelvemonkeys.lang.Validate;
import java.io.EOFException;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.imageio.IIOException;
import javax.imageio.stream.ImageInputStream;
import javax.imageio.stream.ImageInputStreamImpl;

/* loaded from: classes10.dex */
public final class ari extends ImageInputStreamImpl {

    /* renamed from: e */
    public final ImageInputStream f65016e;

    /* renamed from: f */
    public final List<C13498d> f65017f = new ArrayList(64);

    /* renamed from: g */
    public int f65018g = -1;

    /* renamed from: h */
    public C13498d f65019h;

    /* renamed from: com.sunia.HTREnginev2.ari$a */
    /* loaded from: classes10.dex */
    public static final class C13495a extends C13497c {
        public C13495a(long j, long j2, long j3, ImageInputStream imageInputStream) throws IOException {
            super(JPEG.APP14, j, j2, j3, m53084f(imageInputStream));
        }

        /* renamed from: f */
        public static byte[] m53084f(ImageInputStream imageInputStream) throws IOException {
            byte[] bArr = new byte[16];
            bArr[0] = -1;
            bArr[1] = -18;
            bArr[2] = 0;
            bArr[3] = 14;
            imageInputStream.readFully(bArr, 4, 12);
            return bArr;
        }
    }

    /* renamed from: com.sunia.HTREnginev2.ari$b */
    /* loaded from: classes10.dex */
    public static final class C13496b extends C13497c {
        public C13496b(long j, long j2, long j3, int i, ImageInputStream imageInputStream) throws IOException {
            super(JPEG.DQT, j, j2, j3, m53085f((int) j3, i, imageInputStream));
        }

        /* renamed from: f */
        public static byte[] m53085f(int i, int i2, ImageInputStream imageInputStream) throws IOException {
            byte[] bArr = new byte[i];
            int i3 = i / 128;
            int i4 = (i3 * 64) + 3;
            bArr[0] = -1;
            bArr[1] = -37;
            bArr[2] = (byte) ((i4 >> 8) & 255);
            bArr[3] = (byte) (i4 & 255);
            int i5 = 4;
            bArr[4] = (byte) (i2 & 15);
            imageInputStream.readFully(bArr, 5, i - 5);
            int i6 = 4;
            for (int i7 = 0; i7 < i3; i7++) {
                int i8 = i5 + 1;
                int i9 = i6 + 1;
                bArr[i5] = (byte) (bArr[i6] & 15);
                for (int i10 = 0; i10 < 64; i10++) {
                    bArr[i8 + i10] = bArr[i9 + 1 + (i10 * 2)];
                }
                i5 = i8 + 64;
                i6 = i9 + 128;
            }
            return Arrays.copyOfRange(bArr, 0, i4 + 2);
        }
    }

    /* renamed from: com.sunia.HTREnginev2.ari$c */
    /* loaded from: classes10.dex */
    public static class C13497c extends C13498d {

        /* renamed from: e */
        public final long f65020e;

        /* renamed from: f */
        public final byte[] f65021f;

        /* renamed from: g */
        public int f65022g;

        public C13497c(int i, long j, long j2, long j3, byte[] bArr) {
            super(i, j, j2, bArr.length);
            this.f65020e = j3;
            this.f65021f = bArr;
        }

        @Override // com.sunia.HTREnginev2.ari.C13498d
        /* renamed from: b */
        public int mo53086b(ImageInputStream imageInputStream) {
            byte[] bArr = this.f65021f;
            int i = this.f65022g;
            this.f65022g = i + 1;
            return bArr[i] & 255;
        }

        @Override // com.sunia.HTREnginev2.ari.C13498d
        /* renamed from: c */
        public int mo53087c(ImageInputStream imageInputStream, byte[] bArr, int i, int i2) {
            int min = Math.min(this.f65021f.length - this.f65022g, i2);
            System.arraycopy(this.f65021f, this.f65022g, bArr, i, min);
            this.f65022g += min;
            return min;
        }

        @Override // com.sunia.HTREnginev2.ari.C13498d
        /* renamed from: d */
        public long mo53088d() {
            return this.f65024b + this.f65020e;
        }

        @Override // com.sunia.HTREnginev2.ari.C13498d
        /* renamed from: e */
        public void mo53089e(ImageInputStream imageInputStream, long j) throws IOException {
            this.f65022g = (int) (j - this.f65025c);
            super.mo53089e(imageInputStream, j);
        }
    }

    /* renamed from: com.sunia.HTREnginev2.ari$d */
    /* loaded from: classes10.dex */
    public static class C13498d {

        /* renamed from: a */
        public final int f65023a;

        /* renamed from: b */
        public final long f65024b;

        /* renamed from: c */
        public final long f65025c;

        /* renamed from: d */
        public final long f65026d;

        public C13498d(int i, long j, long j2, long j3) {
            this.f65023a = i;
            this.f65024b = j;
            this.f65025c = j2;
            this.f65026d = j3;
        }

        /* renamed from: a */
        public long m53090a() {
            return this.f65025c + this.f65026d;
        }

        /* renamed from: b */
        public int mo53086b(ImageInputStream imageInputStream) throws IOException {
            return imageInputStream.read();
        }

        /* renamed from: c */
        public int mo53087c(ImageInputStream imageInputStream, byte[] bArr, int i, int i2) throws IOException {
            return imageInputStream.read(bArr, i, i2);
        }

        /* renamed from: d */
        public long mo53088d() {
            return this.f65024b + this.f65026d;
        }

        /* renamed from: e */
        public void mo53089e(ImageInputStream imageInputStream, long j) throws IOException {
            imageInputStream.seek((this.f65024b + j) - this.f65025c);
        }

        public String toString() {
            return String.format("0x%04x[%d-%d]", Integer.valueOf(this.f65023a), Long.valueOf(this.f65024b), Long.valueOf(mo53088d()));
        }
    }

    public ari(ImageInputStream imageInputStream) {
        this.f65016e = (ImageInputStream) Validate.notNull(imageInputStream, "stream");
    }

    /* renamed from: e0 */
    public static String m53077e0(byte[] bArr, int i, int i2) {
        return new String(bArr, i, i2, Charset.forName("ascii"));
    }

    /* renamed from: f0 */
    public static String m53078f0(byte[] bArr, int i) {
        for (int i2 = 0; i2 < bArr.length - i; i2++) {
            int i3 = i + i2;
            if (bArr[i3] == 0 || i2 > 255) {
                return m53077e0(bArr, i, i3);
            }
        }
        return null;
    }

    /* renamed from: h0 */
    public static boolean m53079h0(int i) {
        return i >= 65504 && i <= 65519;
    }

    /* renamed from: i0 */
    public static boolean m53080i0(String str, ImageInputStream imageInputStream) throws IOException {
        Validate.notNull(str, "segmentId");
        imageInputStream.mark();
        try {
            byte[] bArr = new byte[Math.min(str.length() + 1, imageInputStream.readUnsignedShort() - 2)];
            imageInputStream.readFully(bArr);
            return str.equals(m53078f0(bArr, 0));
        } finally {
            imageInputStream.reset();
        }
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl
    public void finalize() throws Throwable {
    }

    /* renamed from: g0 */
    public final C13498d m53081g0() throws IOException {
        int i = this.f65018g;
        if (i == -1) {
            m53083k0();
        } else {
            this.f65019h = this.f65017f.get(i);
        }
        if (this.streamPos >= this.f65019h.m53090a()) {
            int i2 = this.f65018g;
            while (true) {
                i2++;
                if (i2 < this.f65017f.size()) {
                    this.f65018g = i2;
                    C13498d c13498d = this.f65017f.get(i2);
                    this.f65019h = c13498d;
                    long j = this.streamPos;
                    if (j >= c13498d.f65025c && j < c13498d.m53090a()) {
                        this.f65019h.mo53089e(this.f65016e, this.streamPos);
                        return this.f65019h;
                    }
                } else {
                    this.f65016e.seek(this.f65019h.mo53088d());
                    while (true) {
                        long streamPosition = this.f65016e.getStreamPosition();
                        int readUnsignedByte = this.f65016e.readUnsignedByte();
                        while (readUnsignedByte != 255) {
                            readUnsignedByte = this.f65016e.readUnsignedByte();
                            streamPosition++;
                        }
                        long j2 = streamPosition;
                        int readUnsignedByte2 = this.f65016e.readUnsignedByte() | 65280;
                        while (readUnsignedByte2 == 65535) {
                            j2++;
                            readUnsignedByte2 = this.f65016e.readUnsignedByte() | 65280;
                        }
                        boolean m53079h0 = m53079h0(readUnsignedByte2);
                        boolean z = false;
                        boolean z2 = readUnsignedByte2 == 65518 && m53080i0("Adobe", this.f65016e);
                        if (readUnsignedByte2 == 65505 && m53080i0("Exif", this.f65016e)) {
                            z = true;
                        }
                        if (!m53079h0 || z || z2) {
                            if (readUnsignedByte2 == 65497) {
                                C13498d c13498d2 = new C13498d(readUnsignedByte2, j2, this.f65019h.m53090a(), 2L);
                                this.f65019h = c13498d2;
                                this.f65017f.add(c13498d2);
                            } else {
                                long readUnsignedShort = readUnsignedByte2 == 65498 ? Long.MAX_VALUE - j2 : this.f65016e.readUnsignedShort() + 2;
                                if (z2 && readUnsignedShort != 16) {
                                    this.f65019h = new C13495a(j2, this.f65019h.m53090a(), readUnsignedShort, this.f65016e);
                                } else if (readUnsignedByte2 == 65499) {
                                    int read = this.f65016e.read();
                                    if ((read & 16) == 16) {
                                        this.f65019h = new C13496b(j2, this.f65019h.m53090a(), readUnsignedShort, read, this.f65016e);
                                    } else {
                                        this.f65019h = new C13498d(readUnsignedByte2, j2, this.f65019h.m53090a(), readUnsignedShort);
                                    }
                                } else {
                                    this.f65019h = new C13498d(readUnsignedByte2, j2, this.f65019h.m53090a(), readUnsignedShort);
                                }
                                this.f65017f.add(this.f65019h);
                            }
                            this.f65018g = this.f65017f.size() - 1;
                            long j3 = this.streamPos;
                            C13498d c13498d3 = this.f65019h;
                            if (j3 >= c13498d3.f65025c && j3 < c13498d3.m53090a()) {
                                break;
                            }
                            this.f65016e.seek(this.f65019h.mo53088d());
                        } else {
                            this.f65016e.seek(j2 + 2 + this.f65016e.readUnsignedShort());
                        }
                    }
                    this.f65019h.mo53089e(this.f65016e, this.streamPos);
                }
            }
        } else {
            long j4 = this.streamPos;
            C13498d c13498d4 = this.f65019h;
            if (j4 < c13498d4.f65025c) {
                int i3 = this.f65018g;
                while (true) {
                    i3--;
                    if (i3 < 0) {
                        break;
                    }
                    this.f65018g = i3;
                    C13498d c13498d5 = this.f65017f.get(i3);
                    this.f65019h = c13498d5;
                    long j5 = this.streamPos;
                    if (j5 >= c13498d5.f65025c && j5 < c13498d5.m53090a()) {
                        this.f65019h.mo53089e(this.f65016e, this.streamPos);
                        break;
                    }
                }
            } else {
                c13498d4.mo53089e(this.f65016e, j4);
            }
        }
        return this.f65019h;
    }

    /* renamed from: j0 */
    public final void m53082j0() throws IOException {
        C13498d c13498d = this.f65019h;
        if (c13498d != null) {
            long j = this.streamPos;
            if (j >= c13498d.f65025c && j < c13498d.m53090a()) {
                return;
            }
        }
        try {
            m53081g0();
        } catch (EOFException unused) {
        }
    }

    /* renamed from: k0 */
    public final void m53083k0() throws IOException {
        this.f65016e.seek(0L);
        try {
            int readUnsignedShort = this.f65016e.readUnsignedShort();
            if (readUnsignedShort != 65496) {
                throw new IIOException(String.format("Not a JPEG stream (starts with: 0x%04x, expected SOI: 0x%04x)", Integer.valueOf(readUnsignedShort), 65496));
            }
            C13498d c13498d = new C13498d(readUnsignedShort, 0L, 0L, 2L);
            this.f65019h = c13498d;
            this.f65017f.add(c13498d);
            this.f65018g = this.f65017f.size() - 1;
        } catch (EOFException e) {
            throw new IIOException(String.format("Not a JPEG stream (short stream. expected SOI: 0x%04x)", 65496), e);
        }
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public int read() throws IOException {
        this.bitOffset = 0;
        m53082j0();
        int mo53086b = this.f65019h.mo53086b(this.f65016e);
        if (mo53086b != -1) {
            this.streamPos++;
        }
        return mo53086b;
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        this.bitOffset = 0;
        while (true) {
            if (i3 >= i2) {
                break;
            }
            m53082j0();
            long m53090a = this.f65019h.m53090a() - this.streamPos;
            int mo53087c = m53090a == 0 ? -1 : this.f65019h.mo53087c(this.f65016e, bArr, i + i3, (int) Math.min(i2 - i3, m53090a));
            if (mo53087c != -1) {
                this.streamPos += mo53087c;
                i3 += mo53087c;
            } else if (i3 == 0) {
                return -1;
            }
        }
        return i3;
    }
}
