package org.apache.commons.compress.archivers;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Collections;
import java.util.Locale;
import java.util.ServiceLoader;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.function.Consumer;
import org.apache.commons.compress.archivers.ArchiveStreamFactory;
import org.apache.commons.compress.archivers.ArchiveStreamProvider;
import org.apache.commons.compress.archivers.ar.ArArchiveInputStream;
import org.apache.commons.compress.archivers.ar.ArArchiveOutputStream;
import org.apache.commons.compress.archivers.arj.ArjArchiveInputStream;
import org.apache.commons.compress.archivers.cpio.CpioArchiveInputStream;
import org.apache.commons.compress.archivers.cpio.CpioArchiveOutputStream;
import org.apache.commons.compress.archivers.dump.DumpArchiveInputStream;
import org.apache.commons.compress.archivers.jar.JarArchiveInputStream;
import org.apache.commons.compress.archivers.jar.JarArchiveOutputStream;
import org.apache.commons.compress.archivers.sevenz.SevenZFile;
import org.apache.commons.compress.archivers.tar.TarArchiveInputStream;
import org.apache.commons.compress.archivers.tar.TarArchiveOutputStream;
import org.apache.commons.compress.archivers.zip.ZipArchiveInputStream;
import org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream;
import org.apache.commons.compress.utils.IOUtils;
import org.apache.commons.compress.utils.Sets;

/* loaded from: classes12.dex */
public class ArchiveStreamFactory implements ArchiveStreamProvider {
    public static final String APK = "apk";
    public static final String APKM = "apkm";
    public static final String APKS = "apks";

    /* renamed from: AR */
    public static final String f105352AR = "ar";
    public static final String ARJ = "arj";
    public static final String CPIO = "cpio";
    public static final ArchiveStreamFactory DEFAULT = new ArchiveStreamFactory();
    public static final String DUMP = "dump";
    public static final String JAR = "jar";
    public static final String SEVEN_Z = "7z";
    public static final String TAR = "tar";
    public static final String XAPK = "xapk";
    public static final String ZIP = "zip";

    /* renamed from: e */
    public static final int f105353e = 512;

    /* renamed from: f */
    public static final int f105354f = 32;

    /* renamed from: g */
    public static final int f105355g = 12;

    /* renamed from: a */
    public final String f105356a;

    /* renamed from: b */
    public volatile String f105357b;

    /* renamed from: c */
    public SortedMap<String, ArchiveStreamProvider> f105358c;

    /* renamed from: d */
    public SortedMap<String, ArchiveStreamProvider> f105359d;

    public ArchiveStreamFactory() {
        this(null);
    }

    public static String detect(InputStream inputStream) throws ArchiveException {
        TarArchiveInputStream tarArchiveInputStream;
        Throwable th;
        if (inputStream == null) {
            throw new IllegalArgumentException("Stream must not be null.");
        }
        if (!inputStream.markSupported()) {
            throw new IllegalArgumentException("Mark is not supported.");
        }
        byte[] bArr = new byte[12];
        inputStream.mark(12);
        try {
            int readFully = IOUtils.readFully(inputStream, bArr);
            inputStream.reset();
            if (ZipArchiveInputStream.matches(bArr, readFully)) {
                return "zip";
            }
            if (JarArchiveInputStream.matches(bArr, readFully)) {
                return JAR;
            }
            if (ArArchiveInputStream.matches(bArr, readFully)) {
                return f105352AR;
            }
            if (CpioArchiveInputStream.matches(bArr, readFully)) {
                return CPIO;
            }
            if (ArjArchiveInputStream.matches(bArr, readFully)) {
                return ARJ;
            }
            if (SevenZFile.matches(bArr, readFully)) {
                return SEVEN_Z;
            }
            byte[] bArr2 = new byte[32];
            inputStream.mark(32);
            try {
                int readFully2 = IOUtils.readFully(inputStream, bArr2);
                inputStream.reset();
                if (DumpArchiveInputStream.matches(bArr2, readFully2)) {
                    return DUMP;
                }
                byte[] bArr3 = new byte[512];
                inputStream.mark(512);
                try {
                    int readFully3 = IOUtils.readFully(inputStream, bArr3);
                    inputStream.reset();
                    if (TarArchiveInputStream.matches(bArr3, readFully3)) {
                        return TAR;
                    }
                    if (readFully3 >= 512) {
                        TarArchiveInputStream tarArchiveInputStream2 = null;
                        try {
                            tarArchiveInputStream = new TarArchiveInputStream(new ByteArrayInputStream(bArr3));
                            try {
                                if (tarArchiveInputStream.getNextTarEntry().isCheckSumOK()) {
                                    IOUtils.closeQuietly(tarArchiveInputStream);
                                    return TAR;
                                }
                                IOUtils.closeQuietly(tarArchiveInputStream);
                            } catch (Exception unused) {
                                tarArchiveInputStream2 = tarArchiveInputStream;
                                IOUtils.closeQuietly(tarArchiveInputStream2);
                                throw new ArchiveException("No Archiver found for the stream signature");
                            } catch (Throwable th2) {
                                th = th2;
                                IOUtils.closeQuietly(tarArchiveInputStream);
                                throw th;
                            }
                        } catch (Exception unused2) {
                        } catch (Throwable th3) {
                            tarArchiveInputStream = null;
                            th = th3;
                        }
                    }
                    throw new ArchiveException("No Archiver found for the stream signature");
                } catch (IOException e) {
                    throw new ArchiveException("IOException while reading tar signature", e);
                }
            } catch (IOException e2) {
                throw new ArchiveException("IOException while reading dump signature", e2);
            }
        } catch (IOException e3) {
            throw new ArchiveException("IOException while reading signature.", e3);
        }
    }

    /* renamed from: f */
    public static Iterable<ArchiveStreamProvider> m66070f() {
        return ServiceLoader.load(ArchiveStreamProvider.class, ClassLoader.getSystemClassLoader());
    }

    public static SortedMap<String, ArchiveStreamProvider> findAvailableArchiveInputStreamProviders() {
        return (SortedMap) AccessController.doPrivileged(new PrivilegedAction() { // from class: com.sunia.HTREnginev2.rd
            @Override // java.security.PrivilegedAction
            public final Object run() {
                SortedMap m66071g;
                m66071g = ArchiveStreamFactory.m66071g();
                return m66071g;
            }
        });
    }

    public static SortedMap<String, ArchiveStreamProvider> findAvailableArchiveOutputStreamProviders() {
        return (SortedMap) AccessController.doPrivileged(new PrivilegedAction() { // from class: com.sunia.HTREnginev2.vd
            @Override // java.security.PrivilegedAction
            public final Object run() {
                SortedMap m66072h;
                m66072h = ArchiveStreamFactory.m66072h();
                return m66072h;
            }
        });
    }

    /* renamed from: g */
    public static /* synthetic */ SortedMap m66071g() {
        final TreeMap treeMap = new TreeMap();
        ArchiveStreamFactory archiveStreamFactory = DEFAULT;
        m66076l(archiveStreamFactory.getInputStreamArchiveNames(), archiveStreamFactory, treeMap);
        m66070f().forEach(new Consumer() { // from class: com.sunia.HTREnginev2.sd
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ArchiveStreamFactory.m66073i(treeMap, (ArchiveStreamProvider) obj);
            }
        });
        return treeMap;
    }

    /* renamed from: h */
    public static /* synthetic */ SortedMap m66072h() {
        final TreeMap treeMap = new TreeMap();
        ArchiveStreamFactory archiveStreamFactory = DEFAULT;
        m66076l(archiveStreamFactory.getOutputStreamArchiveNames(), archiveStreamFactory, treeMap);
        m66070f().forEach(new Consumer() { // from class: com.sunia.HTREnginev2.ud
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ArchiveStreamFactory.m66074j(treeMap, (ArchiveStreamProvider) obj);
            }
        });
        return treeMap;
    }

    /* renamed from: i */
    public static /* synthetic */ void m66073i(TreeMap treeMap, ArchiveStreamProvider archiveStreamProvider) {
        m66076l(archiveStreamProvider.getInputStreamArchiveNames(), archiveStreamProvider, treeMap);
    }

    /* renamed from: j */
    public static /* synthetic */ void m66074j(TreeMap treeMap, ArchiveStreamProvider archiveStreamProvider) {
        m66076l(archiveStreamProvider.getOutputStreamArchiveNames(), archiveStreamProvider, treeMap);
    }

    /* renamed from: k */
    public static /* synthetic */ void m66075k(TreeMap treeMap, ArchiveStreamProvider archiveStreamProvider, String str) {
    }

    /* renamed from: l */
    public static void m66076l(Set<String> set, final ArchiveStreamProvider archiveStreamProvider, final TreeMap<String, ArchiveStreamProvider> treeMap) {
        set.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.td
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ArchiveStreamFactory.m66075k(treeMap, archiveStreamProvider, (String) obj);
            }
        });
    }

    /* renamed from: m */
    public static String m66077m(String str) {
        return str.toUpperCase(Locale.ROOT);
    }

    public ArchiveInputStream createArchiveInputStream(String str, InputStream inputStream) throws ArchiveException {
        return createArchiveInputStream(str, inputStream, this.f105357b);
    }

    public ArchiveOutputStream createArchiveOutputStream(String str, OutputStream outputStream) throws ArchiveException {
        return createArchiveOutputStream(str, outputStream, this.f105357b);
    }

    public SortedMap<String, ArchiveStreamProvider> getArchiveInputStreamProviders() {
        if (this.f105358c == null) {
            this.f105358c = Collections.unmodifiableSortedMap(findAvailableArchiveInputStreamProviders());
        }
        return this.f105358c;
    }

    public SortedMap<String, ArchiveStreamProvider> getArchiveOutputStreamProviders() {
        if (this.f105359d == null) {
            this.f105359d = Collections.unmodifiableSortedMap(findAvailableArchiveOutputStreamProviders());
        }
        return this.f105359d;
    }

    public String getEntryEncoding() {
        return this.f105357b;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveStreamProvider
    public Set<String> getInputStreamArchiveNames() {
        return Sets.newHashSet(f105352AR, ARJ, "zip", TAR, JAR, CPIO, DUMP, SEVEN_Z);
    }

    @Override // org.apache.commons.compress.archivers.ArchiveStreamProvider
    public Set<String> getOutputStreamArchiveNames() {
        return Sets.newHashSet(f105352AR, "zip", TAR, JAR, CPIO, SEVEN_Z);
    }

    @Deprecated
    public void setEntryEncoding(String str) {
        if (this.f105356a != null) {
            throw new IllegalStateException("Cannot overide encoding set by the constructor");
        }
        this.f105357b = str;
    }

    public ArchiveStreamFactory(String str) {
        this.f105356a = str;
        this.f105357b = str;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveStreamProvider
    public ArchiveInputStream createArchiveInputStream(String str, InputStream inputStream, String str2) throws ArchiveException {
        if (str == null) {
            throw new IllegalArgumentException("Archivername must not be null.");
        }
        if (inputStream != null) {
            if (f105352AR.equalsIgnoreCase(str)) {
                return new ArArchiveInputStream(inputStream);
            }
            if (ARJ.equalsIgnoreCase(str)) {
                if (str2 != null) {
                    return new ArjArchiveInputStream(inputStream, str2);
                }
                return new ArjArchiveInputStream(inputStream);
            }
            if ("zip".equalsIgnoreCase(str)) {
                if (str2 != null) {
                    return new ZipArchiveInputStream(inputStream, str2);
                }
                return new ZipArchiveInputStream(inputStream);
            }
            if (TAR.equalsIgnoreCase(str)) {
                if (str2 != null) {
                    return new TarArchiveInputStream(inputStream, str2);
                }
                return new TarArchiveInputStream(inputStream);
            }
            if (JAR.equalsIgnoreCase(str) || "apk".equalsIgnoreCase(str)) {
                if (str2 != null) {
                    return new JarArchiveInputStream(inputStream, str2);
                }
                return new JarArchiveInputStream(inputStream);
            }
            if (CPIO.equalsIgnoreCase(str)) {
                if (str2 != null) {
                    return new CpioArchiveInputStream(inputStream, str2);
                }
                return new CpioArchiveInputStream(inputStream);
            }
            if (DUMP.equalsIgnoreCase(str)) {
                if (str2 != null) {
                    return new DumpArchiveInputStream(inputStream, str2);
                }
                return new DumpArchiveInputStream(inputStream);
            }
            if (!SEVEN_Z.equalsIgnoreCase(str)) {
                ArchiveStreamProvider archiveStreamProvider = getArchiveInputStreamProviders().get(m66077m(str));
                if (archiveStreamProvider != null) {
                    return archiveStreamProvider.createArchiveInputStream(str, inputStream, str2);
                }
                throw new ArchiveException("Archiver: " + str + " not found.");
            }
            throw new StreamingNotSupportedException(SEVEN_Z);
        }
        throw new IllegalArgumentException("InputStream must not be null.");
    }

    @Override // org.apache.commons.compress.archivers.ArchiveStreamProvider
    public ArchiveOutputStream createArchiveOutputStream(String str, OutputStream outputStream, String str2) throws ArchiveException {
        if (str == null) {
            throw new IllegalArgumentException("Archivername must not be null.");
        }
        if (outputStream != null) {
            if (f105352AR.equalsIgnoreCase(str)) {
                return new ArArchiveOutputStream(outputStream);
            }
            if ("zip".equalsIgnoreCase(str)) {
                ZipArchiveOutputStream zipArchiveOutputStream = new ZipArchiveOutputStream(outputStream);
                if (str2 != null) {
                    zipArchiveOutputStream.setEncoding(str2);
                }
                return zipArchiveOutputStream;
            }
            if (TAR.equalsIgnoreCase(str)) {
                if (str2 != null) {
                    return new TarArchiveOutputStream(outputStream, str2);
                }
                return new TarArchiveOutputStream(outputStream);
            }
            if (JAR.equalsIgnoreCase(str)) {
                if (str2 != null) {
                    return new JarArchiveOutputStream(outputStream, str2);
                }
                return new JarArchiveOutputStream(outputStream);
            }
            if (CPIO.equalsIgnoreCase(str)) {
                if (str2 != null) {
                    return new CpioArchiveOutputStream(outputStream, str2);
                }
                return new CpioArchiveOutputStream(outputStream);
            }
            if (!SEVEN_Z.equalsIgnoreCase(str)) {
                ArchiveStreamProvider archiveStreamProvider = getArchiveOutputStreamProviders().get(m66077m(str));
                if (archiveStreamProvider != null) {
                    return archiveStreamProvider.createArchiveOutputStream(str, outputStream, str2);
                }
                throw new ArchiveException("Archiver: " + str + " not found.");
            }
            throw new StreamingNotSupportedException(SEVEN_Z);
        }
        throw new IllegalArgumentException("OutputStream must not be null.");
    }

    public ArchiveInputStream createArchiveInputStream(InputStream inputStream) throws ArchiveException {
        return createArchiveInputStream(detect(inputStream), inputStream);
    }
}
