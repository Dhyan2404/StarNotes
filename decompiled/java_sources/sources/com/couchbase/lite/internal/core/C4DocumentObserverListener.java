package com.couchbase.lite.internal.core;

import androidx.annotation.Nullable;

@FunctionalInterface
/* loaded from: classes4.dex */
public interface C4DocumentObserverListener {
    void callback(C4DocumentObserver c4DocumentObserver, @Nullable String str, long j, Object obj);
}
