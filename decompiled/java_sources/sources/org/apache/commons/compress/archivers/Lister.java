package org.apache.commons.compress.archivers;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.util.Enumeration;
import java.util.function.Consumer;
import org.apache.commons.compress.archivers.Lister;
import org.apache.commons.compress.archivers.sevenz.SevenZArchiveEntry;
import org.apache.commons.compress.archivers.sevenz.SevenZFile;
import org.apache.commons.compress.archivers.tar.TarArchiveEntry;
import org.apache.commons.compress.archivers.tar.TarFile;
import org.apache.commons.compress.archivers.zip.ZipArchiveEntry;
import org.apache.commons.compress.archivers.zip.ZipFile;

/* loaded from: classes12.dex */
public final class Lister {

    /* renamed from: a */
    public static final ArchiveStreamFactory f105360a = ArchiveStreamFactory.DEFAULT;

    /* renamed from: b */
    public static ArchiveInputStream m66079b(String[] strArr, InputStream inputStream) throws ArchiveException {
        return strArr.length > 1 ? f105360a.createArchiveInputStream(strArr[1], inputStream) : f105360a.createArchiveInputStream(inputStream);
    }

    /* renamed from: c */
    public static String m66080c(File file) throws ArchiveException, IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(Files.newInputStream(file.toPath(), new OpenOption[0]));
        try {
            String detect = ArchiveStreamFactory.detect(bufferedInputStream);
            bufferedInputStream.close();
            return detect;
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

    /* renamed from: d */
    public static /* synthetic */ void m66081d(TarArchiveEntry tarArchiveEntry) {
        System.out.println(tarArchiveEntry.getName());
    }

    /* renamed from: e */
    public static void m66082e(File file) throws IOException {
        String name;
        SevenZFile sevenZFile = new SevenZFile(file);
        try {
            System.out.println("Created " + sevenZFile);
            while (true) {
                SevenZArchiveEntry nextEntry = sevenZFile.getNextEntry();
                if (nextEntry == null) {
                    sevenZFile.close();
                    return;
                }
                if (nextEntry.getName() == null) {
                    name = sevenZFile.getDefaultName() + " (entry name was null)";
                } else {
                    name = nextEntry.getName();
                }
                System.out.println(name);
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    sevenZFile.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    /* renamed from: f */
    public static void m66083f(File file, String[] strArr) throws ArchiveException, IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(Files.newInputStream(file.toPath(), new OpenOption[0]));
        try {
            ArchiveInputStream m66079b = m66079b(strArr, bufferedInputStream);
            try {
                System.out.println("Created " + m66079b.toString());
                while (true) {
                    ArchiveEntry nextEntry = m66079b.getNextEntry();
                    if (nextEntry == null) {
                        m66079b.close();
                        bufferedInputStream.close();
                        return;
                    }
                    System.out.println(nextEntry.getName());
                }
            } finally {
            }
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

    /* renamed from: g */
    public static void m66084g(File file) throws IOException {
        TarFile tarFile = new TarFile(file);
        try {
            System.out.println("Created " + tarFile);
            tarFile.getEntries().forEach(new Consumer() { // from class: com.sunia.HTREnginev2.szi
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    Lister.m66081d((TarArchiveEntry) obj);
                }
            });
            tarFile.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    tarFile.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    /* renamed from: h */
    public static void m66085h(File file) throws IOException {
        ZipFile zipFile = new ZipFile(file);
        try {
            System.out.println("Created " + zipFile);
            Enumeration<ZipArchiveEntry> entries = zipFile.getEntries();
            while (entries.hasMoreElements()) {
                System.out.println(entries.nextElement().getName());
            }
            zipFile.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    zipFile.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    /* renamed from: i */
    public static void m66086i() {
        System.out.println("Parameters: archive-name [archive-type]\n");
        System.out.println("The magic archive-type 'zipfile' prefers ZipFile over ZipArchiveInputStream");
        System.out.println("The magic archive-type 'tarfile' prefers TarFile over TarArchiveInputStream");
    }

    public static void main(String[] strArr) throws ArchiveException, IOException {
        if (strArr.length == 0) {
            m66086i();
            return;
        }
        System.out.println("Analysing " + strArr[0]);
        File file = new File(strArr[0]);
        if (!file.isFile()) {
            System.err.println(file + " doesn't exist or is a directory");
        }
        String m66080c = strArr.length > 1 ? strArr[1] : m66080c(file);
        if (ArchiveStreamFactory.SEVEN_Z.equalsIgnoreCase(m66080c)) {
            m66082e(file);
            return;
        }
        if ("zipfile".equals(m66080c)) {
            m66085h(file);
        } else if ("tarfile".equals(m66080c)) {
            m66084g(file);
        } else {
            m66083f(file, strArr);
        }
    }
}
