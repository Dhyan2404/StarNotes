package onyx.org.apache.commons.io.input;

import java.io.FilterReader;
import java.io.IOException;
import java.io.Reader;
import java.util.function.IntPredicate;
import onyx.org.apache.commons.io.input.AbstractCharacterFilterReader;

/* loaded from: classes11.dex */
public abstract class AbstractCharacterFilterReader extends FilterReader {
    protected static final IntPredicate SKIP_NONE = new IntPredicate() { // from class: com.sunia.HTREnginev2.u2
        @Override // java.util.function.IntPredicate
        public final boolean test(int i) {
            boolean m65395j;
            m65395j = AbstractCharacterFilterReader.m65395j(i);
            return m65395j;
        }
    };

    /* renamed from: e */
    public final IntPredicate f104263e;

    public AbstractCharacterFilterReader(Reader reader) {
        this(reader, SKIP_NONE);
    }

    /* renamed from: j */
    public static /* synthetic */ boolean m65395j(int i) {
        return false;
    }

    public boolean filter(int i) {
        return this.f104263e.test(i);
    }

    @Override // java.io.FilterReader, java.io.Reader
    public int read() throws IOException {
        int read;
        do {
            read = ((FilterReader) this).in.read();
            if (read == -1) {
                break;
            }
        } while (filter(read));
        return read;
    }

    public AbstractCharacterFilterReader(Reader reader, IntPredicate intPredicate) {
        super(reader);
        this.f104263e = intPredicate == null ? SKIP_NONE : intPredicate;
    }

    @Override // java.io.FilterReader, java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        int read = super.read(cArr, i, i2);
        if (read == -1) {
            return -1;
        }
        int i3 = i - 1;
        for (int i4 = i; i4 < i + read; i4++) {
            if (!filter(cArr[i4]) && (i3 = i3 + 1) < i4) {
                cArr[i3] = cArr[i4];
            }
        }
        return (i3 - i) + 1;
    }
}
