package com.google.common.io;

import com.google.android.material.motion.MotionUtils;
import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Iterables;
import com.google.common.graph.SuccessorsFunction;
import com.google.common.graph.Traverser;
import com.google.common.io.ByteSource;
import com.sunia.HTREnginev2.ynf;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.channels.Channels;
import java.nio.channels.SeekableByteChannel;
import java.nio.charset.Charset;
import java.nio.file.DirectoryIteratorException;
import java.nio.file.DirectoryStream;
import java.nio.file.FileAlreadyExistsException;
import java.nio.file.FileSystemException;
import java.nio.file.LinkOption;
import java.nio.file.NoSuchFileException;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.SecureDirectoryStream;
import java.nio.file.attribute.BasicFileAttributeView;
import java.nio.file.attribute.BasicFileAttributes;
import java.nio.file.attribute.FileAttribute;
import java.nio.file.attribute.FileTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import java.util.stream.Stream;
import javax.annotation.CheckForNull;

@Beta
@GwtIncompatible
@ynf
/* loaded from: classes6.dex */
public final class MoreFiles {

    /* renamed from: a */
    public static final SuccessorsFunction<Path> f34930a = new C6232a();

    /* renamed from: com.google.common.io.MoreFiles$a */
    /* loaded from: classes6.dex */
    public class C6232a implements SuccessorsFunction<Path> {
        @Override // com.google.common.graph.SuccessorsFunction, com.google.common.graph.Graph
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Iterable<Path> successors(Path path) {
            return MoreFiles.m27235i(path);
        }
    }

    /* renamed from: com.google.common.io.MoreFiles$b */
    /* loaded from: classes6.dex */
    public class C6233b implements Predicate<Path> {

        /* renamed from: e */
        public final /* synthetic */ LinkOption[] f34931e;

        public C6233b(LinkOption[] linkOptionArr) {
            this.f34931e = linkOptionArr;
        }

        @Override // com.google.common.base.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean apply(Path path) {
            return java.nio.file.Files.isDirectory(path, this.f34931e);
        }

        public String toString() {
            String arrays = Arrays.toString(this.f34931e);
            StringBuilder sb = new StringBuilder(String.valueOf(arrays).length() + 23);
            sb.append("MoreFiles.isDirectory(");
            sb.append(arrays);
            sb.append(MotionUtils.f31762d);
            return sb.toString();
        }
    }

    /* renamed from: com.google.common.io.MoreFiles$c */
    /* loaded from: classes6.dex */
    public class C6234c implements Predicate<Path> {

        /* renamed from: e */
        public final /* synthetic */ LinkOption[] f34932e;

        public C6234c(LinkOption[] linkOptionArr) {
            this.f34932e = linkOptionArr;
        }

        @Override // com.google.common.base.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean apply(Path path) {
            return java.nio.file.Files.isRegularFile(path, this.f34932e);
        }

        public String toString() {
            String arrays = Arrays.toString(this.f34932e);
            StringBuilder sb = new StringBuilder(String.valueOf(arrays).length() + 25);
            sb.append("MoreFiles.isRegularFile(");
            sb.append(arrays);
            sb.append(MotionUtils.f31762d);
            return sb.toString();
        }
    }

    /* renamed from: com.google.common.io.MoreFiles$d */
    /* loaded from: classes6.dex */
    public static final class C6235d extends ByteSink {

        /* renamed from: a */
        public final Path f34933a;

        /* renamed from: b */
        public final OpenOption[] f34934b;

        public /* synthetic */ C6235d(Path path, OpenOption[] openOptionArr, C6232a c6232a) {
            this(path, openOptionArr);
        }

        @Override // com.google.common.io.ByteSink
        public OutputStream openStream() throws IOException {
            return java.nio.file.Files.newOutputStream(this.f34933a, this.f34934b);
        }

        public String toString() {
            String valueOf = String.valueOf(this.f34933a);
            String arrays = Arrays.toString(this.f34934b);
            StringBuilder sb = new StringBuilder(valueOf.length() + 24 + String.valueOf(arrays).length());
            sb.append("MoreFiles.asByteSink(");
            sb.append(valueOf);
            sb.append(", ");
            sb.append(arrays);
            sb.append(MotionUtils.f31762d);
            return sb.toString();
        }

        public C6235d(Path path, OpenOption... openOptionArr) {
            this.f34933a = (Path) Preconditions.checkNotNull(path);
            this.f34934b = (OpenOption[]) openOptionArr.clone();
        }
    }

    /* renamed from: com.google.common.io.MoreFiles$e */
    /* loaded from: classes6.dex */
    public static final class C6236e extends ByteSource {

        /* renamed from: d */
        public static final LinkOption[] f34935d = new LinkOption[0];

        /* renamed from: a */
        public final Path f34936a;

        /* renamed from: b */
        public final OpenOption[] f34937b;

        /* renamed from: c */
        public final boolean f34938c;

        /* renamed from: com.google.common.io.MoreFiles$e$a */
        /* loaded from: classes6.dex */
        public class a extends ByteSource.C6204a {
            public a(Charset charset) {
                super(charset);
            }

            @Override // com.google.common.io.CharSource
            public Stream<String> lines() throws IOException {
                return java.nio.file.Files.lines(C6236e.this.f34936a, this.f34867a);
            }
        }

        public /* synthetic */ C6236e(Path path, OpenOption[] openOptionArr, C6232a c6232a) {
            this(path, openOptionArr);
        }

        /* renamed from: c */
        public static boolean m27244c(OpenOption[] openOptionArr) {
            for (OpenOption openOption : openOptionArr) {
                if (openOption == LinkOption.NOFOLLOW_LINKS) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.common.io.ByteSource
        public CharSource asCharSource(Charset charset) {
            return this.f34937b.length == 0 ? new a(charset) : super.asCharSource(charset);
        }

        /* renamed from: d */
        public final BasicFileAttributes m27245d() throws IOException {
            return java.nio.file.Files.readAttributes(this.f34936a, BasicFileAttributes.class, this.f34938c ? f34935d : new LinkOption[]{LinkOption.NOFOLLOW_LINKS});
        }

        @Override // com.google.common.io.ByteSource
        public InputStream openStream() throws IOException {
            return java.nio.file.Files.newInputStream(this.f34936a, this.f34937b);
        }

        @Override // com.google.common.io.ByteSource
        public byte[] read() throws IOException {
            SeekableByteChannel newByteChannel = java.nio.file.Files.newByteChannel(this.f34936a, this.f34937b);
            try {
                byte[] m27197e = ByteStreams.m27197e(Channels.newInputStream(newByteChannel), newByteChannel.size());
                newByteChannel.close();
                return m27197e;
            } catch (Throwable th) {
                if (newByteChannel != null) {
                    try {
                        newByteChannel.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }

        @Override // com.google.common.io.ByteSource
        public long size() throws IOException {
            BasicFileAttributes m27245d = m27245d();
            if (m27245d.isDirectory()) {
                throw new IOException("can't read: is a directory");
            }
            if (m27245d.isSymbolicLink()) {
                throw new IOException("can't read: is a symbolic link");
            }
            return m27245d.size();
        }

        @Override // com.google.common.io.ByteSource
        public Optional<Long> sizeIfKnown() {
            try {
                BasicFileAttributes m27245d = m27245d();
                return (m27245d.isDirectory() || m27245d.isSymbolicLink()) ? Optional.absent() : Optional.m25808of(Long.valueOf(m27245d.size()));
            } catch (IOException unused) {
                return Optional.absent();
            }
        }

        public String toString() {
            String valueOf = String.valueOf(this.f34936a);
            String arrays = Arrays.toString(this.f34937b);
            StringBuilder sb = new StringBuilder(valueOf.length() + 26 + String.valueOf(arrays).length());
            sb.append("MoreFiles.asByteSource(");
            sb.append(valueOf);
            sb.append(", ");
            sb.append(arrays);
            sb.append(MotionUtils.f31762d);
            return sb.toString();
        }

        public C6236e(Path path, OpenOption... openOptionArr) {
            this.f34936a = (Path) Preconditions.checkNotNull(path);
            OpenOption[] openOptionArr2 = (OpenOption[]) openOptionArr.clone();
            this.f34937b = openOptionArr2;
            this.f34938c = m27244c(openOptionArr2);
        }
    }

    public static ByteSink asByteSink(Path path, OpenOption... openOptionArr) {
        return new C6235d(path, openOptionArr, null);
    }

    public static ByteSource asByteSource(Path path, OpenOption... openOptionArr) {
        return new C6236e(path, openOptionArr, null);
    }

    public static CharSink asCharSink(Path path, Charset charset, OpenOption... openOptionArr) {
        return asByteSink(path, openOptionArr).asCharSink(charset);
    }

    public static CharSource asCharSource(Path path, Charset charset, OpenOption... openOptionArr) {
        return asByteSource(path, openOptionArr).asCharSource(charset);
    }

    /* renamed from: b */
    public static Collection<IOException> m27228b(@CheckForNull Collection<IOException> collection, IOException iOException) {
        if (collection == null) {
            collection = new ArrayList<>();
        }
        collection.add(iOException);
        return collection;
    }

    /* renamed from: c */
    public static void m27229c(Path path, RecursiveDeleteOption[] recursiveDeleteOptionArr) throws InsecureRecursiveDeleteException {
        if (!Arrays.asList(recursiveDeleteOptionArr).contains(RecursiveDeleteOption.ALLOW_INSECURE)) {
            throw new InsecureRecursiveDeleteException(path.toString());
        }
    }

    public static void createParentDirectories(Path path, FileAttribute<?>... fileAttributeArr) throws IOException {
        Path parent = path.toAbsolutePath().normalize().getParent();
        if (parent == null || java.nio.file.Files.isDirectory(parent, new LinkOption[0])) {
            return;
        }
        java.nio.file.Files.createDirectories(parent, fileAttributeArr);
        if (java.nio.file.Files.isDirectory(parent, new LinkOption[0])) {
            return;
        }
        String valueOf = String.valueOf(path);
        StringBuilder sb = new StringBuilder(valueOf.length() + 39);
        sb.append("Unable to create parent directories of ");
        sb.append(valueOf);
        throw new IOException(sb.toString());
    }

    @CheckForNull
    /* renamed from: d */
    public static Collection<IOException> m27230d(@CheckForNull Collection<IOException> collection, @CheckForNull Collection<IOException> collection2) {
        if (collection == null) {
            return collection2;
        }
        if (collection2 != null) {
            collection.addAll(collection2);
        }
        return collection;
    }

    public static void deleteDirectoryContents(Path path, RecursiveDeleteOption... recursiveDeleteOptionArr) throws IOException {
        Collection<IOException> m27231e;
        Collection<IOException> collection = null;
        try {
            DirectoryStream<Path> newDirectoryStream = java.nio.file.Files.newDirectoryStream(path);
            try {
                if (newDirectoryStream instanceof SecureDirectoryStream) {
                    m27231e = m27232f((SecureDirectoryStream) newDirectoryStream);
                } else {
                    m27229c(path, recursiveDeleteOptionArr);
                    m27231e = m27231e(newDirectoryStream);
                }
                collection = m27231e;
                if (newDirectoryStream != null) {
                    newDirectoryStream.close();
                }
            } finally {
            }
        } catch (IOException e) {
            if (0 == 0) {
                throw e;
            }
            collection.add(e);
        }
        if (collection != null) {
            m27239m(path, collection);
        }
    }

    public static void deleteRecursively(Path path, RecursiveDeleteOption... recursiveDeleteOptionArr) throws IOException {
        boolean z;
        Path m27236j = m27236j(path);
        Collection<IOException> collection = null;
        if (m27236j == null) {
            throw new FileSystemException(path.toString(), null, "can't delete recursively");
        }
        try {
            DirectoryStream<Path> newDirectoryStream = java.nio.file.Files.newDirectoryStream(m27236j);
            try {
                if (newDirectoryStream instanceof SecureDirectoryStream) {
                    Path fileName = path.getFileName();
                    Objects.requireNonNull(fileName);
                    collection = m27234h((SecureDirectoryStream) newDirectoryStream, fileName);
                    z = true;
                } else {
                    z = false;
                }
                if (newDirectoryStream != null) {
                    newDirectoryStream.close();
                }
                if (!z) {
                    m27229c(path, recursiveDeleteOptionArr);
                    collection = m27233g(path);
                }
            } finally {
            }
        } catch (IOException e) {
            if (collection == null) {
                throw e;
            }
            collection.add(e);
        }
        if (collection != null) {
            m27239m(path, collection);
        }
    }

    @CheckForNull
    /* renamed from: e */
    public static Collection<IOException> m27231e(DirectoryStream<Path> directoryStream) {
        Collection<IOException> collection = null;
        try {
            Iterator<Path> it2 = directoryStream.iterator();
            while (it2.hasNext()) {
                collection = m27230d(collection, m27233g(it2.next()));
            }
            return collection;
        } catch (DirectoryIteratorException e) {
            return m27228b(collection, e.getCause());
        }
    }

    public static boolean equal(Path path, Path path2) throws IOException {
        Preconditions.checkNotNull(path);
        Preconditions.checkNotNull(path2);
        if (java.nio.file.Files.isSameFile(path, path2)) {
            return true;
        }
        ByteSource asByteSource = asByteSource(path, new OpenOption[0]);
        ByteSource asByteSource2 = asByteSource(path2, new OpenOption[0]);
        long longValue = asByteSource.sizeIfKnown().mo25761or((Optional<Long>) 0L).longValue();
        long longValue2 = asByteSource2.sizeIfKnown().mo25761or((Optional<Long>) 0L).longValue();
        if (longValue == 0 || longValue2 == 0 || longValue == longValue2) {
            return asByteSource.contentEquals(asByteSource2);
        }
        return false;
    }

    @CheckForNull
    /* renamed from: f */
    public static Collection<IOException> m27232f(SecureDirectoryStream<Path> secureDirectoryStream) {
        Collection<IOException> collection = null;
        try {
            Iterator<Path> it2 = secureDirectoryStream.iterator();
            while (it2.hasNext()) {
                collection = m27230d(collection, m27234h(secureDirectoryStream, it2.next().getFileName()));
            }
            return collection;
        } catch (DirectoryIteratorException e) {
            return m27228b(collection, e.getCause());
        }
    }

    public static Traverser<Path> fileTraverser() {
        return Traverser.forTree(f34930a);
    }

    @CheckForNull
    /* renamed from: g */
    public static Collection<IOException> m27233g(Path path) {
        Collection<IOException> collection = null;
        try {
            if (java.nio.file.Files.isDirectory(path, LinkOption.NOFOLLOW_LINKS)) {
                DirectoryStream<Path> newDirectoryStream = java.nio.file.Files.newDirectoryStream(path);
                try {
                    collection = m27231e(newDirectoryStream);
                    if (newDirectoryStream != null) {
                        newDirectoryStream.close();
                    }
                } finally {
                }
            }
            if (collection == null) {
                java.nio.file.Files.delete(path);
            }
            return collection;
        } catch (IOException e) {
            return m27228b(collection, e);
        }
    }

    public static String getFileExtension(Path path) {
        String path2;
        int lastIndexOf;
        Path fileName = path.getFileName();
        return (fileName == null || (lastIndexOf = (path2 = fileName.toString()).lastIndexOf(46)) == -1) ? "" : path2.substring(lastIndexOf + 1);
    }

    public static String getNameWithoutExtension(Path path) {
        Path fileName = path.getFileName();
        if (fileName == null) {
            return "";
        }
        String path2 = fileName.toString();
        int lastIndexOf = path2.lastIndexOf(46);
        return lastIndexOf == -1 ? path2 : path2.substring(0, lastIndexOf);
    }

    @CheckForNull
    /* renamed from: h */
    public static Collection<IOException> m27234h(SecureDirectoryStream<Path> secureDirectoryStream, Path path) {
        Collection<IOException> collection = null;
        try {
            if (m27237k(secureDirectoryStream, path, LinkOption.NOFOLLOW_LINKS)) {
                SecureDirectoryStream<Path> newDirectoryStream = secureDirectoryStream.newDirectoryStream(path, LinkOption.NOFOLLOW_LINKS);
                try {
                    collection = m27232f(newDirectoryStream);
                    if (newDirectoryStream != null) {
                        newDirectoryStream.close();
                    }
                    if (collection == null) {
                        secureDirectoryStream.deleteDirectory(path);
                    }
                } finally {
                }
            } else {
                secureDirectoryStream.deleteFile(path);
            }
            return collection;
        } catch (IOException e) {
            return m27228b(collection, e);
        }
    }

    /* renamed from: i */
    public static Iterable<Path> m27235i(Path path) {
        if (!java.nio.file.Files.isDirectory(path, LinkOption.NOFOLLOW_LINKS)) {
            return ImmutableList.m26161of();
        }
        try {
            return listFiles(path);
        } catch (IOException e) {
            throw new DirectoryIteratorException(e);
        }
    }

    public static Predicate<Path> isDirectory(LinkOption... linkOptionArr) {
        return new C6233b((LinkOption[]) linkOptionArr.clone());
    }

    public static Predicate<Path> isRegularFile(LinkOption... linkOptionArr) {
        return new C6234c((LinkOption[]) linkOptionArr.clone());
    }

    @CheckForNull
    /* renamed from: j */
    public static Path m27236j(Path path) {
        Path parent = path.getParent();
        if (parent != null) {
            return parent;
        }
        if (path.getNameCount() == 0) {
            return null;
        }
        return path.getFileSystem().getPath(".", new String[0]);
    }

    /* renamed from: k */
    public static boolean m27237k(SecureDirectoryStream<Path> secureDirectoryStream, Path path, LinkOption... linkOptionArr) throws IOException {
        return ((BasicFileAttributeView) secureDirectoryStream.getFileAttributeView(path, BasicFileAttributeView.class, linkOptionArr)).readAttributes().isDirectory();
    }

    @CheckForNull
    /* renamed from: l */
    public static NoSuchFileException m27238l(Path path, Collection<IOException> collection) {
        NoSuchFileException noSuchFileException;
        String file;
        Path m27236j;
        if (collection.size() != 1) {
            return null;
        }
        IOException iOException = (IOException) Iterables.getOnlyElement(collection);
        if (!(iOException instanceof NoSuchFileException) || (file = (noSuchFileException = (NoSuchFileException) iOException).getFile()) == null || (m27236j = m27236j(path)) == null) {
            return null;
        }
        Path fileName = path.getFileName();
        Objects.requireNonNull(fileName);
        if (file.equals(m27236j.resolve(fileName).toString())) {
            return noSuchFileException;
        }
        return null;
    }

    public static ImmutableList<Path> listFiles(Path path) throws IOException {
        try {
            DirectoryStream<Path> newDirectoryStream = java.nio.file.Files.newDirectoryStream(path);
            try {
                ImmutableList<Path> copyOf = ImmutableList.copyOf(newDirectoryStream);
                if (newDirectoryStream != null) {
                    newDirectoryStream.close();
                }
                return copyOf;
            } finally {
            }
        } catch (DirectoryIteratorException e) {
            throw e.getCause();
        }
    }

    /* renamed from: m */
    public static void m27239m(Path path, Collection<IOException> collection) throws FileSystemException {
        NoSuchFileException m27238l = m27238l(path, collection);
        if (m27238l != null) {
            throw m27238l;
        }
        FileSystemException fileSystemException = new FileSystemException(path.toString(), null, "failed to delete one or more files; see suppressed exceptions for details");
        Iterator<IOException> it2 = collection.iterator();
        while (it2.hasNext()) {
            fileSystemException.addSuppressed(it2.next());
        }
        throw fileSystemException;
    }

    public static void touch(Path path) throws IOException {
        Preconditions.checkNotNull(path);
        try {
            java.nio.file.Files.setLastModifiedTime(path, FileTime.fromMillis(System.currentTimeMillis()));
        } catch (NoSuchFileException unused) {
            try {
                java.nio.file.Files.createFile(path, new FileAttribute[0]);
            } catch (FileAlreadyExistsException unused2) {
            }
        }
    }
}
