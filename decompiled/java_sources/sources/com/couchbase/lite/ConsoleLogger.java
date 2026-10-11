package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.internal.utils.Preconditions;
import com.couchbase.lite.logging.ConsoleLogSink;
import com.couchbase.lite.logging.LogSinks;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.Set;

@Deprecated
/* loaded from: classes4.dex */
public class ConsoleLogger implements Logger {

    @Nullable
    private ShimLogger logger;

    @VisibleForTesting
    /* loaded from: classes4.dex */
    public static class ShimLogger extends ConsoleLogSink {
        public ShimLogger(@NonNull LogLevel logLevel, @Nullable EnumSet<LogDomain> enumSet) {
            super(logLevel, enumSet);
        }

        public void doLog(@NonNull LogLevel logLevel, @NonNull LogDomain logDomain, @NonNull String str) {
            super.log(logLevel, logDomain, str);
        }

        @VisibleForTesting
        public void doWriteLog(@NonNull LogLevel logLevel, @NonNull LogDomain logDomain, @NonNull String str) {
            if (this == LogSinks.get().getConsole()) {
                super.writeLog(logLevel, logDomain, str);
            }
        }

        @Override // com.couchbase.lite.internal.logging.AbstractLogSink
        public boolean isLegacy() {
            return true;
        }

        @Override // com.couchbase.lite.logging.ConsoleLogSink, com.couchbase.lite.internal.logging.AbstractLogSink
        public void writeLog(@NonNull LogLevel logLevel, @NonNull LogDomain logDomain, @NonNull String str) {
            doWriteLog(logLevel, logDomain, str);
        }
    }

    @NonNull
    public EnumSet<LogDomain> getDomains() {
        ConsoleLogSink console = LogSinks.get().getConsole();
        if (console == null) {
            return EnumSet.noneOf(LogDomain.class);
        }
        Set<LogDomain> domains = console.getDomains();
        return domains.isEmpty() ? EnumSet.noneOf(LogDomain.class) : EnumSet.copyOf((java.util.Collection) domains);
    }

    @Override // com.couchbase.lite.Logger
    @NonNull
    /* renamed from: getLevel */
    public LogLevel getLogLevel() {
        ConsoleLogSink console = LogSinks.get().getConsole();
        return console == null ? LogLevel.NONE : console.getLevel();
    }

    @Override // com.couchbase.lite.Logger
    public void log(@NonNull LogLevel logLevel, @NonNull LogDomain logDomain, @NonNull String str) {
        ShimLogger shimLogger = this.logger;
        if (shimLogger != null) {
            shimLogger.doLog(logLevel, logDomain, str);
        }
    }

    public void setDomains(@NonNull EnumSet<LogDomain> enumSet) {
        LogSinks logSinks = LogSinks.get();
        ConsoleLogSink console = logSinks.getConsole();
        if (console == null || !enumSet.equals(console.getDomains())) {
            ShimLogger shimFactory = shimFactory(getLogLevel(), (EnumSet) Preconditions.assertNotNull(enumSet, "domains"));
            this.logger = shimFactory;
            logSinks.setConsole(shimFactory);
        }
    }

    public void setLevel(@NonNull LogLevel logLevel) {
        Preconditions.assertNotNull(logLevel, "level");
        if (getLogLevel() == logLevel) {
            return;
        }
        this.logger = shimFactory(logLevel, getDomains());
        LogSinks.get().setConsole(this.logger);
    }

    @NonNull
    @VisibleForTesting
    public ShimLogger shimFactory(@NonNull LogLevel logLevel, @NonNull EnumSet<LogDomain> enumSet) {
        return new ShimLogger(logLevel, enumSet);
    }

    public void setDomains(@NonNull LogDomain... logDomainArr) {
        Preconditions.assertNotNull(logDomainArr, "domains");
        setDomains(logDomainArr.length <= 0 ? EnumSet.noneOf(LogDomain.class) : EnumSet.copyOf((java.util.Collection) Arrays.asList(logDomainArr)));
    }
}
