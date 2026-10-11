package onyx.org.apache.commons.io.output;

import java.io.IOException;
import java.io.OutputStream;
import onyx.org.apache.commons.io.function.IOConsumer;
import onyx.org.apache.commons.io.function.IOFunction;
import onyx.org.apache.commons.io.output.ThresholdingOutputStream;

/* loaded from: classes11.dex */
public class ThresholdingOutputStream extends OutputStream {

    /* renamed from: j */
    public static final IOFunction<ThresholdingOutputStream, OutputStream> f104516j = new IOFunction() { // from class: com.sunia.HTREnginev2.lhn
        @Override // onyx.org.apache.commons.io.function.IOFunction
        public final Object apply(Object obj) {
            OutputStream m65640j;
            m65640j = ThresholdingOutputStream.m65640j((ThresholdingOutputStream) obj);
            return m65640j;
        }
    };

    /* renamed from: e */
    public final int f104517e;

    /* renamed from: f */
    public final IOConsumer<ThresholdingOutputStream> f104518f;

    /* renamed from: g */
    public final IOFunction<ThresholdingOutputStream, OutputStream> f104519g;

    /* renamed from: h */
    public long f104520h;

    /* renamed from: i */
    public boolean f104521i;

    public ThresholdingOutputStream(int i) {
        this(i, IOConsumer.noop(), f104516j);
    }

    /* renamed from: j */
    public static /* synthetic */ OutputStream m65640j(ThresholdingOutputStream thresholdingOutputStream) throws IOException {
        return NullOutputStream.INSTANCE;
    }

    public void checkThreshold(int i) throws IOException {
        if (this.f104521i || this.f104520h + i <= this.f104517e) {
            return;
        }
        this.f104521i = true;
        thresholdReached();
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            flush();
        } catch (IOException unused) {
        }
        getStream().close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        getStream().flush();
    }

    public long getByteCount() {
        return this.f104520h;
    }

    public OutputStream getOutputStream() throws IOException {
        return this.f104519g.apply(this);
    }

    @Deprecated
    public OutputStream getStream() throws IOException {
        return getOutputStream();
    }

    public int getThreshold() {
        return this.f104517e;
    }

    public boolean isThresholdExceeded() {
        return this.f104520h > ((long) this.f104517e);
    }

    public void resetByteCount() {
        this.f104521i = false;
        this.f104520h = 0L;
    }

    public void setByteCount(long j) {
        this.f104520h = j;
    }

    public void thresholdReached() throws IOException {
        this.f104518f.accept(this);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        checkThreshold(bArr.length);
        getStream().write(bArr);
        this.f104520h += bArr.length;
    }

    public ThresholdingOutputStream(int i, IOConsumer<ThresholdingOutputStream> iOConsumer, IOFunction<ThresholdingOutputStream, OutputStream> iOFunction) {
        this.f104517e = i < 0 ? 0 : i;
        this.f104518f = iOConsumer == null ? IOConsumer.noop() : iOConsumer;
        this.f104519g = iOFunction == null ? f104516j : iOFunction;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        checkThreshold(i2);
        getStream().write(bArr, i, i2);
        this.f104520h += i2;
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        checkThreshold(1);
        getStream().write(i);
        this.f104520h++;
    }
}
