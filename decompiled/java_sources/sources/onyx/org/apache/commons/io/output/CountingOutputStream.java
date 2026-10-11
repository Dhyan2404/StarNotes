package onyx.org.apache.commons.io.output;

import java.io.OutputStream;

/* loaded from: classes11.dex */
public class CountingOutputStream extends ProxyOutputStream {

    /* renamed from: e */
    public long f104492e;

    public CountingOutputStream(OutputStream outputStream) {
        super(outputStream);
    }

    @Override // onyx.org.apache.commons.io.output.ProxyOutputStream
    public synchronized void beforeWrite(int i) {
        this.f104492e += i;
    }

    public synchronized long getByteCount() {
        return this.f104492e;
    }

    public int getCount() {
        long byteCount = getByteCount();
        if (byteCount <= 2147483647L) {
            return (int) byteCount;
        }
        throw new ArithmeticException("The byte count " + byteCount + " is too large to be converted to an int");
    }

    public synchronized long resetByteCount() {
        long j;
        j = this.f104492e;
        this.f104492e = 0L;
        return j;
    }

    public int resetCount() {
        long resetByteCount = resetByteCount();
        if (resetByteCount <= 2147483647L) {
            return (int) resetByteCount;
        }
        throw new ArithmeticException("The byte count " + resetByteCount + " is too large to be converted to an int");
    }
}
