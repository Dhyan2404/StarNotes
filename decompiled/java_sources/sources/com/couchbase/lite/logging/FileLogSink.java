package com.couchbase.lite.logging;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.LogLevel;
import com.couchbase.lite.internal.logging.AbstractLogSink;
import com.couchbase.lite.internal.logging.Log;
import com.couchbase.lite.internal.logging.LogSinksImpl;
import com.couchbase.lite.internal.utils.Preconditions;
import java.io.File;
import java.util.Objects;

/* loaded from: classes4.dex */
public class FileLogSink extends AbstractLogSink {

    @NonNull
    private final String directory;
    private final long maxFileSize;
    private final int maxKeptFiles;
    private final boolean plainText;

    public FileLogSink(@NonNull Builder builder) {
        super(builder.level, LogDomain.ALL);
        String str = builder.directory;
        if (str == null) {
            throw new IllegalStateException("A file logger must specify a log file directory path");
        }
        this.directory = str;
        this.maxKeptFiles = builder.maxKeptFiles;
        this.maxFileSize = builder.maxFileSize;
        this.plainText = builder.plainText;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FileLogSink)) {
            return false;
        }
        FileLogSink fileLogSink = (FileLogSink) obj;
        return similar(fileLogSink) && similarLevels(fileLogSink) && similarDomains(fileLogSink);
    }

    @NonNull
    public final String getDirectory() {
        return this.directory;
    }

    public final long getMaxFileSize() {
        return this.maxFileSize;
    }

    public final int getMaxKeptFiles() {
        return this.maxKeptFiles;
    }

    public final int hashCode() {
        return Objects.hash(getLevel(), this.directory, Integer.valueOf(this.maxKeptFiles), Long.valueOf(this.maxFileSize));
    }

    public final boolean isPlainText() {
        return this.plainText;
    }

    public final boolean similar(@Nullable FileLogSink fileLogSink) {
        return fileLogSink != null && this.directory.equals(fileLogSink.directory) && this.maxKeptFiles == fileLogSink.maxKeptFiles && this.maxFileSize == fileLogSink.maxFileSize && this.plainText == fileLogSink.plainText;
    }

    @NonNull
    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FileLogSink{");
        sb.append(isLegacy() ? "!" : "");
        sb.append(this.plainText ? "+" : "");
        sb.append(AbstractLogSink.listDomains(getDomains()));
        sb.append("@");
        sb.append(getLevel());
        sb.append(": ");
        sb.append(this.directory);
        sb.append(", ");
        sb.append(this.maxFileSize);
        sb.append(", ");
        sb.append(this.maxKeptFiles);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.couchbase.lite.internal.logging.AbstractLogSink
    public void writeLog(@NonNull LogLevel logLevel, @NonNull LogDomain logDomain, @NonNull String str) {
        LogSinksImpl.logToCore(logLevel, logDomain, str);
    }

    /* loaded from: classes4.dex */
    public static final class Builder {

        @Nullable
        private String directory;

        @NonNull
        private LogLevel level;
        private long maxFileSize;
        private int maxKeptFiles;
        private boolean plainText;

        public Builder() {
            this.level = LogLevel.WARNING;
            this.maxKeptFiles = 2;
            this.maxFileSize = 524288L;
            this.plainText = false;
        }

        @NonNull
        public FileLogSink build() {
            return new FileLogSink(this);
        }

        @Nullable
        public String getDirectory() {
            return this.directory;
        }

        @NonNull
        public LogLevel getLevel() {
            return this.level;
        }

        public long getMaxFileSize() {
            return this.maxFileSize;
        }

        public int getMaxKeptFiles() {
            return this.maxKeptFiles;
        }

        public boolean isPlainText() {
            return this.plainText;
        }

        @NonNull
        public Builder setDirectory(@NonNull String str) {
            String assertNotEmpty = Preconditions.assertNotEmpty(str, "directory");
            File file = new File(assertNotEmpty);
            if (file.exists()) {
                if (!file.isDirectory()) {
                    Log.m9908w(LogDomain.DATABASE, file.getAbsolutePath() + " is not a directory");
                }
            } else if (!file.mkdirs()) {
                Log.m9908w(LogDomain.DATABASE, "Cannot create log directory: " + file.getAbsolutePath());
            }
            if (!file.canWrite()) {
                Log.m9908w(LogDomain.DATABASE, file.getAbsolutePath() + " is not writable");
            }
            this.directory = assertNotEmpty;
            return this;
        }

        @NonNull
        public Builder setLevel(@NonNull LogLevel logLevel) {
            this.level = (LogLevel) Preconditions.assertNotNull(logLevel, "log level");
            return this;
        }

        @NonNull
        public Builder setMaxFileSize(long j) {
            this.maxFileSize = Preconditions.assertNotNegative(j, "max file size");
            return this;
        }

        @NonNull
        public Builder setMaxKeptFiles(int i) {
            this.maxKeptFiles = Preconditions.assertNotNegative(i, "max kept files");
            return this;
        }

        @NonNull
        public Builder setPlainText(boolean z) {
            this.plainText = z;
            return this;
        }

        @NonNull
        public String toString() {
            return "FileLogger.Builder{" + this.directory + ", " + this.level + ", " + this.maxFileSize + ", " + this.maxKeptFiles + "}";
        }

        public Builder(@NonNull Builder builder) {
            this.level = LogLevel.WARNING;
            this.maxKeptFiles = 2;
            this.maxFileSize = 524288L;
            this.plainText = false;
            this.directory = builder.directory;
            this.level = builder.getLevel();
            this.maxKeptFiles = builder.maxKeptFiles;
            this.maxFileSize = builder.maxFileSize;
            this.plainText = builder.plainText;
        }

        public Builder(@NonNull FileLogSink fileLogSink) {
            this.level = LogLevel.WARNING;
            this.maxKeptFiles = 2;
            this.maxFileSize = 524288L;
            this.plainText = false;
            this.directory = fileLogSink.directory;
            this.level = fileLogSink.getLevel();
            this.maxKeptFiles = fileLogSink.maxKeptFiles;
            this.maxFileSize = fileLogSink.maxFileSize;
            this.plainText = fileLogSink.plainText;
        }
    }
}
