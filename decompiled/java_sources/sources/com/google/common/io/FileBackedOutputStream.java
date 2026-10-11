package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import com.sunia.HTREnginev2.ynf;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Objects;
import javax.annotation.CheckForNull;

@Beta
@GwtIncompatible
@ynf
/* loaded from: classes6.dex */
public final class FileBackedOutputStream extends OutputStream {

    /* renamed from: e */
    public final int f34907e;

    /* renamed from: f */
    public final boolean f34908f;

    /* renamed from: g */
    public final ByteSource f34909g;

    /* renamed from: h */
    @CheckForNull
    public final File f34910h;

    /* renamed from: i */
    @GuardedBy("this")
    public OutputStream f34911i;

    /* renamed from: j */
    @CheckForNull
    @GuardedBy("this")
    public C6224c f34912j;

    /* renamed from: k */
    @CheckForNull
    @GuardedBy("this")
    public File f34913k;

    /* renamed from: com.google.common.io.FileBackedOutputStream$a */
    /* loaded from: classes6.dex */
    public class C6222a extends ByteSource {
        public C6222a() {
        }

        public void finalize() {
            try {
                FileBackedOutputStream.this.reset();
            } catch (Throwable th) {
                th.printStackTrace(System.err);
            }
        }

        @Override // com.google.common.io.ByteSource
        public InputStream openStream() throws IOException {
            return FileBackedOutputStream.this.m27217w();
        }
    }

    /* renamed from: com.google.common.io.FileBackedOutputStream$b */
    /* loaded from: classes6.dex */
    public class C6223b extends ByteSource {
        public C6223b() {
        }

        @Override // com.google.common.io.ByteSource
        public InputStream openStream() throws IOException {
            return FileBackedOutputStream.this.m27217w();
        }
    }

    /* renamed from: com.google.common.io.FileBackedOutputStream$c */
    /* loaded from: classes6.dex */
    public static class C6224c extends ByteArrayOutputStream {
        public C6224c() {
        }

        /* renamed from: f */
        public byte[] m27218f() {
            return ((ByteArrayOutputStream) this).buf;
        }

        public int getCount() {
            return ((ByteArrayOutputStream) this).count;
        }

        public /* synthetic */ C6224c(C6222a c6222a) {
            this();
        }
    }

    public FileBackedOutputStream(int i) {
        this(i, false);
    }

    @GuardedBy("this")
    /* renamed from: H */
    public final void m27215H(int i) throws IOException {
        C6224c c6224c = this.f34912j;
        if (c6224c == null || c6224c.getCount() + i <= this.f34907e) {
            return;
        }
        File createTempFile = File.createTempFile("FileBackedOutputStream", null, this.f34910h);
        if (this.f34908f) {
            createTempFile.deleteOnExit();
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
            fileOutputStream.write(this.f34912j.m27218f(), 0, this.f34912j.getCount());
            fileOutputStream.flush();
            this.f34911i = fileOutputStream;
            this.f34913k = createTempFile;
            this.f34912j = null;
        } catch (IOException e) {
            createTempFile.delete();
            throw e;
        }
    }

    public ByteSource asByteSource() {
        return this.f34909g;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        this.f34911i.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public synchronized void flush() throws IOException {
        this.f34911i.flush();
    }

    @VisibleForTesting
    @CheckForNull
    /* renamed from: j */
    public synchronized File m27216j() {
        return this.f34913k;
    }

    public synchronized void reset() throws IOException {
        C6222a c6222a = null;
        try {
            close();
            C6224c c6224c = this.f34912j;
            if (c6224c == null) {
                this.f34912j = new C6224c(c6222a);
            } else {
                c6224c.reset();
            }
            this.f34911i = this.f34912j;
            File file = this.f34913k;
            if (file != null) {
                this.f34913k = null;
                if (!file.delete()) {
                    String valueOf = String.valueOf(file);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 18);
                    sb.append("Could not delete: ");
                    sb.append(valueOf);
                    throw new IOException(sb.toString());
                }
            }
        } catch (Throwable th) {
            if (this.f34912j == null) {
                this.f34912j = new C6224c(c6222a);
            } else {
                this.f34912j.reset();
            }
            this.f34911i = this.f34912j;
            File file2 = this.f34913k;
            if (file2 != null) {
                this.f34913k = null;
                if (!file2.delete()) {
                    String valueOf2 = String.valueOf(file2);
                    StringBuilder sb2 = new StringBuilder(valueOf2.length() + 18);
                    sb2.append("Could not delete: ");
                    sb2.append(valueOf2);
                    throw new IOException(sb2.toString());
                }
            }
            throw th;
        }
    }

    /* renamed from: w */
    public final synchronized InputStream m27217w() throws IOException {
        if (this.f34913k != null) {
            return new FileInputStream(this.f34913k);
        }
        Objects.requireNonNull(this.f34912j);
        return new ByteArrayInputStream(this.f34912j.m27218f(), 0, this.f34912j.getCount());
    }

    @Override // java.io.OutputStream
    public synchronized void write(int i) throws IOException {
        m27215H(1);
        this.f34911i.write(i);
    }

    public FileBackedOutputStream(int i, boolean z) {
        this(i, z, null);
    }

    public FileBackedOutputStream(int i, boolean z, @CheckForNull File file) {
        this.f34907e = i;
        this.f34908f = z;
        this.f34910h = file;
        C6224c c6224c = new C6224c(null);
        this.f34912j = c6224c;
        this.f34911i = c6224c;
        if (z) {
            this.f34909g = new C6222a();
        } else {
            this.f34909g = new C6223b();
        }
    }

    @Override // java.io.OutputStream
    public synchronized void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public synchronized void write(byte[] bArr, int i, int i2) throws IOException {
        m27215H(i2);
        this.f34911i.write(bArr, i, i2);
    }
}
