package com.sunia.HTREnginev2;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.commons.compress.utils.ByteUtils;

/* loaded from: classes12.dex */
public abstract class swd {

    /* renamed from: a */
    public final Class<?>[] f84636a;

    public swd(Class<?>... clsArr) {
        this.f84636a = clsArr;
    }

    /* renamed from: f */
    public static int m57269f(Object obj, int i) {
        return obj instanceof Number ? ((Number) obj).intValue() : i;
    }

    /* renamed from: a */
    public boolean m57270a(Object obj) {
        for (Class<?> cls : this.f84636a) {
            if (cls.isInstance(obj)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public abstract InputStream mo56158b(String str, InputStream inputStream, long j, rwd rwdVar, byte[] bArr, int i) throws IOException;

    /* renamed from: c */
    public OutputStream mo56159c(OutputStream outputStream, Object obj) throws IOException {
        throw new UnsupportedOperationException("Method doesn't support writing");
    }

    /* renamed from: d */
    public byte[] mo56160d(Object obj) throws IOException {
        return ByteUtils.EMPTY_BYTE_ARRAY;
    }

    /* renamed from: e */
    public Object mo56161e(rwd rwdVar, InputStream inputStream) throws IOException {
        return null;
    }
}
