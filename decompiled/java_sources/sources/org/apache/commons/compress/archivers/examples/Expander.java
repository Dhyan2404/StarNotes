package org.apache.commons.compress.archivers.examples;

import com.sunia.HTREnginev2.hvd;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import java.nio.channels.SeekableByteChannel;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.nio.file.attribute.FileAttribute;
import java.util.Enumeration;
import java.util.Iterator;
import org.apache.commons.compress.archivers.ArchiveEntry;
import org.apache.commons.compress.archivers.ArchiveException;
import org.apache.commons.compress.archivers.ArchiveInputStream;
import org.apache.commons.compress.archivers.ArchiveStreamFactory;
import org.apache.commons.compress.archivers.examples.Expander;
import org.apache.commons.compress.archivers.sevenz.SevenZFile;
import org.apache.commons.compress.archivers.tar.TarArchiveEntry;
import org.apache.commons.compress.archivers.tar.TarFile;
import org.apache.commons.compress.archivers.zip.ZipArchiveEntry;
import org.apache.commons.compress.archivers.zip.ZipFile;
import org.apache.commons.compress.utils.IOUtils;

/* loaded from: classes12.dex */
public class Expander {

    /* renamed from: org.apache.commons.compress.archivers.examples.Expander$a */
    /* loaded from: classes12.dex */
    public interface InterfaceC18832a {
        /* renamed from: a */
        ArchiveEntry mo57289a() throws IOException;
    }

    /* renamed from: org.apache.commons.compress.archivers.examples.Expander$b */
    /* loaded from: classes12.dex */
    public interface InterfaceC18833b {
        /* renamed from: a */
        void mo52933a(ArchiveEntry archiveEntry, OutputStream outputStream) throws IOException;
    }

    /* renamed from: i */
    public static /* synthetic */ ArchiveEntry m66185i(ArchiveInputStream archiveInputStream) throws IOException {
        ArchiveEntry nextEntry = archiveInputStream.getNextEntry();
        while (nextEntry != null && !archiveInputStream.canReadEntryData(nextEntry)) {
            nextEntry = archiveInputStream.getNextEntry();
        }
        return nextEntry;
    }

    /* renamed from: k */
    public static /* synthetic */ void m66187k(SevenZFile sevenZFile, ArchiveEntry archiveEntry, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[8192];
        while (true) {
            int read = sevenZFile.read(bArr);
            if (-1 == read) {
                return;
            }
            if (outputStream != null) {
                outputStream.write(bArr, 0, read);
            }
        }
    }

    /* renamed from: l */
    public static /* synthetic */ ArchiveEntry m66188l(Iterator it2) throws IOException {
        if (it2.hasNext()) {
            return (ArchiveEntry) it2.next();
        }
        return null;
    }

    /* renamed from: m */
    public static /* synthetic */ void m66189m(TarFile tarFile, ArchiveEntry archiveEntry, OutputStream outputStream) throws IOException {
        InputStream inputStream = tarFile.getInputStream((TarArchiveEntry) archiveEntry);
        try {
            IOUtils.copy(inputStream, outputStream);
            if (inputStream != null) {
                inputStream.close();
            }
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

    /* JADX WARN: Code restructure failed: missing block: B:21:0x000f, code lost:
    
        r0 = null;
     */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ org.apache.commons.compress.archivers.ArchiveEntry m66190n(java.util.Enumeration r3, org.apache.commons.compress.archivers.zip.ZipFile r4) throws java.io.IOException {
        /*
            boolean r0 = r3.hasMoreElements()
            r1 = 0
            if (r0 == 0) goto Le
            java.lang.Object r0 = r3.nextElement()
            org.apache.commons.compress.archivers.zip.ZipArchiveEntry r0 = (org.apache.commons.compress.archivers.zip.ZipArchiveEntry) r0
            goto Lf
        Le:
            r0 = r1
        Lf:
            if (r0 == 0) goto L24
            boolean r2 = r4.canReadEntryData(r0)
            if (r2 != 0) goto L24
            boolean r0 = r3.hasMoreElements()
            if (r0 == 0) goto Le
            java.lang.Object r0 = r3.nextElement()
            org.apache.commons.compress.archivers.zip.ZipArchiveEntry r0 = (org.apache.commons.compress.archivers.zip.ZipArchiveEntry) r0
            goto Lf
        L24:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.compress.archivers.examples.Expander.m66190n(java.util.Enumeration, org.apache.commons.compress.archivers.zip.ZipFile):org.apache.commons.compress.archivers.ArchiveEntry");
    }

    /* renamed from: o */
    public static /* synthetic */ void m66191o(ZipFile zipFile, ArchiveEntry archiveEntry, OutputStream outputStream) throws IOException {
        InputStream inputStream = zipFile.getInputStream((ZipArchiveEntry) archiveEntry);
        try {
            IOUtils.copy(inputStream, outputStream);
            if (inputStream != null) {
                inputStream.close();
            }
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

    public void expand(ArchiveInputStream archiveInputStream, File file) throws IOException {
        expand(archiveInputStream, m66194q(file));
    }

    /* renamed from: h */
    public final void m66192h(InterfaceC18832a interfaceC18832a, InterfaceC18833b interfaceC18833b, Path path) throws IOException {
        boolean z = path == null;
        Path normalize = z ? null : path.normalize();
        ArchiveEntry mo57289a = interfaceC18832a.mo57289a();
        while (mo57289a != null) {
            Path resolve = z ? null : path.resolve(mo57289a.getName());
            if (!z && !resolve.normalize().startsWith(normalize) && !Files.isSameFile(path, resolve)) {
                throw new IOException("Expanding " + mo57289a.getName() + " would create file outside of " + path);
            }
            if (!mo57289a.isDirectory()) {
                Path parent = z ? null : resolve.getParent();
                if (!z && !Files.isDirectory(parent, new LinkOption[0]) && Files.createDirectories(parent, new FileAttribute[0]) == null) {
                    throw new IOException("Failed to create directory " + parent);
                }
                if (z) {
                    interfaceC18833b.mo52933a(mo57289a, null);
                } else {
                    OutputStream newOutputStream = Files.newOutputStream(resolve, new OpenOption[0]);
                    try {
                        interfaceC18833b.mo52933a(mo57289a, newOutputStream);
                        if (newOutputStream != null) {
                            newOutputStream.close();
                        }
                    } finally {
                    }
                }
            } else if (!z && !Files.isDirectory(resolve, new LinkOption[0]) && Files.createDirectories(resolve, new FileAttribute[0]) == null) {
                throw new IOException("Failed to create directory " + resolve);
            }
            mo57289a = interfaceC18832a.mo57289a();
        }
    }

    /* renamed from: p */
    public final boolean m66193p(String str) {
        return ArchiveStreamFactory.TAR.equalsIgnoreCase(str) || "zip".equalsIgnoreCase(str) || ArchiveStreamFactory.SEVEN_Z.equalsIgnoreCase(str);
    }

    /* renamed from: q */
    public final Path m66194q(File file) {
        if (file != null) {
            return file.toPath();
        }
        return null;
    }

    public void expand(final ArchiveInputStream archiveInputStream, Path path) throws IOException {
        m66192h(new InterfaceC18832a() { // from class: com.sunia.HTREnginev2.z1g
            @Override // org.apache.commons.compress.archivers.examples.Expander.InterfaceC18832a
            /* renamed from: a */
            public final ArchiveEntry mo57289a() {
                ArchiveEntry m66185i;
                m66185i = Expander.m66185i(ArchiveInputStream.this);
                return m66185i;
            }
        }, new InterfaceC18833b() { // from class: com.sunia.HTREnginev2.a2g
            @Override // org.apache.commons.compress.archivers.examples.Expander.InterfaceC18833b
            /* renamed from: a */
            public final void mo52933a(ArchiveEntry archiveEntry, OutputStream outputStream) {
                IOUtils.copy(ArchiveInputStream.this, outputStream);
            }
        }, path);
    }

    public void expand(File file, File file2) throws IOException, ArchiveException {
        expand(file.toPath(), m66194q(file2));
    }

    @Deprecated
    public void expand(InputStream inputStream, File file) throws IOException, ArchiveException {
        expand(inputStream, file, CloseableConsumer.NULL_CONSUMER);
    }

    public void expand(InputStream inputStream, File file, CloseableConsumer closeableConsumer) throws IOException, ArchiveException {
        hvd hvdVar = new hvd(closeableConsumer);
        try {
            expand((ArchiveInputStream) hvdVar.m54633f(ArchiveStreamFactory.DEFAULT.createArchiveInputStream(inputStream)), file);
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

    public void expand(Path path, Path path2) throws IOException, ArchiveException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(Files.newInputStream(path, new OpenOption[0]));
        try {
            String detect = ArchiveStreamFactory.detect(bufferedInputStream);
            bufferedInputStream.close();
            expand(detect, path, path2);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    bufferedInputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public void expand(SevenZFile sevenZFile, File file) throws IOException {
        expand(sevenZFile, m66194q(file));
    }

    public void expand(final SevenZFile sevenZFile, Path path) throws IOException {
        sevenZFile.getClass();
        m66192h(new InterfaceC18832a() { // from class: com.sunia.HTREnginev2.v1g
            @Override // org.apache.commons.compress.archivers.examples.Expander.InterfaceC18832a
            /* renamed from: a */
            public final ArchiveEntry mo57289a() {
                return SevenZFile.this.getNextEntry();
            }
        }, new InterfaceC18833b() { // from class: com.sunia.HTREnginev2.w1g
            @Override // org.apache.commons.compress.archivers.examples.Expander.InterfaceC18833b
            /* renamed from: a */
            public final void mo52933a(ArchiveEntry archiveEntry, OutputStream outputStream) {
                Expander.m66187k(SevenZFile.this, archiveEntry, outputStream);
            }
        }, path);
    }

    public void expand(String str, File file, File file2) throws IOException, ArchiveException {
        expand(str, file.toPath(), m66194q(file2));
    }

    @Deprecated
    public void expand(String str, InputStream inputStream, File file) throws IOException, ArchiveException {
        expand(str, inputStream, file, CloseableConsumer.NULL_CONSUMER);
    }

    public void expand(String str, InputStream inputStream, File file, CloseableConsumer closeableConsumer) throws IOException, ArchiveException {
        expand(str, inputStream, m66194q(file), closeableConsumer);
    }

    public void expand(String str, InputStream inputStream, Path path, CloseableConsumer closeableConsumer) throws IOException, ArchiveException {
        hvd hvdVar = new hvd(closeableConsumer);
        try {
            expand((ArchiveInputStream) hvdVar.m54633f(ArchiveStreamFactory.DEFAULT.createArchiveInputStream(str, inputStream)), path);
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

    public void expand(String str, Path path, Path path2) throws IOException, ArchiveException {
        if (m66193p(str)) {
            FileChannel open = FileChannel.open(path, StandardOpenOption.READ);
            try {
                expand(str, open, path2, CloseableConsumer.CLOSING_CONSUMER);
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
        BufferedInputStream bufferedInputStream = new BufferedInputStream(Files.newInputStream(path, new OpenOption[0]));
        try {
            expand(str, bufferedInputStream, path2, CloseableConsumer.CLOSING_CONSUMER);
            bufferedInputStream.close();
        } catch (Throwable th4) {
            try {
                throw th4;
            } catch (Throwable th5) {
                try {
                    bufferedInputStream.close();
                } catch (Throwable th6) {
                    th4.addSuppressed(th6);
                }
                throw th5;
            }
        }
    }

    @Deprecated
    public void expand(String str, SeekableByteChannel seekableByteChannel, File file) throws IOException, ArchiveException {
        expand(str, seekableByteChannel, file, CloseableConsumer.NULL_CONSUMER);
    }

    public void expand(String str, SeekableByteChannel seekableByteChannel, File file, CloseableConsumer closeableConsumer) throws IOException, ArchiveException {
        expand(str, seekableByteChannel, m66194q(file), closeableConsumer);
    }

    public void expand(String str, SeekableByteChannel seekableByteChannel, Path path, CloseableConsumer closeableConsumer) throws IOException, ArchiveException {
        hvd hvdVar = new hvd(closeableConsumer);
        try {
            if (!m66193p(str)) {
                expand(str, (InputStream) hvdVar.m54633f(Channels.newInputStream(seekableByteChannel)), path, CloseableConsumer.NULL_CONSUMER);
            } else if (ArchiveStreamFactory.TAR.equalsIgnoreCase(str)) {
                expand((TarFile) hvdVar.m54633f(new TarFile(seekableByteChannel)), path);
            } else if ("zip".equalsIgnoreCase(str)) {
                expand((ZipFile) hvdVar.m54633f(new ZipFile(seekableByteChannel)), path);
            } else if (ArchiveStreamFactory.SEVEN_Z.equalsIgnoreCase(str)) {
                expand((SevenZFile) hvdVar.m54633f(new SevenZFile(seekableByteChannel)), path);
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

    public void expand(TarFile tarFile, File file) throws IOException {
        expand(tarFile, m66194q(file));
    }

    public void expand(final TarFile tarFile, Path path) throws IOException {
        final Iterator<TarArchiveEntry> it2 = tarFile.getEntries().iterator();
        m66192h(new InterfaceC18832a() { // from class: com.sunia.HTREnginev2.x1g
            @Override // org.apache.commons.compress.archivers.examples.Expander.InterfaceC18832a
            /* renamed from: a */
            public final ArchiveEntry mo57289a() {
                ArchiveEntry m66188l;
                m66188l = Expander.m66188l(it2);
                return m66188l;
            }
        }, new InterfaceC18833b() { // from class: com.sunia.HTREnginev2.y1g
            @Override // org.apache.commons.compress.archivers.examples.Expander.InterfaceC18833b
            /* renamed from: a */
            public final void mo52933a(ArchiveEntry archiveEntry, OutputStream outputStream) {
                Expander.m66189m(TarFile.this, archiveEntry, outputStream);
            }
        }, path);
    }

    public void expand(ZipFile zipFile, File file) throws IOException {
        expand(zipFile, m66194q(file));
    }

    public void expand(final ZipFile zipFile, Path path) throws IOException {
        final Enumeration<ZipArchiveEntry> entries = zipFile.getEntries();
        m66192h(new InterfaceC18832a() { // from class: com.sunia.HTREnginev2.t1g
            @Override // org.apache.commons.compress.archivers.examples.Expander.InterfaceC18832a
            /* renamed from: a */
            public final ArchiveEntry mo57289a() {
                ArchiveEntry m66190n;
                m66190n = Expander.m66190n(entries, zipFile);
                return m66190n;
            }
        }, new InterfaceC18833b() { // from class: com.sunia.HTREnginev2.u1g
            @Override // org.apache.commons.compress.archivers.examples.Expander.InterfaceC18833b
            /* renamed from: a */
            public final void mo52933a(ArchiveEntry archiveEntry, OutputStream outputStream) {
                Expander.m66191o(ZipFile.this, archiveEntry, outputStream);
            }
        }, path);
    }
}
