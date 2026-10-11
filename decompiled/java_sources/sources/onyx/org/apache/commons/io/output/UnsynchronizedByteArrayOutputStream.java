package onyx.org.apache.commons.io.output;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import onyx.org.apache.commons.io.build.AbstractStreamBuilder;
import onyx.org.apache.commons.io.function.IOSupplier;
import onyx.org.apache.commons.io.function.Uncheck;
import onyx.org.apache.commons.io.input.UnsynchronizedByteArrayInputStream;
import onyx.org.apache.commons.io.output.AbstractByteArrayOutputStream;
import onyx.org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;

/* loaded from: classes11.dex */
public final class UnsynchronizedByteArrayOutputStream extends AbstractByteArrayOutputStream {

    /* loaded from: classes11.dex */
    public static class Builder extends AbstractStreamBuilder<UnsynchronizedByteArrayOutputStream, Builder> {
        @Override // onyx.org.apache.commons.io.function.IOSupplier
        public UnsynchronizedByteArrayOutputStream get() {
            return new UnsynchronizedByteArrayOutputStream(getBufferSize());
        }
    }

    @Deprecated
    public UnsynchronizedByteArrayOutputStream() {
        this(1024);
    }

    /* renamed from: H */
    public static /* synthetic */ UnsynchronizedByteArrayInputStream m65672H(final byte[] bArr, final int i, final int i2) {
        return (UnsynchronizedByteArrayInputStream) Uncheck.get(new IOSupplier() { // from class: com.sunia.HTREnginev2.axn
            @Override // onyx.org.apache.commons.io.function.IOSupplier
            public final Object get() {
                UnsynchronizedByteArrayInputStream m65675w;
                m65675w = UnsynchronizedByteArrayOutputStream.m65675w(bArr, i, i2);
                return m65675w;
            }
        });
    }

    public static Builder builder() {
        return new Builder();
    }

    public static InputStream toBufferedInputStream(InputStream inputStream) throws IOException {
        return toBufferedInputStream(inputStream, 1024);
    }

    /* renamed from: w */
    public static /* synthetic */ UnsynchronizedByteArrayInputStream m65675w(byte[] bArr, int i, int i2) throws IOException {
        return UnsynchronizedByteArrayInputStream.builder().setByteArray(bArr).setOffset(i).setLength(i2).get();
    }

    @Override // onyx.org.apache.commons.io.output.AbstractByteArrayOutputStream
    public void reset() {
        resetImpl();
    }

    @Override // onyx.org.apache.commons.io.output.AbstractByteArrayOutputStream
    public int size() {
        return this.count;
    }

    @Override // onyx.org.apache.commons.io.output.AbstractByteArrayOutputStream
    public byte[] toByteArray() {
        return toByteArrayImpl();
    }

    @Override // onyx.org.apache.commons.io.output.AbstractByteArrayOutputStream
    public InputStream toInputStream() {
        return toInputStream(new AbstractByteArrayOutputStream.InputStreamConstructor() { // from class: com.sunia.HTREnginev2.zwn
            @Override // onyx.org.apache.commons.io.output.AbstractByteArrayOutputStream.InputStreamConstructor
            public final InputStream construct(byte[] bArr, int i, int i2) {
                UnsynchronizedByteArrayInputStream m65672H;
                m65672H = UnsynchronizedByteArrayOutputStream.m65672H(bArr, i, i2);
                return m65672H;
            }
        });
    }

    @Override // onyx.org.apache.commons.io.output.AbstractByteArrayOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        int i3;
        if (i < 0 || i > bArr.length || i2 < 0 || (i3 = i + i2) > bArr.length || i3 < 0) {
            throw new IndexOutOfBoundsException(String.format("offset=%,d, length=%,d", Integer.valueOf(i), Integer.valueOf(i2)));
        }
        if (i2 == 0) {
            return;
        }
        writeImpl(bArr, i, i2);
    }

    @Override // onyx.org.apache.commons.io.output.AbstractByteArrayOutputStream
    public void writeTo(OutputStream outputStream) throws IOException {
        writeToImpl(outputStream);
    }

    @Deprecated
    public UnsynchronizedByteArrayOutputStream(int i) {
        if (i >= 0) {
            needNewBuffer(i);
            return;
        }
        throw new IllegalArgumentException("Negative initial size: " + i);
    }

    public static InputStream toBufferedInputStream(InputStream inputStream, int i) throws IOException {
        UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = builder().setBufferSize(i).get();
        try {
            unsynchronizedByteArrayOutputStream.write(inputStream);
            InputStream inputStream2 = unsynchronizedByteArrayOutputStream.toInputStream();
            unsynchronizedByteArrayOutputStream.close();
            return inputStream2;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (unsynchronizedByteArrayOutputStream != null) {
                    try {
                        unsynchronizedByteArrayOutputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    @Override // onyx.org.apache.commons.io.output.AbstractByteArrayOutputStream
    public int write(InputStream inputStream) throws IOException {
        return writeImpl(inputStream);
    }

    @Override // onyx.org.apache.commons.io.output.AbstractByteArrayOutputStream, java.io.OutputStream
    public void write(int i) {
        writeImpl(i);
    }
}
