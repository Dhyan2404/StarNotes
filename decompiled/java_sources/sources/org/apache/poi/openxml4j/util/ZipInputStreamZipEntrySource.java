package org.apache.poi.openxml4j.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.apache.commons.compress.archivers.zip.ZipArchiveEntry;

/* loaded from: classes12.dex */
public class ZipInputStreamZipEntrySource implements ZipEntrySource {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static boolean encryptTempFiles = false;
    private static int thresholdForTempFiles = -1;
    private InputStream streamToClose;
    private final Map<String, ZipArchiveFakeEntry> zipEntries = new HashMap();

    public ZipInputStreamZipEntrySource(ZipArchiveThresholdInputStream zipArchiveThresholdInputStream) throws IOException {
        while (true) {
            ZipArchiveEntry nextEntry = zipArchiveThresholdInputStream.getNextEntry();
            if (nextEntry == null) {
                this.streamToClose = zipArchiveThresholdInputStream;
                return;
            }
            this.zipEntries.put(nextEntry.getName(), new ZipArchiveFakeEntry(nextEntry, zipArchiveThresholdInputStream));
        }
    }

    public static int getThresholdBytesForTempFiles() {
        return thresholdForTempFiles;
    }

    public static void setEncryptTempFiles(boolean z) {
        encryptTempFiles = z;
    }

    public static void setThresholdBytesForTempFiles(int i) {
        thresholdForTempFiles = i;
    }

    public static boolean shouldEncryptTempFiles() {
        return encryptTempFiles;
    }

    @Override // org.apache.poi.openxml4j.util.ZipEntrySource, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        Iterator<ZipArchiveFakeEntry> it2 = this.zipEntries.values().iterator();
        while (it2.hasNext()) {
            it2.next().close();
        }
        this.zipEntries.clear();
        this.streamToClose.close();
    }

    @Override // org.apache.poi.openxml4j.util.ZipEntrySource
    public Enumeration<? extends ZipArchiveEntry> getEntries() {
        return Collections.enumeration(this.zipEntries.values());
    }

    @Override // org.apache.poi.openxml4j.util.ZipEntrySource
    public ZipArchiveEntry getEntry(String str) {
        String replace = str.replace('\\', '/');
        ZipArchiveFakeEntry zipArchiveFakeEntry = this.zipEntries.get(replace);
        if (zipArchiveFakeEntry != null) {
            return zipArchiveFakeEntry;
        }
        for (Map.Entry<String, ZipArchiveFakeEntry> entry : this.zipEntries.entrySet()) {
            if (replace.equalsIgnoreCase(entry.getKey())) {
                return entry.getValue();
            }
        }
        return null;
    }

    @Override // org.apache.poi.openxml4j.util.ZipEntrySource
    public InputStream getInputStream(ZipArchiveEntry zipArchiveEntry) throws IOException {
        return ((ZipArchiveFakeEntry) zipArchiveEntry).getInputStream();
    }

    @Override // org.apache.poi.openxml4j.util.ZipEntrySource
    public boolean isClosed() {
        return this.zipEntries.isEmpty();
    }
}
