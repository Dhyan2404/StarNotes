package onyx.org.apache.commons.io.file;

import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.NoSuchFileException;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.Arrays;
import java.util.Objects;
import onyx.org.apache.commons.io.file.Counters;

/* loaded from: classes11.dex */
public class DeletingPathVisitor extends CountingPathVisitor {

    /* renamed from: j */
    public final String[] f104235j;

    /* renamed from: k */
    public final boolean f104236k;

    /* renamed from: l */
    public final LinkOption[] f104237l;

    public DeletingPathVisitor(Counters.PathCounters pathCounters, DeleteOption[] deleteOptionArr, String... strArr) {
        this(pathCounters, PathUtils.noFollowLinkOptionArray(), deleteOptionArr, strArr);
    }

    public static DeletingPathVisitor withBigIntegerCounters() {
        return new DeletingPathVisitor(Counters.bigIntegerPathCounters(), new String[0]);
    }

    public static DeletingPathVisitor withLongCounters() {
        return new DeletingPathVisitor(Counters.longPathCounters(), new String[0]);
    }

    /* renamed from: e */
    public final boolean m65209e(Path path) {
        return Arrays.binarySearch(this.f104235j, PathUtils.getFileNameString(path)) < 0;
    }

    @Override // onyx.org.apache.commons.io.file.CountingPathVisitor
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj) || getClass() != obj.getClass()) {
            return false;
        }
        DeletingPathVisitor deletingPathVisitor = (DeletingPathVisitor) obj;
        return this.f104236k == deletingPathVisitor.f104236k && Arrays.equals(this.f104235j, deletingPathVisitor.f104235j);
    }

    @Override // onyx.org.apache.commons.io.file.CountingPathVisitor
    public int hashCode() {
        return (((super.hashCode() * 31) + Arrays.hashCode(this.f104235j)) * 31) + Objects.hash(Boolean.valueOf(this.f104236k));
    }

    public DeletingPathVisitor(Counters.PathCounters pathCounters, LinkOption[] linkOptionArr, DeleteOption[] deleteOptionArr, String... strArr) {
        super(pathCounters);
        String[] strArr2 = strArr != null ? (String[]) strArr.clone() : CountingPathVisitor.f104231i;
        Arrays.sort(strArr2);
        this.f104235j = strArr2;
        this.f104236k = StandardDeleteOption.overrideReadOnly(deleteOptionArr);
        this.f104237l = linkOptionArr == null ? PathUtils.noFollowLinkOptionArray() : (LinkOption[]) linkOptionArr.clone();
    }

    @Override // onyx.org.apache.commons.io.file.CountingPathVisitor, java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
    public FileVisitResult postVisitDirectory(Path path, IOException iOException) throws IOException {
        if (PathUtils.isEmptyDirectory(path)) {
            Files.deleteIfExists(path);
        }
        return super.postVisitDirectory(path, iOException);
    }

    @Override // onyx.org.apache.commons.io.file.CountingPathVisitor, java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
    public FileVisitResult preVisitDirectory(Path path, BasicFileAttributes basicFileAttributes) throws IOException {
        super.preVisitDirectory(path, basicFileAttributes);
        return m65209e(path) ? FileVisitResult.CONTINUE : FileVisitResult.SKIP_SUBTREE;
    }

    @Override // onyx.org.apache.commons.io.file.CountingPathVisitor, java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
    public FileVisitResult visitFile(Path path, BasicFileAttributes basicFileAttributes) throws IOException {
        if (m65209e(path)) {
            if (Files.exists(path, this.f104237l)) {
                if (this.f104236k) {
                    PathUtils.setReadOnly(path, false, this.f104237l);
                }
                Files.deleteIfExists(path);
            }
            if (Files.isSymbolicLink(path)) {
                try {
                    Files.delete(path);
                } catch (NoSuchFileException unused) {
                }
            }
        }
        updateFileCounters(path, basicFileAttributes);
        return FileVisitResult.CONTINUE;
    }

    public DeletingPathVisitor(Counters.PathCounters pathCounters, String... strArr) {
        this(pathCounters, PathUtils.EMPTY_DELETE_OPTION_ARRAY, strArr);
    }
}
