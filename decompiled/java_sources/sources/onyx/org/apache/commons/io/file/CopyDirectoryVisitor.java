package onyx.org.apache.commons.io.file;

import java.io.IOException;
import java.nio.file.CopyOption;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.nio.file.attribute.FileAttribute;
import java.util.Arrays;
import java.util.Objects;
import onyx.org.apache.commons.io.file.Counters;

/* loaded from: classes11.dex */
public class CopyDirectoryVisitor extends CountingPathVisitor {

    /* renamed from: j */
    public final CopyOption[] f104221j;

    /* renamed from: k */
    public final Path f104222k;

    /* renamed from: l */
    public final Path f104223l;

    public CopyDirectoryVisitor(Counters.PathCounters pathCounters, Path path, Path path2, CopyOption... copyOptionArr) {
        super(pathCounters);
        this.f104222k = path;
        this.f104223l = path2;
        this.f104221j = m65205f(copyOptionArr);
    }

    /* renamed from: f */
    public static CopyOption[] m65205f(CopyOption... copyOptionArr) {
        return copyOptionArr == null ? PathUtils.EMPTY_COPY_OPTIONS : (CopyOption[]) copyOptionArr.clone();
    }

    public void copy(Path path, Path path2) throws IOException {
        Files.copy(path, path2, this.f104221j);
    }

    /* renamed from: e */
    public final Path m65206e(Path path) {
        return this.f104223l.resolve(this.f104222k.relativize(path).toString());
    }

    @Override // onyx.org.apache.commons.io.file.CountingPathVisitor
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj) || getClass() != obj.getClass()) {
            return false;
        }
        CopyDirectoryVisitor copyDirectoryVisitor = (CopyDirectoryVisitor) obj;
        return Arrays.equals(this.f104221j, copyDirectoryVisitor.f104221j) && Objects.equals(this.f104222k, copyDirectoryVisitor.f104222k) && Objects.equals(this.f104223l, copyDirectoryVisitor.f104223l);
    }

    public CopyOption[] getCopyOptions() {
        return (CopyOption[]) this.f104221j.clone();
    }

    public Path getSourceDirectory() {
        return this.f104222k;
    }

    public Path getTargetDirectory() {
        return this.f104223l;
    }

    @Override // onyx.org.apache.commons.io.file.CountingPathVisitor
    public int hashCode() {
        return (((super.hashCode() * 31) + Arrays.hashCode(this.f104221j)) * 31) + Objects.hash(this.f104222k, this.f104223l);
    }

    @Override // onyx.org.apache.commons.io.file.CountingPathVisitor, java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
    public FileVisitResult preVisitDirectory(Path path, BasicFileAttributes basicFileAttributes) throws IOException {
        Path m65206e = m65206e(path);
        if (Files.notExists(m65206e, new LinkOption[0])) {
            Files.createDirectory(m65206e, new FileAttribute[0]);
        }
        return super.preVisitDirectory(path, basicFileAttributes);
    }

    @Override // onyx.org.apache.commons.io.file.CountingPathVisitor, java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
    public FileVisitResult visitFile(Path path, BasicFileAttributes basicFileAttributes) throws IOException {
        Path m65206e = m65206e(path);
        copy(path, m65206e);
        return super.visitFile(m65206e, basicFileAttributes);
    }

    public CopyDirectoryVisitor(Counters.PathCounters pathCounters, PathFilter pathFilter, PathFilter pathFilter2, Path path, Path path2, CopyOption... copyOptionArr) {
        super(pathCounters, pathFilter, pathFilter2);
        this.f104222k = path;
        this.f104223l = path2;
        this.f104221j = m65205f(copyOptionArr);
    }
}
