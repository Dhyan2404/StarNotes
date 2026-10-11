package com.google.android.exoplayer2.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes5.dex */
public final class AtomicFile {

    /* renamed from: c */
    public static final String f28263c = "AtomicFile";

    /* renamed from: a */
    public final File f28264a;

    /* renamed from: b */
    public final File f28265b;

    /* renamed from: com.google.android.exoplayer2.util.AtomicFile$a */
    /* loaded from: classes5.dex */
    public static final class C5008a extends OutputStream {

        /* renamed from: e */
        public final FileOutputStream f28266e;

        /* renamed from: f */
        public boolean f28267f = false;

        public C5008a(File file) throws FileNotFoundException {
            this.f28266e = new FileOutputStream(file);
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f28267f) {
                return;
            }
            this.f28267f = true;
            flush();
            try {
                this.f28266e.getFD().sync();
            } catch (IOException e) {
                Log.m21494w("AtomicFile", "Failed to sync file descriptor:", e);
            }
            this.f28266e.close();
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() throws IOException {
            this.f28266e.flush();
        }

        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
            this.f28266e.write(i);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) throws IOException {
            this.f28266e.write(bArr);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) throws IOException {
            this.f28266e.write(bArr, i, i2);
        }
    }

    public AtomicFile(File file) {
        this.f28264a = file;
        this.f28265b = new File(String.valueOf(file.getPath()).concat(".bak"));
    }

    /* renamed from: a */
    public final void m21417a() {
        if (this.f28265b.exists()) {
            this.f28264a.delete();
            this.f28265b.renameTo(this.f28264a);
        }
    }

    public void delete() {
        this.f28264a.delete();
        this.f28265b.delete();
    }

    public void endWrite(OutputStream outputStream) throws IOException {
        outputStream.close();
        this.f28265b.delete();
    }

    public boolean exists() {
        return this.f28264a.exists() || this.f28265b.exists();
    }

    public InputStream openRead() throws FileNotFoundException {
        m21417a();
        return new FileInputStream(this.f28264a);
    }

    public OutputStream startWrite() throws IOException {
        if (this.f28264a.exists()) {
            if (this.f28265b.exists()) {
                this.f28264a.delete();
            } else if (!this.f28264a.renameTo(this.f28265b)) {
                String valueOf = String.valueOf(this.f28264a);
                String valueOf2 = String.valueOf(this.f28265b);
                StringBuilder sb = new StringBuilder(valueOf.length() + 37 + valueOf2.length());
                sb.append("Couldn't rename file ");
                sb.append(valueOf);
                sb.append(" to backup file ");
                sb.append(valueOf2);
                Log.m21493w("AtomicFile", sb.toString());
            }
        }
        try {
            return new C5008a(this.f28264a);
        } catch (FileNotFoundException e) {
            File parentFile = this.f28264a.getParentFile();
            if (parentFile == null || !parentFile.mkdirs()) {
                String valueOf3 = String.valueOf(this.f28264a);
                StringBuilder sb2 = new StringBuilder(valueOf3.length() + 16);
                sb2.append("Couldn't create ");
                sb2.append(valueOf3);
                throw new IOException(sb2.toString(), e);
            }
            try {
                return new C5008a(this.f28264a);
            } catch (FileNotFoundException e2) {
                String valueOf4 = String.valueOf(this.f28264a);
                StringBuilder sb3 = new StringBuilder(valueOf4.length() + 16);
                sb3.append("Couldn't create ");
                sb3.append(valueOf4);
                throw new IOException(sb3.toString(), e2);
            }
        }
    }
}
