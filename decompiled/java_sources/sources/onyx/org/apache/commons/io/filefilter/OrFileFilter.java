package onyx.org.apache.commons.io.filefilter;

import com.google.android.material.motion.MotionUtils;
import java.io.File;
import java.io.Serializable;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.stream.Stream;
import onyx.org.apache.commons.io.filefilter.IOFileFilter;
import onyx.org.apache.commons.io.filefilter.OrFileFilter;

/* loaded from: classes11.dex */
public class OrFileFilter extends AbstractFileFilter implements ConditionalFileFilter, Serializable {
    private static final long serialVersionUID = 5767770777065432721L;
    private final List<IOFileFilter> fileFilters;

    public OrFileFilter() {
        this(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$accept$0(File file, IOFileFilter iOFileFilter) {
        return iOFileFilter.accept(file);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$accept$1(File file, String str, IOFileFilter iOFileFilter) {
        return iOFileFilter.accept(file, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$accept$2(Path path, BasicFileAttributes basicFileAttributes, IOFileFilter iOFileFilter) {
        return iOFileFilter.accept(path, basicFileAttributes) == FileVisitResult.CONTINUE;
    }

    @Override // onyx.org.apache.commons.io.filefilter.AbstractFileFilter, onyx.org.apache.commons.io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(final File file) {
        return this.fileFilters.stream().anyMatch(new Predicate() { // from class: com.sunia.HTREnginev2.shk
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$accept$0;
                lambda$accept$0 = OrFileFilter.lambda$accept$0(file, (IOFileFilter) obj);
                return lambda$accept$0;
            }
        });
    }

    @Override // onyx.org.apache.commons.io.filefilter.ConditionalFileFilter
    public void addFileFilter(IOFileFilter iOFileFilter) {
        List<IOFileFilter> list = this.fileFilters;
        Objects.requireNonNull(iOFileFilter, "fileFilter");
        list.add(iOFileFilter);
    }

    @Override // onyx.org.apache.commons.io.filefilter.ConditionalFileFilter
    public List<IOFileFilter> getFileFilters() {
        return Collections.unmodifiableList(this.fileFilters);
    }

    @Override // onyx.org.apache.commons.io.filefilter.ConditionalFileFilter
    public boolean removeFileFilter(IOFileFilter iOFileFilter) {
        return this.fileFilters.remove(iOFileFilter);
    }

    @Override // onyx.org.apache.commons.io.filefilter.ConditionalFileFilter
    public void setFileFilters(List<IOFileFilter> list) {
        this.fileFilters.clear();
        List<IOFileFilter> list2 = this.fileFilters;
        Objects.requireNonNull(list, "fileFilters");
        list2.addAll(list);
    }

    @Override // onyx.org.apache.commons.io.filefilter.AbstractFileFilter
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append(MotionUtils.f31761c);
        append(this.fileFilters, sb);
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    private OrFileFilter(ArrayList<IOFileFilter> arrayList) {
        Objects.requireNonNull(arrayList, "initialList");
        this.fileFilters = arrayList;
    }

    @Override // onyx.org.apache.commons.io.filefilter.AbstractFileFilter, onyx.org.apache.commons.io.filefilter.IOFileFilter, java.io.FilenameFilter
    public boolean accept(final File file, final String str) {
        return this.fileFilters.stream().anyMatch(new Predicate() { // from class: com.sunia.HTREnginev2.vhk
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$accept$1;
                lambda$accept$1 = OrFileFilter.lambda$accept$1(file, str, (IOFileFilter) obj);
                return lambda$accept$1;
            }
        });
    }

    public void addFileFilter(IOFileFilter... iOFileFilterArr) {
        Objects.requireNonNull(iOFileFilterArr, "fileFilters");
        Stream.of((Object[]) iOFileFilterArr).forEach(new Consumer() { // from class: com.sunia.HTREnginev2.thk
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                OrFileFilter.this.addFileFilter((IOFileFilter) obj);
            }
        });
    }

    @Override // onyx.org.apache.commons.io.filefilter.IOFileFilter, onyx.org.apache.commons.io.file.PathFilter
    public FileVisitResult accept(final Path path, final BasicFileAttributes basicFileAttributes) {
        return AbstractFileFilter.toDefaultFileVisitResult(this.fileFilters.stream().anyMatch(new Predicate() { // from class: com.sunia.HTREnginev2.uhk
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$accept$2;
                lambda$accept$2 = OrFileFilter.lambda$accept$2(path, basicFileAttributes, (IOFileFilter) obj);
                return lambda$accept$2;
            }
        }));
    }

    private OrFileFilter(int i) {
        this((ArrayList<IOFileFilter>) new ArrayList(i));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OrFileFilter(IOFileFilter... iOFileFilterArr) {
        this(iOFileFilterArr.length);
        Objects.requireNonNull(iOFileFilterArr, "fileFilters");
        addFileFilter(iOFileFilterArr);
    }

    public OrFileFilter(IOFileFilter iOFileFilter, IOFileFilter iOFileFilter2) {
        this(2);
        addFileFilter(iOFileFilter);
        addFileFilter(iOFileFilter2);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OrFileFilter(List<IOFileFilter> list) {
        this((ArrayList<IOFileFilter>) new ArrayList(list));
        Objects.requireNonNull(list, "fileFilters");
    }
}
