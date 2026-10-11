package onyx.org.apache.commons.io.filefilter;

import com.google.android.material.motion.MotionUtils;
import java.io.File;
import java.io.Serializable;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.List;
import java.util.Objects;
import java.util.function.Predicate;
import java.util.stream.Stream;
import onyx.org.apache.commons.io.FilenameUtils;
import onyx.org.apache.commons.io.IOCase;
import onyx.org.apache.commons.io.build.AbstractSupplier;
import onyx.org.apache.commons.io.file.PathUtils;
import onyx.org.apache.commons.io.filefilter.WildcardFileFilter;

/* loaded from: classes11.dex */
public class WildcardFileFilter extends AbstractFileFilter implements Serializable {
    private static final long serialVersionUID = -7426486598995782105L;
    private final IOCase ioCase;
    private final String[] wildcards;

    /* loaded from: classes11.dex */
    public static class Builder extends AbstractSupplier<WildcardFileFilter, Builder> {

        /* renamed from: a */
        public String[] f104258a;

        /* renamed from: b */
        public IOCase f104259b = IOCase.SENSITIVE;

        public Builder setIoCase(IOCase iOCase) {
            this.f104259b = IOCase.value(iOCase, IOCase.SENSITIVE);
            return this;
        }

        public Builder setWildcards(List<String> list) {
            setWildcards((String[]) ((List) WildcardFileFilter.requireWildcards(list)).toArray(IOFileFilter.EMPTY_STRING_ARRAY));
            return this;
        }

        @Override // onyx.org.apache.commons.io.function.IOSupplier
        public WildcardFileFilter get() {
            return new WildcardFileFilter(this.f104259b, this.f104258a);
        }

        public Builder setWildcards(String... strArr) {
            this.f104258a = (String[]) WildcardFileFilter.requireWildcards(strArr);
            return this;
        }
    }

    public static Builder builder() {
        return new Builder();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$accept$0(String str, String str2) {
        return FilenameUtils.wildcardMatch(str, str2, this.ioCase);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> T requireWildcards(T t) {
        Objects.requireNonNull(t, "wildcards");
        return t;
    }

    @Override // onyx.org.apache.commons.io.filefilter.AbstractFileFilter, onyx.org.apache.commons.io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        return accept(file.getName());
    }

    @Override // onyx.org.apache.commons.io.filefilter.AbstractFileFilter
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append(MotionUtils.f31761c);
        append(this.wildcards, sb);
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    private WildcardFileFilter(IOCase iOCase, String... strArr) {
        this.wildcards = (String[]) ((String[]) requireWildcards(strArr)).clone();
        this.ioCase = IOCase.value(iOCase, IOCase.SENSITIVE);
    }

    @Override // onyx.org.apache.commons.io.filefilter.AbstractFileFilter, onyx.org.apache.commons.io.filefilter.IOFileFilter, java.io.FilenameFilter
    public boolean accept(File file, String str) {
        return accept(str);
    }

    @Override // onyx.org.apache.commons.io.filefilter.IOFileFilter, onyx.org.apache.commons.io.file.PathFilter
    public FileVisitResult accept(Path path, BasicFileAttributes basicFileAttributes) {
        return toFileVisitResult(accept(PathUtils.getFileNameString(path)));
    }

    private boolean accept(final String str) {
        return Stream.of((Object[]) this.wildcards).anyMatch(new Predicate() { // from class: com.sunia.HTREnginev2.i7o
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$accept$0;
                lambda$accept$0 = WildcardFileFilter.this.lambda$accept$0(str, (String) obj);
                return lambda$accept$0;
            }
        });
    }

    @Deprecated
    public WildcardFileFilter(List<String> list) {
        this(list, IOCase.SENSITIVE);
    }

    @Deprecated
    public WildcardFileFilter(List<String> list, IOCase iOCase) {
        this(iOCase, (String[]) ((List) requireWildcards(list)).toArray(IOFileFilter.EMPTY_STRING_ARRAY));
    }

    @Deprecated
    public WildcardFileFilter(String str) {
        this(IOCase.SENSITIVE, (String) requireWildcards(str));
    }

    @Deprecated
    public WildcardFileFilter(String... strArr) {
        this(IOCase.SENSITIVE, strArr);
    }

    @Deprecated
    public WildcardFileFilter(String str, IOCase iOCase) {
        this(iOCase, str);
    }

    @Deprecated
    public WildcardFileFilter(String[] strArr, IOCase iOCase) {
        this(iOCase, strArr);
    }
}
