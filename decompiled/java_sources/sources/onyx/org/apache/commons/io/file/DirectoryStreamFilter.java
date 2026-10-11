package onyx.org.apache.commons.io.file;

import java.io.IOException;
import java.nio.file.DirectoryStream;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import java.util.Objects;

/* loaded from: classes11.dex */
public class DirectoryStreamFilter implements DirectoryStream.Filter<Path> {

    /* renamed from: a */
    public final PathFilter f104238a;

    public DirectoryStreamFilter(PathFilter pathFilter) {
        Objects.requireNonNull(pathFilter, "pathFilter");
        this.f104238a = pathFilter;
    }

    public PathFilter getPathFilter() {
        return this.f104238a;
    }

    @Override // java.nio.file.DirectoryStream.Filter
    public boolean accept(Path path) throws IOException {
        return this.f104238a.accept(path, PathUtils.readBasicFileAttributes(path, PathUtils.EMPTY_LINK_OPTION_ARRAY)) == FileVisitResult.CONTINUE;
    }
}
