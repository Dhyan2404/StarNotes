package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.utils.Preconditions;
import java.util.Objects;

@Deprecated
/* loaded from: classes4.dex */
public final class LogFileConfiguration {

    @NonNull
    private final String directory;
    private int maxRotateCount;
    private long maxSize;
    private final boolean readonly;
    private boolean usePlaintext;

    public LogFileConfiguration(@NonNull String str) {
        this(str, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LogFileConfiguration)) {
            return false;
        }
        LogFileConfiguration logFileConfiguration = (LogFileConfiguration) obj;
        return this.maxSize == logFileConfiguration.maxSize && this.maxRotateCount == logFileConfiguration.maxRotateCount && this.usePlaintext == logFileConfiguration.usePlaintext && this.directory.equals(logFileConfiguration.directory);
    }

    @NonNull
    public String getDirectory() {
        return this.directory;
    }

    public int getMaxRotateCount() {
        return this.maxRotateCount;
    }

    public long getMaxSize() {
        return this.maxSize;
    }

    public int hashCode() {
        return Objects.hash(this.directory);
    }

    @NonNull
    public LogFileConfiguration setMaxRotateCount(int i) {
        if (this.readonly) {
            throw new CouchbaseLiteError("LogFileConfiguration is readonly mode.");
        }
        this.maxRotateCount = Preconditions.assertNotNegative(i, "max rotation count");
        return this;
    }

    @NonNull
    public LogFileConfiguration setMaxSize(long j) {
        if (this.readonly) {
            throw new CouchbaseLiteError("LogFileConfiguration is readonly mode.");
        }
        this.maxSize = Preconditions.assertNotNegative(j, "max size");
        return this;
    }

    @NonNull
    public LogFileConfiguration setUsePlaintext(boolean z) {
        if (this.readonly) {
            throw new CouchbaseLiteError("LogFileConfiguration is readonly mode.");
        }
        this.usePlaintext = z;
        return this;
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("LogFileConfig{");
        sb.append(this.readonly ? "" : "!");
        sb.append(this.usePlaintext ? "+" : "");
        sb.append(this.directory);
        sb.append(", ");
        sb.append(this.maxSize);
        sb.append(", ");
        sb.append(this.maxRotateCount);
        sb.append("}");
        return sb.toString();
    }

    public boolean usesPlaintext() {
        return this.usePlaintext;
    }

    public LogFileConfiguration(@NonNull LogFileConfiguration logFileConfiguration) {
        this(logFileConfiguration == null ? null : logFileConfiguration.getDirectory(), logFileConfiguration);
    }

    public LogFileConfiguration(@NonNull String str, @Nullable LogFileConfiguration logFileConfiguration) {
        this(str, logFileConfiguration, false);
    }

    public LogFileConfiguration(@NonNull String str, @Nullable LogFileConfiguration logFileConfiguration, boolean z) {
        this(str, logFileConfiguration == null ? null : Long.valueOf(logFileConfiguration.maxSize), logFileConfiguration == null ? null : Integer.valueOf(logFileConfiguration.maxRotateCount), logFileConfiguration != null ? Boolean.valueOf(logFileConfiguration.usePlaintext) : null, z);
    }

    public LogFileConfiguration(@NonNull String str, @Nullable Long l, @Nullable Integer num, @Nullable Boolean bool, boolean z) {
        this.directory = (String) Preconditions.assertNotNull(str, "directory");
        this.maxSize = l != null ? l.longValue() : 524288L;
        this.maxRotateCount = num != null ? num.intValue() : 1;
        this.usePlaintext = bool != null ? bool.booleanValue() : false;
        this.readonly = z;
    }
}
