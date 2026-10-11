package org.apache.commons.compress.harmony.pack200;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import java.util.jar.JarInputStream;
import java.util.jar.JarOutputStream;
import java.util.jar.Manifest;
import java.util.logging.FileHandler;
import java.util.logging.Level;
import java.util.logging.LogManager;
import java.util.logging.LogRecord;
import java.util.logging.Logger;
import java.util.logging.SimpleFormatter;
import org.apache.commons.compress.harmony.pack200.Archive;
import org.apache.commons.compress.harmony.pack200.PackingUtils;

/* loaded from: classes12.dex */
public class PackingUtils {

    /* renamed from: a */
    public static C18894a f106727a = new C18894a("org.harmony.apache.pack200", null);

    /* renamed from: org.apache.commons.compress.harmony.pack200.PackingUtils$a */
    /* loaded from: classes12.dex */
    public static class C18894a extends Logger {

        /* renamed from: a */
        public boolean f106728a;

        public C18894a(String str, String str2) {
            super(str, str2);
            this.f106728a = false;
        }

        /* renamed from: a */
        public void m66984a(boolean z) {
            this.f106728a = z;
        }

        @Override // java.util.logging.Logger
        public void log(LogRecord logRecord) {
            if (this.f106728a) {
                super.log(logRecord);
            }
        }
    }

    static {
        LogManager.getLogManager().addLogger(f106727a);
    }

    /* renamed from: b */
    public static /* synthetic */ int m66981b(Archive.C18890a c18890a, Archive.C18890a c18890a2) {
        String m66844e = c18890a.m66844e();
        String m66844e2 = c18890a2.m66844e();
        if (m66844e.equals(m66844e2)) {
            return 0;
        }
        if ("META-INF/MANIFEST.MF".equals(m66844e)) {
            return -1;
        }
        if ("META-INF/MANIFEST.MF".equals(m66844e2)) {
            return 1;
        }
        return m66844e.compareTo(m66844e2);
    }

    /* renamed from: c */
    public static byte[] m66982c(JarEntry jarEntry, InputStream inputStream) throws IOException {
        long size = jarEntry.getSize();
        if (size > 2147483647L) {
            throw new IllegalArgumentException("Large Class!");
        }
        if (size < 0) {
            size = 0;
        }
        byte[] bArr = new byte[(int) size];
        if (inputStream.read(bArr) == size) {
            return bArr;
        }
        throw new IllegalArgumentException("Error reading from stream");
    }

    public static void config(PackingOptions packingOptions) throws IOException {
        String logFile = packingOptions.getLogFile();
        if (logFile != null) {
            FileHandler fileHandler = new FileHandler(logFile, false);
            fileHandler.setFormatter(new SimpleFormatter());
            f106727a.addHandler(fileHandler);
            f106727a.setUseParentHandlers(false);
        }
        f106727a.m66984a(packingOptions.isVerbose());
    }

    public static void copyThroughJar(JarInputStream jarInputStream, OutputStream outputStream) throws IOException {
        JarOutputStream jarOutputStream = new JarOutputStream(outputStream, jarInputStream.getManifest());
        try {
            jarOutputStream.setComment("PACK200");
            log("Packed META-INF/MANIFEST.MF");
            byte[] bArr = new byte[16384];
            while (true) {
                JarEntry nextJarEntry = jarInputStream.getNextJarEntry();
                if (nextJarEntry != null) {
                    jarOutputStream.putNextEntry(nextJarEntry);
                    while (true) {
                        int read = jarInputStream.read(bArr);
                        if (read != -1) {
                            jarOutputStream.write(bArr, 0, read);
                        }
                    }
                    log("Packed " + nextJarEntry.getName());
                } else {
                    jarInputStream.close();
                    jarOutputStream.close();
                    return;
                }
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    jarOutputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    /* renamed from: d */
    public static void m66983d(List<Archive.C18890a> list) {
        Iterator<Archive.C18890a> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next().m66846g()) {
                it2.remove();
            }
        }
        list.sort(new Comparator() { // from class: com.sunia.HTREnginev2.trk
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m66981b;
                m66981b = PackingUtils.m66981b((Archive.C18890a) obj, (Archive.C18890a) obj2);
                return m66981b;
            }
        });
    }

    public static List<Archive.C18890a> getPackingFileListFromJar(JarInputStream jarInputStream, boolean z) throws IOException {
        ArrayList arrayList = new ArrayList();
        Manifest manifest = jarInputStream.getManifest();
        if (manifest != null) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            manifest.write(byteArrayOutputStream);
            arrayList.add(new Archive.C18890a("META-INF/MANIFEST.MF", byteArrayOutputStream.toByteArray(), 0L));
        }
        while (true) {
            JarEntry nextJarEntry = jarInputStream.getNextJarEntry();
            if (nextJarEntry == null) {
                break;
            }
            arrayList.add(new Archive.C18890a(m66982c(nextJarEntry, new BufferedInputStream(jarInputStream)), nextJarEntry));
        }
        if (!z) {
            m66983d(arrayList);
        }
        return arrayList;
    }

    public static void log(String str) {
        f106727a.log(Level.INFO, str);
    }

    public static List<Archive.C18890a> getPackingFileListFromJar(JarFile jarFile, boolean z) throws IOException {
        ArrayList arrayList = new ArrayList();
        Enumeration<JarEntry> entries = jarFile.entries();
        while (entries.hasMoreElements()) {
            JarEntry nextElement = entries.nextElement();
            InputStream inputStream = jarFile.getInputStream(nextElement);
            try {
                arrayList.add(new Archive.C18890a(m66982c(nextElement, new BufferedInputStream(inputStream)), nextElement));
                if (inputStream != null) {
                    inputStream.close();
                }
            } finally {
            }
        }
        if (!z) {
            m66983d(arrayList);
        }
        return arrayList;
    }

    public static void copyThroughJar(JarFile jarFile, OutputStream outputStream) throws IOException {
        JarOutputStream jarOutputStream = new JarOutputStream(outputStream);
        try {
            jarOutputStream.setComment("PACK200");
            byte[] bArr = new byte[16384];
            Enumeration<JarEntry> entries = jarFile.entries();
            while (entries.hasMoreElements()) {
                JarEntry nextElement = entries.nextElement();
                jarOutputStream.putNextEntry(nextElement);
                InputStream inputStream = jarFile.getInputStream(nextElement);
                while (true) {
                    try {
                        int read = inputStream.read(bArr);
                        if (read == -1) {
                            break;
                        } else {
                            jarOutputStream.write(bArr, 0, read);
                        }
                    } finally {
                    }
                }
                jarOutputStream.closeEntry();
                log("Packed " + nextElement.getName());
                inputStream.close();
            }
            jarFile.close();
            jarOutputStream.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    jarOutputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }
}
