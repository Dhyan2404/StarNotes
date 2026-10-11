package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONB;
import com.twelvemonkeys.lang.Validate;
import java.io.EOFException;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.Channels;
import java.nio.channels.WritableByteChannel;

/* loaded from: classes10.dex */
public final class nzh extends OutputStream {

    /* renamed from: e */
    public final int f79168e;

    /* renamed from: f */
    public final int f79169f;

    /* renamed from: g */
    public final int f79170g;

    /* renamed from: h */
    public final WritableByteChannel f79171h;

    /* renamed from: i */
    public final ByteBuffer f79172i;

    public nzh(OutputStream outputStream, int i, int i2, int i3, ByteOrder byteOrder) {
        this.f79168e = ((Integer) Validate.isTrue(i > 0, Integer.valueOf(i), "width must be greater than 0")).intValue();
        this.f79169f = ((Integer) Validate.isTrue(i3 >= 8 || i2 == 1, Integer.valueOf(i2), "Unsupported samples per pixel for < 8 bit samples: %s")).intValue();
        this.f79170g = ((Integer) Validate.isTrue(m55813w(i3), Integer.valueOf(i3), "Unsupported bits per sample value: %s")).intValue();
        this.f79171h = Channels.newChannel((OutputStream) Validate.notNull(outputStream, "stream"));
        this.f79172i = ByteBuffer.allocate((((i * i2) * i3) + 7) / 8).order(byteOrder);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            m55812j();
            super.close();
        } finally {
            if (this.f79171h.isOpen()) {
                this.f79171h.close();
            }
        }
    }

    /* renamed from: f */
    public final void m55811f() throws EOFException {
        byte[] array = this.f79172i.array();
        int i = this.f79170g;
        if (i == 1) {
            for (int i2 = ((this.f79168e + 7) / 8) - 1; i2 > 0; i2--) {
                byte b = array[i2];
                int i3 = (b & 128) >> 7;
                int i4 = (b & 64) >> 6;
                byte b2 = (byte) (((byte) ((i3 - (array[i2 - 1] & 1)) << 7)) | (((i4 - i3) << 6) & 64));
                int i5 = (b & 32) >> 5;
                byte b3 = (byte) (b2 | (((i5 - i4) << 5) & 32));
                int i6 = (b & 16) >> 4;
                byte b4 = (byte) (b3 | (((i6 - i5) << 4) & 16));
                int i7 = (b & 8) >> 3;
                byte b5 = (byte) (b4 | (((i7 - i6) << 3) & 8));
                int i8 = (b & 4) >> 2;
                byte b6 = (byte) (b5 | (((i8 - i7) << 2) & 4));
                int i9 = (b & 2) >> 1;
                array[i2] = (byte) ((((b & 1) - i9) & 1) | (((byte) (b6 | (((i9 - i8) << 1) & 2))) & 254));
            }
            byte b7 = array[0];
            int i10 = b7 & 128;
            int i11 = (b7 & 64) >> 6;
            int i12 = (b7 & 32) >> 5;
            int i13 = (b7 & 16) >> 4;
            byte b8 = (byte) (((byte) (((byte) ((((i11 - (i10 >> 7)) << 6) & 64) | ((byte) i10))) | (32 & ((i12 - i11) << 5)))) | (((i13 - i12) << 4) & 16));
            int i14 = (b7 & 8) >> 3;
            byte b9 = (byte) (b8 | (((i14 - i13) << 3) & 8));
            int i15 = (b7 & 4) >> 2;
            byte b10 = (byte) (b9 | (((i15 - i14) << 2) & 4));
            int i16 = (b7 & 2) >> 1;
            array[0] = (byte) ((((b7 & 1) - i16) & 1) | (((byte) (b10 | (((i16 - i15) << 1) & 2))) & 254));
            return;
        }
        if (i == 2) {
            for (int i17 = ((this.f79168e + 3) / 4) - 1; i17 > 0; i17--) {
                byte b11 = array[i17];
                int i18 = (b11 & 192) >> 6;
                int i19 = (b11 & 48) >> 4;
                byte b12 = (byte) (((byte) ((i18 - (array[i17 - 1] & 3)) << 6)) | (((i19 - i18) << 4) & 48));
                int i20 = (b11 & 12) >> 2;
                array[i17] = (byte) ((((b11 & 3) - i20) & 3) | (((byte) (b12 | (((i20 - i19) << 2) & 12))) & 252));
            }
            byte b13 = array[0];
            int i21 = b13 & 192;
            int i22 = (b13 & 48) >> 4;
            int i23 = (b13 & 12) >> 2;
            array[0] = (byte) ((((b13 & 3) - i23) & 3) | (((byte) (((byte) ((((i22 - (i21 >> 6)) << 4) & 48) | ((byte) i21))) | (((i23 - i22) << 2) & 12))) & 252));
            return;
        }
        if (i == 4) {
            for (int i24 = ((this.f79168e + 1) / 2) - 1; i24 > 0; i24--) {
                byte b14 = array[i24];
                int i25 = array[i24 - 1] & 15;
                int i26 = (b14 & JSONB.Constants.BC_INT32_NUM_MIN) >> 4;
                array[i24] = (byte) ((((b14 & 15) - i26) & 15) | (((byte) ((i26 - i25) << 4)) & JSONB.Constants.BC_INT32_NUM_MIN));
            }
            byte b15 = array[0];
            int i27 = b15 & 15;
            int i28 = b15 & JSONB.Constants.BC_INT32_NUM_MIN;
            array[0] = (byte) (i28 | ((i27 - (i28 >> 4)) & 15));
            return;
        }
        if (i == 8) {
            for (int i29 = this.f79168e - 1; i29 > 0; i29--) {
                int i30 = this.f79169f * i29;
                int i31 = 0;
                while (true) {
                    int i32 = this.f79169f;
                    if (i31 < i32) {
                        int i33 = i30 + i31;
                        array[i33] = (byte) (array[i33] - array[i33 - i32]);
                        i31++;
                    }
                }
            }
            return;
        }
        if (i == 16) {
            for (int i34 = this.f79168e - 1; i34 > 0; i34--) {
                int i35 = 0;
                while (true) {
                    int i36 = this.f79169f;
                    if (i35 < i36) {
                        int i37 = (i36 * i34) + i35;
                        ByteBuffer byteBuffer = this.f79172i;
                        int i38 = i37 * 2;
                        byteBuffer.putShort(i38, (short) (byteBuffer.getShort(i38) - this.f79172i.getShort((i37 - this.f79169f) * 2)));
                        i35++;
                    }
                }
            }
            return;
        }
        if (i == 32) {
            for (int i39 = this.f79168e - 1; i39 > 0; i39--) {
                int i40 = 0;
                while (true) {
                    int i41 = this.f79169f;
                    if (i40 < i41) {
                        int i42 = (i41 * i39) + i40;
                        ByteBuffer byteBuffer2 = this.f79172i;
                        int i43 = i42 * 4;
                        byteBuffer2.putInt(i43, byteBuffer2.getInt(i43) - this.f79172i.getInt((i42 - this.f79169f) * 4));
                        i40++;
                    }
                }
            }
            return;
        }
        if (i != 64) {
            throw new AssertionError(String.format("Unsupported bits per sample value: %d", Integer.valueOf(this.f79170g)));
        }
        for (int i44 = this.f79168e - 1; i44 > 0; i44--) {
            int i45 = 0;
            while (true) {
                int i46 = this.f79169f;
                if (i45 < i46) {
                    int i47 = (i46 * i44) + i45;
                    ByteBuffer byteBuffer3 = this.f79172i;
                    int i48 = i47 * 8;
                    byteBuffer3.putLong(i48, byteBuffer3.getLong(i48) - this.f79172i.getLong((i47 - this.f79169f) * 8));
                    i45++;
                }
            }
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        m55812j();
    }

    /* renamed from: j */
    public final boolean m55812j() throws IOException {
        if (this.f79172i.position() == 0) {
            return false;
        }
        m55811f();
        this.f79172i.flip();
        this.f79171h.write(this.f79172i);
        this.f79172i.clear();
        return true;
    }

    /* renamed from: w */
    public final boolean m55813w(int i) {
        return i == 1 || i == 2 || i == 4 || i == 8 || i == 16 || i == 32 || i == 64;
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        this.f79172i.put((byte) i);
        if (this.f79172i.hasRemaining()) {
            return;
        }
        m55812j();
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        while (i2 > 0) {
            int min = Math.min(i2, this.f79172i.remaining());
            this.f79172i.put(bArr, i, min);
            i += min;
            i2 -= min;
            if (!this.f79172i.hasRemaining()) {
                m55812j();
            }
        }
    }
}
