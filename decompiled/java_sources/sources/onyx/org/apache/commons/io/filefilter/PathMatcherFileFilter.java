package onyx.org.apache.commons.io.filefilter;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.PathMatcher;
import java.util.Objects;

/* loaded from: classes11.dex */
public class PathMatcherFileFilter extends AbstractFileFilter {

    /* renamed from: e */
    public final PathMatcher f104256e;

    public PathMatcherFileFilter(PathMatcher pathMatcher) {
        Objects.requireNonNull(pathMatcher, "pathMatcher");
        this.f104256e = pathMatcher;
    }

    @Override // onyx.org.apache.commons.io.filefilter.AbstractFileFilter, onyx.org.apache.commons.io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        return file != null && matches(file.toPath());
    }

    @Override // onyx.org.apache.commons.io.filefilter.IOFileFilter, java.nio.file.PathMatcher
    public boolean matches(Path path) {
        return this.f104256e.matches(path);
    }
}
