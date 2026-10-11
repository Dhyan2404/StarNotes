package onyx.org.apache.commons.io.file;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sunia.HTREnginev2.kig;
import com.sunia.HTREnginev2.rzk;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.math.BigInteger;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.charset.Charset;
import java.nio.file.AccessDeniedException;
import java.nio.file.CopyOption;
import java.nio.file.DirectoryStream;
import java.nio.file.FileVisitOption;
import java.nio.file.FileVisitResult;
import java.nio.file.FileVisitor;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.NoSuchFileException;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.nio.file.attribute.AclEntry;
import java.nio.file.attribute.AclFileAttributeView;
import java.nio.file.attribute.BasicFileAttributes;
import java.nio.file.attribute.DosFileAttributeView;
import java.nio.file.attribute.DosFileAttributes;
import java.nio.file.attribute.FileAttribute;
import java.nio.file.attribute.FileTime;
import java.nio.file.attribute.PosixFileAttributeView;
import java.nio.file.attribute.PosixFileAttributes;
import java.nio.file.attribute.PosixFilePermission;
import java.time.Duration;
import java.time.Instant;
import java.time.chrono.ChronoZonedDateTime;
import java.time.temporal.TemporalAmount;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collector;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import onyx.org.apache.commons.io.Charsets;
import onyx.org.apache.commons.io.FileUtils;
import onyx.org.apache.commons.io.FilenameUtils;
import onyx.org.apache.commons.io.IOUtils;
import onyx.org.apache.commons.io.RandomAccessFileMode;
import onyx.org.apache.commons.io.RandomAccessFiles;
import onyx.org.apache.commons.io.ThreadUtils;
import onyx.org.apache.commons.io.file.Counters;
import onyx.org.apache.commons.io.file.DeleteOption;
import onyx.org.apache.commons.io.file.PathFilter;
import onyx.org.apache.commons.io.file.PathUtils;
import onyx.org.apache.commons.io.file.attribute.FileTimes;
import onyx.org.apache.commons.io.function.IOFunction;
import onyx.org.apache.commons.io.function.IOSupplier;

/* loaded from: classes11.dex */
public final class PathUtils {

    /* renamed from: a */
    public static final OpenOption[] f104239a = {StandardOpenOption.CREATE, StandardOpenOption.TRUNCATE_EXISTING};

    /* renamed from: b */
    public static final OpenOption[] f104240b = {StandardOpenOption.CREATE, StandardOpenOption.APPEND};
    public static final CopyOption[] EMPTY_COPY_OPTIONS = new CopyOption[0];
    public static final DeleteOption[] EMPTY_DELETE_OPTION_ARRAY = new DeleteOption[0];
    public static final FileAttribute<?>[] EMPTY_FILE_ATTRIBUTE_ARRAY = new FileAttribute[0];
    public static final FileVisitOption[] EMPTY_FILE_VISIT_OPTION_ARRAY = new FileVisitOption[0];
    public static final LinkOption[] EMPTY_LINK_OPTION_ARRAY = new LinkOption[0];

    @Deprecated
    public static final LinkOption[] NOFOLLOW_LINK_OPTION_ARRAY = {LinkOption.NOFOLLOW_LINKS};

    /* renamed from: c */
    public static final LinkOption f104241c = null;
    public static final OpenOption[] EMPTY_OPEN_OPTION_ARRAY = new OpenOption[0];
    public static final Path[] EMPTY_PATH_ARRAY = new Path[0];

    /* renamed from: onyx.org.apache.commons.io.file.PathUtils$b */
    /* loaded from: classes11.dex */
    public static final class C18637b {

        /* renamed from: a */
        public final boolean f104242a;

        /* renamed from: b */
        public final List<Path> f104243b;

        /* renamed from: c */
        public final List<Path> f104244c;

        public C18637b(Path path, Path path2, int i, LinkOption[] linkOptionArr, FileVisitOption[] fileVisitOptionArr) throws IOException {
            List<Path> list;
            List<Path> list2 = null;
            if (path == null && path2 == null) {
                this.f104242a = true;
            } else {
                if ((path == null) ^ (path2 == null)) {
                    this.f104242a = false;
                } else {
                    boolean notExists = Files.notExists(path, linkOptionArr);
                    boolean notExists2 = Files.notExists(path2, linkOptionArr);
                    if (!notExists && !notExists2) {
                        AccumulatorPathVisitor m65216f = PathUtils.m65216f(path, i, fileVisitOptionArr);
                        AccumulatorPathVisitor m65216f2 = PathUtils.m65216f(path2, i, fileVisitOptionArr);
                        if (m65216f.getDirList().size() == m65216f2.getDirList().size() && m65216f.getFileList().size() == m65216f2.getFileList().size()) {
                            if (!m65216f.relativizeDirectories(path, true, null).equals(m65216f2.relativizeDirectories(path2, true, null))) {
                                this.f104242a = false;
                            } else {
                                List<Path> relativizeFiles = m65216f.relativizeFiles(path, true, null);
                                List<Path> relativizeFiles2 = m65216f2.relativizeFiles(path2, true, null);
                                this.f104242a = relativizeFiles.equals(relativizeFiles2);
                                list2 = relativizeFiles;
                                list = relativizeFiles2;
                                this.f104243b = list2;
                                this.f104244c = list;
                            }
                        } else {
                            this.f104242a = false;
                        }
                    } else {
                        this.f104242a = notExists && notExists2;
                    }
                }
            }
            list = null;
            this.f104243b = list2;
            this.f104244c = list;
        }
    }

    /* renamed from: A */
    public static <R> R m65210A(Path path, LinkOption[] linkOptionArr, boolean z, IOFunction<PosixFileAttributes, R> iOFunction) throws IOException {
        PosixFileAttributes readPosixFileAttributes = z ? readPosixFileAttributes(path, linkOptionArr) : null;
        try {
            return iOFunction.apply(readPosixFileAttributes);
        } finally {
            if (readPosixFileAttributes != null && path != null && Files.exists(path, linkOptionArr)) {
                Files.setPosixFilePermissions(path, readPosixFileAttributes.permissions());
            }
        }
    }

    public static Counters.PathCounters cleanDirectory(Path path) throws IOException {
        return cleanDirectory(path, EMPTY_DELETE_OPTION_ARRAY);
    }

    public static long copy(IOSupplier<InputStream> iOSupplier, Path path, CopyOption... copyOptionArr) throws IOException {
        InputStream inputStream = iOSupplier.get();
        try {
            long copy = Files.copy(inputStream, path, copyOptionArr);
            if (inputStream != null) {
                inputStream.close();
            }
            return copy;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public static Counters.PathCounters copyDirectory(Path path, Path path2, CopyOption... copyOptionArr) throws IOException {
        Path absolutePath = path.toAbsolutePath();
        return ((CopyDirectoryVisitor) visitFileTree(new CopyDirectoryVisitor(Counters.longPathCounters(), absolutePath, path2, copyOptionArr), absolutePath)).getPathCounters();
    }

    public static Path copyFile(URL url, Path path, CopyOption... copyOptionArr) throws IOException {
        url.getClass();
        copy(new kig(url), path, copyOptionArr);
        return path;
    }

    public static Path copyFileToDirectory(Path path, Path path2, CopyOption... copyOptionArr) throws IOException {
        return Files.copy(path, path2.resolve(path.getFileName()), copyOptionArr);
    }

    public static Counters.PathCounters countDirectory(Path path) throws IOException {
        return ((CountingPathVisitor) visitFileTree(CountingPathVisitor.withLongCounters(), path)).getPathCounters();
    }

    public static Counters.PathCounters countDirectoryAsBigInteger(Path path) throws IOException {
        return ((CountingPathVisitor) visitFileTree(CountingPathVisitor.withBigIntegerCounters(), path)).getPathCounters();
    }

    public static Path createParentDirectories(Path path, FileAttribute<?>... fileAttributeArr) throws IOException {
        return createParentDirectories(path, LinkOption.NOFOLLOW_LINKS, fileAttributeArr);
    }

    public static Path current() {
        return Paths.get(".", new String[0]);
    }

    public static Counters.PathCounters delete(Path path) throws IOException {
        return delete(path, EMPTY_DELETE_OPTION_ARRAY);
    }

    public static Counters.PathCounters deleteDirectory(Path path) throws IOException {
        return deleteDirectory(path, EMPTY_DELETE_OPTION_ARRAY);
    }

    public static Counters.PathCounters deleteFile(Path path) throws IOException {
        return deleteFile(path, EMPTY_DELETE_OPTION_ARRAY);
    }

    public static void deleteOnExit(Path path) {
        File file = path.toFile();
        Objects.requireNonNull(file);
        file.deleteOnExit();
    }

    public static boolean directoryAndFileContentEquals(Path path, Path path2) throws IOException {
        return directoryAndFileContentEquals(path, path2, EMPTY_LINK_OPTION_ARRAY, EMPTY_OPEN_OPTION_ARRAY, EMPTY_FILE_VISIT_OPTION_ARRAY);
    }

    public static boolean directoryContentEquals(Path path, Path path2) throws IOException {
        return directoryContentEquals(path, path2, Integer.MAX_VALUE, EMPTY_LINK_OPTION_ARRAY, EMPTY_FILE_VISIT_OPTION_ARRAY);
    }

    /* renamed from: f */
    public static AccumulatorPathVisitor m65216f(Path path, int i, FileVisitOption[] fileVisitOptionArr) throws IOException {
        return (AccumulatorPathVisitor) visitFileTree(AccumulatorPathVisitor.withLongCounters(), path, m65236z(fileVisitOptionArr), i);
    }

    public static boolean fileContentEquals(Path path, Path path2) throws IOException {
        return fileContentEquals(path, path2, EMPTY_LINK_OPTION_ARRAY, EMPTY_OPEN_OPTION_ARRAY);
    }

    public static Path[] filter(PathFilter pathFilter, Path... pathArr) {
        Objects.requireNonNull(pathFilter, "filter");
        return pathArr == null ? EMPTY_PATH_ARRAY : (Path[]) ((List) m65219i(pathFilter, Stream.of((Object[]) pathArr), Collectors.toList())).toArray(EMPTY_PATH_ARRAY);
    }

    /* renamed from: g */
    public static int m65217g(Path path, FileTime fileTime, LinkOption... linkOptionArr) throws IOException {
        return m65220j(path, linkOptionArr).compareTo(fileTime);
    }

    public static List<AclEntry> getAclEntryList(Path path) throws IOException {
        AclFileAttributeView aclFileAttributeView = getAclFileAttributeView(path, new LinkOption[0]);
        if (aclFileAttributeView == null) {
            return null;
        }
        return aclFileAttributeView.getAcl();
    }

    public static AclFileAttributeView getAclFileAttributeView(Path path, LinkOption... linkOptionArr) {
        return (AclFileAttributeView) Files.getFileAttributeView(path, AclFileAttributeView.class, linkOptionArr);
    }

    public static String getBaseName(Path path) {
        Path fileName;
        if (path == null || (fileName = path.getFileName()) == null) {
            return null;
        }
        return FilenameUtils.removeExtension(fileName.toString());
    }

    public static DosFileAttributeView getDosFileAttributeView(Path path, LinkOption... linkOptionArr) {
        return (DosFileAttributeView) Files.getFileAttributeView(path, DosFileAttributeView.class, linkOptionArr);
    }

    public static String getExtension(Path path) {
        String fileNameString = getFileNameString(path);
        if (fileNameString != null) {
            return FilenameUtils.getExtension(fileNameString);
        }
        return null;
    }

    public static <R> R getFileName(Path path, Function<Path, R> function) {
        Path fileName = path != null ? path.getFileName() : null;
        if (fileName != null) {
            return function.apply(fileName);
        }
        return null;
    }

    public static String getFileNameString(Path path) {
        return (String) getFileName(path, new Function() { // from class: com.sunia.HTREnginev2.nzk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((Path) obj).toString();
            }
        });
    }

    public static FileTime getLastModifiedFileTime(File file) throws IOException {
        return getLastModifiedFileTime(file.toPath(), null, EMPTY_LINK_OPTION_ARRAY);
    }

    public static PosixFileAttributeView getPosixFileAttributeView(Path path, LinkOption... linkOptionArr) {
        return (PosixFileAttributeView) Files.getFileAttributeView(path, PosixFileAttributeView.class, linkOptionArr);
    }

    public static Path getTempDirectory() {
        return Paths.get(FileUtils.getTempDirectoryPath(), new String[0]);
    }

    /* renamed from: h */
    public static boolean m65218h(Path path, LinkOption... linkOptionArr) {
        Objects.requireNonNull(path, "path");
        return linkOptionArr != null ? Files.exists(path, linkOptionArr) : Files.exists(path, new LinkOption[0]);
    }

    /* renamed from: i */
    public static <R, A> R m65219i(final PathFilter pathFilter, Stream<Path> stream, Collector<? super Path, A, R> collector) {
        Objects.requireNonNull(pathFilter, "filter");
        Objects.requireNonNull(collector, "collector");
        return stream == null ? (R) Stream.empty().collect(collector) : (R) stream.filter(new Predicate() { // from class: com.sunia.HTREnginev2.szk
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m65223m;
                m65223m = PathUtils.m65223m(PathFilter.this, (Path) obj);
                return m65223m;
            }
        }).collect(collector);
    }

    public static boolean isDirectory(Path path, LinkOption... linkOptionArr) {
        return path != null && Files.isDirectory(path, linkOptionArr);
    }

    public static boolean isEmpty(Path path) throws IOException {
        return Files.isDirectory(path, new LinkOption[0]) ? isEmptyDirectory(path) : isEmptyFile(path);
    }

    public static boolean isEmptyDirectory(Path path) throws IOException {
        DirectoryStream<Path> newDirectoryStream = Files.newDirectoryStream(path);
        try {
            boolean z = !newDirectoryStream.iterator().hasNext();
            newDirectoryStream.close();
            return z;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newDirectoryStream != null) {
                    try {
                        newDirectoryStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public static boolean isEmptyFile(Path path) throws IOException {
        return Files.size(path) <= 0;
    }

    public static boolean isNewer(Path path, ChronoZonedDateTime<?> chronoZonedDateTime, LinkOption... linkOptionArr) throws IOException {
        Objects.requireNonNull(chronoZonedDateTime, "czdt");
        return isNewer(path, chronoZonedDateTime.toInstant(), linkOptionArr);
    }

    public static boolean isOlder(Path path, FileTime fileTime, LinkOption... linkOptionArr) throws IOException {
        return !m65227q(path, new LinkOption[0]) && m65217g(path, fileTime, linkOptionArr) < 0;
    }

    public static boolean isPosix(Path path, LinkOption... linkOptionArr) {
        return m65218h(path, linkOptionArr) && readPosixFileAttributes(path, linkOptionArr) != null;
    }

    public static boolean isRegularFile(Path path, LinkOption... linkOptionArr) {
        return path != null && Files.isRegularFile(path, linkOptionArr);
    }

    /* renamed from: j */
    public static FileTime m65220j(Path path, LinkOption... linkOptionArr) throws IOException {
        Objects.requireNonNull(path, "path");
        return Files.getLastModifiedTime(path, linkOptionArr);
    }

    /* renamed from: k */
    public static Path m65221k(Path path) {
        if (path == null) {
            return null;
        }
        return path.getParent();
    }

    /* renamed from: l */
    public static /* synthetic */ Counters.PathCounters m65222l(LinkOption[] linkOptionArr, DeleteOption[] deleteOptionArr, Path path, PosixFileAttributes posixFileAttributes) throws IOException {
        return ((DeletingPathVisitor) visitFileTree(new DeletingPathVisitor(Counters.longPathCounters(), linkOptionArr, deleteOptionArr, new String[0]), path)).getPathCounters();
    }

    /* renamed from: m */
    public static /* synthetic */ boolean m65223m(PathFilter pathFilter, Path path) {
        if (path == null) {
            return false;
        }
        try {
            return pathFilter.accept(path, readBasicFileAttributes(path)) == FileVisitResult.CONTINUE;
        } catch (IOException unused) {
            return false;
        }
    }

    /* renamed from: n */
    public static /* synthetic */ boolean m65224n(DeleteOption deleteOption) {
        return deleteOption == StandardDeleteOption.OVERRIDE_READ_ONLY;
    }

    public static DirectoryStream<Path> newDirectoryStream(Path path, PathFilter pathFilter) throws IOException {
        return Files.newDirectoryStream(path, new DirectoryStreamFilter(pathFilter));
    }

    public static OutputStream newOutputStream(Path path, boolean z) throws IOException {
        return m65226p(path, EMPTY_LINK_OPTION_ARRAY, z ? f104240b : f104239a);
    }

    public static LinkOption[] noFollowLinkOptionArray() {
        return (LinkOption[]) NOFOLLOW_LINK_OPTION_ARRAY.clone();
    }

    /* renamed from: o */
    public static /* synthetic */ boolean m65225o(PathFilter pathFilter, boolean z, Path path) {
        return pathFilter.accept(path, z ? readBasicFileAttributesUnchecked(path) : null) == FileVisitResult.CONTINUE;
    }

    /* renamed from: p */
    public static OutputStream m65226p(Path path, LinkOption[] linkOptionArr, OpenOption... openOptionArr) throws IOException {
        if (!m65218h(path, linkOptionArr)) {
            createParentDirectories(path, (linkOptionArr == null || linkOptionArr.length <= 0) ? f104241c : linkOptionArr[0], new FileAttribute[0]);
        }
        if (openOptionArr == null) {
            openOptionArr = EMPTY_OPEN_OPTION_ARRAY;
        }
        ArrayList arrayList = new ArrayList(Arrays.asList(openOptionArr));
        if (linkOptionArr == null) {
            linkOptionArr = EMPTY_LINK_OPTION_ARRAY;
        }
        arrayList.addAll(Arrays.asList(linkOptionArr));
        return Files.newOutputStream(path, (OpenOption[]) arrayList.toArray(EMPTY_OPEN_OPTION_ARRAY));
    }

    /* renamed from: q */
    public static boolean m65227q(Path path, LinkOption... linkOptionArr) {
        Objects.requireNonNull(path, "path");
        return Files.notExists(path, linkOptionArr);
    }

    /* renamed from: r */
    public static boolean m65228r(DeleteOption... deleteOptionArr) {
        if (deleteOptionArr == null) {
            return false;
        }
        return Stream.of((Object[]) deleteOptionArr).anyMatch(new Predicate() { // from class: com.sunia.HTREnginev2.lzk
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m65224n;
                m65224n = PathUtils.m65224n((DeleteOption) obj);
                return m65224n;
            }
        });
    }

    public static <A extends BasicFileAttributes> A readAttributes(Path path, Class<A> cls, LinkOption... linkOptionArr) {
        if (path != null) {
            try {
            } catch (IOException | UnsupportedOperationException unused) {
                return null;
            }
        }
        return (A) Files.readAttributes(path, cls, linkOptionArr);
    }

    public static BasicFileAttributes readBasicFileAttributes(Path path) throws IOException {
        return Files.readAttributes(path, BasicFileAttributes.class, new LinkOption[0]);
    }

    @Deprecated
    public static BasicFileAttributes readBasicFileAttributesUnchecked(Path path) {
        return readBasicFileAttributes(path, EMPTY_LINK_OPTION_ARRAY);
    }

    public static DosFileAttributes readDosFileAttributes(Path path, LinkOption... linkOptionArr) {
        return (DosFileAttributes) readAttributes(path, DosFileAttributes.class, linkOptionArr);
    }

    public static BasicFileAttributes readOsFileAttributes(Path path, LinkOption... linkOptionArr) {
        PosixFileAttributes readPosixFileAttributes = readPosixFileAttributes(path, linkOptionArr);
        return readPosixFileAttributes != null ? readPosixFileAttributes : readDosFileAttributes(path, linkOptionArr);
    }

    public static PosixFileAttributes readPosixFileAttributes(Path path, LinkOption... linkOptionArr) {
        return (PosixFileAttributes) readAttributes(path, PosixFileAttributes.class, linkOptionArr);
    }

    public static String readString(Path path, Charset charset) throws IOException {
        return new String(Files.readAllBytes(path), Charsets.toCharset(charset));
    }

    /* renamed from: s */
    public static Path m65229s(Path path) throws IOException {
        if (path != null) {
            return Files.isSymbolicLink(path) ? Files.readSymbolicLink(path) : path;
        }
        return null;
    }

    public static void setLastModifiedTime(Path path, Path path2) throws IOException {
        Objects.requireNonNull(path, "sourceFile");
        Files.setLastModifiedTime(path2, m65220j(path, new LinkOption[0]));
    }

    public static Path setReadOnly(Path path, boolean z, LinkOption... linkOptionArr) throws IOException {
        try {
            if (m65232v(path, z, linkOptionArr)) {
                return path;
            }
        } catch (IOException unused) {
        }
        Path m65221k = m65221k(path);
        if (!isPosix(m65221k, linkOptionArr)) {
            throw new IOException(String.format("DOS or POSIX file operations not available for '%s' %s", path, Arrays.toString(linkOptionArr)));
        }
        if (z) {
            m65235y(path, z, linkOptionArr);
            m65233w(m65221k, false, linkOptionArr);
        } else {
            m65233w(m65221k, true, linkOptionArr);
        }
        return path;
    }

    public static long sizeOf(Path path) throws IOException {
        m65231u(path, "path", new LinkOption[0]);
        return Files.isDirectory(path, new LinkOption[0]) ? sizeOfDirectory(path) : Files.size(path);
    }

    public static BigInteger sizeOfAsBigInteger(Path path) throws IOException {
        m65231u(path, "path", new LinkOption[0]);
        return Files.isDirectory(path, new LinkOption[0]) ? sizeOfDirectoryAsBigInteger(path) : BigInteger.valueOf(Files.size(path));
    }

    public static long sizeOfDirectory(Path path) throws IOException {
        return countDirectory(path).getByteCounter().getLong().longValue();
    }

    public static BigInteger sizeOfDirectoryAsBigInteger(Path path) throws IOException {
        return countDirectoryAsBigInteger(path).getByteCounter().getBigInteger();
    }

    /* renamed from: t */
    public static List<Path> m65230t(Collection<Path> collection, Path path, boolean z, Comparator<? super Path> comparator) {
        Stream<Path> stream = collection.stream();
        path.getClass();
        Stream map = stream.map(new rzk(path));
        if (z) {
            map = comparator == null ? map.sorted() : map.sorted(comparator);
        }
        return (List) map.collect(Collectors.toList());
    }

    public static Path touch(Path path) throws IOException {
        Objects.requireNonNull(path, "file");
        if (Files.exists(path, new LinkOption[0])) {
            FileTimes.setLastModifiedTime(path);
        } else {
            createParentDirectories(path, new FileAttribute[0]);
            Files.createFile(path, new FileAttribute[0]);
        }
        return path;
    }

    /* renamed from: u */
    public static Path m65231u(Path path, String str, LinkOption... linkOptionArr) {
        Objects.requireNonNull(path, str);
        if (m65218h(path, linkOptionArr)) {
            return path;
        }
        throw new IllegalArgumentException("File system element for parameter '" + str + "' does not exist: '" + path + CloudStorageConstants.SINGLE_QUOTES);
    }

    /* renamed from: v */
    public static boolean m65232v(Path path, boolean z, LinkOption... linkOptionArr) throws IOException {
        DosFileAttributeView dosFileAttributeView = getDosFileAttributeView(path, linkOptionArr);
        if (dosFileAttributeView == null) {
            return false;
        }
        dosFileAttributeView.setReadOnly(z);
        return true;
    }

    public static <T extends FileVisitor<? super Path>> T visitFileTree(T t, Path path) throws IOException {
        Files.walkFileTree(path, t);
        return t;
    }

    /* renamed from: w */
    public static boolean m65233w(Path path, boolean z, LinkOption... linkOptionArr) throws IOException {
        return m65234x(path, z, Arrays.asList(PosixFilePermission.OWNER_WRITE, PosixFilePermission.OWNER_EXECUTE), linkOptionArr);
    }

    public static boolean waitFor(Path path, Duration duration, LinkOption... linkOptionArr) {
        Objects.requireNonNull(path, "file");
        Instant plus = Instant.now().plus((TemporalAmount) duration);
        boolean z = false;
        while (!m65218h(path, linkOptionArr)) {
            try {
                Instant now = Instant.now();
                if (now.isAfter(plus)) {
                    return false;
                }
                try {
                    ThreadUtils.sleep(Duration.ofMillis(Math.min(100L, plus.minusMillis(now.toEpochMilli()).toEpochMilli())));
                } catch (InterruptedException unused) {
                    z = true;
                } catch (Exception unused2) {
                }
            } finally {
                if (z) {
                    Thread.currentThread().interrupt();
                }
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return m65218h(path, linkOptionArr);
    }

    public static Stream<Path> walk(Path path, final PathFilter pathFilter, int i, final boolean z, FileVisitOption... fileVisitOptionArr) throws IOException {
        return Files.walk(path, i, fileVisitOptionArr).filter(new Predicate() { // from class: com.sunia.HTREnginev2.pzk
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m65225o;
                m65225o = PathUtils.m65225o(PathFilter.this, z, (Path) obj);
                return m65225o;
            }
        });
    }

    public static Path writeString(Path path, CharSequence charSequence, Charset charset, OpenOption... openOptionArr) throws IOException {
        Objects.requireNonNull(path, "path");
        Objects.requireNonNull(charSequence, "charSequence");
        Files.write(path, String.valueOf(charSequence).getBytes(Charsets.toCharset(charset)), openOptionArr);
        return path;
    }

    /* renamed from: x */
    public static boolean m65234x(Path path, boolean z, List<PosixFilePermission> list, LinkOption... linkOptionArr) throws IOException {
        if (path == null) {
            return false;
        }
        Set<PosixFilePermission> posixFilePermissions = Files.getPosixFilePermissions(path, linkOptionArr);
        HashSet hashSet = new HashSet(posixFilePermissions);
        if (z) {
            hashSet.addAll(list);
        } else {
            hashSet.removeAll(list);
        }
        if (hashSet.equals(posixFilePermissions)) {
            return true;
        }
        Files.setPosixFilePermissions(path, hashSet);
        return true;
    }

    /* renamed from: y */
    public static void m65235y(Path path, boolean z, LinkOption... linkOptionArr) throws IOException {
        Set<PosixFilePermission> posixFilePermissions = Files.getPosixFilePermissions(path, linkOptionArr);
        List asList = Arrays.asList(PosixFilePermission.OWNER_READ);
        List asList2 = Arrays.asList(PosixFilePermission.OWNER_WRITE);
        if (z) {
            posixFilePermissions.addAll(asList);
            posixFilePermissions.removeAll(asList2);
        } else {
            posixFilePermissions.addAll(asList);
            posixFilePermissions.addAll(asList2);
        }
        Files.setPosixFilePermissions(path, posixFilePermissions);
    }

    /* renamed from: z */
    public static Set<FileVisitOption> m65236z(FileVisitOption... fileVisitOptionArr) {
        return fileVisitOptionArr == null ? EnumSet.noneOf(FileVisitOption.class) : (Set) Stream.of((Object[]) fileVisitOptionArr).collect(Collectors.toSet());
    }

    public static Counters.PathCounters cleanDirectory(Path path, DeleteOption... deleteOptionArr) throws IOException {
        return ((CleaningPathVisitor) visitFileTree(new CleaningPathVisitor(Counters.longPathCounters(), deleteOptionArr, new String[0]), path)).getPathCounters();
    }

    public static Path copyFileToDirectory(URL url, Path path, CopyOption... copyOptionArr) throws IOException {
        Path resolve = path.resolve(FilenameUtils.getName(url.getFile()));
        copy(new kig(url), resolve, copyOptionArr);
        return resolve;
    }

    public static Path createParentDirectories(Path path, LinkOption linkOption, FileAttribute<?>... fileAttributeArr) throws IOException {
        Path m65221k = m65221k(path);
        if (linkOption != LinkOption.NOFOLLOW_LINKS) {
            m65221k = m65229s(m65221k);
        }
        if (m65221k == null) {
            return null;
        }
        return linkOption == null ? Files.exists(m65221k, new LinkOption[0]) : Files.exists(m65221k, linkOption) ? m65221k : Files.createDirectories(m65221k, fileAttributeArr);
    }

    public static Counters.PathCounters delete(Path path, DeleteOption... deleteOptionArr) throws IOException {
        return Files.isDirectory(path, LinkOption.NOFOLLOW_LINKS) ? deleteDirectory(path, deleteOptionArr) : deleteFile(path, deleteOptionArr);
    }

    public static Counters.PathCounters deleteDirectory(final Path path, final DeleteOption... deleteOptionArr) throws IOException {
        final LinkOption[] noFollowLinkOptionArray = noFollowLinkOptionArray();
        return (Counters.PathCounters) m65210A(m65221k(path), noFollowLinkOptionArray, m65228r(deleteOptionArr), new IOFunction() { // from class: com.sunia.HTREnginev2.qzk
            @Override // onyx.org.apache.commons.io.function.IOFunction
            public final Object apply(Object obj) {
                Counters.PathCounters m65222l;
                m65222l = PathUtils.m65222l(noFollowLinkOptionArray, deleteOptionArr, path, (PosixFileAttributes) obj);
                return m65222l;
            }
        });
    }

    public static Counters.PathCounters deleteFile(Path path, DeleteOption... deleteOptionArr) throws IOException {
        return deleteFile(path, noFollowLinkOptionArray(), deleteOptionArr);
    }

    public static boolean directoryAndFileContentEquals(Path path, Path path2, LinkOption[] linkOptionArr, OpenOption[] openOptionArr, FileVisitOption[] fileVisitOptionArr) throws IOException {
        if (path == null && path2 == null) {
            return true;
        }
        if (path == null || path2 == null) {
            return false;
        }
        if (m65227q(path, new LinkOption[0]) && m65227q(path2, new LinkOption[0])) {
            return true;
        }
        C18637b c18637b = new C18637b(path, path2, Integer.MAX_VALUE, linkOptionArr, fileVisitOptionArr);
        if (!c18637b.f104242a) {
            return false;
        }
        List<Path> list = c18637b.f104243b;
        List<Path> list2 = c18637b.f104244c;
        for (Path path3 : list) {
            if (Collections.binarySearch(list2, path3) > -1) {
                if (!fileContentEquals(path.resolve(path3), path2.resolve(path3), linkOptionArr, openOptionArr)) {
                    return false;
                }
            } else {
                throw new IllegalStateException("Unexpected mismatch.");
            }
        }
        return true;
    }

    public static boolean directoryContentEquals(Path path, Path path2, int i, LinkOption[] linkOptionArr, FileVisitOption[] fileVisitOptionArr) throws IOException {
        return new C18637b(path, path2, i, linkOptionArr, fileVisitOptionArr).f104242a;
    }

    public static boolean fileContentEquals(Path path, Path path2, LinkOption[] linkOptionArr, OpenOption[] openOptionArr) throws IOException {
        if (path == null && path2 == null) {
            return true;
        }
        if (path == null || path2 == null) {
            return false;
        }
        Path normalize = path.normalize();
        Path normalize2 = path2.normalize();
        boolean m65218h = m65218h(normalize, linkOptionArr);
        if (m65218h != m65218h(normalize2, linkOptionArr)) {
            return false;
        }
        if (!m65218h) {
            return true;
        }
        if (!Files.isDirectory(normalize, linkOptionArr)) {
            if (Files.isDirectory(normalize2, linkOptionArr)) {
                throw new IOException("Can't compare directories, only files: " + normalize2);
            }
            if (Files.size(normalize) != Files.size(normalize2)) {
                return false;
            }
            if (path.equals(path2)) {
                return true;
            }
            try {
                RandomAccessFileMode randomAccessFileMode = RandomAccessFileMode.READ_ONLY;
                RandomAccessFile create = randomAccessFileMode.create(path.toRealPath(linkOptionArr));
                try {
                    RandomAccessFile create2 = randomAccessFileMode.create(path2.toRealPath(linkOptionArr));
                    try {
                        boolean contentEquals = RandomAccessFiles.contentEquals(create, create2);
                        if (create2 != null) {
                            create2.close();
                        }
                        if (create != null) {
                            create.close();
                        }
                        return contentEquals;
                    } finally {
                    }
                } finally {
                }
            } catch (UnsupportedOperationException unused) {
                InputStream newInputStream = Files.newInputStream(normalize, openOptionArr);
                try {
                    InputStream newInputStream2 = Files.newInputStream(normalize2, openOptionArr);
                    try {
                        boolean contentEquals2 = IOUtils.contentEquals(newInputStream, newInputStream2);
                        if (newInputStream2 != null) {
                            newInputStream2.close();
                        }
                        if (newInputStream != null) {
                            newInputStream.close();
                        }
                        return contentEquals2;
                    } finally {
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        if (newInputStream != null) {
                            try {
                                newInputStream.close();
                            } catch (Throwable th3) {
                                th.addSuppressed(th3);
                            }
                        }
                        throw th2;
                    }
                }
            }
        } else {
            throw new IOException("Can't compare directories, only files: " + normalize);
        }
    }

    public static FileTime getLastModifiedFileTime(Path path, FileTime fileTime, LinkOption... linkOptionArr) throws IOException {
        return Files.exists(path, new LinkOption[0]) ? m65220j(path, linkOptionArr) : fileTime;
    }

    public static BasicFileAttributes readBasicFileAttributes(Path path, LinkOption... linkOptionArr) {
        return readAttributes(path, BasicFileAttributes.class, linkOptionArr);
    }

    public static <T extends FileVisitor<? super Path>> T visitFileTree(T t, Path path, Set<FileVisitOption> set, int i) throws IOException {
        Files.walkFileTree(path, set, i, t);
        return t;
    }

    public static Counters.PathCounters delete(Path path, LinkOption[] linkOptionArr, DeleteOption... deleteOptionArr) throws IOException {
        return Files.isDirectory(path, linkOptionArr) ? deleteDirectory(path, linkOptionArr, deleteOptionArr) : deleteFile(path, linkOptionArr, deleteOptionArr);
    }

    public static Counters.PathCounters deleteFile(Path path, LinkOption[] linkOptionArr, DeleteOption... deleteOptionArr) throws NoSuchFileException, IOException {
        if (!Files.isDirectory(path, linkOptionArr)) {
            Counters.PathCounters longPathCounters = Counters.longPathCounters();
            long j = 0;
            long size = (!m65218h(path, linkOptionArr) || Files.isSymbolicLink(path)) ? 0L : Files.size(path);
            try {
                if (Files.deleteIfExists(path)) {
                    longPathCounters.getFileCounter().increment();
                    longPathCounters.getByteCounter().add(size);
                    return longPathCounters;
                }
            } catch (AccessDeniedException unused) {
            }
            Path m65221k = m65221k(path);
            PosixFileAttributes posixFileAttributes = null;
            try {
                if (m65228r(deleteOptionArr)) {
                    posixFileAttributes = readPosixFileAttributes(m65221k, linkOptionArr);
                    setReadOnly(path, false, linkOptionArr);
                }
                if (m65218h(path, linkOptionArr) && !Files.isSymbolicLink(path)) {
                    j = Files.size(path);
                }
                if (Files.deleteIfExists(path)) {
                    longPathCounters.getFileCounter().increment();
                    longPathCounters.getByteCounter().add(j);
                }
                return longPathCounters;
            } finally {
                if (posixFileAttributes != null) {
                    Files.setPosixFilePermissions(m65221k, posixFileAttributes.permissions());
                }
            }
        }
        throw new NoSuchFileException(path.toString());
    }

    public static FileTime getLastModifiedFileTime(Path path, LinkOption... linkOptionArr) throws IOException {
        return getLastModifiedFileTime(path, null, linkOptionArr);
    }

    public static boolean isNewer(Path path, FileTime fileTime, LinkOption... linkOptionArr) throws IOException {
        return !m65227q(path, new LinkOption[0]) && m65217g(path, fileTime, linkOptionArr) > 0;
    }

    public static boolean isOlder(Path path, Instant instant, LinkOption... linkOptionArr) throws IOException {
        return isOlder(path, FileTime.from(instant), linkOptionArr);
    }

    public static <T extends FileVisitor<? super Path>> T visitFileTree(T t, String str, String... strArr) throws IOException {
        return (T) visitFileTree(t, Paths.get(str, strArr));
    }

    public static Counters.PathCounters deleteDirectory(Path path, LinkOption[] linkOptionArr, DeleteOption... deleteOptionArr) throws IOException {
        return ((DeletingPathVisitor) visitFileTree(new DeletingPathVisitor(Counters.longPathCounters(), linkOptionArr, deleteOptionArr, new String[0]), path)).getPathCounters();
    }

    public static FileTime getLastModifiedFileTime(URI uri) throws IOException {
        return getLastModifiedFileTime(Paths.get(uri), null, EMPTY_LINK_OPTION_ARRAY);
    }

    public static boolean isOlder(Path path, long j, LinkOption... linkOptionArr) throws IOException {
        return isOlder(path, FileTime.fromMillis(j), linkOptionArr);
    }

    public static <T extends FileVisitor<? super Path>> T visitFileTree(T t, URI uri) throws IOException {
        return (T) visitFileTree(t, Paths.get(uri));
    }

    public static FileTime getLastModifiedFileTime(URL url) throws IOException, URISyntaxException {
        return getLastModifiedFileTime(url.toURI());
    }

    public static boolean isNewer(Path path, Instant instant, LinkOption... linkOptionArr) throws IOException {
        return isNewer(path, FileTime.from(instant), linkOptionArr);
    }

    public static boolean isOlder(Path path, Path path2) throws IOException {
        return isOlder(path, m65220j(path2, new LinkOption[0]), new LinkOption[0]);
    }

    public static boolean isNewer(Path path, long j, LinkOption... linkOptionArr) throws IOException {
        return isNewer(path, FileTime.fromMillis(j), linkOptionArr);
    }

    public static boolean isNewer(Path path, Path path2) throws IOException {
        return isNewer(path, m65220j(path2, new LinkOption[0]), new LinkOption[0]);
    }
}
