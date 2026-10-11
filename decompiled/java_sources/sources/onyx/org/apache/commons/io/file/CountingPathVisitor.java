package onyx.org.apache.commons.io.file;

import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.Objects;
import onyx.org.apache.commons.io.file.Counters;
import onyx.org.apache.commons.io.filefilter.IOFileFilter;
import onyx.org.apache.commons.io.filefilter.SymbolicLinkFileFilter;
import onyx.org.apache.commons.io.filefilter.TrueFileFilter;
import onyx.org.apache.commons.io.function.IOBiFunction;

/* loaded from: classes11.dex */
public class CountingPathVisitor extends SimplePathVisitor {

    /* renamed from: i */
    public static final String[] f104231i = new String[0];

    /* renamed from: f */
    public final Counters.PathCounters f104232f;

    /* renamed from: g */
    public final PathFilter f104233g;

    /* renamed from: h */
    public final PathFilter f104234h;

    public CountingPathVisitor(Counters.PathCounters pathCounters) {
        this(pathCounters, m65208d(), m65207c());
    }

    /* renamed from: c */
    public static IOFileFilter m65207c() {
        return TrueFileFilter.INSTANCE;
    }

    /* renamed from: d */
    public static IOFileFilter m65208d() {
        return new SymbolicLinkFileFilter(FileVisitResult.TERMINATE, FileVisitResult.CONTINUE);
    }

    public static CountingPathVisitor withBigIntegerCounters() {
        return new CountingPathVisitor(Counters.bigIntegerPathCounters());
    }

    public static CountingPathVisitor withLongCounters() {
        return new CountingPathVisitor(Counters.longPathCounters());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CountingPathVisitor) {
            return Objects.equals(this.f104232f, ((CountingPathVisitor) obj).f104232f);
        }
        return false;
    }

    public Counters.PathCounters getPathCounters() {
        return this.f104232f;
    }

    public int hashCode() {
        return Objects.hash(this.f104232f);
    }

    public String toString() {
        return this.f104232f.toString();
    }

    public void updateDirCounter(Path path, IOException iOException) {
        this.f104232f.getDirectoryCounter().increment();
    }

    public void updateFileCounters(Path path, BasicFileAttributes basicFileAttributes) {
        this.f104232f.getFileCounter().increment();
        this.f104232f.getByteCounter().add(basicFileAttributes.size());
    }

    public CountingPathVisitor(Counters.PathCounters pathCounters, PathFilter pathFilter, PathFilter pathFilter2) {
        Objects.requireNonNull(pathCounters, "pathCounter");
        this.f104232f = pathCounters;
        Objects.requireNonNull(pathFilter, "fileFilter");
        this.f104233g = pathFilter;
        Objects.requireNonNull(pathFilter2, "dirFilter");
        this.f104234h = pathFilter2;
    }

    @Override // java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
    public FileVisitResult postVisitDirectory(Path path, IOException iOException) throws IOException {
        updateDirCounter(path, iOException);
        return FileVisitResult.CONTINUE;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
    public FileVisitResult preVisitDirectory(Path path, BasicFileAttributes basicFileAttributes) throws IOException {
        FileVisitResult accept = this.f104234h.accept(path, basicFileAttributes);
        FileVisitResult fileVisitResult = FileVisitResult.CONTINUE;
        return accept != fileVisitResult ? FileVisitResult.SKIP_SUBTREE : fileVisitResult;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
    public FileVisitResult visitFile(Path path, BasicFileAttributes basicFileAttributes) throws IOException {
        if (Files.exists(path, new LinkOption[0]) && this.f104233g.accept(path, basicFileAttributes) == FileVisitResult.CONTINUE) {
            updateFileCounters(path, basicFileAttributes);
        }
        return FileVisitResult.CONTINUE;
    }

    public CountingPathVisitor(Counters.PathCounters pathCounters, PathFilter pathFilter, PathFilter pathFilter2, IOBiFunction<Path, IOException, FileVisitResult> iOBiFunction) {
        super(iOBiFunction);
        Objects.requireNonNull(pathCounters, "pathCounter");
        this.f104232f = pathCounters;
        Objects.requireNonNull(pathFilter, "fileFilter");
        this.f104233g = pathFilter;
        Objects.requireNonNull(pathFilter2, "dirFilter");
        this.f104234h = pathFilter2;
    }
}
