package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.utils.Preconditions;
import com.couchbase.lite.logging.FileLogSink;
import com.couchbase.lite.logging.LogSinks;
import java.util.Objects;

@Deprecated
/* loaded from: classes4.dex */
public final class FileLogger implements Logger {

    @Nullable
    private LogFileConfiguration configuration;

    @Nullable
    private ShimLogger logger;

    /* loaded from: classes4.dex */
    public static final class ShimLogger extends FileLogSink {
        public ShimLogger(@NonNull FileLogSink.Builder builder) {
            super(builder);
        }

        public void doLog(@NonNull LogLevel logLevel, @NonNull LogDomain logDomain, @NonNull String str) {
            super.log(logLevel, logDomain, str);
        }

        @Override // com.couchbase.lite.internal.logging.AbstractLogSink
        public boolean isLegacy() {
            return true;
        }

        @Override // com.couchbase.lite.logging.FileLogSink, com.couchbase.lite.internal.logging.AbstractLogSink
        public void writeLog(@NonNull LogLevel logLevel, @NonNull LogDomain logDomain, @NonNull String str) {
            if (this == LogSinks.get().getFile()) {
                super.writeLog(logLevel, logDomain, str);
            }
        }
    }

    private void installLogger(@Nullable LogFileConfiguration logFileConfiguration, @NonNull LogLevel logLevel) {
        ShimLogger shimLogger = logFileConfiguration == null ? null : new ShimLogger(new FileLogSink.Builder().setDirectory(logFileConfiguration.getDirectory()).setLevel(logLevel).setMaxKeptFiles(logFileConfiguration.getMaxRotateCount() + 1).setMaxFileSize(logFileConfiguration.getMaxSize()).setPlainText(logFileConfiguration.usesPlaintext()));
        LogSinks.get().setFile(shimLogger);
        this.logger = shimLogger;
    }

    @Nullable
    public LogFileConfiguration getConfig() {
        FileLogSink file = LogSinks.get().getFile();
        if (file == null) {
            return null;
        }
        return new LogFileConfiguration(file.getDirectory(), Long.valueOf(file.getMaxFileSize()), Integer.valueOf(file.getMaxKeptFiles() - 1), Boolean.valueOf(file.isPlainText()), true);
    }

    @Override // com.couchbase.lite.Logger
    @NonNull
    /* renamed from: getLevel */
    public LogLevel getLogLevel() {
        FileLogSink file = LogSinks.get().getFile();
        return file == null ? LogLevel.NONE : file.getLevel();
    }

    @Override // com.couchbase.lite.Logger
    public void log(@NonNull LogLevel logLevel, @NonNull LogDomain logDomain, @NonNull String str) {
        ShimLogger shimLogger = this.logger;
        if (shimLogger != null) {
            shimLogger.doLog(logLevel, logDomain, str);
        }
    }

    public void setConfig(@Nullable LogFileConfiguration logFileConfiguration) {
        if (Objects.equals(getConfig(), logFileConfiguration)) {
            return;
        }
        LogFileConfiguration logFileConfiguration2 = logFileConfiguration == null ? null : new LogFileConfiguration(logFileConfiguration);
        installLogger(logFileConfiguration2, getLogLevel());
        this.configuration = logFileConfiguration2;
    }

    public void setLevel(@NonNull LogLevel logLevel) {
        Preconditions.assertNotNull(logLevel, "level");
        LogFileConfiguration logFileConfiguration = this.configuration;
        if (logFileConfiguration == null) {
            throw new CouchbaseLiteError(com.couchbase.lite.internal.logging.Log.lookupStandardMessage("CannotSetLogLevel"));
        }
        if (getLogLevel() == logLevel) {
            return;
        }
        installLogger(logFileConfiguration, logLevel);
    }
}
