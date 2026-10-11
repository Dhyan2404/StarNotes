package com.sunia.HTREnginev2;

import com.google.android.exoplayer2.text.cea.Cea608Decoder;
import com.google.common.base.Ascii;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.apache.poi.ss.formula.ptg.DeletedRef3DPtg;

/* loaded from: classes4.dex */
public class z6n {

    /* renamed from: a */
    public static final String f91472a = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

    /* renamed from: b */
    public static final byte[] f91473b = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, TarConstants.LF_BLK, TarConstants.LF_DIR, TarConstants.LF_FIFO, TarConstants.LF_CONTIG, 56, 57, 58, 59, DeletedRef3DPtg.sid, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, Ascii.SUB, Ascii.ESC, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, Cea608Decoder.f26815X, Cea608Decoder.f26816Y, 40, 41, 42, 43, 44, 45, Cea608Decoder.f26822e0, 47, 48, TarConstants.LF_LINK, TarConstants.LF_SYMLINK, TarConstants.LF_CHR, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};

    /* renamed from: a */
    public static final void m58642a(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        byte[] bArr3 = f91473b;
        int i4 = i + 1;
        bArr2[i3] = (byte) ((bArr3[bArr[i] & 255] << 2) | (bArr3[bArr[i4] & 255] >> 4));
        if (i2 > 2) {
            int i5 = i + 2;
            bArr2[i3 + 1] = (byte) (((bArr3[bArr[i4] & 255] << 4) & 240) | (bArr3[bArr[i5] & 255] >> 2));
            if (i2 > 3) {
                bArr2[i3 + 2] = (byte) (bArr3[bArr[i + 3] & 255] | ((bArr3[bArr[i5] & 255] << 6) & 192));
            }
        }
    }

    /* renamed from: b */
    public static final void m58643b(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        bArr2[i3] = (byte) "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt((bArr[i] >> 2) & 63);
        if (i2 == 3) {
            int i4 = i + 1;
            bArr2[i3 + 1] = (byte) "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(((bArr[i] << 4) + (bArr[i4] >> 4)) & 63);
            int i5 = i + 2;
            bArr2[i3 + 2] = (byte) "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(((bArr[i4] << 2) + (bArr[i5] >> 6)) & 63);
            bArr2[i3 + 3] = (byte) "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(bArr[i5] & 63);
            return;
        }
        if (i2 != 2) {
            bArr2[i3 + 1] = (byte) "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt((bArr[i] << 4) & 63);
            return;
        }
        int i6 = bArr[i] << 4;
        int i7 = i + 1;
        bArr2[i3 + 1] = (byte) "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt((i6 + (bArr[i7] >> 4)) & 63);
        bArr2[i3 + 2] = (byte) "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt((bArr[i7] << 2) & 63);
    }
}
