package onyx.org.apache.commons.io;

import java.io.File;
import java.io.FileFilter;
import java.io.IOException;
import java.util.Collection;
import java.util.Objects;
import onyx.org.apache.commons.io.filefilter.FileFilterUtils;
import onyx.org.apache.commons.io.filefilter.IOFileFilter;
import onyx.org.apache.commons.io.filefilter.TrueFileFilter;

@Deprecated
/* loaded from: classes11.dex */
public abstract class DirectoryWalker<T> {

    /* renamed from: a */
    public final FileFilter f104163a;

    /* renamed from: b */
    public final int f104164b;

    /* loaded from: classes11.dex */
    public static class CancelException extends IOException {
        private static final long serialVersionUID = 1347339620135041008L;
        private final int depth;
        private final File file;

        public CancelException(File file, int i) {
            this("Operation Cancelled", file, i);
        }

        public int getDepth() {
            return this.depth;
        }

        public File getFile() {
            return this.file;
        }

        public CancelException(String str, File file, int i) {
            super(str);
            this.file = file;
            this.depth = i;
        }
    }

    public DirectoryWalker() {
        this(null, -1);
    }

    /* renamed from: a */
    public final void m65083a(File file, int i, Collection<T> collection) throws IOException {
        checkIfCancelled(file, i, collection);
        if (handleDirectory(file, i, collection)) {
            handleDirectoryStart(file, i, collection);
            int i2 = i + 1;
            int i3 = this.f104164b;
            if (i3 < 0 || i2 <= i3) {
                checkIfCancelled(file, i, collection);
                FileFilter fileFilter = this.f104163a;
                File[] filterDirectoryContents = filterDirectoryContents(file, i, fileFilter == null ? file.listFiles() : file.listFiles(fileFilter));
                if (filterDirectoryContents == null) {
                    handleRestricted(file, i2, collection);
                } else {
                    for (File file2 : filterDirectoryContents) {
                        if (file2.isDirectory()) {
                            m65083a(file2, i2, collection);
                        } else {
                            checkIfCancelled(file2, i2, collection);
                            handleFile(file2, i2, collection);
                            checkIfCancelled(file2, i2, collection);
                        }
                    }
                }
            }
            handleDirectoryEnd(file, i, collection);
        }
        checkIfCancelled(file, i, collection);
    }

    public final void checkIfCancelled(File file, int i, Collection<T> collection) throws IOException {
        if (handleIsCancelled(file, i, collection)) {
            throw new CancelException(file, i);
        }
    }

    public File[] filterDirectoryContents(File file, int i, File... fileArr) throws IOException {
        return fileArr;
    }

    public void handleCancelled(File file, Collection<T> collection, CancelException cancelException) throws IOException {
        throw cancelException;
    }

    public boolean handleDirectory(File file, int i, Collection<T> collection) throws IOException {
        return true;
    }

    public void handleDirectoryEnd(File file, int i, Collection<T> collection) throws IOException {
    }

    public void handleDirectoryStart(File file, int i, Collection<T> collection) throws IOException {
    }

    public void handleEnd(Collection<T> collection) throws IOException {
    }

    public void handleFile(File file, int i, Collection<T> collection) throws IOException {
    }

    public boolean handleIsCancelled(File file, int i, Collection<T> collection) throws IOException {
        return false;
    }

    public void handleRestricted(File file, int i, Collection<T> collection) throws IOException {
    }

    public void handleStart(File file, Collection<T> collection) throws IOException {
    }

    public final void walk(File file, Collection<T> collection) throws IOException {
        Objects.requireNonNull(file, "startDirectory");
        try {
            handleStart(file, collection);
            m65083a(file, 0, collection);
            handleEnd(collection);
        } catch (CancelException e) {
            handleCancelled(file, collection, e);
        }
    }

    public DirectoryWalker(FileFilter fileFilter, int i) {
        this.f104163a = fileFilter;
        this.f104164b = i;
    }

    public DirectoryWalker(IOFileFilter iOFileFilter, IOFileFilter iOFileFilter2, int i) {
        if (iOFileFilter == null && iOFileFilter2 == null) {
            this.f104163a = null;
        } else {
            this.f104163a = FileFilterUtils.makeDirectoryOnly(iOFileFilter == null ? TrueFileFilter.TRUE : iOFileFilter).mo65247or(FileFilterUtils.makeFileOnly(iOFileFilter2 == null ? TrueFileFilter.TRUE : iOFileFilter2));
        }
        this.f104164b = i;
    }
}
