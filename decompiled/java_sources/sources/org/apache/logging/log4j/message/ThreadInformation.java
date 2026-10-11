package org.apache.logging.log4j.message;

/* loaded from: classes12.dex */
public interface ThreadInformation {
    void printStack(StringBuilder sb, StackTraceElement[] trace);

    void printThreadInfo(StringBuilder sb);
}
