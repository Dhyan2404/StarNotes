package onyx.org.apache.commons.io.file;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.channels.SeekableByteChannel;
import java.nio.charset.Charset;
import java.nio.file.CopyOption;
import java.nio.file.DirectoryStream;
import java.nio.file.FileStore;
import java.nio.file.FileVisitOption;
import java.nio.file.FileVisitor;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.nio.file.attribute.FileAttribute;
import java.nio.file.attribute.FileTime;
import java.nio.file.attribute.PosixFilePermission;
import java.nio.file.attribute.UserPrincipal;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BiPredicate;
import java.util.stream.Stream;
import onyx.org.apache.commons.io.function.IOBiFunction;
import onyx.org.apache.commons.io.function.IOConsumer;
import onyx.org.apache.commons.io.function.IOFunction;
import onyx.org.apache.commons.io.function.IOQuadFunction;
import onyx.org.apache.commons.io.function.IOTriFunction;
import onyx.org.apache.commons.io.function.Uncheck;

/* loaded from: classes11.dex */
public final class FilesUncheck {
    public static long copy(InputStream inputStream, Path path, CopyOption... copyOptionArr) {
        return ((Long) Uncheck.apply(new IOTriFunction() { // from class: com.sunia.HTREnginev2.djg
            @Override // onyx.org.apache.commons.io.function.IOTriFunction
            public final Object apply(Object obj, Object obj2, Object obj3) {
                return Long.valueOf(Files.copy((InputStream) obj, (Path) obj2, (CopyOption[]) obj3));
            }
        }, inputStream, path, copyOptionArr)).longValue();
    }

    public static Path createDirectories(Path path, FileAttribute<?>... fileAttributeArr) {
        return (Path) Uncheck.apply(new IOBiFunction() { // from class: com.sunia.HTREnginev2.hkg
            @Override // onyx.org.apache.commons.io.function.IOBiFunction
            public final Object apply(Object obj, Object obj2) {
                return Files.createDirectories((Path) obj, (FileAttribute[]) obj2);
            }
        }, path, fileAttributeArr);
    }

    public static Path createDirectory(Path path, FileAttribute<?>... fileAttributeArr) {
        return (Path) Uncheck.apply(new IOBiFunction() { // from class: com.sunia.HTREnginev2.bjg
            @Override // onyx.org.apache.commons.io.function.IOBiFunction
            public final Object apply(Object obj, Object obj2) {
                return Files.createDirectory((Path) obj, (FileAttribute[]) obj2);
            }
        }, path, fileAttributeArr);
    }

    public static Path createFile(Path path, FileAttribute<?>... fileAttributeArr) {
        return (Path) Uncheck.apply(new IOBiFunction() { // from class: com.sunia.HTREnginev2.qjg
            @Override // onyx.org.apache.commons.io.function.IOBiFunction
            public final Object apply(Object obj, Object obj2) {
                return Files.createFile((Path) obj, (FileAttribute[]) obj2);
            }
        }, path, fileAttributeArr);
    }

    public static Path createLink(Path path, Path path2) {
        return (Path) Uncheck.apply(new IOBiFunction() { // from class: com.sunia.HTREnginev2.ckg
            @Override // onyx.org.apache.commons.io.function.IOBiFunction
            public final Object apply(Object obj, Object obj2) {
                return Files.createLink((Path) obj, (Path) obj2);
            }
        }, path, path2);
    }

    public static Path createSymbolicLink(Path path, Path path2, FileAttribute<?>... fileAttributeArr) {
        return (Path) Uncheck.apply(new IOTriFunction() { // from class: com.sunia.HTREnginev2.ykg
            @Override // onyx.org.apache.commons.io.function.IOTriFunction
            public final Object apply(Object obj, Object obj2, Object obj3) {
                return Files.createSymbolicLink((Path) obj, (Path) obj2, (FileAttribute[]) obj3);
            }
        }, path, path2, fileAttributeArr);
    }

    public static Path createTempDirectory(Path path, String str, FileAttribute<?>... fileAttributeArr) {
        return (Path) Uncheck.apply(new IOTriFunction() { // from class: com.sunia.HTREnginev2.yig
            @Override // onyx.org.apache.commons.io.function.IOTriFunction
            public final Object apply(Object obj, Object obj2, Object obj3) {
                return Files.createTempDirectory((Path) obj, (String) obj2, (FileAttribute[]) obj3);
            }
        }, path, str, fileAttributeArr);
    }

    public static Path createTempFile(Path path, String str, String str2, FileAttribute<?>... fileAttributeArr) {
        return (Path) Uncheck.apply(new IOQuadFunction() { // from class: com.sunia.HTREnginev2.wkg
            @Override // onyx.org.apache.commons.io.function.IOQuadFunction
            public final Object apply(Object obj, Object obj2, Object obj3, Object obj4) {
                return Files.createTempFile((Path) obj, (String) obj2, (String) obj3, (FileAttribute[]) obj4);
            }
        }, path, str, str2, fileAttributeArr);
    }

    public static void delete(Path path) {
        Uncheck.accept(new IOConsumer() { // from class: com.sunia.HTREnginev2.pjg
            @Override // onyx.org.apache.commons.io.function.IOConsumer
            public final void accept(Object obj) {
                Files.delete((Path) obj);
            }
        }, path);
    }

    public static boolean deleteIfExists(Path path) {
        return ((Boolean) Uncheck.apply(new IOFunction() { // from class: com.sunia.HTREnginev2.pkg
            @Override // onyx.org.apache.commons.io.function.IOFunction
            public final Object apply(Object obj) {
                return Boolean.valueOf(Files.deleteIfExists((Path) obj));
            }
        }, path)).booleanValue();
    }

    public static Stream<Path> find(Path path, int i, BiPredicate<Path, BasicFileAttributes> biPredicate, FileVisitOption... fileVisitOptionArr) {
        return (Stream) Uncheck.apply(new IOQuadFunction() { // from class: com.sunia.HTREnginev2.zig
            @Override // onyx.org.apache.commons.io.function.IOQuadFunction
            public final Object apply(Object obj, Object obj2, Object obj3, Object obj4) {
                return Files.find((Path) obj, ((Integer) obj2).intValue(), (BiPredicate) obj3, (FileVisitOption[]) obj4);
            }
        }, path, Integer.valueOf(i), biPredicate, fileVisitOptionArr);
    }

    public static Object getAttribute(Path path, String str, LinkOption... linkOptionArr) {
        return Uncheck.apply(new IOTriFunction() { // from class: com.sunia.HTREnginev2.kkg
            @Override // onyx.org.apache.commons.io.function.IOTriFunction
            public final Object apply(Object obj, Object obj2, Object obj3) {
                return Files.getAttribute((Path) obj, (String) obj2, (LinkOption[]) obj3);
            }
        }, path, str, linkOptionArr);
    }

    public static FileStore getFileStore(Path path) {
        return (FileStore) Uncheck.apply(new IOFunction() { // from class: com.sunia.HTREnginev2.qkg
            @Override // onyx.org.apache.commons.io.function.IOFunction
            public final Object apply(Object obj) {
                return Files.getFileStore((Path) obj);
            }
        }, path);
    }

    public static FileTime getLastModifiedTime(Path path, LinkOption... linkOptionArr) {
        return (FileTime) Uncheck.apply(new IOBiFunction() { // from class: com.sunia.HTREnginev2.ukg
            @Override // onyx.org.apache.commons.io.function.IOBiFunction
            public final Object apply(Object obj, Object obj2) {
                return Files.getLastModifiedTime((Path) obj, (LinkOption[]) obj2);
            }
        }, path, linkOptionArr);
    }

    public static UserPrincipal getOwner(Path path, LinkOption... linkOptionArr) {
        return (UserPrincipal) Uncheck.apply(new IOBiFunction() { // from class: com.sunia.HTREnginev2.wig
            @Override // onyx.org.apache.commons.io.function.IOBiFunction
            public final Object apply(Object obj, Object obj2) {
                return Files.getOwner((Path) obj, (LinkOption[]) obj2);
            }
        }, path, linkOptionArr);
    }

    public static Set<PosixFilePermission> getPosixFilePermissions(Path path, LinkOption... linkOptionArr) {
        return (Set) Uncheck.apply(new IOBiFunction() { // from class: com.sunia.HTREnginev2.tkg
            @Override // onyx.org.apache.commons.io.function.IOBiFunction
            public final Object apply(Object obj, Object obj2) {
                return Files.getPosixFilePermissions((Path) obj, (LinkOption[]) obj2);
            }
        }, path, linkOptionArr);
    }

    public static boolean isHidden(Path path) {
        return ((Boolean) Uncheck.apply(new IOFunction() { // from class: com.sunia.HTREnginev2.sjg
            @Override // onyx.org.apache.commons.io.function.IOFunction
            public final Object apply(Object obj) {
                return Boolean.valueOf(Files.isHidden((Path) obj));
            }
        }, path)).booleanValue();
    }

    public static boolean isSameFile(Path path, Path path2) {
        return ((Boolean) Uncheck.apply(new IOBiFunction() { // from class: com.sunia.HTREnginev2.rkg
            @Override // onyx.org.apache.commons.io.function.IOBiFunction
            public final Object apply(Object obj, Object obj2) {
                return Boolean.valueOf(Files.isSameFile((Path) obj, (Path) obj2));
            }
        }, path, path2)).booleanValue();
    }

    public static Stream<String> lines(Path path) {
        return (Stream) Uncheck.apply(new IOFunction() { // from class: com.sunia.HTREnginev2.nkg
            @Override // onyx.org.apache.commons.io.function.IOFunction
            public final Object apply(Object obj) {
                return Files.lines((Path) obj);
            }
        }, path);
    }

    public static Stream<Path> list(Path path) {
        return (Stream) Uncheck.apply(new IOFunction() { // from class: com.sunia.HTREnginev2.hjg
            @Override // onyx.org.apache.commons.io.function.IOFunction
            public final Object apply(Object obj) {
                return Files.list((Path) obj);
            }
        }, path);
    }

    public static Path move(Path path, Path path2, CopyOption... copyOptionArr) {
        return (Path) Uncheck.apply(new IOTriFunction() { // from class: com.sunia.HTREnginev2.mjg
            @Override // onyx.org.apache.commons.io.function.IOTriFunction
            public final Object apply(Object obj, Object obj2, Object obj3) {
                return Files.move((Path) obj, (Path) obj2, (CopyOption[]) obj3);
            }
        }, path, path2, copyOptionArr);
    }

    public static BufferedReader newBufferedReader(Path path) {
        return (BufferedReader) Uncheck.apply(new IOFunction() { // from class: com.sunia.HTREnginev2.ljg
            @Override // onyx.org.apache.commons.io.function.IOFunction
            public final Object apply(Object obj) {
                return Files.newBufferedReader((Path) obj);
            }
        }, path);
    }

    public static BufferedWriter newBufferedWriter(Path path, Charset charset, OpenOption... openOptionArr) {
        return (BufferedWriter) Uncheck.apply(new IOTriFunction() { // from class: com.sunia.HTREnginev2.jkg
            @Override // onyx.org.apache.commons.io.function.IOTriFunction
            public final Object apply(Object obj, Object obj2, Object obj3) {
                return Files.newBufferedWriter((Path) obj, (Charset) obj2, (OpenOption[]) obj3);
            }
        }, path, charset, openOptionArr);
    }

    public static SeekableByteChannel newByteChannel(Path path, OpenOption... openOptionArr) {
        return (SeekableByteChannel) Uncheck.apply(new IOBiFunction() { // from class: com.sunia.HTREnginev2.ikg
            @Override // onyx.org.apache.commons.io.function.IOBiFunction
            public final Object apply(Object obj, Object obj2) {
                return Files.newByteChannel((Path) obj, (OpenOption[]) obj2);
            }
        }, path, openOptionArr);
    }

    public static DirectoryStream<Path> newDirectoryStream(Path path) {
        return (DirectoryStream) Uncheck.apply(new IOFunction() { // from class: com.sunia.HTREnginev2.rjg
            @Override // onyx.org.apache.commons.io.function.IOFunction
            public final Object apply(Object obj) {
                return Files.newDirectoryStream((Path) obj);
            }
        }, path);
    }

    public static InputStream newInputStream(Path path, OpenOption... openOptionArr) {
        return (InputStream) Uncheck.apply(new IOBiFunction() { // from class: com.sunia.HTREnginev2.yjg
            @Override // onyx.org.apache.commons.io.function.IOBiFunction
            public final Object apply(Object obj, Object obj2) {
                return Files.newInputStream((Path) obj, (OpenOption[]) obj2);
            }
        }, path, openOptionArr);
    }

    public static OutputStream newOutputStream(Path path, OpenOption... openOptionArr) {
        return (OutputStream) Uncheck.apply(new IOBiFunction() { // from class: com.sunia.HTREnginev2.bkg
            @Override // onyx.org.apache.commons.io.function.IOBiFunction
            public final Object apply(Object obj, Object obj2) {
                return Files.newOutputStream((Path) obj, (OpenOption[]) obj2);
            }
        }, path, openOptionArr);
    }

    public static String probeContentType(Path path) {
        return (String) Uncheck.apply(new IOFunction() { // from class: com.sunia.HTREnginev2.ekg
            @Override // onyx.org.apache.commons.io.function.IOFunction
            public final Object apply(Object obj) {
                return Files.probeContentType((Path) obj);
            }
        }, path);
    }

    public static byte[] readAllBytes(Path path) {
        return (byte[]) Uncheck.apply(new IOFunction() { // from class: com.sunia.HTREnginev2.ijg
            @Override // onyx.org.apache.commons.io.function.IOFunction
            public final Object apply(Object obj) {
                return Files.readAllBytes((Path) obj);
            }
        }, path);
    }

    public static List<String> readAllLines(Path path) {
        return (List) Uncheck.apply(new IOFunction() { // from class: com.sunia.HTREnginev2.xig
            @Override // onyx.org.apache.commons.io.function.IOFunction
            public final Object apply(Object obj) {
                return Files.readAllLines((Path) obj);
            }
        }, path);
    }

    public static <A extends BasicFileAttributes> A readAttributes(Path path, Class<A> cls, LinkOption... linkOptionArr) {
        return (A) Uncheck.apply(new IOTriFunction() { // from class: com.sunia.HTREnginev2.xkg
            @Override // onyx.org.apache.commons.io.function.IOTriFunction
            public final Object apply(Object obj, Object obj2, Object obj3) {
                return Files.readAttributes((Path) obj, (Class) obj2, (LinkOption[]) obj3);
            }
        }, path, cls, linkOptionArr);
    }

    public static Path readSymbolicLink(Path path) {
        return (Path) Uncheck.apply(new IOFunction() { // from class: com.sunia.HTREnginev2.fkg
            @Override // onyx.org.apache.commons.io.function.IOFunction
            public final Object apply(Object obj) {
                return Files.readSymbolicLink((Path) obj);
            }
        }, path);
    }

    public static Path setAttribute(Path path, String str, Object obj, LinkOption... linkOptionArr) {
        return (Path) Uncheck.apply(new IOQuadFunction() { // from class: com.sunia.HTREnginev2.wjg
            @Override // onyx.org.apache.commons.io.function.IOQuadFunction
            public final Object apply(Object obj2, Object obj3, Object obj4, Object obj5) {
                return Files.setAttribute((Path) obj2, (String) obj3, obj4, (LinkOption[]) obj5);
            }
        }, path, str, obj, linkOptionArr);
    }

    public static Path setLastModifiedTime(Path path, FileTime fileTime) {
        return (Path) Uncheck.apply(new IOBiFunction() { // from class: com.sunia.HTREnginev2.lkg
            @Override // onyx.org.apache.commons.io.function.IOBiFunction
            public final Object apply(Object obj, Object obj2) {
                return Files.setLastModifiedTime((Path) obj, (FileTime) obj2);
            }
        }, path, fileTime);
    }

    public static Path setOwner(Path path, UserPrincipal userPrincipal) {
        return (Path) Uncheck.apply(new IOBiFunction() { // from class: com.sunia.HTREnginev2.okg
            @Override // onyx.org.apache.commons.io.function.IOBiFunction
            public final Object apply(Object obj, Object obj2) {
                return Files.setOwner((Path) obj, (UserPrincipal) obj2);
            }
        }, path, userPrincipal);
    }

    public static Path setPosixFilePermissions(Path path, Set<PosixFilePermission> set) {
        return (Path) Uncheck.apply(new IOBiFunction() { // from class: com.sunia.HTREnginev2.ojg
            @Override // onyx.org.apache.commons.io.function.IOBiFunction
            public final Object apply(Object obj, Object obj2) {
                return Files.setPosixFilePermissions((Path) obj, (Set) obj2);
            }
        }, path, set);
    }

    public static long size(Path path) {
        return ((Long) Uncheck.apply(new IOFunction() { // from class: com.sunia.HTREnginev2.tjg
            @Override // onyx.org.apache.commons.io.function.IOFunction
            public final Object apply(Object obj) {
                return Long.valueOf(Files.size((Path) obj));
            }
        }, path)).longValue();
    }

    public static Stream<Path> walk(Path path, FileVisitOption... fileVisitOptionArr) {
        return (Stream) Uncheck.apply(new IOBiFunction() { // from class: com.sunia.HTREnginev2.skg
            @Override // onyx.org.apache.commons.io.function.IOBiFunction
            public final Object apply(Object obj, Object obj2) {
                return Files.walk((Path) obj, (FileVisitOption[]) obj2);
            }
        }, path, fileVisitOptionArr);
    }

    public static Path walkFileTree(Path path, FileVisitor<? super Path> fileVisitor) {
        return (Path) Uncheck.apply(new IOBiFunction() { // from class: com.sunia.HTREnginev2.gjg
            @Override // onyx.org.apache.commons.io.function.IOBiFunction
            public final Object apply(Object obj, Object obj2) {
                return Files.walkFileTree((Path) obj, (FileVisitor) obj2);
            }
        }, path, fileVisitor);
    }

    public static Path write(Path path, byte[] bArr, OpenOption... openOptionArr) {
        return (Path) Uncheck.apply(new IOTriFunction() { // from class: com.sunia.HTREnginev2.ejg
            @Override // onyx.org.apache.commons.io.function.IOTriFunction
            public final Object apply(Object obj, Object obj2, Object obj3) {
                return Files.write((Path) obj, (byte[]) obj2, (OpenOption[]) obj3);
            }
        }, path, bArr, openOptionArr);
    }

    public static long copy(Path path, OutputStream outputStream) {
        return ((Long) Uncheck.apply(new IOBiFunction() { // from class: com.sunia.HTREnginev2.zkg
            @Override // onyx.org.apache.commons.io.function.IOBiFunction
            public final Object apply(Object obj, Object obj2) {
                return Long.valueOf(Files.copy((Path) obj, (OutputStream) obj2));
            }
        }, path, outputStream)).longValue();
    }

    public static Path createTempDirectory(String str, FileAttribute<?>... fileAttributeArr) {
        return (Path) Uncheck.apply(new IOBiFunction() { // from class: com.sunia.HTREnginev2.fjg
            @Override // onyx.org.apache.commons.io.function.IOBiFunction
            public final Object apply(Object obj, Object obj2) {
                return Files.createTempDirectory((String) obj, (FileAttribute[]) obj2);
            }
        }, str, fileAttributeArr);
    }

    public static Path createTempFile(String str, String str2, FileAttribute<?>... fileAttributeArr) {
        return (Path) Uncheck.apply(new IOTriFunction() { // from class: com.sunia.HTREnginev2.xjg
            @Override // onyx.org.apache.commons.io.function.IOTriFunction
            public final Object apply(Object obj, Object obj2, Object obj3) {
                return Files.createTempFile((String) obj, (String) obj2, (FileAttribute[]) obj3);
            }
        }, str, str2, fileAttributeArr);
    }

    public static Stream<String> lines(Path path, Charset charset) {
        return (Stream) Uncheck.apply(new IOBiFunction() { // from class: com.sunia.HTREnginev2.gkg
            @Override // onyx.org.apache.commons.io.function.IOBiFunction
            public final Object apply(Object obj, Object obj2) {
                return Files.lines((Path) obj, (Charset) obj2);
            }
        }, path, charset);
    }

    public static BufferedReader newBufferedReader(Path path, Charset charset) {
        return (BufferedReader) Uncheck.apply(new IOBiFunction() { // from class: com.sunia.HTREnginev2.mkg
            @Override // onyx.org.apache.commons.io.function.IOBiFunction
            public final Object apply(Object obj, Object obj2) {
                return Files.newBufferedReader((Path) obj, (Charset) obj2);
            }
        }, path, charset);
    }

    public static BufferedWriter newBufferedWriter(Path path, OpenOption... openOptionArr) {
        return (BufferedWriter) Uncheck.apply(new IOBiFunction() { // from class: com.sunia.HTREnginev2.jjg
            @Override // onyx.org.apache.commons.io.function.IOBiFunction
            public final Object apply(Object obj, Object obj2) {
                return Files.newBufferedWriter((Path) obj, (OpenOption[]) obj2);
            }
        }, path, openOptionArr);
    }

    public static SeekableByteChannel newByteChannel(Path path, Set<? extends OpenOption> set, FileAttribute<?>... fileAttributeArr) {
        return (SeekableByteChannel) Uncheck.apply(new IOTriFunction() { // from class: com.sunia.HTREnginev2.zjg
            @Override // onyx.org.apache.commons.io.function.IOTriFunction
            public final Object apply(Object obj, Object obj2, Object obj3) {
                return Files.newByteChannel((Path) obj, (Set) obj2, (FileAttribute[]) obj3);
            }
        }, path, set, fileAttributeArr);
    }

    public static DirectoryStream<Path> newDirectoryStream(Path path, DirectoryStream.Filter<? super Path> filter) {
        return (DirectoryStream) Uncheck.apply(new IOBiFunction() { // from class: com.sunia.HTREnginev2.dkg
            @Override // onyx.org.apache.commons.io.function.IOBiFunction
            public final Object apply(Object obj, Object obj2) {
                return Files.newDirectoryStream((Path) obj, (DirectoryStream.Filter<? super Path>) obj2);
            }
        }, path, filter);
    }

    public static List<String> readAllLines(Path path, Charset charset) {
        return (List) Uncheck.apply(new IOBiFunction() { // from class: com.sunia.HTREnginev2.akg
            @Override // onyx.org.apache.commons.io.function.IOBiFunction
            public final Object apply(Object obj, Object obj2) {
                return Files.readAllLines((Path) obj, (Charset) obj2);
            }
        }, path, charset);
    }

    public static Map<String, Object> readAttributes(Path path, String str, LinkOption... linkOptionArr) {
        return (Map) Uncheck.apply(new IOTriFunction() { // from class: com.sunia.HTREnginev2.vjg
            @Override // onyx.org.apache.commons.io.function.IOTriFunction
            public final Object apply(Object obj, Object obj2, Object obj3) {
                return Files.readAttributes((Path) obj, (String) obj2, (LinkOption[]) obj3);
            }
        }, path, str, linkOptionArr);
    }

    public static Stream<Path> walk(Path path, int i, FileVisitOption... fileVisitOptionArr) {
        return (Stream) Uncheck.apply(new IOTriFunction() { // from class: com.sunia.HTREnginev2.cjg
            @Override // onyx.org.apache.commons.io.function.IOTriFunction
            public final Object apply(Object obj, Object obj2, Object obj3) {
                return Files.walk((Path) obj, ((Integer) obj2).intValue(), (FileVisitOption[]) obj3);
            }
        }, path, Integer.valueOf(i), fileVisitOptionArr);
    }

    public static Path walkFileTree(Path path, Set<FileVisitOption> set, int i, FileVisitor<? super Path> fileVisitor) {
        return (Path) Uncheck.apply(new IOQuadFunction() { // from class: com.sunia.HTREnginev2.ujg
            @Override // onyx.org.apache.commons.io.function.IOQuadFunction
            public final Object apply(Object obj, Object obj2, Object obj3, Object obj4) {
                return Files.walkFileTree((Path) obj, (Set) obj2, ((Integer) obj3).intValue(), (FileVisitor) obj4);
            }
        }, path, set, Integer.valueOf(i), fileVisitor);
    }

    public static Path write(Path path, Iterable<? extends CharSequence> iterable, Charset charset, OpenOption... openOptionArr) {
        return (Path) Uncheck.apply(new IOQuadFunction() { // from class: com.sunia.HTREnginev2.vkg
            @Override // onyx.org.apache.commons.io.function.IOQuadFunction
            public final Object apply(Object obj, Object obj2, Object obj3, Object obj4) {
                return Files.write((Path) obj, (Iterable) obj2, (Charset) obj3, (OpenOption[]) obj4);
            }
        }, path, iterable, charset, openOptionArr);
    }

    public static Path copy(Path path, Path path2, CopyOption... copyOptionArr) {
        return (Path) Uncheck.apply(new IOTriFunction() { // from class: com.sunia.HTREnginev2.njg
            @Override // onyx.org.apache.commons.io.function.IOTriFunction
            public final Object apply(Object obj, Object obj2, Object obj3) {
                return Files.copy((Path) obj, (Path) obj2, (CopyOption[]) obj3);
            }
        }, path, path2, copyOptionArr);
    }

    public static DirectoryStream<Path> newDirectoryStream(Path path, String str) {
        return (DirectoryStream) Uncheck.apply(new IOBiFunction() { // from class: com.sunia.HTREnginev2.ajg
            @Override // onyx.org.apache.commons.io.function.IOBiFunction
            public final Object apply(Object obj, Object obj2) {
                return Files.newDirectoryStream((Path) obj, (String) obj2);
            }
        }, path, str);
    }

    public static Path write(Path path, Iterable<? extends CharSequence> iterable, OpenOption... openOptionArr) {
        return (Path) Uncheck.apply(new IOTriFunction() { // from class: com.sunia.HTREnginev2.kjg
            @Override // onyx.org.apache.commons.io.function.IOTriFunction
            public final Object apply(Object obj, Object obj2, Object obj3) {
                return Files.write((Path) obj, (Iterable<? extends CharSequence>) obj2, (OpenOption[]) obj3);
            }
        }, path, iterable, openOptionArr);
    }
}
