package com.sunia.HTREnginev2;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.commons.compress.MemoryLimitException;
import org.apache.commons.compress.utils.ByteUtils;
import org.apache.commons.compress.utils.FlushShieldFilterOutputStream;
import org.tukaani.xz.LZMA2Options;
import org.tukaani.xz.LZMAInputStream;
import org.tukaani.xz.LZMAOutputStream;

/* loaded from: classes12.dex */
public class pui extends swd {
    public pui() {
        super(LZMA2Options.class, Number.class);
    }

    @Override // com.sunia.HTREnginev2.swd
    /* renamed from: b */
    public InputStream mo56158b(String str, InputStream inputStream, long j, rwd rwdVar, byte[] bArr, int i) throws IOException {
        byte[] bArr2 = rwdVar.f83570d;
        if (bArr2 == null) {
            throw new IOException("Missing LZMA properties");
        }
        if (bArr2.length < 1) {
            throw new IOException("LZMA properties too short");
        }
        byte b = bArr2[0];
        int m56384g = m56384g(rwdVar);
        if (m56384g > 2147483632) {
            throw new IOException("Dictionary larger than 4GiB maximum size used in " + str);
        }
        int memoryUsage = LZMAInputStream.getMemoryUsage(m56384g, b);
        if (memoryUsage > i) {
            throw new MemoryLimitException(memoryUsage, i);
        }
        LZMAInputStream lZMAInputStream = new LZMAInputStream(inputStream, j, b, m56384g);
        lZMAInputStream.enableRelaxedEndCondition();
        return lZMAInputStream;
    }

    @Override // com.sunia.HTREnginev2.swd
    /* renamed from: c */
    public OutputStream mo56159c(OutputStream outputStream, Object obj) throws IOException {
        return new FlushShieldFilterOutputStream(new LZMAOutputStream(outputStream, m56385h(obj), false));
    }

    @Override // com.sunia.HTREnginev2.swd
    /* renamed from: d */
    public byte[] mo56160d(Object obj) throws IOException {
        LZMA2Options m56385h = m56385h(obj);
        byte pb = (byte) ((((m56385h.getPb() * 5) + m56385h.getLp()) * 9) + m56385h.getLc());
        int dictSize = m56385h.getDictSize();
        byte[] bArr = new byte[5];
        bArr[0] = pb;
        ByteUtils.toLittleEndian(bArr, dictSize, 1, 4);
        return bArr;
    }

    @Override // com.sunia.HTREnginev2.swd
    /* renamed from: e */
    public Object mo56161e(rwd rwdVar, InputStream inputStream) throws IOException {
        byte[] bArr = rwdVar.f83570d;
        if (bArr == null) {
            throw new IOException("Missing LZMA properties");
        }
        if (bArr.length < 1) {
            throw new IOException("LZMA properties too short");
        }
        int i = bArr[0] & 255;
        int i2 = i / 45;
        int i3 = i - ((i2 * 9) * 5);
        int i4 = i3 / 9;
        LZMA2Options lZMA2Options = new LZMA2Options();
        lZMA2Options.setPb(i2);
        lZMA2Options.setLcLp(i3 - (i4 * 9), i4);
        lZMA2Options.setDictSize(m56384g(rwdVar));
        return lZMA2Options;
    }

    /* renamed from: g */
    public final int m56384g(rwd rwdVar) throws IllegalArgumentException {
        return (int) ByteUtils.fromLittleEndian(rwdVar.f83570d, 1, 4);
    }

    /* renamed from: h */
    public final LZMA2Options m56385h(Object obj) throws IOException {
        if (obj instanceof LZMA2Options) {
            return (LZMA2Options) obj;
        }
        LZMA2Options lZMA2Options = new LZMA2Options();
        lZMA2Options.setDictSize(m56386i(obj));
        return lZMA2Options;
    }

    /* renamed from: i */
    public final int m56386i(Object obj) {
        return swd.m57269f(obj, 8388608);
    }
}
