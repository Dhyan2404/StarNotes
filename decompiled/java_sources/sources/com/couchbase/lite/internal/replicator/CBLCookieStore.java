package com.couchbase.lite.internal.replicator;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.net.URI;
import java.util.List;

/* loaded from: classes4.dex */
public interface CBLCookieStore {
    @Nullable
    String getCookies(@NonNull URI uri);

    void setCookies(@NonNull URI uri, @NonNull List<String> list, boolean z);
}
