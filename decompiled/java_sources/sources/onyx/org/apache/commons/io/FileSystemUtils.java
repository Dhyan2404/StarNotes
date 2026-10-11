package onyx.org.apache.commons.io;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Objects;

@Deprecated
/* loaded from: classes11.dex */
public class FileSystemUtils {
    @Deprecated
    public FileSystemUtils() {
    }

    /* renamed from: a */
    public static long m65091a(String str) throws IOException {
        Objects.requireNonNull(str, "pathStr");
        Path path = Paths.get(str, new String[0]);
        if (Files.exists(path, new LinkOption[0])) {
            return Files.getFileStore(path.toAbsolutePath()).getUsableSpace();
        }
        throw new IllegalArgumentException(path.toString());
    }

    @Deprecated
    public static long freeSpace(String str) throws IOException {
        return m65091a(str);
    }

    @Deprecated
    public static long freeSpaceKb() throws IOException {
        return freeSpaceKb(-1L);
    }

    @Deprecated
    public static long freeSpaceKb(long j) throws IOException {
        return freeSpaceKb(FileUtils.current().getAbsolutePath(), j);
    }

    @Deprecated
    public static long freeSpaceKb(String str) throws IOException {
        return freeSpaceKb(str, -1L);
    }

    @Deprecated
    public static long freeSpaceKb(String str, long j) throws IOException {
        return m65091a(str) / 1024;
    }
}
