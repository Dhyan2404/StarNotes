package org.apache.poi.xssf.streaming;

import java.io.IOException;
import java.io.OutputStream;
import org.apache.commons.compress.archivers.ArchiveEntry;
import org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream;

/* loaded from: classes13.dex */
class OpcZipArchiveOutputStream extends ZipArchiveOutputStream {
    private final OpcOutputStream out;

    public OpcZipArchiveOutputStream(OutputStream outputStream) {
        super(outputStream);
        this.out = new OpcOutputStream(outputStream);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.out.close();
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream, org.apache.commons.compress.archivers.ArchiveOutputStream
    public void closeArchiveEntry() throws IOException {
        this.out.closeEntry();
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream, org.apache.commons.compress.archivers.ArchiveOutputStream
    public void finish() throws IOException {
        this.out.finish();
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream, java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this.out.flush();
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream, org.apache.commons.compress.archivers.ArchiveOutputStream
    public void putArchiveEntry(ArchiveEntry archiveEntry) throws IOException {
        this.out.putNextEntry(archiveEntry.getName());
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream
    public void setLevel(int i) {
        this.out.setLevel(i);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.out.write(bArr, i, i2);
    }

    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream, java.io.OutputStream
    public void write(int i) throws IOException {
        this.out.write(i);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        this.out.write(bArr);
    }
}
