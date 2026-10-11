package com.couchbase.lite;

import androidx.annotation.Nullable;
import java.util.List;

/* loaded from: classes4.dex */
public interface IndexUpdater extends ArrayInterface, Iterable<Object>, AutoCloseable {
    @Override // java.lang.AutoCloseable
    void close();

    void finish() throws CouchbaseLiteException;

    void setVector(@Nullable List<Float> list, int i) throws CouchbaseLiteException;

    void skipVector(int i);
}
