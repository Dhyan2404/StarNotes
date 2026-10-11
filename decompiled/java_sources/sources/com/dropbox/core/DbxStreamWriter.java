package com.dropbox.core;

import com.dropbox.core.util.IOUtil;
import java.io.IOException;
import java.io.InputStream;
import java.lang.Throwable;

/* loaded from: classes4.dex */
public abstract class DbxStreamWriter<E extends Throwable> {

    /* loaded from: classes4.dex */
    public static final class InputStreamCopier extends DbxStreamWriter<IOException> {

        /* renamed from: a */
        public final InputStream f16434a;

        public InputStreamCopier(InputStream inputStream) {
            this.f16434a = inputStream;
        }

        @Override // com.dropbox.core.DbxStreamWriter
        public void write(NoThrowOutputStream noThrowOutputStream) throws IOException {
            IOUtil.copyStreamToStream(this.f16434a, noThrowOutputStream);
        }
    }

    public abstract void write(NoThrowOutputStream noThrowOutputStream) throws Throwable;

    /* loaded from: classes4.dex */
    public static final class ByteArrayCopier extends DbxStreamWriter<RuntimeException> {

        /* renamed from: a */
        public final byte[] f16431a;

        /* renamed from: b */
        public final int f16432b;

        /* renamed from: c */
        public final int f16433c;

        public ByteArrayCopier(byte[] bArr, int i, int i2) {
            if (bArr != null) {
                if (i >= 0 && i < bArr.length) {
                    int i3 = i + i2;
                    if (i3 >= i && i3 <= bArr.length) {
                        this.f16431a = bArr;
                        this.f16432b = i;
                        this.f16433c = i2;
                        return;
                    }
                    throw new IllegalArgumentException("'offset+length' is out of bounds");
                }
                throw new IllegalArgumentException("'offset' is out of bounds");
            }
            throw new IllegalArgumentException("'data' can't be null");
        }

        @Override // com.dropbox.core.DbxStreamWriter
        public void write(NoThrowOutputStream noThrowOutputStream) {
            noThrowOutputStream.write(this.f16431a, this.f16432b, this.f16433c);
        }

        public ByteArrayCopier(byte[] bArr) {
            this(bArr, 0, bArr.length);
        }
    }
}
