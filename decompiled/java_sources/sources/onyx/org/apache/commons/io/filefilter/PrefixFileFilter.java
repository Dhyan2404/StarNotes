package onyx.org.apache.commons.io.filefilter;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.google.android.material.motion.MotionUtils;
import com.sunia.HTREnginev2.sig;
import java.io.File;
import java.io.Serializable;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.List;
import java.util.Objects;
import java.util.function.Predicate;
import java.util.stream.Stream;
import onyx.org.apache.commons.io.IOCase;
import onyx.org.apache.commons.io.file.PathUtils;
import onyx.org.apache.commons.io.filefilter.PrefixFileFilter;

/* loaded from: classes11.dex */
public class PrefixFileFilter extends AbstractFileFilter implements Serializable {
    private static final long serialVersionUID = 8533897440809599867L;
    private final IOCase isCase;
    private final String[] prefixes;

    public PrefixFileFilter(List<String> list) {
        this(list, IOCase.SENSITIVE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$accept$0(String str, String str2) {
        return this.isCase.checkStartsWith(str, str2);
    }

    @Override // onyx.org.apache.commons.io.filefilter.AbstractFileFilter, onyx.org.apache.commons.io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        return accept(file == null ? null : file.getName());
    }

    @Override // onyx.org.apache.commons.io.filefilter.AbstractFileFilter
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append(MotionUtils.f31761c);
        append(this.prefixes, sb);
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public PrefixFileFilter(List<String> list, IOCase iOCase) {
        Objects.requireNonNull(list, "prefixes");
        this.prefixes = (String[]) list.toArray(IOFileFilter.EMPTY_STRING_ARRAY);
        this.isCase = IOCase.value(iOCase, IOCase.SENSITIVE);
    }

    @Override // onyx.org.apache.commons.io.filefilter.AbstractFileFilter, onyx.org.apache.commons.io.filefilter.IOFileFilter, java.io.FilenameFilter
    public boolean accept(File file, String str) {
        return accept(str);
    }

    @Override // onyx.org.apache.commons.io.filefilter.IOFileFilter, onyx.org.apache.commons.io.file.PathFilter
    public FileVisitResult accept(Path path, BasicFileAttributes basicFileAttributes) {
        return toFileVisitResult(accept((File) PathUtils.getFileName(path, new sig())));
    }

    private boolean accept(final String str) {
        return Stream.of((Object[]) this.prefixes).anyMatch(new Predicate() { // from class: com.sunia.HTREnginev2.x6l
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$accept$0;
                lambda$accept$0 = PrefixFileFilter.this.lambda$accept$0(str, (String) obj);
                return lambda$accept$0;
            }
        });
    }

    public PrefixFileFilter(String str) {
        this(str, IOCase.SENSITIVE);
    }

    public PrefixFileFilter(String... strArr) {
        this(strArr, IOCase.SENSITIVE);
    }

    public PrefixFileFilter(String str, IOCase iOCase) {
        Objects.requireNonNull(str, RequestParameters.PREFIX);
        this.prefixes = new String[]{str};
        this.isCase = IOCase.value(iOCase, IOCase.SENSITIVE);
    }

    public PrefixFileFilter(String[] strArr, IOCase iOCase) {
        Objects.requireNonNull(strArr, "prefixes");
        this.prefixes = (String[]) strArr.clone();
        this.isCase = IOCase.value(iOCase, IOCase.SENSITIVE);
    }
}
