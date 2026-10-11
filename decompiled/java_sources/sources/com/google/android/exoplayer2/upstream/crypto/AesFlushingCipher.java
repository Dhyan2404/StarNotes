package com.google.android.exoplayer2.upstream.crypto;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.nio.ByteBuffer;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes5.dex */
public final class AesFlushingCipher {

    /* renamed from: a */
    public final Cipher f28258a;

    /* renamed from: b */
    public final int f28259b;

    /* renamed from: c */
    public final byte[] f28260c;

    /* renamed from: d */
    public final byte[] f28261d;

    /* renamed from: e */
    public int f28262e;

    public AesFlushingCipher(int i, byte[] bArr, @Nullable String str, long j) {
        this(i, bArr, m21414a(str), j);
    }

    /* renamed from: a */
    public static long m21414a(@Nullable String str) {
        long j = 0;
        if (str == null) {
            return 0L;
        }
        for (int i = 0; i < str.length(); i++) {
            long charAt = j ^ str.charAt(i);
            j = charAt + (charAt << 1) + (charAt << 4) + (charAt << 5) + (charAt << 7) + (charAt << 8) + (charAt << 40);
        }
        return j;
    }

    /* renamed from: b */
    public final byte[] m21415b(long j, long j2) {
        return ByteBuffer.allocate(16).putLong(j).putLong(j2).array();
    }

    /* renamed from: c */
    public final int m21416c(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        try {
            return this.f28258a.update(bArr, i, i2, bArr2, i3);
        } catch (ShortBufferException e) {
            throw new RuntimeException(e);
        }
    }

    public void update(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        int i4 = i;
        do {
            int i5 = this.f28262e;
            if (i5 <= 0) {
                int m21416c = m21416c(bArr, i4, i2, bArr2, i3);
                if (i2 == m21416c) {
                    return;
                }
                int i6 = i2 - m21416c;
                int i7 = 0;
                Assertions.checkState(i6 < this.f28259b);
                int i8 = i3 + m21416c;
                int i9 = this.f28259b - i6;
                this.f28262e = i9;
                Assertions.checkState(m21416c(this.f28260c, 0, i9, this.f28261d, 0) == this.f28259b);
                while (i7 < i6) {
                    bArr2[i8] = this.f28261d[i7];
                    i7++;
                    i8++;
                }
                return;
            }
            bArr2[i3] = (byte) (bArr[i4] ^ this.f28261d[this.f28259b - i5]);
            i3++;
            i4++;
            this.f28262e = i5 - 1;
            i2--;
        } while (i2 != 0);
    }

    public void updateInPlace(byte[] bArr, int i, int i2) {
        update(bArr, i, i2, bArr, i);
    }

    public AesFlushingCipher(int i, byte[] bArr, long j, long j2) {
        try {
            Cipher cipher = Cipher.getInstance("AES/CTR/NoPadding");
            this.f28258a = cipher;
            int blockSize = cipher.getBlockSize();
            this.f28259b = blockSize;
            this.f28260c = new byte[blockSize];
            this.f28261d = new byte[blockSize];
            long j3 = j2 / blockSize;
            int i2 = (int) (j2 % blockSize);
            cipher.init(i, new SecretKeySpec(bArr, Util.splitAtFirst(cipher.getAlgorithm(), "/")[0]), new IvParameterSpec(m21415b(j, j3)));
            if (i2 != 0) {
                updateInPlace(new byte[i2], 0, i2);
            }
        } catch (InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | NoSuchPaddingException e) {
            throw new RuntimeException(e);
        }
    }
}
