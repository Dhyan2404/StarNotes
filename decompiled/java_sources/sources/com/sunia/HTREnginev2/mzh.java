package com.sunia.HTREnginev2;

import com.twelvemonkeys.lang.Validate;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;

/* loaded from: classes10.dex */
public final class mzh extends InputStream {

    /* renamed from: e */
    public final int f78144e;

    /* renamed from: f */
    public final int f78145f;

    /* renamed from: g */
    public final int f78146g;

    /* renamed from: h */
    public final ReadableByteChannel f78147h;

    /* renamed from: i */
    public final ByteBuffer f78148i;

    public mzh(InputStream inputStream, int i, int i2, int i3, ByteOrder byteOrder) {
        this.f78144e = ((Integer) Validate.isTrue(i > 0, Integer.valueOf(i), "width must be greater than 0")).intValue();
        this.f78145f = ((Integer) Validate.isTrue(i3 >= 8 || i2 == 1, Integer.valueOf(i2), "Unsupported samples per pixel for < 8 bit samples: %s")).intValue();
        this.f78146g = ((Integer) Validate.isTrue(m55696w(i3), Integer.valueOf(i3), "Unsupported bits per sample value: %s")).intValue();
        this.f78147h = Channels.newChannel((InputStream) Validate.notNull(inputStream, "stream"));
        ByteBuffer order = ByteBuffer.allocate((((i * i2) * i3) + 7) / 8).order(byteOrder);
        this.f78148i = order;
        order.flip();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            super.close();
        } finally {
            if (this.f78147h.isOpen()) {
                this.f78147h.close();
            }
        }
    }

    /* renamed from: f */
    public final void m55694f() throws EOFException {
        byte[] array = this.f78148i.array();
        int i = this.f78146g;
        int i2 = 1;
        int i3 = 0;
        if (i == 1) {
            int i4 = 0;
            while (i3 < (this.f78144e + 7) / 8) {
                byte b = array[i3];
                int i5 = i4 + ((b >> 7) & 1);
                byte b2 = (byte) ((i5 << 7) & 128);
                int i6 = i5 + ((b >> 6) & 1);
                byte b3 = (byte) (b2 | ((byte) ((i6 << 6) & 64)));
                int i7 = i6 + ((b >> 5) & 1);
                byte b4 = (byte) (b3 | ((byte) ((i7 << 5) & 32)));
                int i8 = i7 + ((b >> 4) & 1);
                byte b5 = (byte) (b4 | ((byte) ((i8 << 4) & 16)));
                int i9 = i8 + ((b >> 3) & 1);
                byte b6 = (byte) (b5 | ((byte) ((i9 << 3) & 8)));
                int i10 = i9 + ((b >> 2) & 1);
                byte b7 = (byte) (b6 | ((byte) ((i10 << 2) & 4)));
                int i11 = i10 + ((b >> 1) & 1);
                byte b8 = (byte) (b7 | ((byte) ((i11 << 1) & 2)));
                i4 = i11 + (b & 1);
                array[i3] = (byte) ((i4 & 1) | b8);
                i3++;
            }
            return;
        }
        if (i == 2) {
            int i12 = 0;
            while (i3 < (this.f78144e + 3) / 4) {
                byte b9 = array[i3];
                int i13 = i12 + ((b9 >> 6) & 3);
                byte b10 = (byte) ((i13 << 6) & 192);
                int i14 = i13 + ((b9 >> 4) & 3);
                byte b11 = (byte) (b10 | ((byte) ((i14 << 4) & 48)));
                int i15 = i14 + ((b9 >> 2) & 3);
                byte b12 = (byte) (b11 | ((byte) ((i15 << 2) & 12)));
                i12 = i15 + (b9 & 3);
                array[i3] = (byte) ((i12 & 3) | b12);
                i3++;
            }
            return;
        }
        if (i == 4) {
            int i16 = 0;
            while (i3 < (this.f78144e + 1) / 2) {
                byte b13 = array[i3];
                int i17 = i16 + ((b13 >> 4) & 15);
                byte b14 = (byte) ((i17 << 4) & 240);
                i16 = i17 + (b13 & 15);
                array[i3] = (byte) ((i16 & 15) | b14);
                i3++;
            }
            return;
        }
        if (i == 8) {
            while (i2 < this.f78144e) {
                int i18 = 0;
                while (true) {
                    int i19 = this.f78145f;
                    if (i18 < i19) {
                        int i20 = (i2 * i19) + i18;
                        array[i20] = (byte) (array[i20 - i19] + array[i20]);
                        i18++;
                    }
                }
                i2++;
            }
            return;
        }
        if (i == 16) {
            while (i2 < this.f78144e) {
                int i21 = 0;
                while (true) {
                    int i22 = this.f78145f;
                    if (i21 < i22) {
                        int i23 = (i2 * i22) + i21;
                        ByteBuffer byteBuffer = this.f78148i;
                        int i24 = i23 * 2;
                        byteBuffer.putShort(i24, (short) (byteBuffer.getShort((i23 - i22) * 2) + this.f78148i.getShort(i24)));
                        i21++;
                    }
                }
                i2++;
            }
            return;
        }
        if (i == 32) {
            while (i2 < this.f78144e) {
                int i25 = 0;
                while (true) {
                    int i26 = this.f78145f;
                    if (i25 < i26) {
                        int i27 = (i2 * i26) + i25;
                        ByteBuffer byteBuffer2 = this.f78148i;
                        int i28 = i27 * 4;
                        byteBuffer2.putInt(i28, byteBuffer2.getInt((i27 - i26) * 4) + this.f78148i.getInt(i28));
                        i25++;
                    }
                }
                i2++;
            }
            return;
        }
        if (i != 64) {
            throw new AssertionError(String.format("Unsupported bits per sample value: %d", Integer.valueOf(this.f78146g)));
        }
        while (i2 < this.f78144e) {
            int i29 = 0;
            while (true) {
                int i30 = this.f78145f;
                if (i29 < i30) {
                    int i31 = (i2 * i30) + i29;
                    ByteBuffer byteBuffer3 = this.f78148i;
                    int i32 = i31 * 8;
                    byteBuffer3.putLong(i32, byteBuffer3.getLong((i31 - i30) * 8) + this.f78148i.getLong(i32));
                    i29++;
                }
            }
            i2++;
        }
    }

    /* renamed from: j */
    public final boolean m55695j() throws IOException {
        this.f78148i.clear();
        do {
        } while (this.f78147h.read(this.f78148i) > 0);
        if (this.f78148i.position() <= 0) {
            ByteBuffer byteBuffer = this.f78148i;
            byteBuffer.position(byteBuffer.capacity());
            return false;
        }
        if (this.f78148i.hasRemaining()) {
            throw new EOFException("Unexpected end of stream");
        }
        m55694f();
        this.f78148i.flip();
        return true;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.f78148i.hasRemaining() || m55695j()) {
            return this.f78148i.get() & 255;
        }
        return -1;
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        if (j < 0) {
            return 0L;
        }
        if (!this.f78148i.hasRemaining() && !m55695j()) {
            return 0L;
        }
        int min = (int) Math.min(this.f78148i.remaining(), j);
        ByteBuffer byteBuffer = this.f78148i;
        byteBuffer.position(byteBuffer.position() + min);
        return min;
    }

    /* renamed from: w */
    public final boolean m55696w(int i) {
        return i == 1 || i == 2 || i == 4 || i == 8 || i == 16 || i == 32 || i == 64;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (!this.f78148i.hasRemaining() && !m55695j()) {
            return -1;
        }
        int min = Math.min(this.f78148i.remaining(), i2);
        this.f78148i.get(bArr, i, min);
        return min;
    }
}
