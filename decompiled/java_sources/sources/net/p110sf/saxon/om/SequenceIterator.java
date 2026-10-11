package net.p110sf.saxon.om;

import java.io.Closeable;

/* loaded from: classes11.dex */
public interface SequenceIterator extends Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    default void close() {
    }

    default void discharge() {
    }

    Item next();
}
