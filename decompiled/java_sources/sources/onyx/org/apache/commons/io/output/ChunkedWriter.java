package onyx.org.apache.commons.io.output;

import java.io.FilterWriter;
import java.io.IOException;
import java.io.Writer;

/* loaded from: classes11.dex */
public class ChunkedWriter extends FilterWriter {

    /* renamed from: f */
    public static final int f104490f = 8192;

    /* renamed from: e */
    public final int f104491e;

    public ChunkedWriter(Writer writer) {
        this(writer, 8192);
    }

    @Override // java.io.FilterWriter, java.io.Writer
    public void write(char[] cArr, int i, int i2) throws IOException {
        while (i2 > 0) {
            int min = Math.min(i2, this.f104491e);
            ((FilterWriter) this).out.write(cArr, i, min);
            i2 -= min;
            i += min;
        }
    }

    public ChunkedWriter(Writer writer, int i) {
        super(writer);
        if (i > 0) {
            this.f104491e = i;
            return;
        }
        throw new IllegalArgumentException();
    }
}
