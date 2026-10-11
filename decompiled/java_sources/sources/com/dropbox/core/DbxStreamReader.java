package com.dropbox.core;

import com.dropbox.core.util.IOUtil;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.Throwable;

/* loaded from: classes4.dex */
public abstract class DbxStreamReader<E extends Throwable> {

    /* loaded from: classes4.dex */
    public static final class OutputStreamCopier extends DbxStreamReader<IOException> {

        /* renamed from: a */
        public final OutputStream f16430a;

        public OutputStreamCopier(OutputStream outputStream) {
            this.f16430a = outputStream;
        }

        @Override // com.dropbox.core.DbxStreamReader
        public void read(NoThrowInputStream noThrowInputStream) throws IOException {
            IOUtil.copyStreamToStream(noThrowInputStream, this.f16430a);
        }
    }

    public abstract void read(NoThrowInputStream noThrowInputStream) throws Throwable;

    /* loaded from: classes4.dex */
    public static final class ByteArrayCopier extends DbxStreamReader<RuntimeException> {

        /* renamed from: a */
        public final byte[] f16427a;

        /* renamed from: b */
        public final int f16428b;

        /* renamed from: c */
        public final int f16429c;

        public ByteArrayCopier(byte[] bArr, int i, int i2) {
            if (bArr != null) {
                if (i >= 0 && i < bArr.length) {
                    int i3 = i + i2;
                    if (i3 >= i && i3 <= bArr.length) {
                        this.f16427a = bArr;
                        this.f16428b = i;
                        this.f16429c = i2;
                        return;
                    }
                    throw new IllegalArgumentException("'offset+length' is out of bounds");
                }
                throw new IllegalArgumentException("'offset' is out of bounds");
            }
            throw new IllegalArgumentException("'data' can't be null");
        }

        @Override // com.dropbox.core.DbxStreamReader
        public void read(NoThrowInputStream noThrowInputStream) {
            noThrowInputStream.read(this.f16427a, this.f16428b, this.f16429c);
        }

        public ByteArrayCopier(byte[] bArr) {
            this(bArr, 0, bArr.length);
        }
    }
}
