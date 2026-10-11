package org.apache.poi.openxml4j.util;

import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Locale;
import java.util.zip.ZipException;
import org.apache.commons.compress.archivers.zip.ZipArchiveEntry;
import org.apache.commons.compress.archivers.zip.ZipArchiveInputStream;
import org.apache.commons.compress.utils.InputStreamStatistics;
import org.apache.poi.openxml4j.exceptions.NotOfficeXmlFileException;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public class ZipArchiveThresholdInputStream extends FilterInputStream {
    private static final long GRACE_ENTRY_SIZE = 102400;
    private static final String MAX_ENTRY_SIZE_MSG = "Zip bomb detected! The file would exceed the max size of the expanded data in the zip-file.\nThis may indicates that the file is used to inflate memory usage and thus could pose a security risk.\nYou can adjust this limit via ZipSecureFile.setMaxEntrySize() if you need to work with files which are very large.\nUncompressed size: %d, Raw/compressed size: %d\nLimits: MAX_ENTRY_SIZE: %d, Entry: %s";
    private static final String MIN_INFLATE_RATIO_MSG = "Zip bomb detected! The file would exceed the max. ratio of compressed file size to the size of the expanded data.\nThis may indicate that the file is used to inflate memory usage and thus could pose a security risk.\nYou can adjust this limit via ZipSecureFile.setMinInflateRatio() if you need to work with files which exceed this limit.\nUncompressed size: %d, Raw/compressed size: %d, ratio: %f\nLimits: MIN_INFLATE_RATIO: %f, Entry: %s";
    private ZipArchiveEntry entry;
    private boolean guardState;

    public ZipArchiveThresholdInputStream(InputStream inputStream) {
        super(inputStream);
        this.guardState = true;
        if (inputStream instanceof InputStreamStatistics) {
            return;
        }
        throw new IllegalArgumentException("InputStream of class " + inputStream.getClass() + " is not implementing InputStreamStatistics.");
    }

    private void checkThreshold() throws IOException {
        long j;
        if (this.guardState) {
            InputStreamStatistics inputStreamStatistics = (InputStreamStatistics) ((FilterInputStream) this).in;
            long uncompressedCount = inputStreamStatistics.getUncompressedCount();
            try {
                j = inputStreamStatistics.getCompressedCount();
            } catch (NullPointerException unused) {
                j = 0;
            }
            ZipArchiveEntry zipArchiveEntry = this.entry;
            String name = zipArchiveEntry == null ? "not set" : zipArchiveEntry.getName();
            if (uncompressedCount > ZipSecureFile.MAX_ENTRY_SIZE) {
                throw new IOException(String.format(Locale.ROOT, MAX_ENTRY_SIZE_MSG, Long.valueOf(uncompressedCount), Long.valueOf(j), Long.valueOf(ZipSecureFile.MAX_ENTRY_SIZE), name));
            }
            if (uncompressedCount <= 102400) {
                return;
            }
            double d = j / uncompressedCount;
            if (d < ZipSecureFile.MIN_INFLATE_RATIO) {
                throw new IOException(String.format(Locale.ROOT, MIN_INFLATE_RATIO_MSG, Long.valueOf(uncompressedCount), Long.valueOf(j), Double.valueOf(d), Double.valueOf(ZipSecureFile.MIN_INFLATE_RATIO), name));
            }
        }
    }

    public ZipArchiveEntry getNextEntry() throws IOException {
        if (!(((FilterInputStream) this).in instanceof ZipArchiveInputStream)) {
            throw new IllegalStateException("getNextEntry() is only allowed for stream based zip processing.");
        }
        try {
            ZipArchiveEntry nextZipEntry = ((ZipArchiveInputStream) ((FilterInputStream) this).in).getNextZipEntry();
            this.entry = nextZipEntry;
            return nextZipEntry;
        } catch (EOFException unused) {
            return null;
        } catch (ZipException e) {
            if (e.getMessage().startsWith("Unexpected record signature")) {
                throw new NotOfficeXmlFileException("No valid entries or contents found, this is not a valid OOXML (Office Open XML) file", e);
            }
            throw e;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int read = super.read();
        if (read > -1) {
            checkThreshold();
        }
        return read;
    }

    public void setEntry(ZipArchiveEntry zipArchiveEntry) {
        this.entry = zipArchiveEntry;
    }

    public void setGuardState(boolean z) {
        this.guardState = z;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        long skipFully = IOUtils.skipFully(((FilterInputStream) this).in, j);
        if (skipFully > 0) {
            checkThreshold();
        }
        return skipFully;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = super.read(bArr, i, i2);
        if (read > -1) {
            checkThreshold();
        }
        return read;
    }
}
