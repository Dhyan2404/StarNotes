package org.apache.commons.compress.archivers.examples;

import java.io.Closeable;
import java.io.IOException;
import org.apache.commons.compress.archivers.examples.CloseableConsumer;

/* loaded from: classes12.dex */
public interface CloseableConsumer {
    public static final CloseableConsumer CLOSING_CONSUMER = new CloseableConsumer() { // from class: com.sunia.HTREnginev2.fvd
        @Override // org.apache.commons.compress.archivers.examples.CloseableConsumer
        public final void accept(Closeable closeable) {
            closeable.close();
        }
    };
    public static final CloseableConsumer NULL_CONSUMER = new CloseableConsumer() { // from class: com.sunia.HTREnginev2.gvd
        @Override // org.apache.commons.compress.archivers.examples.CloseableConsumer
        public final void accept(Closeable closeable) {
            CloseableConsumer.m66176a(closeable);
        }
    };

    /* renamed from: a */
    static /* synthetic */ void m66176a(Closeable closeable) throws IOException {
    }

    void accept(Closeable closeable) throws IOException;
}
