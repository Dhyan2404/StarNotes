package onyx.org.apache.commons.io.file;

import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import onyx.org.apache.commons.io.file.Counters;
import onyx.org.apache.commons.io.function.IOBiFunction;

/* loaded from: classes11.dex */
public class AccumulatorPathVisitor extends CountingPathVisitor {

    /* renamed from: j */
    public final List<Path> f104217j;

    /* renamed from: k */
    public final List<Path> f104218k;

    public AccumulatorPathVisitor() {
        super(Counters.noopPathCounters());
        this.f104217j = new ArrayList();
        this.f104218k = new ArrayList();
    }

    public static AccumulatorPathVisitor withBigIntegerCounters() {
        return new AccumulatorPathVisitor(Counters.bigIntegerPathCounters());
    }

    public static AccumulatorPathVisitor withLongCounters() {
        return new AccumulatorPathVisitor(Counters.longPathCounters());
    }

    /* renamed from: e */
    public final void m65203e(List<Path> list, Path path) {
        list.add(path.normalize());
    }

    @Override // onyx.org.apache.commons.io.file.CountingPathVisitor
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj) || !(obj instanceof AccumulatorPathVisitor)) {
            return false;
        }
        AccumulatorPathVisitor accumulatorPathVisitor = (AccumulatorPathVisitor) obj;
        return Objects.equals(this.f104217j, accumulatorPathVisitor.f104217j) && Objects.equals(this.f104218k, accumulatorPathVisitor.f104218k);
    }

    public List<Path> getDirList() {
        return new ArrayList(this.f104217j);
    }

    public List<Path> getFileList() {
        return new ArrayList(this.f104218k);
    }

    @Override // onyx.org.apache.commons.io.file.CountingPathVisitor
    public int hashCode() {
        return (super.hashCode() * 31) + Objects.hash(this.f104217j, this.f104218k);
    }

    public List<Path> relativizeDirectories(Path path, boolean z, Comparator<? super Path> comparator) {
        return PathUtils.m65230t(getDirList(), path, z, comparator);
    }

    public List<Path> relativizeFiles(Path path, boolean z, Comparator<? super Path> comparator) {
        return PathUtils.m65230t(getFileList(), path, z, comparator);
    }

    @Override // onyx.org.apache.commons.io.file.CountingPathVisitor
    public void updateDirCounter(Path path, IOException iOException) {
        super.updateDirCounter(path, iOException);
        m65203e(this.f104217j, path);
    }

    @Override // onyx.org.apache.commons.io.file.CountingPathVisitor
    public void updateFileCounters(Path path, BasicFileAttributes basicFileAttributes) {
        super.updateFileCounters(path, basicFileAttributes);
        m65203e(this.f104218k, path);
    }

    public static AccumulatorPathVisitor withBigIntegerCounters(PathFilter pathFilter, PathFilter pathFilter2) {
        return new AccumulatorPathVisitor(Counters.bigIntegerPathCounters(), pathFilter, pathFilter2);
    }

    public static AccumulatorPathVisitor withLongCounters(PathFilter pathFilter, PathFilter pathFilter2) {
        return new AccumulatorPathVisitor(Counters.longPathCounters(), pathFilter, pathFilter2);
    }

    public AccumulatorPathVisitor(Counters.PathCounters pathCounters) {
        super(pathCounters);
        this.f104217j = new ArrayList();
        this.f104218k = new ArrayList();
    }

    public AccumulatorPathVisitor(Counters.PathCounters pathCounters, PathFilter pathFilter, PathFilter pathFilter2) {
        super(pathCounters, pathFilter, pathFilter2);
        this.f104217j = new ArrayList();
        this.f104218k = new ArrayList();
    }

    public AccumulatorPathVisitor(Counters.PathCounters pathCounters, PathFilter pathFilter, PathFilter pathFilter2, IOBiFunction<Path, IOException, FileVisitResult> iOBiFunction) {
        super(pathCounters, pathFilter, pathFilter2, iOBiFunction);
        this.f104217j = new ArrayList();
        this.f104218k = new ArrayList();
    }
}
