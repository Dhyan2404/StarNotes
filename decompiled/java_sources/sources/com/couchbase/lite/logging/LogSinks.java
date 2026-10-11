package com.couchbase.lite.logging;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.CouchbaseLiteInternal;
import com.couchbase.lite.internal.logging.LogSinksImpl;
import com.couchbase.lite.internal.utils.Preconditions;

/* loaded from: classes4.dex */
public interface LogSinks {
    @NonNull
    static LogSinks get() {
        CouchbaseLiteInternal.requireInit("Logging not initialized");
        return (LogSinks) Preconditions.assertNotNull(LogSinksImpl.getLogSinks(), "loggers");
    }

    @Nullable
    ConsoleLogSink getConsole();

    @Nullable
    BaseLogSink getCustom();

    @Nullable
    FileLogSink getFile();

    void setConsole(@Nullable ConsoleLogSink consoleLogSink);

    void setCustom(@Nullable BaseLogSink baseLogSink);

    void setFile(@Nullable FileLogSink fileLogSink);
}
