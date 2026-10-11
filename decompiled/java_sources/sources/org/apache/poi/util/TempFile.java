package org.apache.poi.util;

import java.io.File;
import java.io.IOException;

/* loaded from: classes13.dex */
public final class TempFile {
    public static final String JAVA_IO_TMPDIR = "java.io.tmpdir";
    private static TempFileCreationStrategy strategy = new DefaultTempFileCreationStrategy();

    private TempFile() {
    }

    public static File createTempDirectory(String str) throws IOException {
        return strategy.createTempDirectory(str);
    }

    public static File createTempFile(String str, String str2) throws IOException {
        return strategy.createTempFile(str, str2);
    }

    public static void setTempFileCreationStrategy(TempFileCreationStrategy tempFileCreationStrategy) {
        if (tempFileCreationStrategy == null) {
            throw new IllegalArgumentException("strategy == null");
        }
        strategy = tempFileCreationStrategy;
    }
}
