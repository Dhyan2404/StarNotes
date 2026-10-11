package onyx.org.apache.commons.io.output;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.SequenceInputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import onyx.org.apache.commons.io.IOUtils;
import onyx.org.apache.commons.io.input.ClosedInputStream;

/* loaded from: classes11.dex */
public abstract class AbstractByteArrayOutputStream extends OutputStream {

    /* renamed from: j */
    public static final int f104479j = 1024;
    protected int count;

    /* renamed from: f */
    public int f104481f;

    /* renamed from: g */
    public int f104482g;

    /* renamed from: h */
    public byte[] f104483h;

    /* renamed from: e */
    public final List<byte[]> f104480e = new ArrayList();

    /* renamed from: i */
    public boolean f104484i = true;

    @FunctionalInterface
    /* loaded from: classes11.dex */
    public interface InputStreamConstructor<T extends InputStream> {
        T construct(byte[] bArr, int i, int i2);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    public void needNewBuffer(int i) {
        if (this.f104481f < this.f104480e.size() - 1) {
            this.f104482g += this.f104483h.length;
            int i2 = this.f104481f + 1;
            this.f104481f = i2;
            this.f104483h = this.f104480e.get(i2);
            return;
        }
        byte[] bArr = this.f104483h;
        if (bArr == null) {
            this.f104482g = 0;
        } else {
            i = Math.max(bArr.length << 1, i - this.f104482g);
            this.f104482g += this.f104483h.length;
        }
        this.f104481f++;
        byte[] byteArray = IOUtils.byteArray(i);
        this.f104483h = byteArray;
        this.f104480e.add(byteArray);
    }

    public abstract void reset();

    public void resetImpl() {
        this.count = 0;
        this.f104482g = 0;
        this.f104481f = 0;
        if (this.f104484i) {
            this.f104483h = this.f104480e.get(0);
            return;
        }
        this.f104483h = null;
        int length = this.f104480e.get(0).length;
        this.f104480e.clear();
        needNewBuffer(length);
        this.f104484i = true;
    }

    public abstract int size();

    public abstract byte[] toByteArray();

    public byte[] toByteArrayImpl() {
        int i = this.count;
        if (i == 0) {
            return IOUtils.EMPTY_BYTE_ARRAY;
        }
        byte[] byteArray = IOUtils.byteArray(i);
        int i2 = 0;
        for (byte[] bArr : this.f104480e) {
            int min = Math.min(bArr.length, i);
            System.arraycopy(bArr, 0, byteArray, i2, min);
            i2 += min;
            i -= min;
            if (i == 0) {
                break;
            }
        }
        return byteArray;
    }

    public abstract InputStream toInputStream();

    public <T extends InputStream> InputStream toInputStream(InputStreamConstructor<T> inputStreamConstructor) {
        int i = this.count;
        if (i == 0) {
            return ClosedInputStream.INSTANCE;
        }
        ArrayList arrayList = new ArrayList(this.f104480e.size());
        for (byte[] bArr : this.f104480e) {
            int min = Math.min(bArr.length, i);
            arrayList.add(inputStreamConstructor.construct(bArr, 0, min));
            i -= min;
            if (i == 0) {
                break;
            }
        }
        this.f104484i = false;
        return new SequenceInputStream(Collections.enumeration(arrayList));
    }

    @Deprecated
    public String toString() {
        return new String(toByteArray(), Charset.defaultCharset());
    }

    public abstract int write(InputStream inputStream) throws IOException;

    @Override // java.io.OutputStream
    public abstract void write(int i);

    @Override // java.io.OutputStream
    public abstract void write(byte[] bArr, int i, int i2);

    public void writeImpl(byte[] bArr, int i, int i2) {
        int i3 = this.count;
        int i4 = i3 + i2;
        int i5 = i3 - this.f104482g;
        int i6 = i2;
        while (i6 > 0) {
            int min = Math.min(i6, this.f104483h.length - i5);
            System.arraycopy(bArr, (i + i2) - i6, this.f104483h, i5, min);
            i6 -= min;
            if (i6 > 0) {
                needNewBuffer(i4);
                i5 = 0;
            }
        }
        this.count = i4;
    }

    public abstract void writeTo(OutputStream outputStream) throws IOException;

    public void writeToImpl(OutputStream outputStream) throws IOException {
        int i = this.count;
        for (byte[] bArr : this.f104480e) {
            int min = Math.min(bArr.length, i);
            outputStream.write(bArr, 0, min);
            i -= min;
            if (i == 0) {
                return;
            }
        }
    }

    public String toString(Charset charset) {
        return new String(toByteArray(), charset);
    }

    public String toString(String str) throws UnsupportedEncodingException {
        return new String(toByteArray(), str);
    }

    public int writeImpl(InputStream inputStream) throws IOException {
        int i = this.count - this.f104482g;
        byte[] bArr = this.f104483h;
        int read = inputStream.read(bArr, i, bArr.length - i);
        int i2 = 0;
        while (read != -1) {
            i2 += read;
            i += read;
            this.count += read;
            byte[] bArr2 = this.f104483h;
            if (i == bArr2.length) {
                needNewBuffer(bArr2.length);
                i = 0;
            }
            byte[] bArr3 = this.f104483h;
            read = inputStream.read(bArr3, i, bArr3.length - i);
        }
        return i2;
    }

    public void writeImpl(int i) {
        int i2 = this.count;
        int i3 = i2 - this.f104482g;
        if (i3 == this.f104483h.length) {
            needNewBuffer(i2 + 1);
            i3 = 0;
        }
        this.f104483h[i3] = (byte) i;
        this.count++;
    }
}
