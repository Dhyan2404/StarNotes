package onyx.org.apache.commons.io.output;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import onyx.org.apache.commons.io.build.AbstractStreamBuilder;

/* loaded from: classes11.dex */
public class ChunkedOutputStream extends FilterOutputStream {

    /* renamed from: e */
    public final int f104489e;

    /* loaded from: classes11.dex */
    public static class Builder extends AbstractStreamBuilder<ChunkedOutputStream, Builder> {
        @Override // onyx.org.apache.commons.io.function.IOSupplier
        public ChunkedOutputStream get() throws IOException {
            return new ChunkedOutputStream(getOutputStream(), getBufferSize());
        }
    }

    @Deprecated
    public ChunkedOutputStream(OutputStream outputStream) {
        this(outputStream, 8192);
    }

    public static Builder builder() {
        return new Builder();
    }

    /* renamed from: f */
    public int m65610f() {
        return this.f104489e;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        while (i2 > 0) {
            int min = Math.min(i2, this.f104489e);
            ((FilterOutputStream) this).out.write(bArr, i, min);
            i2 -= min;
            i += min;
        }
    }

    @Deprecated
    public ChunkedOutputStream(OutputStream outputStream, int i) {
        super(outputStream);
        if (i > 0) {
            this.f104489e = i;
            return;
        }
        throw new IllegalArgumentException("chunkSize <= 0");
    }
}
