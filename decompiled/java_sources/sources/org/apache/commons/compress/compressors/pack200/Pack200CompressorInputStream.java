package org.apache.commons.compress.compressors.pack200;

import androidx.exifinterface.media.ExifInterface;
import com.alibaba.fastjson2.JSONB;
import com.sunia.HTREnginev2.a0n;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.UncheckedIOException;
import java.util.Map;
import java.util.jar.JarOutputStream;
import org.apache.commons.compress.compressors.CompressorInputStream;
import org.apache.commons.compress.java.util.jar.Pack200;
import org.apache.commons.compress.utils.CloseShieldFilterInputStream;
import org.apache.commons.compress.utils.IOUtils;

/* loaded from: classes12.dex */
public class Pack200CompressorInputStream extends CompressorInputStream {

    /* renamed from: h */
    public static final byte[] f106315h;

    /* renamed from: i */
    public static final int f106316i;

    /* renamed from: f */
    public final InputStream f106317f;

    /* renamed from: g */
    public final a0n f106318g;

    static {
        byte[] bArr = {ExifInterface.f7141A1, -2, JSONB.Constants.BC_INT64_BYTE_ZERO, 13};
        f106315h = bArr;
        f106316i = bArr.length;
    }

    public Pack200CompressorInputStream(InputStream inputStream) throws IOException {
        this(inputStream, Pack200Strategy.IN_MEMORY);
    }

    public static boolean matches(byte[] bArr, int i) {
        if (i < f106316i) {
            return false;
        }
        for (int i2 = 0; i2 < f106316i; i2++) {
            if (bArr[i2] != f106315h[i2]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f106318g.m52925f().available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            this.f106318g.m52927w();
        } finally {
            InputStream inputStream = this.f106317f;
            if (inputStream != null) {
                inputStream.close();
            }
        }
    }

    @Override // java.io.InputStream
    public synchronized void mark(int i) {
        try {
            this.f106318g.m52925f().mark(i);
        } catch (IOException e) {
            throw new UncheckedIOException(e);
        }
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        try {
            return this.f106318g.m52925f().markSupported();
        } catch (IOException unused) {
            return false;
        }
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        return this.f106318g.m52925f().read();
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        this.f106318g.m52925f().reset();
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        return IOUtils.skip(this.f106318g.m52925f(), j);
    }

    public Pack200CompressorInputStream(InputStream inputStream, Pack200Strategy pack200Strategy) throws IOException {
        this(inputStream, null, pack200Strategy, null);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return this.f106318g.m52925f().read(bArr);
    }

    public Pack200CompressorInputStream(InputStream inputStream, Map<String, String> map) throws IOException {
        this(inputStream, Pack200Strategy.IN_MEMORY, map);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        return this.f106318g.m52925f().read(bArr, i, i2);
    }

    public Pack200CompressorInputStream(InputStream inputStream, Pack200Strategy pack200Strategy, Map<String, String> map) throws IOException {
        this(inputStream, null, pack200Strategy, map);
    }

    public Pack200CompressorInputStream(File file) throws IOException {
        this(file, Pack200Strategy.IN_MEMORY);
    }

    public Pack200CompressorInputStream(File file, Pack200Strategy pack200Strategy) throws IOException {
        this(null, file, pack200Strategy, null);
    }

    public Pack200CompressorInputStream(File file, Map<String, String> map) throws IOException {
        this(file, Pack200Strategy.IN_MEMORY, map);
    }

    public Pack200CompressorInputStream(File file, Pack200Strategy pack200Strategy, Map<String, String> map) throws IOException {
        this(null, file, pack200Strategy, map);
    }

    public Pack200CompressorInputStream(InputStream inputStream, File file, Pack200Strategy pack200Strategy, Map<String, String> map) throws IOException {
        this.f106317f = inputStream;
        a0n newStreamBridge = pack200Strategy.newStreamBridge();
        this.f106318g = newStreamBridge;
        JarOutputStream jarOutputStream = new JarOutputStream(newStreamBridge);
        try {
            Pack200.Unpacker newUnpacker = Pack200.newUnpacker();
            if (map != null) {
                newUnpacker.properties().putAll(map);
            }
            if (file == null) {
                CloseShieldFilterInputStream closeShieldFilterInputStream = new CloseShieldFilterInputStream(inputStream);
                try {
                    newUnpacker.unpack(closeShieldFilterInputStream, jarOutputStream);
                    closeShieldFilterInputStream.close();
                } finally {
                }
            } else {
                newUnpacker.unpack(file, jarOutputStream);
            }
            jarOutputStream.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    jarOutputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }
}
