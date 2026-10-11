package onyx.org.apache.commons.io.file.spi;

import java.net.URI;
import java.net.URL;
import java.nio.file.FileSystems;
import java.nio.file.Path;
import java.nio.file.spi.FileSystemProvider;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.function.Predicate;
import onyx.org.apache.commons.io.file.spi.FileSystemProviders;

/* loaded from: classes11.dex */
public class FileSystemProviders {

    /* renamed from: b */
    public static final FileSystemProviders f104249b = new FileSystemProviders(FileSystemProvider.installedProviders());

    /* renamed from: a */
    public final List<FileSystemProvider> f104250a;

    public FileSystemProviders(List<FileSystemProvider> list) {
        this.f104250a = list == null ? Collections.emptyList() : list;
    }

    /* renamed from: b */
    public static /* synthetic */ boolean m65241b(String str, FileSystemProvider fileSystemProvider) {
        return fileSystemProvider.getScheme().equalsIgnoreCase(str);
    }

    public static FileSystemProvider getFileSystemProvider(Path path) {
        Objects.requireNonNull(path, "path");
        return path.getFileSystem().provider();
    }

    public static FileSystemProviders installed() {
        return f104249b;
    }

    public FileSystemProvider getFileSystemProvider(final String str) {
        Objects.requireNonNull(str, "scheme");
        if (str.equalsIgnoreCase("file")) {
            return FileSystems.getDefault().provider();
        }
        return this.f104250a.stream().filter(new Predicate() { // from class: com.sunia.HTREnginev2.rhg
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m65241b;
                m65241b = FileSystemProviders.m65241b(str, (FileSystemProvider) obj);
                return m65241b;
            }
        }).findFirst().orElse(null);
    }

    public FileSystemProvider getFileSystemProvider(URI uri) {
        Objects.requireNonNull(uri, "uri");
        return getFileSystemProvider(uri.getScheme());
    }

    public FileSystemProvider getFileSystemProvider(URL url) {
        Objects.requireNonNull(url, "url");
        return getFileSystemProvider(url.getProtocol());
    }
}
