package com.google.api.client.http;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPInputStream;

/* loaded from: classes6.dex */
final class GzipSupport {

    /* loaded from: classes6.dex */
    public static final class OptimisticAvailabilityInputStream extends FilterInputStream {
        private int lastRead;

        public OptimisticAvailabilityInputStream(InputStream inputStream) {
            super(inputStream);
            this.lastRead = 0;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int available() throws IOException {
            return this.lastRead > -1 ? Integer.MAX_VALUE : 0;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() throws IOException {
            int read = super.read();
            this.lastRead = read;
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr) throws IOException {
            int read = super.read(bArr);
            this.lastRead = read;
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            int read = super.read(bArr, i, i2);
            this.lastRead = read;
            return read;
        }
    }

    private GzipSupport() {
    }

    public static GZIPInputStream newGzipInputStream(InputStream inputStream) throws IOException {
        return new GZIPInputStream(new OptimisticAvailabilityInputStream(inputStream));
    }
}
