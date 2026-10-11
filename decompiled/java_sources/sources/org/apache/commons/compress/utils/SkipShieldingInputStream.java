package org.apache.commons.compress.utils;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes12.dex */
public class SkipShieldingInputStream extends FilterInputStream {

    /* renamed from: e */
    public static final int f107343e = 8192;

    /* renamed from: f */
    public static final byte[] f107344f = new byte[8192];

    public SkipShieldingInputStream(InputStream inputStream) {
        super(inputStream);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        if (j < 0) {
            return 0L;
        }
        return read(f107344f, 0, (int) Math.min(j, 8192L));
    }
}
