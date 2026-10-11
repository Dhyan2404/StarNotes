package com.sunia.HTREnginev2;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;
import org.apache.commons.compress.utils.BitInputStream;

/* renamed from: com.sunia.HTREnginev2.fs */
/* loaded from: classes12.dex */
public class C13739fs extends BitInputStream {
    public C13739fs(InputStream inputStream) {
        super(inputStream, ByteOrder.LITTLE_ENDIAN);
    }

    /* renamed from: H */
    public int m54175H() throws IOException {
        return (int) readBits(1);
    }

    /* renamed from: I */
    public long m54176I(int i) throws IOException {
        if (i >= 0 && i <= 8) {
            return readBits(i);
        }
        throw new IOException("Trying to read " + i + " bits, at most 8 are allowed");
    }

    /* renamed from: M */
    public int m54177M() throws IOException {
        return (int) readBits(8);
    }
}
