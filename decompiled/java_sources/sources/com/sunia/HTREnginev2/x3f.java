package com.sunia.HTREnginev2;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.tukaani.xz.DeltaOptions;
import org.tukaani.xz.FinishableWrapperOutputStream;
import org.tukaani.xz.UnsupportedOptionsException;

/* loaded from: classes12.dex */
public class x3f extends swd {
    public x3f() {
        super(Number.class);
    }

    @Override // com.sunia.HTREnginev2.swd
    /* renamed from: b */
    public InputStream mo56158b(String str, InputStream inputStream, long j, rwd rwdVar, byte[] bArr, int i) throws IOException {
        return new DeltaOptions(m58147g(rwdVar)).getInputStream(inputStream);
    }

    @Override // com.sunia.HTREnginev2.swd
    /* renamed from: c */
    public OutputStream mo56159c(OutputStream outputStream, Object obj) throws IOException {
        try {
            return new DeltaOptions(swd.m57269f(obj, 1)).getOutputStream(new FinishableWrapperOutputStream(outputStream));
        } catch (UnsupportedOptionsException e) {
            throw new IOException(e.getMessage());
        }
    }

    @Override // com.sunia.HTREnginev2.swd
    /* renamed from: d */
    public byte[] mo56160d(Object obj) {
        return new byte[]{(byte) (swd.m57269f(obj, 1) - 1)};
    }

    @Override // com.sunia.HTREnginev2.swd
    /* renamed from: e */
    public Object mo56161e(rwd rwdVar, InputStream inputStream) {
        return Integer.valueOf(m58147g(rwdVar));
    }

    /* renamed from: g */
    public final int m58147g(rwd rwdVar) {
        byte[] bArr = rwdVar.f83570d;
        if (bArr == null || bArr.length == 0) {
            return 1;
        }
        return (bArr[0] & 255) + 1;
    }
}
