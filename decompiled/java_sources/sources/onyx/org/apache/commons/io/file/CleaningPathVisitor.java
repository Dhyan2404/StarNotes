package onyx.org.apache.commons.io.file;

import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.Arrays;
import java.util.Objects;
import onyx.org.apache.commons.io.file.Counters;

/* loaded from: classes11.dex */
public class CleaningPathVisitor extends CountingPathVisitor {

    /* renamed from: j */
    public final String[] f104219j;

    /* renamed from: k */
    public final boolean f104220k;

    public CleaningPathVisitor(Counters.PathCounters pathCounters, DeleteOption[] deleteOptionArr, String... strArr) {
        super(pathCounters);
        String[] strArr2 = strArr != null ? (String[]) strArr.clone() : CountingPathVisitor.f104231i;
        Arrays.sort(strArr2);
        this.f104219j = strArr2;
        this.f104220k = StandardDeleteOption.overrideReadOnly(deleteOptionArr);
    }

    public static CountingPathVisitor withBigIntegerCounters() {
        return new CleaningPathVisitor(Counters.bigIntegerPathCounters(), new String[0]);
    }

    public static CountingPathVisitor withLongCounters() {
        return new CleaningPathVisitor(Counters.longPathCounters(), new String[0]);
    }

    /* renamed from: e */
    public final boolean m65204e(Path path) {
        return Arrays.binarySearch(this.f104219j, PathUtils.getFileNameString(path)) < 0;
    }

    @Override // onyx.org.apache.commons.io.file.CountingPathVisitor
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj) || getClass() != obj.getClass()) {
            return false;
        }
        CleaningPathVisitor cleaningPathVisitor = (CleaningPathVisitor) obj;
        return this.f104220k == cleaningPathVisitor.f104220k && Arrays.equals(this.f104219j, cleaningPathVisitor.f104219j);
    }

    @Override // onyx.org.apache.commons.io.file.CountingPathVisitor
    public int hashCode() {
        return (((super.hashCode() * 31) + Arrays.hashCode(this.f104219j)) * 31) + Objects.hash(Boolean.valueOf(this.f104220k));
    }

    @Override // onyx.org.apache.commons.io.file.CountingPathVisitor, java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
    public FileVisitResult preVisitDirectory(Path path, BasicFileAttributes basicFileAttributes) throws IOException {
        super.preVisitDirectory(path, basicFileAttributes);
        return m65204e(path) ? FileVisitResult.CONTINUE : FileVisitResult.SKIP_SUBTREE;
    }

    @Override // onyx.org.apache.commons.io.file.CountingPathVisitor, java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
    public FileVisitResult visitFile(Path path, BasicFileAttributes basicFileAttributes) throws IOException {
        if (m65204e(path) && Files.exists(path, LinkOption.NOFOLLOW_LINKS)) {
            if (this.f104220k) {
                PathUtils.setReadOnly(path, false, LinkOption.NOFOLLOW_LINKS);
            }
            Files.deleteIfExists(path);
        }
        updateFileCounters(path, basicFileAttributes);
        return FileVisitResult.CONTINUE;
    }

    public CleaningPathVisitor(Counters.PathCounters pathCounters, String... strArr) {
        this(pathCounters, PathUtils.EMPTY_DELETE_OPTION_ARRAY, strArr);
    }
}
