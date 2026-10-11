package com.evernote.client.conn.mobile;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes4.dex */
public abstract class ByteStore extends OutputStream {

    /* loaded from: classes4.dex */
    public interface Factory {
        ByteStore create();
    }

    public abstract int getBytesWritten();

    public abstract byte[] getData() throws IOException;

    public abstract void reset() throws IOException;
}
