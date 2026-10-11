package org.apache.commons.compress.archivers.zip;

import com.onyx.android.sdk.replicator.note.proto.doc.shape.ShapeDocumentUtils;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.util.Objects;
import org.apache.commons.compress.utils.FileNameUtils;

/* renamed from: org.apache.commons.compress.archivers.zip.a */
/* loaded from: classes12.dex */
public class C18874a extends OutputStream {

    /* renamed from: l */
    public static final long f105945l = 65536;

    /* renamed from: m */
    public static final long f105946m = 4294967295L;

    /* renamed from: e */
    public OutputStream f105947e;

    /* renamed from: f */
    public Path f105948f;

    /* renamed from: g */
    public final long f105949g;

    /* renamed from: h */
    public int f105950h;

    /* renamed from: i */
    public long f105951i;

    /* renamed from: j */
    public boolean f105952j;

    /* renamed from: k */
    public final byte[] f105953k;

    public C18874a(File file, long j) throws IllegalArgumentException, IOException {
        this(file.toPath(), j);
    }

    /* renamed from: H */
    public final void m66575H() throws IOException {
        if (this.f105950h == 0) {
            this.f105947e.close();
            Files.move(this.f105948f, m66578f(1), StandardCopyOption.ATOMIC_MOVE);
        }
        Path m66578f = m66578f(null);
        this.f105947e.close();
        this.f105947e = Files.newOutputStream(m66578f, new OpenOption[0]);
        this.f105951i = 0L;
        this.f105948f = m66578f;
        this.f105950h++;
    }

    /* renamed from: I */
    public void m66576I(long j) throws IllegalArgumentException, IOException {
        long j2 = this.f105949g;
        if (j > j2) {
            throw new IllegalArgumentException("The unsplittable content size is bigger than the split segment size");
        }
        if (j2 - this.f105951i < j) {
            m66575H();
        }
    }

    /* renamed from: M */
    public final void m66577M() throws IOException {
        this.f105947e.write(ZipArchiveOutputStream.DD_SIG);
        this.f105951i += r1.length;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f105952j) {
            return;
        }
        finish();
    }

    /* renamed from: f */
    public final Path m66578f(Integer num) throws IOException {
        String str;
        int intValue = num == null ? this.f105950h + 2 : num.intValue();
        String baseName = FileNameUtils.getBaseName(this.f105948f);
        if (intValue <= 9) {
            str = ".z0" + intValue;
        } else {
            str = ".z" + intValue;
        }
        Path parent = this.f105948f.getParent();
        String path = Objects.nonNull(parent) ? parent.toAbsolutePath().toString() : ".";
        Path path2 = this.f105948f.getFileSystem().getPath(path, baseName + str);
        if (!Files.exists(path2, new LinkOption[0])) {
            return path2;
        }
        throw new IOException("split zip segment " + baseName + str + " already exists");
    }

    public final void finish() throws IOException {
        if (this.f105952j) {
            throw new IOException("This archive has already been finished");
        }
        String baseName = FileNameUtils.getBaseName(this.f105948f);
        this.f105947e.close();
        Path path = this.f105948f;
        Files.move(path, path.resolveSibling(baseName + ShapeDocumentUtils.SHAPE_FILE_END), StandardCopyOption.ATOMIC_MOVE);
        this.f105952j = true;
    }

    /* renamed from: j */
    public long m66579j() {
        return this.f105951i;
    }

    /* renamed from: w */
    public int m66580w() {
        return this.f105950h;
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        byte[] bArr = this.f105953k;
        bArr[0] = (byte) (i & 255);
        write(bArr);
    }

    public C18874a(Path path, long j) throws IllegalArgumentException, IOException {
        this.f105953k = new byte[1];
        if (j >= 65536 && j <= 4294967295L) {
            this.f105948f = path;
            this.f105949g = j;
            this.f105947e = Files.newOutputStream(path, new OpenOption[0]);
            m66577M();
            return;
        }
        throw new IllegalArgumentException("zip split segment size should between 64K and 4,294,967,295");
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        if (i2 <= 0) {
            return;
        }
        long j = this.f105951i;
        long j2 = this.f105949g;
        if (j >= j2) {
            m66575H();
            write(bArr, i, i2);
            return;
        }
        long j3 = i2;
        if (j + j3 > j2) {
            int i3 = ((int) j2) - ((int) j);
            write(bArr, i, i3);
            m66575H();
            write(bArr, i + i3, i2 - i3);
            return;
        }
        this.f105947e.write(bArr, i, i2);
        this.f105951i += j3;
    }
}
