package org.apache.poi.openxml4j.util;

import java.io.File;
import java.io.IOException;
import org.apache.commons.compress.archivers.zip.ZipArchiveEntry;
import org.apache.commons.compress.archivers.zip.ZipFile;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

/* loaded from: classes12.dex */
public class ZipSecureFile extends ZipFile {
    static final long DEFAULT_MAX_ENTRY_SIZE = 4294967295L;
    static final long DEFAULT_MAX_TEXT_SIZE = 10485760;
    private final String fileName;
    private static final Logger LOG = LogManager.getLogger((Class<?>) ZipSecureFile.class);
    static double MIN_INFLATE_RATIO = 0.01d;
    static long MAX_ENTRY_SIZE = 4294967295L;
    private static long MAX_TEXT_SIZE = 10485760;

    public ZipSecureFile(File file) throws IOException {
        super(file);
        this.fileName = file.getAbsolutePath();
    }

    public static long getMaxEntrySize() {
        return MAX_ENTRY_SIZE;
    }

    public static long getMaxTextSize() {
        return MAX_TEXT_SIZE;
    }

    public static double getMinInflateRatio() {
        return MIN_INFLATE_RATIO;
    }

    public static void setMaxEntrySize(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("Max entry size must be greater than or equal to zero");
        }
        if (j > 4294967295L) {
            LOG.atWarn().log("setting max entry size greater than 4Gb can be risky; set to " + j + " bytes");
        }
        MAX_ENTRY_SIZE = j;
    }

    public static void setMaxTextSize(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("Max text size must be greater than or equal to zero");
        }
        if (j > 10485760) {
            LOG.atWarn().log("setting max text size greater than 10485760 can be risky; set to " + j + " chars");
        }
        MAX_TEXT_SIZE = j;
    }

    public static void setMinInflateRatio(double d) {
        MIN_INFLATE_RATIO = d;
    }

    public String getName() {
        return this.fileName;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipFile
    public ZipArchiveThresholdInputStream getInputStream(ZipArchiveEntry zipArchiveEntry) throws IOException {
        ZipArchiveThresholdInputStream zipArchiveThresholdInputStream = new ZipArchiveThresholdInputStream(super.getInputStream(zipArchiveEntry));
        zipArchiveThresholdInputStream.setEntry(zipArchiveEntry);
        return zipArchiveThresholdInputStream;
    }

    public ZipSecureFile(String str) throws IOException {
        super(str);
        this.fileName = new File(str).getAbsolutePath();
    }
}
