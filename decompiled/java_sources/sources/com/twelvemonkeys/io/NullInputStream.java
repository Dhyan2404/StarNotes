package com.twelvemonkeys.io;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes10.dex */
public class NullInputStream extends InputStream {
    @Override // java.io.InputStream
    public int available() throws IOException {
        return 0;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        return -1;
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        return 0L;
    }
}
