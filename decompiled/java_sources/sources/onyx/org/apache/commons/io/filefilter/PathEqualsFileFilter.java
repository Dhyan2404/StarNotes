package onyx.org.apache.commons.io.filefilter;

import java.io.File;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.Objects;

/* loaded from: classes11.dex */
public class PathEqualsFileFilter extends AbstractFileFilter {

    /* renamed from: e */
    public final Path f104255e;

    public PathEqualsFileFilter(Path path) {
        this.f104255e = path;
    }

    @Override // onyx.org.apache.commons.io.filefilter.AbstractFileFilter, onyx.org.apache.commons.io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        return Objects.equals(this.f104255e, file.toPath());
    }

    @Override // onyx.org.apache.commons.io.filefilter.IOFileFilter, onyx.org.apache.commons.io.file.PathFilter
    public FileVisitResult accept(Path path, BasicFileAttributes basicFileAttributes) {
        return toFileVisitResult(Objects.equals(this.f104255e, path));
    }
}
