package org.apache.commons.compress.archivers.examples;

import com.sunia.HTREnginev2.hvd;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import java.nio.channels.SeekableByteChannel;
import java.nio.file.FileVisitOption;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.SimpleFileVisitor;
import java.nio.file.StandardOpenOption;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.EnumSet;
import java.util.Objects;
import org.apache.commons.compress.archivers.ArchiveException;
import org.apache.commons.compress.archivers.ArchiveOutputStream;
import org.apache.commons.compress.archivers.ArchiveStreamFactory;
import org.apache.commons.compress.archivers.sevenz.SevenZOutputFile;
import org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream;
import org.apache.commons.compress.utils.IOUtils;

/* loaded from: classes12.dex */
public class Archiver {
    public static final EnumSet<FileVisitOption> EMPTY_FileVisitOption = EnumSet.noneOf(FileVisitOption.class);

    /* renamed from: org.apache.commons.compress.archivers.examples.Archiver$a */
    /* loaded from: classes12.dex */
    public class C18830a extends C18831b {

        /* renamed from: h */
        public final /* synthetic */ Path f105588h;

        /* renamed from: i */
        public final /* synthetic */ SevenZOutputFile f105589i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18830a(ArchiveOutputStream archiveOutputStream, Path path, LinkOption[] linkOptionArr, Path path2, SevenZOutputFile sevenZOutputFile) {
            super(archiveOutputStream, path, linkOptionArr, null);
            this.f105588h = path2;
            this.f105589i = sevenZOutputFile;
        }

        @Override // org.apache.commons.compress.archivers.examples.Archiver.C18831b
        /* renamed from: b */
        public FileVisitResult mo66173b(Path path, BasicFileAttributes basicFileAttributes, boolean z) throws IOException {
            Objects.requireNonNull(path);
            Objects.requireNonNull(basicFileAttributes);
            String replace = this.f105588h.relativize(path).toString().replace('\\', '/');
            if (!replace.isEmpty()) {
                SevenZOutputFile sevenZOutputFile = this.f105589i;
                if (!z && !replace.endsWith("/")) {
                    replace = replace + "/";
                }
                this.f105589i.putArchiveEntry(sevenZOutputFile.createArchiveEntry(path, replace, new LinkOption[0]));
                if (z) {
                    this.f105589i.write(path, new OpenOption[0]);
                }
                this.f105589i.closeArchiveEntry();
            }
            return FileVisitResult.CONTINUE;
        }
    }

    /* renamed from: org.apache.commons.compress.archivers.examples.Archiver$b */
    /* loaded from: classes12.dex */
    public static class C18831b extends SimpleFileVisitor<Path> {

        /* renamed from: e */
        public final ArchiveOutputStream f105591e;

        /* renamed from: f */
        public final Path f105592f;

        /* renamed from: g */
        public final LinkOption[] f105593g;

        public /* synthetic */ C18831b(ArchiveOutputStream archiveOutputStream, Path path, LinkOption[] linkOptionArr, C18830a c18830a) {
            this(archiveOutputStream, path, linkOptionArr);
        }

        @Override // java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FileVisitResult preVisitDirectory(Path path, BasicFileAttributes basicFileAttributes) throws IOException {
            return mo66173b(path, basicFileAttributes, false);
        }

        /* renamed from: b */
        public FileVisitResult mo66173b(Path path, BasicFileAttributes basicFileAttributes, boolean z) throws IOException {
            Objects.requireNonNull(path);
            Objects.requireNonNull(basicFileAttributes);
            String replace = this.f105592f.relativize(path).toString().replace('\\', '/');
            if (!replace.isEmpty()) {
                ArchiveOutputStream archiveOutputStream = this.f105591e;
                if (!z && !replace.endsWith("/")) {
                    replace = replace + "/";
                }
                this.f105591e.putArchiveEntry(archiveOutputStream.createArchiveEntry(path, replace, this.f105593g));
                if (z) {
                    Files.copy(path, this.f105591e);
                }
                this.f105591e.closeArchiveEntry();
            }
            return FileVisitResult.CONTINUE;
        }

        @Override // java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public FileVisitResult visitFile(Path path, BasicFileAttributes basicFileAttributes) throws IOException {
            return mo66173b(path, basicFileAttributes, true);
        }

        public C18831b(ArchiveOutputStream archiveOutputStream, Path path, LinkOption... linkOptionArr) {
            this.f105591e = archiveOutputStream;
            this.f105592f = path;
            this.f105593g = linkOptionArr == null ? IOUtils.EMPTY_LINK_OPTIONS : (LinkOption[]) linkOptionArr.clone();
        }
    }

    /* renamed from: a */
    public final boolean m66172a(String str) {
        return "zip".equalsIgnoreCase(str) || ArchiveStreamFactory.SEVEN_Z.equalsIgnoreCase(str);
    }

    public void create(ArchiveOutputStream archiveOutputStream, File file) throws IOException {
        create(archiveOutputStream, file.toPath(), EMPTY_FileVisitOption, new LinkOption[0]);
    }

    public void create(ArchiveOutputStream archiveOutputStream, Path path, EnumSet<FileVisitOption> enumSet, LinkOption... linkOptionArr) throws IOException {
        Files.walkFileTree(path, enumSet, Integer.MAX_VALUE, new C18831b(archiveOutputStream, path, linkOptionArr, null));
        archiveOutputStream.finish();
    }

    public void create(ArchiveOutputStream archiveOutputStream, Path path) throws IOException {
        create(archiveOutputStream, path, EMPTY_FileVisitOption, new LinkOption[0]);
    }

    public void create(SevenZOutputFile sevenZOutputFile, File file) throws IOException {
        create(sevenZOutputFile, file.toPath());
    }

    public void create(SevenZOutputFile sevenZOutputFile, Path path) throws IOException {
        Files.walkFileTree(path, new C18830a(null, path, new LinkOption[0], path, sevenZOutputFile));
        sevenZOutputFile.finish();
    }

    public void create(String str, File file, File file2) throws IOException, ArchiveException {
        create(str, file.toPath(), file2.toPath());
    }

    @Deprecated
    public void create(String str, OutputStream outputStream, File file) throws IOException, ArchiveException {
        create(str, outputStream, file, CloseableConsumer.NULL_CONSUMER);
    }

    public void create(String str, OutputStream outputStream, File file, CloseableConsumer closeableConsumer) throws IOException, ArchiveException {
        hvd hvdVar = new hvd(closeableConsumer);
        try {
            create((ArchiveOutputStream) hvdVar.m54633f(ArchiveStreamFactory.DEFAULT.createArchiveOutputStream(str, outputStream)), file);
            hvdVar.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    hvdVar.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public void create(String str, Path path, Path path2) throws IOException, ArchiveException {
        if (m66172a(str)) {
            FileChannel open = FileChannel.open(path, StandardOpenOption.WRITE, StandardOpenOption.CREATE, StandardOpenOption.TRUNCATE_EXISTING);
            try {
                create(str, open, path2);
                if (open != null) {
                    open.close();
                    return;
                }
                return;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    if (open != null) {
                        try {
                            open.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            }
        }
        ArchiveOutputStream createArchiveOutputStream = ArchiveStreamFactory.DEFAULT.createArchiveOutputStream(str, Files.newOutputStream(path, new OpenOption[0]));
        try {
            create(createArchiveOutputStream, path2, EMPTY_FileVisitOption, new LinkOption[0]);
            if (createArchiveOutputStream != null) {
                createArchiveOutputStream.close();
            }
        } catch (Throwable th4) {
            try {
                throw th4;
            } catch (Throwable th5) {
                if (createArchiveOutputStream != null) {
                    try {
                        createArchiveOutputStream.close();
                    } catch (Throwable th6) {
                        th4.addSuppressed(th6);
                    }
                }
                throw th5;
            }
        }
    }

    @Deprecated
    public void create(String str, SeekableByteChannel seekableByteChannel, File file) throws IOException, ArchiveException {
        create(str, seekableByteChannel, file, CloseableConsumer.NULL_CONSUMER);
    }

    public void create(String str, SeekableByteChannel seekableByteChannel, File file, CloseableConsumer closeableConsumer) throws IOException, ArchiveException {
        hvd hvdVar = new hvd(closeableConsumer);
        try {
            if (!m66172a(str)) {
                create(str, (OutputStream) hvdVar.m54633f(Channels.newOutputStream(seekableByteChannel)), file);
            } else if ("zip".equalsIgnoreCase(str)) {
                create((ArchiveOutputStream) hvdVar.m54633f(new ZipArchiveOutputStream(seekableByteChannel)), file);
            } else if (ArchiveStreamFactory.SEVEN_Z.equalsIgnoreCase(str)) {
                create((SevenZOutputFile) hvdVar.m54633f(new SevenZOutputFile(seekableByteChannel)), file);
            } else {
                throw new ArchiveException("Don't know how to handle format " + str);
            }
            hvdVar.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    hvdVar.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public void create(String str, SeekableByteChannel seekableByteChannel, Path path) throws IOException {
        if (ArchiveStreamFactory.SEVEN_Z.equalsIgnoreCase(str)) {
            SevenZOutputFile sevenZOutputFile = new SevenZOutputFile(seekableByteChannel);
            try {
                create(sevenZOutputFile, path);
                sevenZOutputFile.close();
                return;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        sevenZOutputFile.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        }
        if ("zip".equalsIgnoreCase(str)) {
            ZipArchiveOutputStream zipArchiveOutputStream = new ZipArchiveOutputStream(seekableByteChannel);
            try {
                create(zipArchiveOutputStream, path, EMPTY_FileVisitOption, new LinkOption[0]);
                zipArchiveOutputStream.close();
                return;
            } catch (Throwable th4) {
                try {
                    throw th4;
                } catch (Throwable th5) {
                    try {
                        zipArchiveOutputStream.close();
                    } catch (Throwable th6) {
                        th4.addSuppressed(th6);
                    }
                    throw th5;
                }
            }
        }
        throw new IllegalStateException(str);
    }
}
