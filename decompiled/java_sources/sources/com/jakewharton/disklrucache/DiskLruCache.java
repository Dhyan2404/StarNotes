package com.jakewharton.disklrucache;

import com.sunia.HTREnginev2.d1n;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes4.dex */
public final class DiskLruCache implements Closeable {

    /* renamed from: J */
    public static final String f39016J = "DIRTY";

    /* renamed from: O */
    public static final String f39017O = "REMOVE";

    /* renamed from: Q */
    public static final String f39018Q = "READ";

    /* renamed from: s */
    public static final String f39020s = "journal";

    /* renamed from: t */
    public static final String f39021t = "journal.tmp";

    /* renamed from: u */
    public static final String f39022u = "journal.bkp";

    /* renamed from: v */
    public static final String f39023v = "libcore.io.DiskLruCache";

    /* renamed from: w */
    public static final String f39024w = "1";

    /* renamed from: x */
    public static final long f39025x = -1;

    /* renamed from: z */
    public static final String f39027z = "CLEAN";

    /* renamed from: e */
    public final File f39028e;

    /* renamed from: f */
    public final File f39029f;

    /* renamed from: g */
    public final File f39030g;

    /* renamed from: h */
    public final File f39031h;

    /* renamed from: i */
    public final int f39032i;

    /* renamed from: j */
    public long f39033j;

    /* renamed from: k */
    public final int f39034k;

    /* renamed from: m */
    public Writer f39036m;

    /* renamed from: o */
    public int f39038o;

    /* renamed from: y */
    public static final Pattern f39026y = Pattern.compile("[a-z0-9_-]{1,64}");

    /* renamed from: Z */
    public static final OutputStream f39019Z = new C6948b();

    /* renamed from: l */
    public long f39035l = 0;

    /* renamed from: n */
    public final LinkedHashMap<String, C6949c> f39037n = new LinkedHashMap<>(0, 0.75f, true);

    /* renamed from: p */
    public long f39039p = 0;

    /* renamed from: q */
    public final ThreadPoolExecutor f39040q = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* renamed from: r */
    public final Callable<Void> f39041r = new CallableC6947a();

    /* loaded from: classes4.dex */
    public final class Editor {

        /* renamed from: a */
        public final C6949c f39042a;

        /* renamed from: b */
        public final boolean[] f39043b;

        /* renamed from: c */
        public boolean f39044c;

        /* renamed from: d */
        public boolean f39045d;

        /* renamed from: com.jakewharton.disklrucache.DiskLruCache$Editor$a */
        /* loaded from: classes4.dex */
        public class C6946a extends FilterOutputStream {
            public /* synthetic */ C6946a(Editor editor, OutputStream outputStream, CallableC6947a callableC6947a) {
                this(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                try {
                    ((FilterOutputStream) this).out.close();
                } catch (IOException unused) {
                    Editor.this.f39044c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public void flush() {
                try {
                    ((FilterOutputStream) this).out.flush();
                } catch (IOException unused) {
                    Editor.this.f39044c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(int i) {
                try {
                    ((FilterOutputStream) this).out.write(i);
                } catch (IOException unused) {
                    Editor.this.f39044c = true;
                }
            }

            public C6946a(OutputStream outputStream) {
                super(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(byte[] bArr, int i, int i2) {
                try {
                    ((FilterOutputStream) this).out.write(bArr, i, i2);
                } catch (IOException unused) {
                    Editor.this.f39044c = true;
                }
            }
        }

        public /* synthetic */ Editor(DiskLruCache diskLruCache, C6949c c6949c, CallableC6947a callableC6947a) {
            this(c6949c);
        }

        public void abort() throws IOException {
            DiskLruCache.this.m30924k0(this, false);
        }

        public void abortUnlessCommitted() {
            if (this.f39045d) {
                return;
            }
            try {
                abort();
            } catch (IOException unused) {
            }
        }

        public void commit() throws IOException {
            if (this.f39044c) {
                DiskLruCache.this.m30924k0(this, false);
                DiskLruCache.this.remove(this.f39042a.f39054a);
            } else {
                DiskLruCache.this.m30924k0(this, true);
            }
            this.f39045d = true;
        }

        public String getString(int i) throws IOException {
            InputStream newInputStream = newInputStream(i);
            if (newInputStream != null) {
                return DiskLruCache.m30920n0(newInputStream);
            }
            return null;
        }

        public InputStream newInputStream(int i) throws IOException {
            synchronized (DiskLruCache.this) {
                if (this.f39042a.f39057d != this) {
                    throw new IllegalStateException();
                }
                if (!this.f39042a.f39056c) {
                    return null;
                }
                try {
                    return new FileInputStream(this.f39042a.m30946j(i));
                } catch (FileNotFoundException unused) {
                    return null;
                }
            }
        }

        public OutputStream newOutputStream(int i) throws IOException {
            FileOutputStream fileOutputStream;
            C6946a c6946a;
            synchronized (DiskLruCache.this) {
                if (this.f39042a.f39057d != this) {
                    throw new IllegalStateException();
                }
                if (!this.f39042a.f39056c) {
                    this.f39043b[i] = true;
                }
                File m30947k = this.f39042a.m30947k(i);
                try {
                    fileOutputStream = new FileOutputStream(m30947k);
                } catch (FileNotFoundException unused) {
                    DiskLruCache.this.f39028e.mkdirs();
                    try {
                        fileOutputStream = new FileOutputStream(m30947k);
                    } catch (FileNotFoundException unused2) {
                        return DiskLruCache.f39019Z;
                    }
                }
                c6946a = new C6946a(this, fileOutputStream, null);
            }
            return c6946a;
        }

        public void set(int i, String str) throws IOException {
            OutputStreamWriter outputStreamWriter = null;
            try {
                OutputStreamWriter outputStreamWriter2 = new OutputStreamWriter(newOutputStream(i), Util.f39061b);
                try {
                    outputStreamWriter2.write(str);
                    Util.m30951a(outputStreamWriter2);
                } catch (Throwable th) {
                    th = th;
                    outputStreamWriter = outputStreamWriter2;
                    Util.m30951a(outputStreamWriter);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }

        public Editor(C6949c c6949c) {
            this.f39042a = c6949c;
            this.f39043b = c6949c.f39056c ? null : new boolean[DiskLruCache.this.f39034k];
        }
    }

    /* loaded from: classes4.dex */
    public final class Snapshot implements Closeable {

        /* renamed from: e */
        public final String f39048e;

        /* renamed from: f */
        public final long f39049f;

        /* renamed from: g */
        public final InputStream[] f39050g;

        /* renamed from: h */
        public final long[] f39051h;

        public /* synthetic */ Snapshot(DiskLruCache diskLruCache, String str, long j, InputStream[] inputStreamArr, long[] jArr, CallableC6947a callableC6947a) {
            this(str, j, inputStreamArr, jArr);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (InputStream inputStream : this.f39050g) {
                Util.m30951a(inputStream);
            }
        }

        public Editor edit() throws IOException {
            return DiskLruCache.this.m30925m0(this.f39048e, this.f39049f);
        }

        public InputStream getInputStream(int i) {
            return this.f39050g[i];
        }

        public long getLength(int i) {
            return this.f39051h[i];
        }

        public String getString(int i) throws IOException {
            return DiskLruCache.m30920n0(getInputStream(i));
        }

        public Snapshot(String str, long j, InputStream[] inputStreamArr, long[] jArr) {
            this.f39048e = str;
            this.f39049f = j;
            this.f39050g = inputStreamArr;
            this.f39051h = jArr;
        }
    }

    /* renamed from: com.jakewharton.disklrucache.DiskLruCache$a */
    /* loaded from: classes4.dex */
    public class CallableC6947a implements Callable<Void> {
        public CallableC6947a() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void call() throws Exception {
            synchronized (DiskLruCache.this) {
                if (DiskLruCache.this.f39036m == null) {
                    return null;
                }
                DiskLruCache.this.m30931u0();
                if (DiskLruCache.this.m30926o0()) {
                    DiskLruCache.this.m30930s0();
                    DiskLruCache.this.f39038o = 0;
                }
                return null;
            }
        }
    }

    /* renamed from: com.jakewharton.disklrucache.DiskLruCache$b */
    /* loaded from: classes4.dex */
    public static class C6948b extends OutputStream {
        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
        }
    }

    /* renamed from: com.jakewharton.disklrucache.DiskLruCache$c */
    /* loaded from: classes4.dex */
    public final class C6949c {

        /* renamed from: a */
        public final String f39054a;

        /* renamed from: b */
        public final long[] f39055b;

        /* renamed from: c */
        public boolean f39056c;

        /* renamed from: d */
        public Editor f39057d;

        /* renamed from: e */
        public long f39058e;

        public /* synthetic */ C6949c(DiskLruCache diskLruCache, String str, CallableC6947a callableC6947a) {
            this(str);
        }

        /* renamed from: j */
        public File m30946j(int i) {
            return new File(DiskLruCache.this.f39028e, this.f39054a + "." + i);
        }

        /* renamed from: k */
        public File m30947k(int i) {
            return new File(DiskLruCache.this.f39028e, this.f39054a + "." + i + ".tmp");
        }

        /* renamed from: l */
        public String m30948l() throws IOException {
            StringBuilder sb = new StringBuilder();
            for (long j : this.f39055b) {
                sb.append(' ');
                sb.append(j);
            }
            return sb.toString();
        }

        /* renamed from: m */
        public final IOException m30949m(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        /* renamed from: n */
        public final void m30950n(String[] strArr) throws IOException {
            if (strArr.length != DiskLruCache.this.f39034k) {
                throw m30949m(strArr);
            }
            for (int i = 0; i < strArr.length; i++) {
                try {
                    this.f39055b[i] = Long.parseLong(strArr[i]);
                } catch (NumberFormatException unused) {
                    throw m30949m(strArr);
                }
            }
        }

        public C6949c(String str) {
            this.f39054a = str;
            this.f39055b = new long[DiskLruCache.this.f39034k];
        }
    }

    public DiskLruCache(File file, int i, int i2, long j) {
        this.f39028e = file;
        this.f39032i = i;
        this.f39029f = new File(file, "journal");
        this.f39030g = new File(file, "journal.tmp");
        this.f39031h = new File(file, "journal.bkp");
        this.f39034k = i2;
        this.f39033j = j;
    }

    /* renamed from: l0 */
    public static void m30919l0(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    /* renamed from: n0 */
    public static String m30920n0(InputStream inputStream) throws IOException {
        return Util.m30953c(new InputStreamReader(inputStream, Util.f39061b));
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
                m30921t0(file2, file3, false);
            }
        }
        DiskLruCache diskLruCache = new DiskLruCache(file, i, i2, j);
        if (diskLruCache.f39029f.exists()) {
            try {
                diskLruCache.m30928q0();
                diskLruCache.m30927p0();
                diskLruCache.f39036m = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(diskLruCache.f39029f, true), Util.f39060a));
                return diskLruCache;
            } catch (IOException e) {
                System.out.println("DiskLruCache " + file + " is corrupt: " + e.getMessage() + ", removing");
                diskLruCache.delete();
            }
        }
        file.mkdirs();
        DiskLruCache diskLruCache2 = new DiskLruCache(file, i, i2, j);
        diskLruCache2.m30930s0();
        return diskLruCache2;
    }

    /* renamed from: t0 */
    public static void m30921t0(File file, File file2, boolean z) throws IOException {
        if (z) {
            m30919l0(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        if (this.f39036m == null) {
            return;
        }
        Iterator it2 = new ArrayList(this.f39037n.values()).iterator();
        while (it2.hasNext()) {
            C6949c c6949c = (C6949c) it2.next();
            if (c6949c.f39057d != null) {
                c6949c.f39057d.abort();
            }
        }
        m30931u0();
        this.f39036m.close();
        this.f39036m = null;
    }

    public void delete() throws IOException {
        close();
        Util.m30952b(this.f39028e);
    }

    public Editor edit(String str) throws IOException {
        return m30925m0(str, -1L);
    }

    public synchronized void flush() throws IOException {
        m30923j0();
        m30931u0();
        this.f39036m.flush();
    }

    public synchronized Snapshot get(String str) throws IOException {
        InputStream inputStream;
        m30923j0();
        m30932v0(str);
        C6949c c6949c = this.f39037n.get(str);
        if (c6949c == null) {
            return null;
        }
        if (!c6949c.f39056c) {
            return null;
        }
        InputStream[] inputStreamArr = new InputStream[this.f39034k];
        for (int i = 0; i < this.f39034k; i++) {
            try {
                inputStreamArr[i] = new FileInputStream(c6949c.m30946j(i));
            } catch (FileNotFoundException unused) {
                for (int i2 = 0; i2 < this.f39034k && (inputStream = inputStreamArr[i2]) != null; i2++) {
                    Util.m30951a(inputStream);
                }
                return null;
            }
        }
        this.f39038o++;
        this.f39036m.append((CharSequence) ("READ " + str + '\n'));
        if (m30926o0()) {
            this.f39040q.submit(this.f39041r);
        }
        return new Snapshot(this, str, c6949c.f39058e, inputStreamArr, c6949c.f39055b, null);
    }

    public File getDirectory() {
        return this.f39028e;
    }

    public synchronized long getMaxSize() {
        return this.f39033j;
    }

    public synchronized boolean isClosed() {
        return this.f39036m == null;
    }

    /* renamed from: j0 */
    public final void m30923j0() {
        if (this.f39036m == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    /* renamed from: k0 */
    public final synchronized void m30924k0(Editor editor, boolean z) throws IOException {
        C6949c c6949c = editor.f39042a;
        if (c6949c.f39057d != editor) {
            throw new IllegalStateException();
        }
        if (z && !c6949c.f39056c) {
            for (int i = 0; i < this.f39034k; i++) {
                if (!editor.f39043b[i]) {
                    editor.abort();
                    throw new IllegalStateException("Newly created entry didn't create value for index " + i);
                }
                if (!c6949c.m30947k(i).exists()) {
                    editor.abort();
                    return;
                }
            }
        }
        for (int i2 = 0; i2 < this.f39034k; i2++) {
            File m30947k = c6949c.m30947k(i2);
            if (!z) {
                m30919l0(m30947k);
            } else if (m30947k.exists()) {
                File m30946j = c6949c.m30946j(i2);
                m30947k.renameTo(m30946j);
                long j = c6949c.f39055b[i2];
                long length = m30946j.length();
                c6949c.f39055b[i2] = length;
                this.f39035l = (this.f39035l - j) + length;
            }
        }
        this.f39038o++;
        c6949c.f39057d = null;
        if (c6949c.f39056c || z) {
            c6949c.f39056c = true;
            this.f39036m.write("CLEAN " + c6949c.f39054a + c6949c.m30948l() + '\n');
            if (z) {
                long j2 = this.f39039p;
                this.f39039p = 1 + j2;
                c6949c.f39058e = j2;
            }
        } else {
            this.f39037n.remove(c6949c.f39054a);
            this.f39036m.write("REMOVE " + c6949c.f39054a + '\n');
        }
        this.f39036m.flush();
        if (this.f39035l > this.f39033j || m30926o0()) {
            this.f39040q.submit(this.f39041r);
        }
    }

    /* renamed from: m0 */
    public final synchronized Editor m30925m0(String str, long j) throws IOException {
        m30923j0();
        m30932v0(str);
        C6949c c6949c = this.f39037n.get(str);
        CallableC6947a callableC6947a = null;
        if (j != -1 && (c6949c == null || c6949c.f39058e != j)) {
            return null;
        }
        if (c6949c == null) {
            c6949c = new C6949c(this, str, callableC6947a);
            this.f39037n.put(str, c6949c);
        } else if (c6949c.f39057d != null) {
            return null;
        }
        Editor editor = new Editor(this, c6949c, callableC6947a);
        c6949c.f39057d = editor;
        this.f39036m.write("DIRTY " + str + '\n');
        this.f39036m.flush();
        return editor;
    }

    /* renamed from: o0 */
    public final boolean m30926o0() {
        int i = this.f39038o;
        return i >= 2000 && i >= this.f39037n.size();
    }

    /* renamed from: p0 */
    public final void m30927p0() throws IOException {
        m30919l0(this.f39030g);
        Iterator<C6949c> it2 = this.f39037n.values().iterator();
        while (it2.hasNext()) {
            C6949c next = it2.next();
            int i = 0;
            if (next.f39057d == null) {
                while (i < this.f39034k) {
                    this.f39035l += next.f39055b[i];
                    i++;
                }
            } else {
                next.f39057d = null;
                while (i < this.f39034k) {
                    m30919l0(next.m30946j(i));
                    m30919l0(next.m30947k(i));
                    i++;
                }
                it2.remove();
            }
        }
    }

    /* renamed from: q0 */
    public final void m30928q0() throws IOException {
        d1n d1nVar = new d1n(new FileInputStream(this.f39029f), Util.f39060a);
        try {
            String readLine = d1nVar.readLine();
            String readLine2 = d1nVar.readLine();
            String readLine3 = d1nVar.readLine();
            String readLine4 = d1nVar.readLine();
            String readLine5 = d1nVar.readLine();
            if (!"libcore.io.DiskLruCache".equals(readLine) || !"1".equals(readLine2) || !Integer.toString(this.f39032i).equals(readLine3) || !Integer.toString(this.f39034k).equals(readLine4) || !"".equals(readLine5)) {
                throw new IOException("unexpected journal header: [" + readLine + ", " + readLine2 + ", " + readLine4 + ", " + readLine5 + IteratorUtils.f104924b);
            }
            int i = 0;
            while (true) {
                try {
                    m30929r0(d1nVar.readLine());
                    i++;
                } catch (EOFException unused) {
                    this.f39038o = i - this.f39037n.size();
                    Util.m30951a(d1nVar);
                    return;
                }
            }
        } catch (Throwable th) {
            Util.m30951a(d1nVar);
            throw th;
        }
    }

    /* renamed from: r0 */
    public final void m30929r0(String str) throws IOException {
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
                this.f39037n.remove(substring);
                return;
            }
        } else {
            substring = str.substring(i, indexOf2);
        }
        C6949c c6949c = this.f39037n.get(substring);
        CallableC6947a callableC6947a = null;
        if (c6949c == null) {
            c6949c = new C6949c(this, substring, callableC6947a);
            this.f39037n.put(substring, c6949c);
        }
        if (indexOf2 != -1 && indexOf == 5 && str.startsWith("CLEAN")) {
            String[] split = str.substring(indexOf2 + 1).split(" ");
            c6949c.f39056c = true;
            c6949c.f39057d = null;
            c6949c.m30950n(split);
            return;
        }
        if (indexOf2 == -1 && indexOf == 5 && str.startsWith("DIRTY")) {
            c6949c.f39057d = new Editor(this, c6949c, callableC6947a);
            return;
        }
        if (indexOf2 == -1 && indexOf == 4 && str.startsWith("READ")) {
            return;
        }
        throw new IOException("unexpected journal line: " + str);
    }

    public synchronized boolean remove(String str) throws IOException {
        m30923j0();
        m30932v0(str);
        C6949c c6949c = this.f39037n.get(str);
        if (c6949c != null && c6949c.f39057d == null) {
            for (int i = 0; i < this.f39034k; i++) {
                File m30946j = c6949c.m30946j(i);
                if (m30946j.exists() && !m30946j.delete()) {
                    throw new IOException("failed to delete " + m30946j);
                }
                this.f39035l -= c6949c.f39055b[i];
                c6949c.f39055b[i] = 0;
            }
            this.f39038o++;
            this.f39036m.append((CharSequence) ("REMOVE " + str + '\n'));
            this.f39037n.remove(str);
            if (m30926o0()) {
                this.f39040q.submit(this.f39041r);
            }
            return true;
        }
        return false;
    }

    /* renamed from: s0 */
    public final synchronized void m30930s0() throws IOException {
        Writer writer = this.f39036m;
        if (writer != null) {
            writer.close();
        }
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f39030g), Util.f39060a));
        try {
            bufferedWriter.write("libcore.io.DiskLruCache");
            bufferedWriter.write("\n");
            bufferedWriter.write("1");
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f39032i));
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f39034k));
            bufferedWriter.write("\n");
            bufferedWriter.write("\n");
            for (C6949c c6949c : this.f39037n.values()) {
                if (c6949c.f39057d != null) {
                    bufferedWriter.write("DIRTY " + c6949c.f39054a + '\n');
                } else {
                    bufferedWriter.write("CLEAN " + c6949c.f39054a + c6949c.m30948l() + '\n');
                }
            }
            bufferedWriter.close();
            if (this.f39029f.exists()) {
                m30921t0(this.f39029f, this.f39031h, true);
            }
            m30921t0(this.f39030g, this.f39029f, false);
            this.f39031h.delete();
            this.f39036m = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f39029f, true), Util.f39060a));
        } catch (Throwable th) {
            bufferedWriter.close();
            throw th;
        }
    }

    public synchronized void setMaxSize(long j) {
        this.f39033j = j;
        this.f39040q.submit(this.f39041r);
    }

    public synchronized long size() {
        return this.f39035l;
    }

    /* renamed from: u0 */
    public final void m30931u0() throws IOException {
        while (this.f39035l > this.f39033j) {
            remove(this.f39037n.entrySet().iterator().next().getKey());
        }
    }

    /* renamed from: v0 */
    public final void m30932v0(String str) {
        if (f39026y.matcher(str).matches()) {
            return;
        }
        throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,64}: \"" + str + "\"");
    }
}
