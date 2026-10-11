package com.tencent.cos.xml.model.tag;

/* loaded from: classes10.dex */
public class BucketLoggingStatus {
    public LoggingEnabled loggingEnabled;

    /* loaded from: classes10.dex */
    public static class LoggingEnabled {
        public String targetBucket;
        public String targetPrefix;

        public String toString() {
            return "{LoggingEnabled:\nTargetBucket:" + this.targetBucket + "\nTargetPrefix:" + this.targetPrefix + "\n}";
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("{BucketLoggingStatus:\n");
        LoggingEnabled loggingEnabled = this.loggingEnabled;
        if (loggingEnabled != null) {
            sb.append(loggingEnabled.toString());
            sb.append("\n");
        }
        sb.append("}");
        return sb.toString();
    }
}
