package com.couchbase.lite;

import androidx.annotation.NonNull;

@Deprecated
/* loaded from: classes4.dex */
public interface Logger {
    @NonNull
    LogLevel getLevel();

    void log(@NonNull LogLevel logLevel, @NonNull LogDomain logDomain, @NonNull String str);
}
