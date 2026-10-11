package com.bumptech.glide.disklrucache;

import android.annotation.TargetApi;
import android.os.StrictMode;
import com.sunia.HTREnginev2.e1n;
import com.sunia.HTREnginev2.gzn;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes3.dex */
public final class DiskLruCache implements Closeable {

    /* renamed from: J */
    public static final String f14352J = "REMOVE";

    /* renamed from: O */
    public static final String f14353O = "READ";

    /* renamed from: s */
    public static final String f14354s = "journal";

    /* renamed from: t */
    public static final String f14355t = "journal.tmp";

    /* renamed from: u */
    public static final String f14356u = "journal.bkp";

    /* renamed from: v */
    public static final String f14357v = "libcore.io.DiskLruCache";

    /* renamed from: w */
    public static final String f14358w = "1";

    /* renamed from: x */
    public static final long f14359x = -1;

    /* renamed from: y */
    public static final String f14360y = "CLEAN";

    /* renamed from: z */
    public static final String f14361z = "DIRTY";

    /* renamed from: e */
    public final File f14362e;

    /* renamed from: f */
    public final File f14363f;

    /* renamed from: g */
    public final File f14364g;

    /* renamed from: h */
    public final File f14365h;

    /* renamed from: i */
    public final int f14366i;

    /* renamed from: j */
    public long f14367j;

    /* renamed from: k */
    public final int f14368k;

    /* renamed from: m */
    public Writer f14370m;

    /* renamed from: o */
    public int f14372o;

    /* renamed from: l */
    public long f14369l = 0;

    /* renamed from: n */
    public final LinkedHashMap<String, C1904c> f14371n = new LinkedHashMap<>(0, 0.75f, true);

    /* renamed from: p */
    public long f14373p = 0;

    /* renamed from: q */
    public final ThreadPoolExecutor f14374q = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactoryC1903b(null));

    /* renamed from: r */
    public final Callable<Void> f14375r = new CallableC1902a();

    /* loaded from: classes3.dex */
    public final class Editor {

        /* renamed from: a */
        public final C1904c f14376a;

        /* renamed from: b */
        public final boolean[] f14377b;

        /* renamed from: c */
        public boolean f14378c;

        public /* synthetic */ Editor(DiskLruCache diskLruCache, C1904c c1904c, CallableC1902a callableC1902a) {
            this(c1904c);
        }

        public void abort() throws IOException {
            DiskLruCache.this.m8617k0(this, false);
        }

        public void abortUnlessCommitted() {
            if (this.f14378c) {
                return;
            }
            try {
                abort();
            } catch (IOException unused) {
            }
        }

        /* renamed from: c */
        public final InputStream m8627c(int i) throws IOException {
            synchronized (DiskLruCache.this) {
                if (this.f14376a.f14391f != this) {
                    throw new IllegalStateException();
                }
                if (!this.f14376a.f14390e) {
                    return null;
                }
                try {
                    return new FileInputStream(this.f14376a.m8638j(i));
                } catch (FileNotFoundException unused) {
                    return null;
                }
            }
        }

        public void commit() throws IOException {
            DiskLruCache.this.m8617k0(this, true);
            this.f14378c = true;
        }

        public File getFile(int i) throws IOException {
            File m8639k;
            synchronized (DiskLruCache.this) {
                if (this.f14376a.f14391f != this) {
                    throw new IllegalStateException();
                }
                if (!this.f14376a.f14390e) {
                    this.f14377b[i] = true;
                }
                m8639k = this.f14376a.m8639k(i);
                DiskLruCache.this.f14362e.mkdirs();
            }
            return m8639k;
        }

        public String getString(int i) throws IOException {
            InputStream m8627c = m8627c(i);
            if (m8627c != null) {
                return DiskLruCache.m8613o0(m8627c);
            }
            return null;
        }

        public void set(int i, String str) throws IOException {
            OutputStreamWriter outputStreamWriter = null;
            try {
                OutputStreamWriter outputStreamWriter2 = new OutputStreamWriter(new FileOutputStream(getFile(i)), gzn.f71668b);
                try {
                    outputStreamWriter2.write(str);
                    gzn.m54385a(outputStreamWriter2);
                } catch (Throwable th) {
                    th = th;
                    outputStreamWriter = outputStreamWriter2;
                    gzn.m54385a(outputStreamWriter);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }

        public Editor(C1904c c1904c) {
            this.f14376a = c1904c;
            this.f14377b = c1904c.f14390e ? null : new boolean[DiskLruCache.this.f14368k];
        }
    }

    /* loaded from: classes3.dex */
    public final class Value {

        /* renamed from: a */
        public final String f14380a;

        /* renamed from: b */
        public final long f14381b;

        /* renamed from: c */
        public final long[] f14382c;

        /* renamed from: d */
        public final File[] f14383d;

        public /* synthetic */ Value(DiskLruCache diskLruCache, String str, long j, File[] fileArr, long[] jArr, CallableC1902a callableC1902a) {
            this(str, j, fileArr, jArr);
        }

        public Editor edit() throws IOException {
            return DiskLruCache.this.m8618m0(this.f14380a, this.f14381b);
        }

        public File getFile(int i) {
            return this.f14383d[i];
        }

        public long getLength(int i) {
            return this.f14382c[i];
        }

        public String getString(int i) throws IOException {
            return DiskLruCache.m8613o0(new FileInputStream(this.f14383d[i]));
        }

        public Value(String str, long j, File[] fileArr, long[] jArr) {
            this.f14380a = str;
            this.f14381b = j;
            this.f14383d = fileArr;
            this.f14382c = jArr;
        }
    }

    /* renamed from: com.bumptech.glide.disklrucache.DiskLruCache$a */
    /* loaded from: classes3.dex */
    public class CallableC1902a implements Callable<Void> {
        public CallableC1902a() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void call() throws Exception {
            synchronized (DiskLruCache.this) {
                if (DiskLruCache.this.f14370m == null) {
                    return null;
                }
                DiskLruCache.this.m8624v0();
                if (DiskLruCache.this.m8619p0()) {
                    DiskLruCache.this.m8623t0();
                    DiskLruCache.this.f14372o = 0;
                }
                return null;
            }
        }
    }

    /* renamed from: com.bumptech.glide.disklrucache.DiskLruCache$b */
    /* loaded from: classes3.dex */
    public static final class ThreadFactoryC1903b implements ThreadFactory {
        public ThreadFactoryC1903b() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public synchronized Thread newThread(Runnable runnable) {
            Thread thread;
            thread = new Thread(runnable, "glide-disk-lru-cache-thread");
            thread.setPriority(1);
            return thread;
        }

        public /* synthetic */ ThreadFactoryC1903b(CallableC1902a callableC1902a) {
            this();
        }
    }

    /* renamed from: com.bumptech.glide.disklrucache.DiskLruCache$c */
    /* loaded from: classes3.dex */
    public final class C1904c {

        /* renamed from: a */
        public final String f14386a;

        /* renamed from: b */
        public final long[] f14387b;

        /* renamed from: c */
        public File[] f14388c;

        /* renamed from: d */
        public File[] f14389d;

        /* renamed from: e */
        public boolean f14390e;

        /* renamed from: f */
        public Editor f14391f;

        /* renamed from: g */
        public long f14392g;

        public /* synthetic */ C1904c(DiskLruCache diskLruCache, String str, CallableC1902a callableC1902a) {
            this(str);
        }

        /* renamed from: j */
        public File m8638j(int i) {
            return this.f14388c[i];
        }

        /* renamed from: k */
        public File m8639k(int i) {
            return this.f14389d[i];
        }

        /* renamed from: l */
        public String m8640l() throws IOException {
            StringBuilder sb = new StringBuilder();
            for (long j : this.f14387b) {
                sb.append(' ');
                sb.append(j);
            }
            return sb.toString();
        }

        /* renamed from: m */
        public final IOException m8641m(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        /* renamed from: n */
        public final void m8642n(String[] strArr) throws IOException {
            if (strArr.length != DiskLruCache.this.f14368k) {
                throw m8641m(strArr);
            }
            for (int i = 0; i < strArr.length; i++) {
                try {
                    this.f14387b[i] = Long.parseLong(strArr[i]);
                } catch (NumberFormatException unused) {
                    throw m8641m(strArr);
                }
            }
        }

        public C1904c(String str) {
            this.f14386a = str;
            this.f14387b = new long[DiskLruCache.this.f14368k];
            this.f14388c = new File[DiskLruCache.this.f14368k];
            this.f14389d = new File[DiskLruCache.this.f14368k];
            StringBuilder sb = new StringBuilder(str);
            sb.append('.');
            int length = sb.length();
            for (int i = 0; i < DiskLruCache.this.f14368k; i++) {
                sb.append(i);
                this.f14388c[i] = new File(DiskLruCache.this.f14362e, sb.toString());
                sb.append(".tmp");
                this.f14389d[i] = new File(DiskLruCache.this.f14362e, sb.toString());
                sb.setLength(length);
            }
        }
    }

    public DiskLruCache(File file, int i, int i2, long j) {
        this.f14362e = file;
        this.f14366i = i;
        this.f14363f = new File(file, "journal");
        this.f14364g = new File(file, "journal.tmp");
        this.f14365h = new File(file, "journal.bkp");
        this.f14368k = i2;
        this.f14367j = j;
    }

    @TargetApi(26)
    /* renamed from: j0 */
    public static void m8610j0(Writer writer) throws IOException {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            writer.close();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    /* renamed from: l0 */
    public static void m8611l0(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    @TargetApi(26)
    /* renamed from: n0 */
    public static void m8612n0(Writer writer) throws IOException {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            writer.flush();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    /* renamed from: o0 */
    public static String m8613o0(InputStream inputStream) throws IOException {
        return gzn.m54387c(new InputStreamReader(inputStream, gzn.f71668b));
    }

    public static DiskLruCache open(File file, int i, int i2, long j) throws IOException {
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        if (i2 <= 0) {
            throw new IllegalArgumentException("valueCount <= 0");
        }
        File file2 = new File(file, "journal.bkp");
        if (file2.exists()) {
            File file3 = new File(file, "journal");
            if (file3.exists()) {
                file2.delete();
            } else {
                m8614u0(file2, file3, false);
            }
        }
        DiskLruCache diskLruCache = new DiskLruCache(file, i, i2, j);
        if (diskLruCache.f14363f.exists()) {
            try {
                diskLruCache.m8621r0();
                diskLruCache.m8620q0();
                return diskLruCache;
            } catch (IOException e) {
                System.out.println("DiskLruCache " + file + " is corrupt: " + e.getMessage() + ", removing");
                diskLruCache.delete();
            }
        }
        file.mkdirs();
        DiskLruCache diskLruCache2 = new DiskLruCache(file, i, i2, j);
        diskLruCache2.m8623t0();
        return diskLruCache2;
    }

    /* renamed from: u0 */
    public static void m8614u0(File file, File file2, boolean z) throws IOException {
        if (z) {
            m8611l0(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        if (this.f14370m == null) {
            return;
        }
        Iterator it2 = new ArrayList(this.f14371n.values()).iterator();
        while (it2.hasNext()) {
            C1904c c1904c = (C1904c) it2.next();
            if (c1904c.f14391f != null) {
                c1904c.f14391f.abort();
            }
        }
        m8624v0();
        m8610j0(this.f14370m);
        this.f14370m = null;
    }

    public void delete() throws IOException {
        close();
        gzn.m54386b(this.f14362e);
    }

    public Editor edit(String str) throws IOException {
        return m8618m0(str, -1L);
    }

    public synchronized void flush() throws IOException {
        m8616i0();
        m8624v0();
        m8612n0(this.f14370m);
    }

    public synchronized Value get(String str) throws IOException {
        m8616i0();
        C1904c c1904c = this.f14371n.get(str);
        if (c1904c == null) {
            return null;
        }
        if (!c1904c.f14390e) {
            return null;
        }
        for (File file : c1904c.f14388c) {
            if (!file.exists()) {
                return null;
            }
        }
        this.f14372o++;
        this.f14370m.append((CharSequence) "READ");
        this.f14370m.append(' ');
        this.f14370m.append((CharSequence) str);
        this.f14370m.append('\n');
        if (m8619p0()) {
            this.f14374q.submit(this.f14375r);
        }
        return new Value(this, str, c1904c.f14392g, c1904c.f14388c, c1904c.f14387b, null);
    }

    public File getDirectory() {
        return this.f14362e;
    }

    public synchronized long getMaxSize() {
        return this.f14367j;
    }

    /* renamed from: i0 */
    public final void m8616i0() {
        if (this.f14370m == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    public synchronized boolean isClosed() {
        return this.f14370m == null;
    }

    /* renamed from: k0 */
    public final synchronized void m8617k0(Editor editor, boolean z) throws IOException {
        C1904c c1904c = editor.f14376a;
        if (c1904c.f14391f != editor) {
            throw new IllegalStateException();
        }
        if (z && !c1904c.f14390e) {
            for (int i = 0; i < this.f14368k; i++) {
                if (!editor.f14377b[i]) {
                    editor.abort();
                    throw new IllegalStateException("Newly created entry didn't create value for index " + i);
                }
                if (!c1904c.m8639k(i).exists()) {
                    editor.abort();
                    return;
                }
            }
        }
        for (int i2 = 0; i2 < this.f14368k; i2++) {
            File m8639k = c1904c.m8639k(i2);
            if (!z) {
                m8611l0(m8639k);
            } else if (m8639k.exists()) {
                File m8638j = c1904c.m8638j(i2);
                m8639k.renameTo(m8638j);
                long j = c1904c.f14387b[i2];
                long length = m8638j.length();
                c1904c.f14387b[i2] = length;
                this.f14369l = (this.f14369l - j) + length;
            }
        }
        this.f14372o++;
        c1904c.f14391f = null;
        if (c1904c.f14390e || z) {
            c1904c.f14390e = true;
            this.f14370m.append((CharSequence) "CLEAN");
            this.f14370m.append(' ');
            this.f14370m.append((CharSequence) c1904c.f14386a);
            this.f14370m.append((CharSequence) c1904c.m8640l());
            this.f14370m.append('\n');
            if (z) {
                long j2 = this.f14373p;
                this.f14373p = 1 + j2;
                c1904c.f14392g = j2;
            }
        } else {
            this.f14371n.remove(c1904c.f14386a);
            this.f14370m.append((CharSequence) "REMOVE");
            this.f14370m.append(' ');
            this.f14370m.append((CharSequence) c1904c.f14386a);
            this.f14370m.append('\n');
        }
        m8612n0(this.f14370m);
        if (this.f14369l > this.f14367j || m8619p0()) {
            this.f14374q.submit(this.f14375r);
        }
    }

    /* renamed from: m0 */
    public final synchronized Editor m8618m0(String str, long j) throws IOException {
        m8616i0();
        C1904c c1904c = this.f14371n.get(str);
        CallableC1902a callableC1902a = null;
        if (j != -1 && (c1904c == null || c1904c.f14392g != j)) {
            return null;
        }
        if (c1904c == null) {
            c1904c = new C1904c(this, str, callableC1902a);
            this.f14371n.put(str, c1904c);
        } else if (c1904c.f14391f != null) {
            return null;
        }
        Editor editor = new Editor(this, c1904c, callableC1902a);
        c1904c.f14391f = editor;
        this.f14370m.append((CharSequence) "DIRTY");
        this.f14370m.append(' ');
        this.f14370m.append((CharSequence) str);
        this.f14370m.append('\n');
        m8612n0(this.f14370m);
        return editor;
    }

    /* renamed from: p0 */
    public final boolean m8619p0() {
        int i = this.f14372o;
        return i >= 2000 && i >= this.f14371n.size();
    }

    /* renamed from: q0 */
    public final void m8620q0() throws IOException {
        m8611l0(this.f14364g);
        Iterator<C1904c> it2 = this.f14371n.values().iterator();
        while (it2.hasNext()) {
            C1904c next = it2.next();
            int i = 0;
            if (next.f14391f == null) {
                while (i < this.f14368k) {
                    this.f14369l += next.f14387b[i];
                    i++;
                }
            } else {
                next.f14391f = null;
                while (i < this.f14368k) {
                    m8611l0(next.m8638j(i));
                    m8611l0(next.m8639k(i));
                    i++;
                }
                it2.remove();
            }
        }
    }

    /* renamed from: r0 */
    public final void m8621r0() throws IOException {
        e1n e1nVar = new e1n(new FileInputStream(this.f14363f), gzn.f71667a);
        try {
            String readLine = e1nVar.readLine();
            String readLine2 = e1nVar.readLine();
            String readLine3 = e1nVar.readLine();
            String readLine4 = e1nVar.readLine();
            String readLine5 = e1nVar.readLine();
            if (!"libcore.io.DiskLruCache".equals(readLine) || !"1".equals(readLine2) || !Integer.toString(this.f14366i).equals(readLine3) || !Integer.toString(this.f14368k).equals(readLine4) || !"".equals(readLine5)) {
                throw new IOException("unexpected journal header: [" + readLine + ", " + readLine2 + ", " + readLine4 + ", " + readLine5 + IteratorUtils.f104924b);
            }
            int i = 0;
            while (true) {
                try {
                    m8622s0(e1nVar.readLine());
                    i++;
                } catch (EOFException unused) {
                    this.f14372o = i - this.f14371n.size();
                    if (e1nVar.m53905w()) {
                        m8623t0();
                    } else {
                        this.f14370m = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f14363f, true), gzn.f71667a));
                    }
                    gzn.m54385a(e1nVar);
                    return;
                }
            }
        } catch (Throwable th) {
            gzn.m54385a(e1nVar);
            throw th;
        }
    }

    public synchronized boolean remove(String str) throws IOException {
        m8616i0();
        C1904c c1904c = this.f14371n.get(str);
        if (c1904c != null && c1904c.f14391f == null) {
            for (int i = 0; i < this.f14368k; i++) {
                File m8638j = c1904c.m8638j(i);
                if (m8638j.exists() && !m8638j.delete()) {
                    throw new IOException("failed to delete " + m8638j);
                }
                this.f14369l -= c1904c.f14387b[i];
                c1904c.f14387b[i] = 0;
            }
            this.f14372o++;
            this.f14370m.append((CharSequence) "REMOVE");
            this.f14370m.append(' ');
            this.f14370m.append((CharSequence) str);
            this.f14370m.append('\n');
            this.f14371n.remove(str);
            if (m8619p0()) {
                this.f14374q.submit(this.f14375r);
            }
            return true;
        }
        return false;
    }

    /* renamed from: s0 */
    public final void m8622s0(String str) throws IOException {
        String substring;
        int indexOf = str.indexOf(32);
        if (indexOf == -1) {
            throw new IOException("unexpected journal line: " + str);
        }
        int i = indexOf + 1;
        int indexOf2 = str.indexOf(32, i);
        if (indexOf2 == -1) {
            substring = str.substring(i);
            if (indexOf == 6 && str.startsWith("REMOVE")) {
                this.f14371n.remove(substring);
                return;
            }
        } else {
            substring = str.substring(i, indexOf2);
        }
        C1904c c1904c = this.f14371n.get(substring);
        CallableC1902a callableC1902a = null;
        if (c1904c == null) {
            c1904c = new C1904c(this, substring, callableC1902a);
            this.f14371n.put(substring, c1904c);
        }
        if (indexOf2 != -1 && indexOf == 5 && str.startsWith("CLEAN")) {
            String[] split = str.substring(indexOf2 + 1).split(" ");
            c1904c.f14390e = true;
            c1904c.f14391f = null;
            c1904c.m8642n(split);
            return;
        }
        if (indexOf2 == -1 && indexOf == 5 && str.startsWith("DIRTY")) {
            c1904c.f14391f = new Editor(this, c1904c, callableC1902a);
            return;
        }
        if (indexOf2 == -1 && indexOf == 4 && str.startsWith("READ")) {
            return;
        }
        throw new IOException("unexpected journal line: " + str);
    }

    public synchronized void setMaxSize(long j) {
        this.f14367j = j;
        this.f14374q.submit(this.f14375r);
    }

    public synchronized long size() {
        return this.f14369l;
    }

    /* renamed from: t0 */
    public final synchronized void m8623t0() throws IOException {
        Writer writer = this.f14370m;
        if (writer != null) {
            m8610j0(writer);
        }
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f14364g), gzn.f71667a));
        try {
            bufferedWriter.write("libcore.io.DiskLruCache");
            bufferedWriter.write("\n");
            bufferedWriter.write("1");
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f14366i));
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f14368k));
            bufferedWriter.write("\n");
            bufferedWriter.write("\n");
            for (C1904c c1904c : this.f14371n.values()) {
                if (c1904c.f14391f != null) {
                    bufferedWriter.write("DIRTY " + c1904c.f14386a + '\n');
                } else {
                    bufferedWriter.write("CLEAN " + c1904c.f14386a + c1904c.m8640l() + '\n');
                }
            }
            m8610j0(bufferedWriter);
            if (this.f14363f.exists()) {
                m8614u0(this.f14363f, this.f14365h, true);
            }
            m8614u0(this.f14364g, this.f14363f, false);
            this.f14365h.delete();
            this.f14370m = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f14363f, true), gzn.f71667a));
        } catch (Throwable th) {
            m8610j0(bufferedWriter);
            throw th;
        }
    }

    /* renamed from: v0 */
    public final void m8624v0() throws IOException {
        while (this.f14369l > this.f14367j) {
            remove(this.f14371n.entrySet().iterator().next().getKey());
        }
    }
}
