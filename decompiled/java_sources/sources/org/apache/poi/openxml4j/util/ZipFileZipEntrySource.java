package org.apache.poi.openxml4j.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import org.apache.commons.compress.archivers.zip.ZipArchiveEntry;
import org.apache.commons.compress.archivers.zip.ZipFile;

/* loaded from: classes12.dex */
public class ZipFileZipEntrySource implements ZipEntrySource {
    private ZipFile zipArchive;

    public ZipFileZipEntrySource(ZipFile zipFile) {
        this.zipArchive = zipFile;
    }

    @Override // org.apache.poi.openxml4j.util.ZipEntrySource, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        ZipFile zipFile = this.zipArchive;
        if (zipFile != null) {
            zipFile.close();
        }
        this.zipArchive = null;
    }

    @Override // org.apache.poi.openxml4j.util.ZipEntrySource
    public Enumeration<? extends ZipArchiveEntry> getEntries() {
        ZipFile zipFile = this.zipArchive;
        if (zipFile != null) {
            return zipFile.getEntries();
        }
        throw new IllegalStateException("Zip File is closed");
    }

    @Override // org.apache.poi.openxml4j.util.ZipEntrySource
    public ZipArchiveEntry getEntry(String str) {
        String replace = str.replace('\\', '/');
        ZipArchiveEntry entry = this.zipArchive.getEntry(replace);
        if (entry != null) {
            return entry;
        }
        Enumeration<ZipArchiveEntry> entries = this.zipArchive.getEntries();
        while (entries.hasMoreElements()) {
            ZipArchiveEntry nextElement = entries.nextElement();
            if (replace.equalsIgnoreCase(nextElement.getName().replace('\\', '/'))) {
                return nextElement;
            }
        }
        return null;
    }

    @Override // org.apache.poi.openxml4j.util.ZipEntrySource
    public InputStream getInputStream(ZipArchiveEntry zipArchiveEntry) throws IOException {
        ZipFile zipFile = this.zipArchive;
        if (zipFile != null) {
            return zipFile.getInputStream(zipArchiveEntry);
        }
        throw new IllegalStateException("Zip File is closed");
    }

    @Override // org.apache.poi.openxml4j.util.ZipEntrySource
    public boolean isClosed() {
        return this.zipArchive == null;
    }
}
