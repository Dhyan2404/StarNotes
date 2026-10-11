package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.CouchbaseLiteInternal;
import com.couchbase.lite.logging.BaseLogSink;
import com.couchbase.lite.logging.LogSinks;
import java.util.Set;

@Deprecated
/* loaded from: classes4.dex */
public final class Log {

    @Nullable
    private Logger customLogger;
    private final ConsoleLogger consoleLogger = new ConsoleLogger();
    private final FileLogger fileLogger = new FileLogger();

    /* loaded from: classes4.dex */
    public final class ShimLogger extends BaseLogSink {
        public ShimLogger(@NonNull LogLevel logLevel, @NonNull Set<LogDomain> set) {
            super(logLevel, set);
        }

        @Override // com.couchbase.lite.internal.logging.AbstractLogSink
        public boolean isLegacy() {
            return true;
        }

        @Override // com.couchbase.lite.internal.logging.AbstractLogSink
        public void writeLog(@NonNull LogLevel logLevel, @NonNull LogDomain logDomain, @NonNull String str) {
            Logger logger;
            if (this == LogSinks.get().getCustom() && (logger = Log.this.customLogger) != null) {
                logger.log(logLevel, logDomain, str);
                if (getLevel() != logger.getLogLevel()) {
                    Log.this.installCustomLogger(logger);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void installCustomLogger(@Nullable Logger logger) {
        LogSinks.get().setCustom(logger == null ? null : new ShimLogger(logger.getLogLevel(), LogDomain.ALL));
    }

    @NonNull
    @Deprecated
    public ConsoleLogger getConsole() {
        CouchbaseLiteInternal.requireInit("Console logging not initialized");
        return this.consoleLogger;
    }

    @Nullable
    @Deprecated
    public Logger getCustom() {
        return this.customLogger;
    }

    @NonNull
    @Deprecated
    public FileLogger getFile() {
        CouchbaseLiteInternal.requireInit("File logging not initialized");
        return this.fileLogger;
    }

    @Deprecated
    public void setCustom(@Nullable Logger logger) {
        this.customLogger = logger;
        installCustomLogger(logger);
    }
}
