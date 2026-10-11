package com.sunia.HTREnginev2;

import java.io.IOException;
import java.util.Arrays;
import org.apache.commons.compress.archivers.dump.DumpArchiveConstants;
import org.apache.commons.compress.archivers.zip.ZipEncoding;
import org.apache.commons.compress.utils.ByteUtils;

/* loaded from: classes12.dex */
public class yjf {
    /* renamed from: a */
    public static int m58435a(byte[] bArr) {
        int i = 0;
        for (int i2 = 0; i2 < 256; i2++) {
            i += m58437c(bArr, i2 * 4);
        }
        return DumpArchiveConstants.CHECKSUM - (i - m58437c(bArr, 28));
    }

    /* renamed from: b */
    public static final int m58436b(byte[] bArr, int i) {
        return (int) ByteUtils.fromLittleEndian(bArr, i, 2);
    }

    /* renamed from: c */
    public static final int m58437c(byte[] bArr, int i) {
        return (int) ByteUtils.fromLittleEndian(bArr, i, 4);
    }

    /* renamed from: d */
    public static final long m58438d(byte[] bArr, int i) {
        return ByteUtils.fromLittleEndian(bArr, i, 8);
    }

    /* renamed from: e */
    public static String m58439e(ZipEncoding zipEncoding, byte[] bArr, int i, int i2) throws IOException {
        return zipEncoding.decode(Arrays.copyOfRange(bArr, i, i2 + i));
    }

    /* renamed from: f */
    public static final int m58440f(byte[] bArr) {
        return m58437c(bArr, 20);
    }

    /* renamed from: g */
    public static final boolean m58441g(byte[] bArr) {
        return m58437c(bArr, 24) == 60012 && m58437c(bArr, 28) == m58435a(bArr);
    }
}
