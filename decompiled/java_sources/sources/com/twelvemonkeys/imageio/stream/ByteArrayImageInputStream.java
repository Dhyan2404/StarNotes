package com.twelvemonkeys.imageio.stream;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.twelvemonkeys.lang.Validate;
import java.io.IOException;
import javax.imageio.stream.ImageInputStreamImpl;

/* loaded from: classes10.dex */
public final class ByteArrayImageInputStream extends ImageInputStreamImpl {

    /* renamed from: e */
    public final byte[] f94205e;

    /* renamed from: f */
    public final int f94206f;

    /* renamed from: g */
    public final int f94207g;

    public ByteArrayImageInputStream(byte[] bArr) {
        this(bArr, 0, bArr != null ? bArr.length : -1);
    }

    /* renamed from: e0 */
    public static int m60667e0(int i, int i2, int i3, String str) {
        return ((Integer) Validate.isTrue(i3 >= i && i3 <= i2, Integer.valueOf(i3), String.format("%s out of range [%d, %d]: %d", str, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3)))).intValue();
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public boolean isCached() {
        return true;
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public boolean isCachedMemory() {
        return true;
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public long length() {
        return this.f94207g;
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public int read() throws IOException {
        long j = this.streamPos;
        if (j >= this.f94207g) {
            return -1;
        }
        this.bitOffset = 0;
        byte[] bArr = this.f94205e;
        this.streamPos = 1 + j;
        return bArr[((int) j) + this.f94206f] & 255;
    }

    public ByteArrayImageInputStream(byte[] bArr, int i, int i2) {
        this.f94205e = (byte[]) Validate.notNull(bArr, "data");
        this.f94206f = m60667e0(0, bArr.length, i, TypedValues.CycleType.S_WAVE_OFFSET);
        this.f94207g = m60667e0(0, bArr.length - i, i2, "length");
    }

    @Override // javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        long j = this.streamPos;
        int i3 = this.f94207g;
        if (j >= i3) {
            return -1;
        }
        int min = (int) Math.min(i3 - j, i2);
        this.bitOffset = 0;
        System.arraycopy(this.f94205e, ((int) this.streamPos) + this.f94206f, bArr, i, min);
        this.streamPos += min;
        return min;
    }
}
