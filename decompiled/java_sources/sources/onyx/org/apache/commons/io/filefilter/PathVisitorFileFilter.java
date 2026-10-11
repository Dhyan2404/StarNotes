package onyx.org.apache.commons.io.filefilter;

import java.io.File;
import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import onyx.org.apache.commons.io.file.NoopPathVisitor;
import onyx.org.apache.commons.io.file.PathUtils;
import onyx.org.apache.commons.io.file.PathVisitor;
import onyx.org.apache.commons.io.filefilter.PathVisitorFileFilter;
import onyx.org.apache.commons.io.function.IOSupplier;

/* loaded from: classes11.dex */
public class PathVisitorFileFilter extends AbstractFileFilter {

    /* renamed from: e */
    public final PathVisitor f104257e;

    public PathVisitorFileFilter(PathVisitor pathVisitor) {
        this.f104257e = pathVisitor == null ? NoopPathVisitor.INSTANCE : pathVisitor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ FileVisitResult m65256b(Path path, BasicFileAttributes basicFileAttributes) throws IOException {
        return Files.isDirectory(path, new LinkOption[0]) ? this.f104257e.postVisitDirectory(path, null) : visitFile(path, basicFileAttributes);
    }

    @Override // onyx.org.apache.commons.io.filefilter.AbstractFileFilter, onyx.org.apache.commons.io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        try {
            Path path = file.toPath();
            return visitFile(path, file.exists() ? PathUtils.readBasicFileAttributes(path) : null) == FileVisitResult.CONTINUE;
        } catch (IOException e) {
            return this.handle(e) == FileVisitResult.CONTINUE;
        }
    }

    @Override // onyx.org.apache.commons.io.filefilter.AbstractFileFilter, java.nio.file.FileVisitor
    public FileVisitResult visitFile(Path path, BasicFileAttributes basicFileAttributes) throws IOException {
        return this.f104257e.visitFile(path, basicFileAttributes);
    }

    @Override // onyx.org.apache.commons.io.filefilter.AbstractFileFilter, onyx.org.apache.commons.io.filefilter.IOFileFilter, java.io.FilenameFilter
    public boolean accept(File file, String str) {
        try {
            Path resolve = file.toPath().resolve(str);
            return accept(resolve, PathUtils.readBasicFileAttributes(resolve)) == FileVisitResult.CONTINUE;
        } catch (IOException e) {
            return this.handle(e) == FileVisitResult.CONTINUE;
        }
    }

    @Override // onyx.org.apache.commons.io.filefilter.IOFileFilter, onyx.org.apache.commons.io.file.PathFilter
    public FileVisitResult accept(final Path path, final BasicFileAttributes basicFileAttributes) {
        return get(new IOSupplier() { // from class: com.sunia.HTREnginev2.tzk
            @Override // onyx.org.apache.commons.io.function.IOSupplier
            public final Object get() {
                FileVisitResult m65256b;
                m65256b = PathVisitorFileFilter.this.m65256b(path, basicFileAttributes);
                return m65256b;
            }
        });
    }
}
