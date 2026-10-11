package com.onyx.android.sdk.data.couchbase;

import com.couchbase.lite.LogDomain;
import com.couchbase.lite.LogLevel;
import com.couchbase.lite.Logger;
import com.onyx.android.sdk.base.utils.Debug;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.http.cookie.ClientCookie;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0003H\u0016J \u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/data/couchbase/CouchLogger;", "Lcom/couchbase/lite/Logger;", "logLevel", "Lcom/couchbase/lite/LogLevel;", "(Lcom/couchbase/lite/LogLevel;)V", "getLevel", "log", "", "level", ClientCookie.DOMAIN_ATTR, "Lcom/couchbase/lite/LogDomain;", "message", "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class CouchLogger implements Logger {

    @NotNull
    private final LogLevel logLevel;

    public CouchLogger(@NotNull LogLevel logLevel) {
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        this.logLevel = logLevel;
    }

    @Override // com.couchbase.lite.Logger
    @NotNull
    /* renamed from: getLevel, reason: from getter */
    public LogLevel getLogLevel() {
        return this.logLevel;
    }

    @Override // com.couchbase.lite.Logger
    public void log(@NotNull LogLevel level, @NotNull LogDomain domain, @NotNull String message) {
        Intrinsics.checkNotNullParameter(level, "level");
        Intrinsics.checkNotNullParameter(domain, "domain");
        Intrinsics.checkNotNullParameter(message, "message");
        if (level.compareTo(getLogLevel()) < 0) {
            return;
        }
        Debug.INSTANCE.m32035d(CouchLogger.class, "level: " + level.name() + ",domain: " + domain.name() + ", message: " + message, new Object[0]);
    }
}
