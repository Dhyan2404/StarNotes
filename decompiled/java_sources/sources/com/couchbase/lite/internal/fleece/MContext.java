package com.couchbase.lite.internal.fleece;

import androidx.annotation.Nullable;
import com.couchbase.lite.BaseDatabase;

/* loaded from: classes4.dex */
public class MContext {
    public static final MContext NULL = new MContext();

    @Nullable
    public BaseDatabase getDatabase() {
        return null;
    }

    public boolean isClosed() {
        return false;
    }
}
