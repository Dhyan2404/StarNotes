package org.apache.commons.compress.archivers.zip;

import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Path;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.commons.compress.parallel.FileBasedScatterGatherBackingStore;
import org.apache.commons.compress.parallel.ScatterGatherBackingStore;
import org.apache.commons.compress.utils.BoundedInputStream;

/* loaded from: classes12.dex */
public class ScatterZipOutputStream implements Closeable {

    /* renamed from: f */
    public final ScatterGatherBackingStore f105819f;

    /* renamed from: g */
    public final StreamCompressor f105820g;

    /* renamed from: i */
    public ZipEntryWriter f105822i;

    /* renamed from: e */
    public final Queue<C18853a> f105818e = new ConcurrentLinkedQueue();

    /* renamed from: h */
    public final AtomicBoolean f105821h = new AtomicBoolean();

    /* loaded from: classes12.dex */
    public static class ZipEntryWriter implements Closeable {

        /* renamed from: e */
        public final Iterator<C18853a> f105823e;

        /* renamed from: f */
        public final InputStream f105824f;

        public ZipEntryWriter(ScatterZipOutputStream scatterZipOutputStream) throws IOException {
            scatterZipOutputStream.f105819f.closeForWriting();
            this.f105823e = scatterZipOutputStream.f105818e.iterator();
            this.f105824f = scatterZipOutputStream.f105819f.getInputStream();
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            InputStream inputStream = this.f105824f;
            if (inputStream != null) {
                inputStream.close();
            }
        }

        public void writeNextZipEntry(ZipArchiveOutputStream zipArchiveOutputStream) throws IOException {
            C18853a next = this.f105823e.next();
            BoundedInputStream boundedInputStream = new BoundedInputStream(this.f105824f, next.f105827c);
            try {
                zipArchiveOutputStream.addRawArchiveEntry(next.m66412a(), boundedInputStream);
                boundedInputStream.close();
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        boundedInputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        }
    }

    /* renamed from: org.apache.commons.compress.archivers.zip.ScatterZipOutputStream$a */
    /* loaded from: classes12.dex */
    public static class C18853a {

        /* renamed from: a */
        public final ZipArchiveEntryRequest f105825a;

        /* renamed from: b */
        public final long f105826b;

        /* renamed from: c */
        public final long f105827c;

        /* renamed from: d */
        public final long f105828d;

        public C18853a(ZipArchiveEntryRequest zipArchiveEntryRequest, long j, long j2, long j3) {
            this.f105825a = zipArchiveEntryRequest;
            this.f105826b = j;
            this.f105827c = j2;
            this.f105828d = j3;
        }

        /* renamed from: a */
        public ZipArchiveEntry m66412a() {
            ZipArchiveEntry m66440a = this.f105825a.m66440a();
            m66440a.setCompressedSize(this.f105827c);
            m66440a.setSize(this.f105828d);
            m66440a.setCrc(this.f105826b);
            m66440a.setMethod(this.f105825a.getMethod());
            return m66440a;
        }
    }

    public ScatterZipOutputStream(ScatterGatherBackingStore scatterGatherBackingStore, StreamCompressor streamCompressor) {
        this.f105819f = scatterGatherBackingStore;
        this.f105820g = streamCompressor;
    }

    public static ScatterZipOutputStream fileBased(File file) throws FileNotFoundException {
        return pathBased(file.toPath(), -1);
    }

    public static ScatterZipOutputStream pathBased(Path path) throws FileNotFoundException {
        return pathBased(path, -1);
    }

    public void addArchiveEntry(ZipArchiveEntryRequest zipArchiveEntryRequest) throws IOException {
        InputStream payloadStream = zipArchiveEntryRequest.getPayloadStream();
        try {
            this.f105820g.deflate(payloadStream, zipArchiveEntryRequest.getMethod());
            if (payloadStream != null) {
                payloadStream.close();
            }
            this.f105818e.add(new C18853a(zipArchiveEntryRequest, this.f105820g.getCrc32(), this.f105820g.getBytesWrittenForLastEntry(), this.f105820g.getBytesRead()));
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (payloadStream != null) {
                    try {
                        payloadStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f105821h.compareAndSet(false, true)) {
            try {
                ZipEntryWriter zipEntryWriter = this.f105822i;
                if (zipEntryWriter != null) {
                    zipEntryWriter.close();
                }
                this.f105819f.close();
            } finally {
                this.f105820g.close();
            }
        }
    }

    public void writeTo(ZipArchiveOutputStream zipArchiveOutputStream) throws IOException {
        this.f105819f.closeForWriting();
        InputStream inputStream = this.f105819f.getInputStream();
        try {
            for (C18853a c18853a : this.f105818e) {
                BoundedInputStream boundedInputStream = new BoundedInputStream(inputStream, c18853a.f105827c);
                try {
                    zipArchiveOutputStream.addRawArchiveEntry(c18853a.m66412a(), boundedInputStream);
                    boundedInputStream.close();
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        try {
                            boundedInputStream.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                        throw th2;
                    }
                }
            }
            if (inputStream != null) {
                inputStream.close();
            }
        } catch (Throwable th4) {
            try {
                throw th4;
            } catch (Throwable th5) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th6) {
                        th4.addSuppressed(th6);
                    }
                }
                throw th5;
            }
        }
    }

    public ZipEntryWriter zipEntryWriter() throws IOException {
        if (this.f105822i == null) {
            this.f105822i = new ZipEntryWriter(this);
        }
        return this.f105822i;
    }

    public static ScatterZipOutputStream fileBased(File file, int i) throws FileNotFoundException {
        return pathBased(file.toPath(), i);
    }

    public static ScatterZipOutputStream pathBased(Path path, int i) throws FileNotFoundException {
        FileBasedScatterGatherBackingStore fileBasedScatterGatherBackingStore = new FileBasedScatterGatherBackingStore(path);
        return new ScatterZipOutputStream(fileBasedScatterGatherBackingStore, StreamCompressor.create(i, fileBasedScatterGatherBackingStore));
    }
}
