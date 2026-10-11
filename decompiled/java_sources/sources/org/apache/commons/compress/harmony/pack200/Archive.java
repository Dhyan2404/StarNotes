package org.apache.commons.compress.harmony.pack200;

import com.google.common.reflect.ClassPath;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.function.ToIntFunction;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import java.util.jar.JarInputStream;
import java.util.zip.GZIPOutputStream;
import org.apache.commons.compress.harmony.pack200.Archive;
import org.apache.commons.compress.harmony.pack200.Pack200ClassReader;

/* loaded from: classes12.dex */
public class Archive {

    /* renamed from: a */
    public final JarInputStream f106402a;

    /* renamed from: b */
    public final OutputStream f106403b;

    /* renamed from: c */
    public JarFile f106404c;

    /* renamed from: d */
    public long f106405d;

    /* renamed from: e */
    public final PackingOptions f106406e;

    /* renamed from: org.apache.commons.compress.harmony.pack200.Archive$b */
    /* loaded from: classes12.dex */
    public static class C18891b {

        /* renamed from: a */
        public final List<Pack200ClassReader> f106412a;

        /* renamed from: b */
        public final List<C18890a> f106413b;

        /* renamed from: c */
        public int f106414c;

        /* renamed from: d */
        public int f106415d;

        public C18891b(List<Pack200ClassReader> list, List<C18890a> list2) {
            this.f106412a = list;
            this.f106413b = list2;
            this.f106414c = 0;
            int sum = 0 + list.stream().mapToInt(new ToIntFunction() { // from class: com.sunia.HTREnginev2.md
                @Override // java.util.function.ToIntFunction
                public final int applyAsInt(Object obj) {
                    int m66850j;
                    m66850j = Archive.C18891b.m66850j((Pack200ClassReader) obj);
                    return m66850j;
                }
            }).sum();
            this.f106414c = sum;
            this.f106414c = sum + list2.stream().mapToInt(new ToIntFunction() { // from class: com.sunia.HTREnginev2.nd
                @Override // java.util.function.ToIntFunction
                public final int applyAsInt(Object obj) {
                    int m66851k;
                    m66851k = Archive.C18891b.m66851k((Archive.C18890a) obj);
                    return m66851k;
                }
            }).sum();
        }

        /* renamed from: j */
        public static /* synthetic */ int m66850j(Pack200ClassReader pack200ClassReader) {
            return pack200ClassReader.b.length;
        }

        /* renamed from: k */
        public static /* synthetic */ int m66851k(C18890a c18890a) {
            return c18890a.f106408b.length;
        }

        /* renamed from: c */
        public void m66852c(int i) {
            this.f106415d += i;
        }

        /* renamed from: d */
        public int m66853d() {
            return this.f106412a.size();
        }

        /* renamed from: e */
        public int m66854e() {
            return this.f106413b.size();
        }

        /* renamed from: f */
        public int m66855f() {
            return this.f106414c;
        }

        /* renamed from: g */
        public List<Pack200ClassReader> m66856g() {
            return this.f106412a;
        }

        /* renamed from: h */
        public List<C18890a> m66857h() {
            return this.f106413b;
        }

        /* renamed from: i */
        public int m66858i() {
            return this.f106415d;
        }
    }

    public Archive(JarInputStream jarInputStream, OutputStream outputStream, PackingOptions packingOptions) throws IOException {
        this.f106402a = jarInputStream;
        packingOptions = packingOptions == null ? new PackingOptions() : packingOptions;
        this.f106406e = packingOptions;
        this.f106403b = new BufferedOutputStream(packingOptions.isGzip() ? new GZIPOutputStream(outputStream) : outputStream);
        PackingUtils.config(packingOptions);
    }

    /* renamed from: a */
    public final boolean m66835a(C18890a c18890a, List<Pack200ClassReader> list, List<C18890a> list2) {
        long segmentLimit = this.f106406e.getSegmentLimit();
        if (segmentLimit != -1 && segmentLimit != 0) {
            long m66838d = m66838d(c18890a);
            long j = this.f106405d;
            if (m66838d + j > segmentLimit && j > 0) {
                return false;
            }
            this.f106405d = j + m66838d;
        }
        String m66844e = c18890a.m66844e();
        if (m66844e.endsWith(ClassPath.f35080d) && !this.f106406e.isPassFile(m66844e)) {
            Pack200ClassReader pack200ClassReader = new Pack200ClassReader(c18890a.f106408b);
            pack200ClassReader.setFileName(m66844e);
            list.add(pack200ClassReader);
            c18890a.f106408b = new byte[0];
        }
        list2.add(c18890a);
        return true;
    }

    /* renamed from: b */
    public final void m66836b() throws IOException, Pack200Exception {
        PackingUtils.log("Start to perform a normal packing");
        JarInputStream jarInputStream = this.f106402a;
        List<C18890a> packingFileListFromJar = jarInputStream != null ? PackingUtils.getPackingFileListFromJar(jarInputStream, this.f106406e.isKeepFileOrder()) : PackingUtils.getPackingFileListFromJar(this.f106404c, this.f106406e.isKeepFileOrder());
        List<C18891b> m66839e = m66839e(packingFileListFromJar);
        int size = m66839e.size();
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            C18891b c18891b = m66839e.get(i3);
            new Segment().pack(c18891b, this.f106403b, this.f106406e);
            i += c18891b.m66855f();
            i2 += c18891b.m66858i();
        }
        PackingUtils.log("Total: Packed " + i + " input bytes of " + packingFileListFromJar.size() + " files into " + i2 + " bytes in " + size + " segments");
        this.f106403b.close();
    }

    /* renamed from: c */
    public final void m66837c() throws IOException {
        PackingUtils.log("Start to perform a zero-effort packing");
        JarInputStream jarInputStream = this.f106402a;
        if (jarInputStream != null) {
            PackingUtils.copyThroughJar(jarInputStream, this.f106403b);
        } else {
            PackingUtils.copyThroughJar(this.f106404c, this.f106403b);
        }
    }

    /* renamed from: d */
    public final long m66838d(C18890a c18890a) {
        String m66844e = c18890a.m66844e();
        if (m66844e.startsWith("META-INF") || m66844e.startsWith("/META-INF")) {
            return 0L;
        }
        long length = c18890a.f106408b.length;
        return m66844e.length() + (length >= 0 ? length : 0L) + 5;
    }

    /* renamed from: e */
    public final List<C18891b> m66839e(List<C18890a> list) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        long segmentLimit = this.f106406e.getSegmentLimit();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            C18890a c18890a = list.get(i);
            if (!m66835a(c18890a, arrayList2, arrayList3)) {
                arrayList.add(new C18891b(arrayList2, arrayList3));
                arrayList2 = new ArrayList();
                arrayList3 = new ArrayList();
                this.f106405d = 0L;
                m66835a(c18890a, arrayList2, arrayList3);
                this.f106405d = 0L;
            } else if (segmentLimit == 0 && m66838d(c18890a) > 0) {
                arrayList.add(new C18891b(arrayList2, arrayList3));
                arrayList2 = new ArrayList();
                arrayList3 = new ArrayList();
            }
        }
        if (arrayList2.size() > 0 || arrayList3.size() > 0) {
            arrayList.add(new C18891b(arrayList2, arrayList3));
        }
        return arrayList;
    }

    public void pack() throws Pack200Exception, IOException {
        if (this.f106406e.getEffort() == 0) {
            m66837c();
        } else {
            m66836b();
        }
    }

    /* renamed from: org.apache.commons.compress.harmony.pack200.Archive$a */
    /* loaded from: classes12.dex */
    public static class C18890a {

        /* renamed from: a */
        public final String f106407a;

        /* renamed from: b */
        public byte[] f106408b;

        /* renamed from: c */
        public final long f106409c;

        /* renamed from: d */
        public final boolean f106410d;

        /* renamed from: e */
        public final boolean f106411e;

        public C18890a(String str, byte[] bArr, long j) {
            this.f106407a = str;
            this.f106408b = bArr;
            this.f106409c = j;
            this.f106410d = false;
            this.f106411e = false;
        }

        /* renamed from: c */
        public byte[] m66842c() {
            return this.f106408b;
        }

        /* renamed from: d */
        public long m66843d() {
            return this.f106409c;
        }

        /* renamed from: e */
        public String m66844e() {
            return this.f106407a;
        }

        /* renamed from: f */
        public boolean m66845f() {
            return this.f106410d;
        }

        /* renamed from: g */
        public boolean m66846g() {
            return this.f106411e;
        }

        /* renamed from: h */
        public void m66847h(byte[] bArr) {
            this.f106408b = bArr;
        }

        public String toString() {
            return this.f106407a;
        }

        public C18890a(byte[] bArr, JarEntry jarEntry) {
            this.f106407a = jarEntry.getName();
            this.f106408b = bArr;
            this.f106409c = jarEntry.getTime();
            this.f106410d = jarEntry.getMethod() == 8;
            this.f106411e = jarEntry.isDirectory();
        }
    }

    public Archive(JarFile jarFile, OutputStream outputStream, PackingOptions packingOptions) throws IOException {
        packingOptions = packingOptions == null ? new PackingOptions() : packingOptions;
        this.f106406e = packingOptions;
        this.f106403b = new BufferedOutputStream(packingOptions.isGzip() ? new GZIPOutputStream(outputStream) : outputStream);
        this.f106404c = jarFile;
        this.f106402a = null;
        PackingUtils.config(packingOptions);
    }
}
