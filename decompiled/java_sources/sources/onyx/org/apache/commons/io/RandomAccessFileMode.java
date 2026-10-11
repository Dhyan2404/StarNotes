package onyx.org.apache.commons.io;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.RandomAccessFile;
import java.nio.file.Path;
import java.util.Objects;

/* loaded from: classes11.dex */
public enum RandomAccessFileMode {
    READ_ONLY("r"),
    READ_WRITE("rw"),
    READ_WRITE_SYNC_ALL("rws"),
    READ_WRITE_SYNC_CONTENT("rwd");

    private final String mode;

    RandomAccessFileMode(String str) {
        this.mode = str;
    }

    public RandomAccessFile create(File file) throws FileNotFoundException {
        return new RandomAccessFile(file, this.mode);
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.mode;
    }

    public RandomAccessFile create(Path path) throws FileNotFoundException {
        File file = path.toFile();
        Objects.requireNonNull(file, "file");
        return create(file);
    }

    public RandomAccessFile create(String str) throws FileNotFoundException {
        return new RandomAccessFile(str, this.mode);
    }
}
