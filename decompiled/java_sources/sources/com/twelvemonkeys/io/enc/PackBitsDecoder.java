package com.twelvemonkeys.io.enc;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* loaded from: classes10.dex */
public final class PackBitsDecoder implements Decoder {

    /* renamed from: a */
    public final boolean f94273a;

    /* renamed from: b */
    public final byte[] f94274b;

    /* renamed from: c */
    public int f94275c;

    /* renamed from: d */
    public boolean f94276d;

    /* renamed from: e */
    public boolean f94277e;

    public PackBitsDecoder() {
        this(1, false);
    }

    /* renamed from: a */
    public static byte m60698a(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        if (read >= 0) {
            return (byte) read;
        }
        throw new EOFException("Unexpected end of PackBits stream");
    }

    /* renamed from: b */
    public static void m60699b(InputStream inputStream, ByteBuffer byteBuffer, int i) throws IOException {
        if (i < 0) {
            throw new IndexOutOfBoundsException(String.format("Negative length: %d", Integer.valueOf(i)));
        }
        int i2 = 0;
        while (i2 < i) {
            int read = inputStream.read(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position() + i2, i - i2);
            if (read < 0) {
                throw new EOFException("Unexpected end of PackBits stream");
            }
            i2 += read;
        }
        byteBuffer.position(byteBuffer.position() + i2);
    }

    @Override // com.twelvemonkeys.io.enc.Decoder
    public int decode(InputStream inputStream, ByteBuffer byteBuffer) throws IOException {
        int i;
        if (this.f94277e) {
            return -1;
        }
        while (true) {
            if (!byteBuffer.hasRemaining()) {
                break;
            }
            int i2 = 0;
            if (this.f94276d) {
                i = this.f94275c;
                this.f94276d = false;
            } else {
                int read = inputStream.read();
                if (read < 0) {
                    this.f94277e = true;
                    break;
                }
                i = (byte) read;
            }
            if (i >= 0 && i + 1 > byteBuffer.remaining()) {
                this.f94275c = i;
                this.f94276d = true;
                break;
            }
            if (i < 0 && (-i) + 1 > byteBuffer.remaining()) {
                this.f94275c = i;
                this.f94276d = true;
                break;
            }
            if (i >= 0) {
                try {
                    m60699b(inputStream, byteBuffer, this.f94274b.length * (i + 1));
                } catch (IndexOutOfBoundsException e) {
                    throw new DecodeException("Error in PackBits decompression, data seems corrupt", e);
                }
            } else if (this.f94273a || i != -128) {
                while (true) {
                    byte[] bArr = this.f94274b;
                    if (i2 >= bArr.length) {
                        break;
                    }
                    bArr[i2] = m60698a(inputStream);
                    i2++;
                }
                for (int i3 = (-i) + 1; i3 > 0; i3--) {
                    byteBuffer.put(this.f94274b);
                }
            }
        }
        return byteBuffer.position();
    }

    public PackBitsDecoder(boolean z) {
        this(1, z);
    }

    public PackBitsDecoder(int i, boolean z) {
        this.f94274b = new byte[i];
        this.f94273a = z;
    }
}
