package io.opencensus.common;

import java.io.Closeable;

@Deprecated
/* loaded from: classes10.dex */
public interface NonThrowingCloseable extends Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();
}
