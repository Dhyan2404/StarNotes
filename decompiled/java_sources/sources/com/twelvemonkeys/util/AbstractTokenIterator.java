package com.twelvemonkeys.util;

import com.onyx.android.sdk.replicator.utils.SyncConstant;

/* loaded from: classes10.dex */
public abstract class AbstractTokenIterator implements TokenIterator {
    @Override // java.util.Enumeration
    public final boolean hasMoreElements() {
        return hasNext();
    }

    @Override // com.twelvemonkeys.util.TokenIterator
    public final boolean hasMoreTokens() {
        return hasNext();
    }

    @Override // com.twelvemonkeys.util.TokenIterator
    public final String nextToken() {
        return next();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException(SyncConstant.SYNC_ACTION_REMOVE);
    }

    @Override // java.util.Enumeration
    public final String nextElement() {
        return next();
    }
}
