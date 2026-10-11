package org.apache.commons.compress.parallel;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UncheckedIOException;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;

/* loaded from: classes12.dex */
public class FileBasedScatterGatherBackingStore implements ScatterGatherBackingStore {

    /* renamed from: e */
    public final Path f107295e;

    /* renamed from: f */
    public final OutputStream f107296f;

    /* renamed from: g */
    public boolean f107297g;

    public FileBasedScatterGatherBackingStore(File file) throws FileNotFoundException {
        this(file.toPath());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            closeForWriting();
        } finally {
            Files.deleteIfExists(this.f107295e);
        }
    }

    @Override // org.apache.commons.compress.parallel.ScatterGatherBackingStore
    public void closeForWriting() throws IOException {
        if (this.f107297g) {
            return;
        }
        this.f107296f.close();
        this.f107297g = true;
    }

    @Override // org.apache.commons.compress.parallel.ScatterGatherBackingStore
    public InputStream getInputStream() throws IOException {
        return Files.newInputStream(this.f107295e, new OpenOption[0]);
    }

    @Override // org.apache.commons.compress.parallel.ScatterGatherBackingStore
    public void writeOut(byte[] bArr, int i, int i2) throws IOException {
        this.f107296f.write(bArr, i, i2);
    }

    public FileBasedScatterGatherBackingStore(Path path) throws FileNotFoundException {
        this.f107295e = path;
        try {
            this.f107296f = Files.newOutputStream(path, new OpenOption[0]);
        } catch (FileNotFoundException e) {
            throw e;
        } catch (IOException e2) {
            throw new UncheckedIOException(e2);
        }
    }
}
