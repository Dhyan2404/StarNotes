package com.couchbase.lite.logging;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.LogLevel;
import com.couchbase.lite.internal.logging.AbstractLogSink;
import java.util.Collection;

/* loaded from: classes4.dex */
public abstract class BaseLogSink extends AbstractLogSink {
    public BaseLogSink(@NonNull LogLevel logLevel) {
        this(logLevel, null);
    }

    public BaseLogSink(@NonNull LogLevel logLevel, @NonNull LogDomain logDomain, @Nullable LogDomain... logDomainArr) {
        this(logLevel, AbstractLogSink.aggregateDomains(logDomain, logDomainArr));
    }

    public BaseLogSink(@NonNull LogLevel logLevel, @Nullable Collection<LogDomain> collection) {
        super(logLevel, AbstractLogSink.defaultDomains(collection));
    }
}
