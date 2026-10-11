package onyx.org.apache.commons.io.input;

import java.io.IOException;
import java.io.Reader;

/* loaded from: classes11.dex */
public class BoundedReader extends Reader {

    /* renamed from: j */
    public static final int f104283j = -1;

    /* renamed from: e */
    public final Reader f104284e;

    /* renamed from: f */
    public int f104285f;

    /* renamed from: g */
    public int f104286g = -1;

    /* renamed from: h */
    public int f104287h;

    /* renamed from: i */
    public final int f104288i;

    public BoundedReader(Reader reader, int i) {
        this.f104284e = reader;
        this.f104288i = i;
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f104284e.close();
    }

    @Override // java.io.Reader
    public void mark(int i) throws IOException {
        int i2 = this.f104285f;
        this.f104287h = i - i2;
        this.f104286g = i2;
        this.f104284e.mark(i);
    }

    @Override // java.io.Reader
    public int read() throws IOException {
        int i = this.f104285f;
        if (i >= this.f104288i) {
            return -1;
        }
        int i2 = this.f104286g;
        if (i2 >= 0 && i - i2 >= this.f104287h) {
            return -1;
        }
        this.f104285f = i + 1;
        return this.f104284e.read();
    }

    @Override // java.io.Reader
    public void reset() throws IOException {
        this.f104285f = this.f104286g;
        this.f104284e.reset();
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        for (int i3 = 0; i3 < i2; i3++) {
            int read = read();
            if (read == -1) {
                if (i3 == 0) {
                    return -1;
                }
                return i3;
            }
            cArr[i + i3] = (char) read;
        }
        return i2;
    }
}
