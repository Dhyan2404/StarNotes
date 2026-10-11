package onyx.org.apache.commons.io.input;

import java.io.IOException;
import java.io.InputStream;

@Deprecated
/* loaded from: classes11.dex */
public class CountingInputStream extends ProxyInputStream {

    /* renamed from: e */
    public long f104310e;

    public CountingInputStream(InputStream inputStream) {
        super(inputStream);
    }

    @Override // onyx.org.apache.commons.io.input.ProxyInputStream
    public synchronized void afterRead(int i) throws IOException {
        if (i != -1) {
            this.f104310e += i;
        }
    }

    public synchronized long getByteCount() {
        return this.f104310e;
    }

    @Deprecated
    public int getCount() {
        long byteCount = getByteCount();
        if (byteCount <= 2147483647L) {
            return (int) byteCount;
        }
        throw new ArithmeticException("The byte count " + byteCount + " is too large to be converted to an int");
    }

    public synchronized long resetByteCount() {
        long j;
        j = this.f104310e;
        this.f104310e = 0L;
        return j;
    }

    @Deprecated
    public int resetCount() {
        long resetByteCount = resetByteCount();
        if (resetByteCount <= 2147483647L) {
            return (int) resetByteCount;
        }
        throw new ArithmeticException("The byte count " + resetByteCount + " is too large to be converted to an int");
    }

    @Override // onyx.org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized long skip(long j) throws IOException {
        long skip;
        skip = super.skip(j);
        this.f104310e += skip;
        return skip;
    }
}
