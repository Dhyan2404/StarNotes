package onyx.org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.List;
import java.util.Objects;
import java.util.function.Predicate;
import java.util.stream.Stream;
import onyx.org.apache.commons.io.FilenameUtils;
import onyx.org.apache.commons.io.file.PathUtils;
import onyx.org.apache.commons.io.filefilter.WildcardFilter;

@Deprecated
/* loaded from: classes11.dex */
public class WildcardFilter extends AbstractFileFilter implements Serializable {
    private static final long serialVersionUID = -5037645902506953517L;
    private final String[] wildcards;

    public WildcardFilter(List<String> list) {
        Objects.requireNonNull(list, "wildcards");
        this.wildcards = (String[]) list.toArray(IOFileFilter.EMPTY_STRING_ARRAY);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$accept$0(File file, String str) {
        return FilenameUtils.wildcardMatch(file.getName(), str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$accept$2(Path path, String str) {
        return FilenameUtils.wildcardMatch(PathUtils.getFileNameString(path), str);
    }

    @Override // onyx.org.apache.commons.io.filefilter.AbstractFileFilter, onyx.org.apache.commons.io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(final File file) {
        if (file.isDirectory()) {
            return false;
        }
        return Stream.of((Object[]) this.wildcards).anyMatch(new Predicate() { // from class: com.sunia.HTREnginev2.j7o
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$accept$0;
                lambda$accept$0 = WildcardFilter.lambda$accept$0(file, (String) obj);
                return lambda$accept$0;
            }
        });
    }

    @Override // onyx.org.apache.commons.io.filefilter.AbstractFileFilter, onyx.org.apache.commons.io.filefilter.IOFileFilter, java.io.FilenameFilter
    public boolean accept(File file, final String str) {
        if (file == null || !new File(file, str).isDirectory()) {
            return Stream.of((Object[]) this.wildcards).anyMatch(new Predicate() { // from class: com.sunia.HTREnginev2.k7o
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean wildcardMatch;
                    wildcardMatch = FilenameUtils.wildcardMatch(str, (String) obj);
                    return wildcardMatch;
                }
            });
        }
        return false;
    }

    public WildcardFilter(String str) {
        Objects.requireNonNull(str, "wildcard");
        this.wildcards = new String[]{str};
    }

    @Override // onyx.org.apache.commons.io.filefilter.IOFileFilter, onyx.org.apache.commons.io.file.PathFilter
    public FileVisitResult accept(final Path path, BasicFileAttributes basicFileAttributes) {
        if (Files.isDirectory(path, new LinkOption[0])) {
            return FileVisitResult.TERMINATE;
        }
        return AbstractFileFilter.toDefaultFileVisitResult(Stream.of((Object[]) this.wildcards).anyMatch(new Predicate() { // from class: com.sunia.HTREnginev2.l7o
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$accept$2;
                lambda$accept$2 = WildcardFilter.lambda$accept$2(path, (String) obj);
                return lambda$accept$2;
            }
        }));
    }

    public WildcardFilter(String... strArr) {
        Objects.requireNonNull(strArr, "wildcards");
        this.wildcards = (String[]) strArr.clone();
    }
}
