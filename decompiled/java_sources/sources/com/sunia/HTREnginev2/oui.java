package com.sunia.HTREnginev2;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.commons.compress.MemoryLimitException;
import org.tukaani.xz.FinishableWrapperOutputStream;
import org.tukaani.xz.LZMA2InputStream;
import org.tukaani.xz.LZMA2Options;

/* loaded from: classes12.dex */
public class oui extends swd {
    public oui() {
        super(LZMA2Options.class, Number.class);
    }

    @Override // com.sunia.HTREnginev2.swd
    /* renamed from: b */
    public InputStream mo56158b(String str, InputStream inputStream, long j, rwd rwdVar, byte[] bArr, int i) throws IOException {
        try {
            int m56163h = m56163h(rwdVar);
            int memoryUsage = LZMA2InputStream.getMemoryUsage(m56163h);
            if (memoryUsage <= i) {
                return new LZMA2InputStream(inputStream, m56163h);
            }
            throw new MemoryLimitException(memoryUsage, i);
        } catch (IllegalArgumentException e) {
            throw new IOException(e.getMessage());
        }
    }

    @Override // com.sunia.HTREnginev2.swd
    /* renamed from: c */
    public OutputStream mo56159c(OutputStream outputStream, Object obj) throws IOException {
        return m56164i(obj).getOutputStream(new FinishableWrapperOutputStream(outputStream));
    }

    @Override // com.sunia.HTREnginev2.swd
    /* renamed from: d */
    public byte[] mo56160d(Object obj) {
        return new byte[]{(byte) (((19 - Integer.numberOfLeadingZeros(m56162g(obj))) * 2) + ((r1 >>> (30 - r2)) - 2))};
    }

    @Override // com.sunia.HTREnginev2.swd
    /* renamed from: e */
    public Object mo56161e(rwd rwdVar, InputStream inputStream) throws IOException {
        return Integer.valueOf(m56163h(rwdVar));
    }

    /* renamed from: g */
    public final int m56162g(Object obj) {
        return obj instanceof LZMA2Options ? ((LZMA2Options) obj).getDictSize() : m56165j(obj);
    }

    /* renamed from: h */
    public final int m56163h(rwd rwdVar) throws IOException {
        byte[] bArr = rwdVar.f83570d;
        if (bArr == null) {
            throw new IOException("Missing LZMA2 properties");
        }
        if (bArr.length < 1) {
            throw new IOException("LZMA2 properties too short");
        }
        int i = bArr[0] & 255;
        if ((i & (-64)) != 0) {
            throw new IOException("Unsupported LZMA2 property bits");
        }
        if (i > 40) {
            throw new IOException("Dictionary larger than 4GiB maximum size");
        }
        if (i == 40) {
            return -1;
        }
        return ((i & 1) | 2) << ((i / 2) + 11);
    }

    /* renamed from: i */
    public final LZMA2Options m56164i(Object obj) throws IOException {
        if (obj instanceof LZMA2Options) {
            return (LZMA2Options) obj;
        }
        LZMA2Options lZMA2Options = new LZMA2Options();
        lZMA2Options.setDictSize(m56165j(obj));
        return lZMA2Options;
    }

    /* renamed from: j */
    public final int m56165j(Object obj) {
        return swd.m57269f(obj, 8388608);
    }
}
