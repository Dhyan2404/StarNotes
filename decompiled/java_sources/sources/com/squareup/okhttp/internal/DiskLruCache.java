package com.squareup.okhttp.internal;

import com.squareup.okhttp.internal.io.FileSystem;
import com.sunia.HTREnginev2.d9g;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.NoSuchElementException;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.Okio;
import okio.Sink;
import okio.Source;
import okio.Timeout;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes9.dex */
public final class DiskLruCache implements Closeable {

    /* renamed from: J */
    public static final String f63651J = "1";

    /* renamed from: O */
    public static final long f63652O = -1;

    /* renamed from: Z */
    public static final String f63654Z = "CLEAN";

    /* renamed from: k0 */
    public static final String f63655k0 = "DIRTY";

    /* renamed from: q0 */
    public static final String f63656q0 = "REMOVE";

    /* renamed from: t0 */
    public static final String f63657t0 = "READ";

    /* renamed from: v0 */
    public static final /* synthetic */ boolean f63659v0 = false;

    /* renamed from: w */
    public static final String f63660w = "journal";

    /* renamed from: x */
    public static final String f63661x = "journal.tmp";

    /* renamed from: y */
    public static final String f63662y = "journal.bkp";

    /* renamed from: z */
    public static final String f63663z = "libcore.io.DiskLruCache";

    /* renamed from: e */
    public final FileSystem f63664e;

    /* renamed from: f */
    public final File f63665f;

    /* renamed from: g */
    public final File f63666g;

    /* renamed from: h */
    public final File f63667h;

    /* renamed from: i */
    public final File f63668i;

    /* renamed from: j */
    public final int f63669j;

    /* renamed from: k */
    public long f63670k;

    /* renamed from: l */
    public final int f63671l;

    /* renamed from: n */
    public BufferedSink f63673n;

    /* renamed from: p */
    public int f63675p;

    /* renamed from: q */
    public boolean f63676q;

    /* renamed from: r */
    public boolean f63677r;

    /* renamed from: s */
    public boolean f63678s;

    /* renamed from: u */
    public final Executor f63680u;

    /* renamed from: Q */
    public static final Pattern f63653Q = Pattern.compile("[a-z0-9_-]{1,120}");

    /* renamed from: u0 */
    public static final Sink f63658u0 = new C13167d();

    /* renamed from: m */
    public long f63672m = 0;

    /* renamed from: o */
    public final LinkedHashMap<String, C13168e> f63674o = new LinkedHashMap<>(0, 0.75f, true);

    /* renamed from: t */
    public long f63679t = 0;

    /* renamed from: v */
    public final Runnable f63681v = new RunnableC13164a();

    /* loaded from: classes9.dex */
    public final class Editor {

        /* renamed from: a */
        public final C13168e f63682a;

        /* renamed from: b */
        public final boolean[] f63683b;

        /* renamed from: c */
        public boolean f63684c;

        /* renamed from: d */
        public boolean f63685d;

        /* renamed from: com.squareup.okhttp.internal.DiskLruCache$Editor$a */
        /* loaded from: classes9.dex */
        public class C13163a extends d9g {
            public C13163a(Sink sink) {
                super(sink);
            }

            @Override // com.sunia.HTREnginev2.d9g
            /* renamed from: f */
            public void mo52633f(IOException iOException) {
                synchronized (DiskLruCache.this) {
                    Editor.this.f63684c = true;
                }
            }
        }

        public /* synthetic */ Editor(DiskLruCache diskLruCache, C13168e c13168e, RunnableC13164a runnableC13164a) {
            this(c13168e);
        }

        public void abort() throws IOException {
            synchronized (DiskLruCache.this) {
                DiskLruCache.this.m52618o0(this, false);
            }
        }

        public void abortUnlessCommitted() {
            synchronized (DiskLruCache.this) {
                if (!this.f63685d) {
                    try {
                        DiskLruCache.this.m52618o0(this, false);
                    } catch (IOException unused) {
                    }
                }
            }
        }

        public void commit() throws IOException {
            synchronized (DiskLruCache.this) {
                if (this.f63684c) {
                    DiskLruCache.this.m52618o0(this, false);
                    DiskLruCache.this.m52627x0(this.f63682a);
                } else {
                    DiskLruCache.this.m52618o0(this, true);
                }
                this.f63685d = true;
            }
        }

        public Sink newSink(int i) throws IOException {
            C13163a c13163a;
            synchronized (DiskLruCache.this) {
                if (this.f63682a.f63705f != this) {
                    throw new IllegalStateException();
                }
                if (!this.f63682a.f63704e) {
                    this.f63683b[i] = true;
                }
                try {
                    c13163a = new C13163a(DiskLruCache.this.f63664e.sink(this.f63682a.f63703d[i]));
                } catch (FileNotFoundException unused) {
                    return DiskLruCache.f63658u0;
                }
            }
            return c13163a;
        }

        public Source newSource(int i) throws IOException {
            synchronized (DiskLruCache.this) {
                if (this.f63682a.f63705f != this) {
                    throw new IllegalStateException();
                }
                if (!this.f63682a.f63704e) {
                    return null;
                }
                try {
                    return DiskLruCache.this.f63664e.source(this.f63682a.f63702c[i]);
                } catch (FileNotFoundException unused) {
                    return null;
                }
            }
        }

        public Editor(C13168e c13168e) {
            this.f63682a = c13168e;
            this.f63683b = c13168e.f63704e ? null : new boolean[DiskLruCache.this.f63671l];
        }
    }

    /* loaded from: classes9.dex */
    public final class Snapshot implements Closeable {

        /* renamed from: e */
        public final String f63688e;

        /* renamed from: f */
        public final long f63689f;

        /* renamed from: g */
        public final Source[] f63690g;

        /* renamed from: h */
        public final long[] f63691h;

        public /* synthetic */ Snapshot(DiskLruCache diskLruCache, String str, long j, Source[] sourceArr, long[] jArr, RunnableC13164a runnableC13164a) {
            this(str, j, sourceArr, jArr);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (Source source : this.f63690g) {
                Util.closeQuietly(source);
            }
        }

        public Editor edit() throws IOException {
            return DiskLruCache.this.m52619p0(this.f63688e, this.f63689f);
        }

        public long getLength(int i) {
            return this.f63691h[i];
        }

        public Source getSource(int i) {
            return this.f63690g[i];
        }

        public String key() {
            return this.f63688e;
        }

        public Snapshot(String str, long j, Source[] sourceArr, long[] jArr) {
            this.f63688e = str;
            this.f63689f = j;
            this.f63690g = sourceArr;
            this.f63691h = jArr;
        }
    }

    /* renamed from: com.squareup.okhttp.internal.DiskLruCache$a */
    /* loaded from: classes9.dex */
    public class RunnableC13164a implements Runnable {
        public RunnableC13164a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (DiskLruCache.this) {
                if ((!DiskLruCache.this.f63677r) || DiskLruCache.this.f63678s) {
                    return;
                }
                try {
                    DiskLruCache.this.m52628y0();
                    if (DiskLruCache.this.m52621r0()) {
                        DiskLruCache.this.m52626w0();
                        DiskLruCache.this.f63675p = 0;
                    }
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
    }

    /* renamed from: com.squareup.okhttp.internal.DiskLruCache$b */
    /* loaded from: classes9.dex */
    public class C13165b extends d9g {

        /* renamed from: g */
        public static final /* synthetic */ boolean f63694g = false;

        public C13165b(Sink sink) {
            super(sink);
        }

        @Override // com.sunia.HTREnginev2.d9g
        /* renamed from: f */
        public void mo52633f(IOException iOException) {
            DiskLruCache.this.f63676q = true;
        }
    }

    /* renamed from: com.squareup.okhttp.internal.DiskLruCache$c */
    /* loaded from: classes9.dex */
    public class C13166c implements Iterator<Snapshot> {

        /* renamed from: e */
        public final Iterator<C13168e> f63696e;

        /* renamed from: f */
        public Snapshot f63697f;

        /* renamed from: g */
        public Snapshot f63698g;

        public C13166c() {
            this.f63696e = new ArrayList(DiskLruCache.this.f63674o.values()).iterator();
        }

        @Override // java.util.Iterator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Snapshot next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            Snapshot snapshot = this.f63697f;
            this.f63698g = snapshot;
            this.f63697f = null;
            return snapshot;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f63697f != null) {
                return true;
            }
            synchronized (DiskLruCache.this) {
                if (DiskLruCache.this.f63678s) {
                    return false;
                }
                while (this.f63696e.hasNext()) {
                    Snapshot m52649n = this.f63696e.next().m52649n();
                    if (m52649n != null) {
                        this.f63697f = m52649n;
                        return true;
                    }
                }
                return false;
            }
        }

        @Override // java.util.Iterator
        public void remove() {
            Snapshot snapshot = this.f63698g;
            if (snapshot == null) {
                throw new IllegalStateException("remove() before next()");
            }
            try {
                DiskLruCache.this.remove(snapshot.f63688e);
            } catch (IOException unused) {
            } catch (Throwable th) {
                this.f63698g = null;
                throw th;
            }
            this.f63698g = null;
        }
    }

    /* renamed from: com.squareup.okhttp.internal.DiskLruCache$d */
    /* loaded from: classes9.dex */
    public static class C13167d implements Sink {
        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
        public void close() throws IOException {
        }

        @Override // okio.Sink, java.io.Flushable
        public void flush() throws IOException {
        }

        @Override // okio.Sink
        /* renamed from: timeout */
        public Timeout getTimeout() {
            return Timeout.NONE;
        }

        @Override // okio.Sink
        public void write(Buffer buffer, long j) throws IOException {
            buffer.skip(j);
        }
    }

    /* renamed from: com.squareup.okhttp.internal.DiskLruCache$e */
    /* loaded from: classes9.dex */
    public final class C13168e {

        /* renamed from: a */
        public final String f63700a;

        /* renamed from: b */
        public final long[] f63701b;

        /* renamed from: c */
        public final File[] f63702c;

        /* renamed from: d */
        public final File[] f63703d;

        /* renamed from: e */
        public boolean f63704e;

        /* renamed from: f */
        public Editor f63705f;

        /* renamed from: g */
        public long f63706g;

        public /* synthetic */ C13168e(DiskLruCache diskLruCache, String str, RunnableC13164a runnableC13164a) {
            this(str);
        }

        /* renamed from: l */
        public final IOException m52647l(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        /* renamed from: m */
        public final void m52648m(String[] strArr) throws IOException {
            if (strArr.length != DiskLruCache.this.f63671l) {
                throw m52647l(strArr);
            }
            for (int i = 0; i < strArr.length; i++) {
                try {
                    this.f63701b[i] = Long.parseLong(strArr[i]);
                } catch (NumberFormatException unused) {
                    throw m52647l(strArr);
                }
            }
        }

        /* renamed from: n */
        public Snapshot m52649n() {
            Source source;
            if (!Thread.holdsLock(DiskLruCache.this)) {
                throw new AssertionError();
            }
            Source[] sourceArr = new Source[DiskLruCache.this.f63671l];
            long[] jArr = (long[]) this.f63701b.clone();
            for (int i = 0; i < DiskLruCache.this.f63671l; i++) {
                try {
                    sourceArr[i] = DiskLruCache.this.f63664e.source(this.f63702c[i]);
                } catch (FileNotFoundException unused) {
                    for (int i2 = 0; i2 < DiskLruCache.this.f63671l && (source = sourceArr[i2]) != null; i2++) {
                        Util.closeQuietly(source);
                    }
                    return null;
                }
            }
            return new Snapshot(DiskLruCache.this, this.f63700a, this.f63706g, sourceArr, jArr, null);
        }

        /* renamed from: o */
        public void m52650o(BufferedSink bufferedSink) throws IOException {
            for (long j : this.f63701b) {
                bufferedSink.writeByte(32).writeDecimalLong(j);
            }
        }

        public C13168e(String str) {
            this.f63700a = str;
            this.f63701b = new long[DiskLruCache.this.f63671l];
            this.f63702c = new File[DiskLruCache.this.f63671l];
            this.f63703d = new File[DiskLruCache.this.f63671l];
            StringBuilder sb = new StringBuilder(str);
            sb.append('.');
            int length = sb.length();
            for (int i = 0; i < DiskLruCache.this.f63671l; i++) {
                sb.append(i);
                this.f63702c[i] = new File(DiskLruCache.this.f63665f, sb.toString());
                sb.append(".tmp");
                this.f63703d[i] = new File(DiskLruCache.this.f63665f, sb.toString());
                sb.setLength(length);
            }
        }
    }

    public DiskLruCache(FileSystem fileSystem, File file, int i, int i2, long j, Executor executor) {
        this.f63664e = fileSystem;
        this.f63665f = file;
        this.f63669j = i;
        this.f63666g = new File(file, "journal");
        this.f63667h = new File(file, "journal.tmp");
        this.f63668i = new File(file, "journal.bkp");
        this.f63671l = i2;
        this.f63670k = j;
        this.f63680u = executor;
    }

    public static DiskLruCache create(FileSystem fileSystem, File file, int i, int i2, long j) {
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        if (i2 > 0) {
            return new DiskLruCache(fileSystem, file, i, i2, j, new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), Util.threadFactory("OkHttp DiskLruCache", true)));
        }
        throw new IllegalArgumentException("valueCount <= 0");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        if (this.f63677r && !this.f63678s) {
            for (C13168e c13168e : (C13168e[]) this.f63674o.values().toArray(new C13168e[this.f63674o.size()])) {
                if (c13168e.f63705f != null) {
                    c13168e.f63705f.abort();
                }
            }
            m52628y0();
            this.f63673n.close();
            this.f63673n = null;
            this.f63678s = true;
            return;
        }
        this.f63678s = true;
    }

    public void delete() throws IOException {
        close();
        this.f63664e.deleteContents(this.f63665f);
    }

    public Editor edit(String str) throws IOException {
        return m52619p0(str, -1L);
    }

    public synchronized void evictAll() throws IOException {
        m52620q0();
        for (C13168e c13168e : (C13168e[]) this.f63674o.values().toArray(new C13168e[this.f63674o.size()])) {
            m52627x0(c13168e);
        }
    }

    public synchronized void flush() throws IOException {
        if (this.f63677r) {
            m52617n0();
            m52628y0();
            this.f63673n.flush();
        }
    }

    public synchronized Snapshot get(String str) throws IOException {
        m52620q0();
        m52617n0();
        m52629z0(str);
        C13168e c13168e = this.f63674o.get(str);
        if (c13168e != null && c13168e.f63704e) {
            Snapshot m52649n = c13168e.m52649n();
            if (m52649n == null) {
                return null;
            }
            this.f63675p++;
            this.f63673n.writeUtf8("READ").writeByte(32).writeUtf8(str).writeByte(10);
            if (m52621r0()) {
                this.f63680u.execute(this.f63681v);
            }
            return m52649n;
        }
        return null;
    }

    public File getDirectory() {
        return this.f63665f;
    }

    public synchronized long getMaxSize() {
        return this.f63670k;
    }

    public synchronized boolean isClosed() {
        return this.f63678s;
    }

    /* renamed from: n0 */
    public final synchronized void m52617n0() {
        if (isClosed()) {
            throw new IllegalStateException("cache is closed");
        }
    }

    /* renamed from: o0 */
    public final synchronized void m52618o0(Editor editor, boolean z) throws IOException {
        C13168e c13168e = editor.f63682a;
        if (c13168e.f63705f != editor) {
            throw new IllegalStateException();
        }
        if (z && !c13168e.f63704e) {
            for (int i = 0; i < this.f63671l; i++) {
                if (!editor.f63683b[i]) {
                    editor.abort();
                    throw new IllegalStateException("Newly created entry didn't create value for index " + i);
                }
                if (!this.f63664e.exists(c13168e.f63703d[i])) {
                    editor.abort();
                    return;
                }
            }
        }
        for (int i2 = 0; i2 < this.f63671l; i2++) {
            File file = c13168e.f63703d[i2];
            if (!z) {
                this.f63664e.delete(file);
            } else if (this.f63664e.exists(file)) {
                File file2 = c13168e.f63702c[i2];
                this.f63664e.rename(file, file2);
                long j = c13168e.f63701b[i2];
                long size = this.f63664e.size(file2);
                c13168e.f63701b[i2] = size;
                this.f63672m = (this.f63672m - j) + size;
            }
        }
        this.f63675p++;
        c13168e.f63705f = null;
        if (c13168e.f63704e || z) {
            c13168e.f63704e = true;
            this.f63673n.writeUtf8("CLEAN").writeByte(32);
            this.f63673n.writeUtf8(c13168e.f63700a);
            c13168e.m52650o(this.f63673n);
            this.f63673n.writeByte(10);
            if (z) {
                long j2 = this.f63679t;
                this.f63679t = 1 + j2;
                c13168e.f63706g = j2;
            }
        } else {
            this.f63674o.remove(c13168e.f63700a);
            this.f63673n.writeUtf8("REMOVE").writeByte(32);
            this.f63673n.writeUtf8(c13168e.f63700a);
            this.f63673n.writeByte(10);
        }
        this.f63673n.flush();
        if (this.f63672m > this.f63670k || m52621r0()) {
            this.f63680u.execute(this.f63681v);
        }
    }

    /* renamed from: p0 */
    public final synchronized Editor m52619p0(String str, long j) throws IOException {
        m52620q0();
        m52617n0();
        m52629z0(str);
        C13168e c13168e = this.f63674o.get(str);
        RunnableC13164a runnableC13164a = null;
        if (j != -1 && (c13168e == null || c13168e.f63706g != j)) {
            return null;
        }
        if (c13168e != null && c13168e.f63705f != null) {
            return null;
        }
        this.f63673n.writeUtf8("DIRTY").writeByte(32).writeUtf8(str).writeByte(10);
        this.f63673n.flush();
        if (this.f63676q) {
            return null;
        }
        if (c13168e == null) {
            c13168e = new C13168e(this, str, runnableC13164a);
            this.f63674o.put(str, c13168e);
        }
        Editor editor = new Editor(this, c13168e, runnableC13164a);
        c13168e.f63705f = editor;
        return editor;
    }

    /* renamed from: q0 */
    public void m52620q0() throws IOException {
        if (this.f63677r) {
            return;
        }
        if (this.f63664e.exists(this.f63668i)) {
            if (this.f63664e.exists(this.f63666g)) {
                this.f63664e.delete(this.f63668i);
            } else {
                this.f63664e.rename(this.f63668i, this.f63666g);
            }
        }
        if (this.f63664e.exists(this.f63666g)) {
            try {
                m52624u0();
                m52623t0();
                this.f63677r = true;
                return;
            } catch (IOException e) {
                Platform.get().logW("DiskLruCache " + this.f63665f + " is corrupt: " + e.getMessage() + ", removing");
                delete();
                this.f63678s = false;
            }
        }
        m52626w0();
        this.f63677r = true;
    }

    /* renamed from: r0 */
    public final boolean m52621r0() {
        int i = this.f63675p;
        return i >= 2000 && i >= this.f63674o.size();
    }

    public synchronized boolean remove(String str) throws IOException {
        m52620q0();
        m52617n0();
        m52629z0(str);
        C13168e c13168e = this.f63674o.get(str);
        if (c13168e == null) {
            return false;
        }
        return m52627x0(c13168e);
    }

    /* renamed from: s0 */
    public final BufferedSink m52622s0() throws FileNotFoundException {
        return Okio.buffer(new C13165b(this.f63664e.appendingSink(this.f63666g)));
    }

    public synchronized void setMaxSize(long j) {
        this.f63670k = j;
        if (this.f63677r) {
            this.f63680u.execute(this.f63681v);
        }
    }

    public synchronized long size() throws IOException {
        m52620q0();
        return this.f63672m;
    }

    public synchronized Iterator<Snapshot> snapshots() throws IOException {
        m52620q0();
        return new C13166c();
    }

    /* renamed from: t0 */
    public final void m52623t0() throws IOException {
        this.f63664e.delete(this.f63667h);
        Iterator<C13168e> it2 = this.f63674o.values().iterator();
        while (it2.hasNext()) {
            C13168e next = it2.next();
            int i = 0;
            if (next.f63705f == null) {
                while (i < this.f63671l) {
                    this.f63672m += next.f63701b[i];
                    i++;
                }
            } else {
                next.f63705f = null;
                while (i < this.f63671l) {
                    this.f63664e.delete(next.f63702c[i]);
                    this.f63664e.delete(next.f63703d[i]);
                    i++;
                }
                it2.remove();
            }
        }
    }

    /* renamed from: u0 */
    public final void m52624u0() throws IOException {
        BufferedSource buffer = Okio.buffer(this.f63664e.source(this.f63666g));
        try {
            String readUtf8LineStrict = buffer.readUtf8LineStrict();
            String readUtf8LineStrict2 = buffer.readUtf8LineStrict();
            String readUtf8LineStrict3 = buffer.readUtf8LineStrict();
            String readUtf8LineStrict4 = buffer.readUtf8LineStrict();
            String readUtf8LineStrict5 = buffer.readUtf8LineStrict();
            if (!"libcore.io.DiskLruCache".equals(readUtf8LineStrict) || !"1".equals(readUtf8LineStrict2) || !Integer.toString(this.f63669j).equals(readUtf8LineStrict3) || !Integer.toString(this.f63671l).equals(readUtf8LineStrict4) || !"".equals(readUtf8LineStrict5)) {
                throw new IOException("unexpected journal header: [" + readUtf8LineStrict + ", " + readUtf8LineStrict2 + ", " + readUtf8LineStrict4 + ", " + readUtf8LineStrict5 + IteratorUtils.f104924b);
            }
            int i = 0;
            while (true) {
                try {
                    m52625v0(buffer.readUtf8LineStrict());
                    i++;
                } catch (EOFException unused) {
                    this.f63675p = i - this.f63674o.size();
                    if (buffer.exhausted()) {
                        this.f63673n = m52622s0();
                    } else {
                        m52626w0();
                    }
                    Util.closeQuietly(buffer);
                    return;
                }
            }
        } catch (Throwable th) {
            Util.closeQuietly(buffer);
            throw th;
        }
    }

    /* renamed from: v0 */
    public final void m52625v0(String str) throws IOException {
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
                this.f63674o.remove(substring);
                return;
            }
        } else {
            substring = str.substring(i, indexOf2);
        }
        C13168e c13168e = this.f63674o.get(substring);
        RunnableC13164a runnableC13164a = null;
        if (c13168e == null) {
            c13168e = new C13168e(this, substring, runnableC13164a);
            this.f63674o.put(substring, c13168e);
        }
        if (indexOf2 != -1 && indexOf == 5 && str.startsWith("CLEAN")) {
            String[] split = str.substring(indexOf2 + 1).split(" ");
            c13168e.f63704e = true;
            c13168e.f63705f = null;
            c13168e.m52648m(split);
            return;
        }
        if (indexOf2 == -1 && indexOf == 5 && str.startsWith("DIRTY")) {
            c13168e.f63705f = new Editor(this, c13168e, runnableC13164a);
            return;
        }
        if (indexOf2 == -1 && indexOf == 4 && str.startsWith("READ")) {
            return;
        }
        throw new IOException("unexpected journal line: " + str);
    }

    /* renamed from: w0 */
    public final synchronized void m52626w0() throws IOException {
        BufferedSink bufferedSink = this.f63673n;
        if (bufferedSink != null) {
            bufferedSink.close();
        }
        BufferedSink buffer = Okio.buffer(this.f63664e.sink(this.f63667h));
        try {
            buffer.writeUtf8("libcore.io.DiskLruCache").writeByte(10);
            buffer.writeUtf8("1").writeByte(10);
            buffer.writeDecimalLong(this.f63669j).writeByte(10);
            buffer.writeDecimalLong(this.f63671l).writeByte(10);
            buffer.writeByte(10);
            for (C13168e c13168e : this.f63674o.values()) {
                if (c13168e.f63705f != null) {
                    buffer.writeUtf8("DIRTY").writeByte(32);
                    buffer.writeUtf8(c13168e.f63700a);
                    buffer.writeByte(10);
                } else {
                    buffer.writeUtf8("CLEAN").writeByte(32);
                    buffer.writeUtf8(c13168e.f63700a);
                    c13168e.m52650o(buffer);
                    buffer.writeByte(10);
                }
            }
            buffer.close();
            if (this.f63664e.exists(this.f63666g)) {
                this.f63664e.rename(this.f63666g, this.f63668i);
            }
            this.f63664e.rename(this.f63667h, this.f63666g);
            this.f63664e.delete(this.f63668i);
            this.f63673n = m52622s0();
            this.f63676q = false;
        } catch (Throwable th) {
            buffer.close();
            throw th;
        }
    }

    /* renamed from: x0 */
    public final boolean m52627x0(C13168e c13168e) throws IOException {
        if (c13168e.f63705f != null) {
            c13168e.f63705f.f63684c = true;
        }
        for (int i = 0; i < this.f63671l; i++) {
            this.f63664e.delete(c13168e.f63702c[i]);
            this.f63672m -= c13168e.f63701b[i];
            c13168e.f63701b[i] = 0;
        }
        this.f63675p++;
        this.f63673n.writeUtf8("REMOVE").writeByte(32).writeUtf8(c13168e.f63700a).writeByte(10);
        this.f63674o.remove(c13168e.f63700a);
        if (m52621r0()) {
            this.f63680u.execute(this.f63681v);
        }
        return true;
    }

    /* renamed from: y0 */
    public final void m52628y0() throws IOException {
        while (this.f63672m > this.f63670k) {
            m52627x0(this.f63674o.values().iterator().next());
        }
    }

    /* renamed from: z0 */
    public final void m52629z0(String str) {
        if (f63653Q.matcher(str).matches()) {
            return;
        }
        throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + str + "\"");
    }
}
