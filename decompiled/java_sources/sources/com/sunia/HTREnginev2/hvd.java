package com.sunia.HTREnginev2;

import java.io.Closeable;
import java.io.IOException;
import java.util.Objects;
import org.apache.commons.compress.archivers.examples.CloseableConsumer;

/* loaded from: classes12.dex */
public final class hvd implements Closeable {

    /* renamed from: e */
    public final CloseableConsumer f72589e;

    /* renamed from: f */
    public Closeable f72590f;

    public hvd(CloseableConsumer closeableConsumer) {
        Objects.requireNonNull(closeableConsumer, "consumer");
        this.f72589e = closeableConsumer;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        Closeable closeable = this.f72590f;
        if (closeable != null) {
            this.f72589e.accept(closeable);
        }
    }

    /* renamed from: f */
    public <C extends Closeable> C m54633f(C c) {
        this.f72590f = c;
        return c;
    }
}
