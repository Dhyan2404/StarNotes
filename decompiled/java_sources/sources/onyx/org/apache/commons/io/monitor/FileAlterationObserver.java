package onyx.org.apache.commons.io.monitor;

import java.io.File;
import java.io.FileFilter;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.stream.Stream;
import onyx.org.apache.commons.io.FileUtils;
import onyx.org.apache.commons.io.IOCase;
import onyx.org.apache.commons.io.comparator.NameFileComparator;
import onyx.org.apache.commons.io.filefilter.TrueFileFilter;
import onyx.org.apache.commons.io.monitor.FileAlterationListener;
import onyx.org.apache.commons.io.monitor.FileAlterationObserver;
import onyx.org.apache.commons.io.monitor.FileEntry;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes11.dex */
public class FileAlterationObserver implements Serializable {
    private static final long serialVersionUID = 1185122225658782848L;
    private final Comparator<File> comparator;
    private final transient FileFilter fileFilter;
    private final transient List<FileAlterationListener> listeners;
    private final FileEntry rootEntry;

    /* renamed from: onyx.org.apache.commons.io.monitor.FileAlterationObserver$a */
    /* loaded from: classes11.dex */
    public static /* synthetic */ class C18657a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f104478a;

        static {
            int[] iArr = new int[IOCase.values().length];
            f104478a = iArr;
            try {
                iArr[IOCase.SYSTEM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f104478a[IOCase.INSENSITIVE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public FileAlterationObserver(File file) {
        this(file, (FileFilter) null);
    }

    private void checkAndFire(FileEntry fileEntry, FileEntry[] fileEntryArr, File[] fileArr) {
        FileEntry[] fileEntryArr2 = fileArr.length > 0 ? new FileEntry[fileArr.length] : FileEntry.EMPTY_FILE_ENTRY_ARRAY;
        int i = 0;
        for (FileEntry fileEntry2 : fileEntryArr) {
            while (i < fileArr.length && this.comparator.compare(fileEntry2.getFile(), fileArr[i]) > 0) {
                FileEntry lambda$listFileEntries$5 = lambda$listFileEntries$5(fileEntry, fileArr[i]);
                fileEntryArr2[i] = lambda$listFileEntries$5;
                fireOnCreate(lambda$listFileEntries$5);
                i++;
            }
            if (i >= fileArr.length || this.comparator.compare(fileEntry2.getFile(), fileArr[i]) != 0) {
                checkAndFire(fileEntry2, fileEntry2.getChildren(), FileUtils.EMPTY_FILE_ARRAY);
                fireOnDelete(fileEntry2);
            } else {
                fireOnChange(fileEntry2, fileArr[i]);
                checkAndFire(fileEntry2, fileEntry2.getChildren(), listFiles(fileArr[i]));
                fileEntryArr2[i] = fileEntry2;
                i++;
            }
        }
        while (i < fileArr.length) {
            FileEntry lambda$listFileEntries$52 = lambda$listFileEntries$5(fileEntry, fileArr[i]);
            fileEntryArr2[i] = lambda$listFileEntries$52;
            fireOnCreate(lambda$listFileEntries$52);
            i++;
        }
        fileEntry.setChildren(fileEntryArr2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: createFileEntry, reason: merged with bridge method [inline-methods] */
    public FileEntry lambda$listFileEntries$5(FileEntry fileEntry, File file) {
        FileEntry newChildInstance = fileEntry.newChildInstance(file);
        newChildInstance.refresh(file);
        newChildInstance.setChildren(listFileEntries(file, newChildInstance));
        return newChildInstance;
    }

    private void fireOnChange(final FileEntry fileEntry, final File file) {
        if (fileEntry.refresh(file)) {
            this.listeners.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.kgg
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    FileAlterationObserver.lambda$fireOnChange$2(FileEntry.this, file, (FileAlterationListener) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fireOnCreate(final FileEntry fileEntry) {
        this.listeners.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.ogg
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                FileAlterationObserver.lambda$fireOnCreate$3(FileEntry.this, (FileAlterationListener) obj);
            }
        });
        Stream.of((Object[]) fileEntry.getChildren()).forEach(new Consumer() { // from class: com.sunia.HTREnginev2.pgg
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                FileAlterationObserver.this.fireOnCreate((FileEntry) obj);
            }
        });
    }

    private void fireOnDelete(final FileEntry fileEntry) {
        this.listeners.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.hgg
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                FileAlterationObserver.lambda$fireOnDelete$4(FileEntry.this, (FileAlterationListener) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkAndNotify$0(FileAlterationListener fileAlterationListener) {
        fileAlterationListener.onStart(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkAndNotify$1(FileAlterationListener fileAlterationListener) {
        fileAlterationListener.onStop(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$fireOnChange$2(FileEntry fileEntry, File file, FileAlterationListener fileAlterationListener) {
        if (fileEntry.isDirectory()) {
            fileAlterationListener.onDirectoryChange(file);
        } else {
            fileAlterationListener.onFileChange(file);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$fireOnCreate$3(FileEntry fileEntry, FileAlterationListener fileAlterationListener) {
        if (fileEntry.isDirectory()) {
            fileAlterationListener.onDirectoryCreate(fileEntry.getFile());
        } else {
            fileAlterationListener.onFileCreate(fileEntry.getFile());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$fireOnDelete$4(FileEntry fileEntry, FileAlterationListener fileAlterationListener) {
        if (fileEntry.isDirectory()) {
            fileAlterationListener.onDirectoryDelete(fileEntry.getFile());
        } else {
            fileAlterationListener.onFileDelete(fileEntry.getFile());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ FileEntry[] lambda$listFileEntries$6(int i) {
        return new FileEntry[i];
    }

    private FileEntry[] listFileEntries(File file, final FileEntry fileEntry) {
        return (FileEntry[]) Stream.of((Object[]) listFiles(file)).map(new Function() { // from class: com.sunia.HTREnginev2.igg
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                FileEntry lambda$listFileEntries$5;
                lambda$listFileEntries$5 = FileAlterationObserver.this.lambda$listFileEntries$5(fileEntry, (File) obj);
                return lambda$listFileEntries$5;
            }
        }).toArray(new IntFunction() { // from class: com.sunia.HTREnginev2.jgg
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                FileEntry[] lambda$listFileEntries$6;
                lambda$listFileEntries$6 = FileAlterationObserver.lambda$listFileEntries$6(i);
                return lambda$listFileEntries$6;
            }
        });
    }

    private File[] listFiles(File file) {
        return file.isDirectory() ? sort(file.listFiles(this.fileFilter)) : FileUtils.EMPTY_FILE_ARRAY;
    }

    private File[] sort(File[] fileArr) {
        if (fileArr == null) {
            return FileUtils.EMPTY_FILE_ARRAY;
        }
        if (fileArr.length > 1) {
            Arrays.sort(fileArr, this.comparator);
        }
        return fileArr;
    }

    private static Comparator<File> toComparator(IOCase iOCase) {
        int i = C18657a.f104478a[IOCase.value(iOCase, IOCase.SYSTEM).ordinal()];
        return i != 1 ? i != 2 ? NameFileComparator.NAME_COMPARATOR : NameFileComparator.NAME_INSENSITIVE_COMPARATOR : NameFileComparator.NAME_SYSTEM_COMPARATOR;
    }

    public void addListener(FileAlterationListener fileAlterationListener) {
        if (fileAlterationListener != null) {
            this.listeners.add(fileAlterationListener);
        }
    }

    public void checkAndNotify() {
        this.listeners.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.lgg
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                FileAlterationObserver.this.lambda$checkAndNotify$0((FileAlterationListener) obj);
            }
        });
        File file = this.rootEntry.getFile();
        if (file.exists()) {
            FileEntry fileEntry = this.rootEntry;
            checkAndFire(fileEntry, fileEntry.getChildren(), listFiles(file));
        } else if (this.rootEntry.isExists()) {
            FileEntry fileEntry2 = this.rootEntry;
            checkAndFire(fileEntry2, fileEntry2.getChildren(), FileUtils.EMPTY_FILE_ARRAY);
        }
        this.listeners.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.mgg
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                FileAlterationObserver.this.lambda$checkAndNotify$1((FileAlterationListener) obj);
            }
        });
    }

    public void destroy() throws Exception {
    }

    public File getDirectory() {
        return this.rootEntry.getFile();
    }

    public FileFilter getFileFilter() {
        return this.fileFilter;
    }

    public Iterable<FileAlterationListener> getListeners() {
        return new ArrayList(this.listeners);
    }

    public void initialize() throws Exception {
        FileEntry fileEntry = this.rootEntry;
        fileEntry.refresh(fileEntry.getFile());
        FileEntry fileEntry2 = this.rootEntry;
        fileEntry2.setChildren(listFileEntries(fileEntry2.getFile(), this.rootEntry));
    }

    public void removeListener(final FileAlterationListener fileAlterationListener) {
        if (fileAlterationListener != null) {
            this.listeners.removeIf(new Predicate() { // from class: com.sunia.HTREnginev2.ngg
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean equals;
                    equals = FileAlterationListener.this.equals((FileAlterationListener) obj);
                    return equals;
                }
            });
        }
    }

    public String toString() {
        return getClass().getSimpleName() + "[file='" + getDirectory().getPath() + Chars.QUOTE + ", " + this.fileFilter.toString() + ", listeners=" + this.listeners.size() + IteratorUtils.f104924b;
    }

    public FileAlterationObserver(File file, FileFilter fileFilter) {
        this(file, fileFilter, (IOCase) null);
    }

    public FileAlterationObserver(File file, FileFilter fileFilter, IOCase iOCase) {
        this(new FileEntry(file), fileFilter, iOCase);
    }

    private FileAlterationObserver(FileEntry fileEntry, FileFilter fileFilter, Comparator<File> comparator) {
        this.listeners = new CopyOnWriteArrayList();
        Objects.requireNonNull(fileEntry, "rootEntry");
        Objects.requireNonNull(fileEntry.getFile(), "rootEntry.getFile()");
        this.rootEntry = fileEntry;
        this.fileFilter = fileFilter == null ? TrueFileFilter.INSTANCE : fileFilter;
        Objects.requireNonNull(comparator, "comparator");
        this.comparator = comparator;
    }

    public FileAlterationObserver(FileEntry fileEntry, FileFilter fileFilter, IOCase iOCase) {
        this(fileEntry, fileFilter, toComparator(iOCase));
    }

    public FileAlterationObserver(String str) {
        this(new File(str));
    }

    public FileAlterationObserver(String str, FileFilter fileFilter) {
        this(new File(str), fileFilter);
    }

    public FileAlterationObserver(String str, FileFilter fileFilter, IOCase iOCase) {
        this(new File(str), fileFilter, iOCase);
    }
}
