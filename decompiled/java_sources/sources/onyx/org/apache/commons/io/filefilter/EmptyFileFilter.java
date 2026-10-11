package onyx.org.apache.commons.io.filefilter;

import java.io.File;
import java.io.IOException;
import java.io.Serializable;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.stream.Stream;
import onyx.org.apache.commons.io.IOUtils;
import onyx.org.apache.commons.io.filefilter.EmptyFileFilter;
import onyx.org.apache.commons.io.function.IOSupplier;

/* loaded from: classes11.dex */
public class EmptyFileFilter extends AbstractFileFilter implements Serializable {
    public static final IOFileFilter EMPTY;
    public static final IOFileFilter NOT_EMPTY;
    private static final long serialVersionUID = 3631422087512832211L;

    static {
        EmptyFileFilter emptyFileFilter = new EmptyFileFilter();
        EMPTY = emptyFileFilter;
        NOT_EMPTY = emptyFileFilter.negate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ FileVisitResult lambda$accept$0(Path path) throws IOException {
        if (!Files.isDirectory(path, new LinkOption[0])) {
            return toFileVisitResult(Files.size(path) == 0);
        }
        Stream<Path> list = Files.list(path);
        try {
            FileVisitResult fileVisitResult = toFileVisitResult(list.findFirst().isPresent() ? false : true);
            list.close();
            return fileVisitResult;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (list != null) {
                    try {
                        list.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    @Override // onyx.org.apache.commons.io.filefilter.AbstractFileFilter, onyx.org.apache.commons.io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        if (file == null) {
            return true;
        }
        return file.isDirectory() ? IOUtils.length(file.listFiles()) == 0 : file.length() == 0;
    }

    @Override // onyx.org.apache.commons.io.filefilter.IOFileFilter, onyx.org.apache.commons.io.file.PathFilter
    public FileVisitResult accept(final Path path, BasicFileAttributes basicFileAttributes) {
        if (path == null) {
            return toFileVisitResult(true);
        }
        return get(new IOSupplier() { // from class: com.sunia.HTREnginev2.apf
            @Override // onyx.org.apache.commons.io.function.IOSupplier
            public final Object get() {
                FileVisitResult lambda$accept$0;
                lambda$accept$0 = EmptyFileFilter.this.lambda$accept$0(path);
                return lambda$accept$0;
            }
        });
    }
}
