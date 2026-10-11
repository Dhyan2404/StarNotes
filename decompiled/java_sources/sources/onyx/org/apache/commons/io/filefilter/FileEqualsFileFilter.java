package onyx.org.apache.commons.io.filefilter;

import java.io.File;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.Objects;

/* loaded from: classes11.dex */
public class FileEqualsFileFilter extends AbstractFileFilter {

    /* renamed from: e */
    public final File f104251e;

    /* renamed from: f */
    public final Path f104252f;

    public FileEqualsFileFilter(File file) {
        Objects.requireNonNull(file, "file");
        this.f104251e = file;
        this.f104252f = file.toPath();
    }

    @Override // onyx.org.apache.commons.io.filefilter.AbstractFileFilter, onyx.org.apache.commons.io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        return Objects.equals(this.f104251e, file);
    }

    @Override // onyx.org.apache.commons.io.filefilter.IOFileFilter, onyx.org.apache.commons.io.file.PathFilter
    public FileVisitResult accept(Path path, BasicFileAttributes basicFileAttributes) {
        return toFileVisitResult(Objects.equals(this.f104252f, path));
    }
}
