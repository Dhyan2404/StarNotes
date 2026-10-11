package io.opencensus.internal;

import io.opencensus.common.Scope;

/* loaded from: classes10.dex */
public final class NoopScope implements Scope {

    /* renamed from: e */
    public static final Scope f94693e = new NoopScope();

    public static Scope getInstance() {
        return f94693e;
    }

    @Override // io.opencensus.common.Scope, io.opencensus.common.NonThrowingCloseable, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }
}
