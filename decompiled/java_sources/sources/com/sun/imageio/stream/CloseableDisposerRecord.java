package com.sun.imageio.stream;

import java.io.Closeable;
import java.io.IOException;
import sun.java2d.DisposerRecord;

/* loaded from: classes9.dex */
public class CloseableDisposerRecord implements DisposerRecord {
    private Closeable closeable;

    public CloseableDisposerRecord(Closeable closeable) {
        this.closeable = closeable;
    }

    @Override // sun.java2d.DisposerRecord
    public synchronized void dispose() {
        Closeable closeable = this.closeable;
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            } catch (Throwable th) {
                this.closeable = null;
                throw th;
            }
            this.closeable = null;
        }
    }
}
