package org.apache.poi.util;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.attribute.FileAttribute;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes13.dex */
public class DefaultTempFileCreationStrategy implements TempFileCreationStrategy {
    public static final String DELETE_FILES_ON_EXIT = "poi.delete.tmp.files.on.exit";
    public static final String POIFILES = "poifiles";
    private volatile File dir;
    private final Lock dirLock;

    public DefaultTempFileCreationStrategy() {
        this(null);
    }

    private void createPOIFilesDirectory() throws IOException {
        if (this.dir == null) {
            this.dirLock.lock();
            try {
                if (this.dir == null) {
                    String property = System.getProperty("java.io.tmpdir");
                    if (property == null) {
                        throw new IOException("System's temporary directory not defined - set the -Djava.io.tmpdir jvm property!");
                    }
                    this.dir = Files.createDirectories(Paths.get(property, POIFILES), new FileAttribute[0]).toFile();
                }
            } finally {
                this.dirLock.unlock();
            }
        }
    }

    @Override // org.apache.poi.util.TempFileCreationStrategy
    public File createTempDirectory(String str) throws IOException {
        createPOIFilesDirectory();
        File file = Files.createTempDirectory(this.dir.toPath(), str, new FileAttribute[0]).toFile();
        file.deleteOnExit();
        return file;
    }

    @Override // org.apache.poi.util.TempFileCreationStrategy
    public File createTempFile(String str, String str2) throws IOException {
        createPOIFilesDirectory();
        File file = Files.createTempFile(this.dir.toPath(), str, str2, new FileAttribute[0]).toFile();
        if (System.getProperty(DELETE_FILES_ON_EXIT) != null) {
            file.deleteOnExit();
        }
        return file;
    }

    public DefaultTempFileCreationStrategy(File file) {
        this.dirLock = new ReentrantLock();
        this.dir = file;
    }
}
