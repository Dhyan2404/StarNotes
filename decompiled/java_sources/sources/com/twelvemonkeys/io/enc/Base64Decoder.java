package com.twelvemonkeys.io.enc;

import com.alibaba.fastjson2.JSONB;
import com.fasterxml.jackson.core.json.UTF8JsonGenerator;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.apache.commons.compress.compressors.lz4.FramedLZ4CompressorInputStream;

/* loaded from: classes10.dex */
public final class Base64Decoder implements Decoder {

    /* renamed from: b */
    public static final byte[] f94269b = {65, 66, 67, JSONB.Constants.BC_INT32_SHORT_ZERO, 69, 70, JSONB.Constants.BC_INT32_SHORT_MAX, JSONB.Constants.BC_INT32, 73, JSONB.Constants.BC_STR_ASCII_FIX_1, TarConstants.LF_GNUTYPE_LONGLINK, TarConstants.LF_GNUTYPE_LONGNAME, 77, JSONB.Constants.BC_STR_ASCII_FIX_5, 79, FramedLZ4CompressorInputStream.f106197v, 81, 82, TarConstants.LF_GNUTYPE_SPARSE, 84, 85, 86, 87, TarConstants.LF_PAX_EXTENDED_HEADER_UC, 89, 90, 97, 98, 99, 100, 101, 102, TarConstants.LF_PAX_GLOBAL_EXTENDED_HEADER, 104, JSONB.Constants.BC_STR_ASCII_FIX_32, 106, 107, 108, JSONB.Constants.BC_STR_ASCII_FIX_36, 110, 111, 112, 113, 114, 115, 116, UTF8JsonGenerator.f21285e, 118, 119, 120, JSONB.Constants.BC_STR_ASCII, JSONB.Constants.BC_STR_UTF8, 48, TarConstants.LF_LINK, TarConstants.LF_SYMLINK, TarConstants.LF_CHR, TarConstants.LF_BLK, TarConstants.LF_DIR, TarConstants.LF_FIFO, TarConstants.LF_CONTIG, 56, 57, 43, 47};

    /* renamed from: c */
    public static final byte[] f94270c = new byte[256];

    /* renamed from: a */
    public byte[] f94271a = new byte[4];

    static {
        int i = 0;
        for (int i2 = 0; i2 < 255; i2++) {
            f94270c[i2] = -1;
        }
        while (true) {
            byte[] bArr = f94269b;
            if (i >= bArr.length) {
                return;
            }
            f94270c[bArr[i]] = (byte) i;
            i++;
        }
    }

    public static int readFully(InputStream inputStream, byte[] bArr, int i, int i2) throws IOException {
        for (int i3 = 0; i3 < i2; i3++) {
            int read = inputStream.read();
            if (read == -1) {
                if (i3 != 0) {
                    return i3;
                }
                return -1;
            }
            bArr[i3 + i] = (byte) read;
        }
        return i2;
    }

    @Override // com.twelvemonkeys.io.enc.Decoder
    public int decode(InputStream inputStream, ByteBuffer byteBuffer) throws IOException {
        do {
            int i = 0;
            while (true) {
                int i2 = i + 4;
                if (i2 >= 72 || !decodeAtom(inputStream, byteBuffer, 4)) {
                    break;
                }
                i = i2;
            }
            if (!decodeAtom(inputStream, byteBuffer, 72 - i)) {
                break;
            }
        } while (byteBuffer.remaining() > 54);
        return byteBuffer.position();
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean decodeAtom(java.io.InputStream r10, java.nio.ByteBuffer r11, int r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 201
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twelvemonkeys.io.enc.Base64Decoder.decodeAtom(java.io.InputStream, java.nio.ByteBuffer, int):boolean");
    }
}
