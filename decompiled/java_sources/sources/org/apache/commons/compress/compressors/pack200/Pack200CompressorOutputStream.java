package org.apache.commons.compress.compressors.pack200;

import com.sunia.HTREnginev2.a0n;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Map;
import java.util.jar.JarInputStream;
import org.apache.commons.compress.compressors.CompressorOutputStream;
import org.apache.commons.compress.java.util.jar.Pack200;

/* loaded from: classes12.dex */
public class Pack200CompressorOutputStream extends CompressorOutputStream {

    /* renamed from: e */
    public boolean f106319e;

    /* renamed from: f */
    public final OutputStream f106320f;

    /* renamed from: g */
    public final a0n f106321g;

    /* renamed from: h */
    public final Map<String, String> f106322h;

    public Pack200CompressorOutputStream(OutputStream outputStream) throws IOException {
        this(outputStream, Pack200Strategy.IN_MEMORY);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            finish();
            try {
                this.f106321g.m52927w();
            } finally {
            }
        } catch (Throwable th) {
            try {
                this.f106321g.m52927w();
                throw th;
            } finally {
            }
        }
    }

    public void finish() throws IOException {
        if (this.f106319e) {
            return;
        }
        this.f106319e = true;
        Pack200.Packer newPacker = Pack200.newPacker();
        if (this.f106322h != null) {
            newPacker.properties().putAll(this.f106322h);
        }
        JarInputStream jarInputStream = new JarInputStream(this.f106321g.m52925f());
        try {
            newPacker.pack(jarInputStream, this.f106320f);
            jarInputStream.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    jarInputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        this.f106321g.write(i);
    }

    public Pack200CompressorOutputStream(OutputStream outputStream, Pack200Strategy pack200Strategy) throws IOException {
        this(outputStream, pack200Strategy, null);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        this.f106321g.write(bArr);
    }

    public Pack200CompressorOutputStream(OutputStream outputStream, Map<String, String> map) throws IOException {
        this(outputStream, Pack200Strategy.IN_MEMORY, map);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.f106321g.write(bArr, i, i2);
    }

    public Pack200CompressorOutputStream(OutputStream outputStream, Pack200Strategy pack200Strategy, Map<String, String> map) throws IOException {
        this.f106320f = outputStream;
        this.f106321g = pack200Strategy.newStreamBridge();
        this.f106322h = map;
    }
}
